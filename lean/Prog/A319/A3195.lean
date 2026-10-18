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
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
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
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A319500: a(n) is the least m for which A006987(n) = binomial(m,k) for some k, 2 <= k <= m/2.

The programs for A319500, there is no canonical definition to state claims against.
-/

/-! ## A319500.P2829584341729748559

`A058084(A006987(n+1))`
-/

namespace A319500.P2829584341729748559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058084 (A006987 (n + 1)).toNat

end

end A319500.P2829584341729748559

/-! ## A319500.P7255463754275616685

`A058084(lt[1, A357327(n+1)]+1)`
-/

namespace A319500.P7255463754275616685
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357327 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058084 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A319500.P7255463754275616685

/-! ## A319500.P7682324802832668406

`A058084(lt[1, A059233(n+2)]+2)`
-/

namespace A319500.P7682324802832668406
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059233 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058084 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 2)

end

end A319500.P7682324802832668406

/-! ## A319500.P4524727586405045746

`A058084(lt[2, A003016(n+2)]+2)`
-/

namespace A319500.P4524727586405045746
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003016 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058084 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 2)

end

end A319500.P4524727586405045746

/-! ## A319500.P13606767399560496168

`A058084(record[A024746(n+1)*A060576(n)])`
-/

namespace A319500.P13606767399560496168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024746 (n + 1) * A060576 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058084 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A319500.P13606767399560496168

/-! ## A319500.P9015774283332688195

`A058084(record[A024746(n+1)%A319406(n+1)])`
-/

namespace A319500.P9015774283332688195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A024746 (n + 1)) (A319406 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058084 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A319500.P9015774283332688195

/-! ## A319500.P7499771960893272467

`A058084(record[A319382(n+1)%A319382(n+2)])`
-/

namespace A319500.P7499771960893272467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A319382 (n + 1)) (A319382 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058084 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A319500.P7499771960893272467

/-! ## A319500.P13764150570762543882

`A058084(∪[A319382(2*n+1), A182237(n+2)])`
-/

namespace A319500.P13764150570762543882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319382 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182237 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058084 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A319500.P13764150570762543882

/-!
# A319501: Number T(n,k) of sets of nonempty words with a total of n letters over k-ary alphabet such that all k letters occur at least once in the set; triangle T(n,k), n>=0, 0<=k<=n, read by rows.

The programs for A319501, there is no canonical definition to state claims against.
-/

/-! ## A319501.P13976092338880216320

`A135313(n)+A059841(A018008(n))`
-/

namespace A319501.P13976092338880216320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135313 n + A059841 (A018008 n).toNat

end

end A319501.P13976092338880216320

/-! ## A319501.P18238633107643509782

`A188187(A006130(n))+A135313(n)`
-/

namespace A319501.P18238633107643509782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188187 (A006130 n).toNat + A135313 n

end

end A319501.P18238633107643509782

/-! ## A319501.P9246388305457205695

`A184973(A052265(n))+A135313(n)`
-/

namespace A319501.P9246388305457205695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184973 (A052265 n).toNat + A135313 n

end

end A319501.P9246388305457205695

/-! ## A319501.P5213690290392152894

`A135313(n)+A085974(A156616(n))`
-/

namespace A319501.P5213690290392152894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135313 n + A085974 (A156616 n).toNat

end

end A319501.P5213690290392152894

/-! ## A319501.P13788552952013016963

`A135313(n)*A333765(A176129(n))`
-/

namespace A319501.P13788552952013016963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135313 n * A333765 (A176129 n).toNat

end

end A319501.P13788552952013016963

/-!
# A319502: Indices of Mertens's function M(n) (A002321) whose nearest neighbors have value 0.

The programs for A319502, there is no canonical definition to state claims against.
-/

/-! ## A319502.P10167775199717030296

`A124580(n+8)%A216899(A046899(n))`
-/

namespace A319502.P10167775199717030296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A124580 (n + 8)) (A216899 (A046899 n).toNat)

end

end A319502.P10167775199717030296

/-! ## A319502.P1089632941108569911

`A057427(A050339(n+1))*A124580(n+8)`
-/

namespace A319502.P1089632941108569911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A050339 (n + 1)).toNat * A124580 (n + 8)

end

end A319502.P1089632941108569911

/-! ## A319502.P7538692814384093426

`A057427(A337336(n+1))*A124580(n+8)`
-/

namespace A319502.P7538692814384093426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A337336 (n + 1)).toNat * A124580 (n + 8)

end

end A319502.P7538692814384093426

/-! ## A319502.P9986108487950979170

`∩[A124580(n+1), A224448(n+1)]`
-/

namespace A319502.P9986108487950979170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124580 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224448 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A319502.P9986108487950979170

/-!
# A319503: Number of partitions of Fibonacci(n) into exactly n positive Fibonacci numbers.

The programs for A319503, there is no canonical definition to state claims against.
-/

/-! ## A319503.P7498958098906553324

`A319394(A033192(n)+n)`
-/

namespace A319503.P7498958098906553324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319394 (A033192 n + (n : ℤ)).toNat

end

end A319503.P7498958098906553324

/-! ## A319503.P11644649397338616509

`A232442(or(A000108(n), A000720(n+5)))`
-/

namespace A319503.P11644649397338616509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232442 (Int.lor (A000108 n) (A000720 (n + 5))).toNat

end

end A319503.P11644649397338616509

/-! ## A319503.P646399965533469447

`A003056(xor(A216037(2*(n+2)), A338586(n)))`
-/

namespace A319503.P646399965533469447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (Int.xor (A216037 (2 * (n + 2))) (A338586 n)).toNat

end

end A319503.P646399965533469447

/-!
# A319504: Indices of valleys (i.e. local minima) in A064800.

The programs for A319504, there is no canonical definition to state claims against.
-/

/-! ## A319504.P7233964801091551940

`or(1, A317743(n+1)-2)`
-/

namespace A319504.P7233964801091551940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A317743 (n + 1) - 2)

end

end A319504.P7233964801091551940

/-! ## A319504.P15501892856494010013

`A267458(A317743(n+1))`
-/

namespace A319504.P15501892856494010013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267458 (A317743 (n + 1)).toNat

end

end A319504.P15501892856494010013

/-! ## A319504.P16711270334615779368

`A109613(A317743(n+1)-2)`
-/

namespace A319504.P16711270334615779368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 (A317743 (n + 1) - 2).toNat

end

end A319504.P16711270334615779368

/-! ## A319504.P8443665235338593497

`A000027(and(-2, A317743(n+1))-1)`
-/

namespace A319504.P8443665235338593497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (Int.land (-2) (A317743 (n + 1)) - 1).toNat

end

end A319504.P8443665235338593497

/-! ## A319504.P8080391322724333673

`and(-2, A317743(n+1))-A007318(∑[n])`
-/

namespace A319504.P8080391322724333673
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-2) (A317743 (n + 1)) - A007318 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A319504.P8080391322724333673

/-! ## A319504.P2809510529344962327

`and(-2, A317743(n+1))-A007318(C(2, n))²`
-/

namespace A319504.P2809510529344962327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-2) (A317743 (n + 1)) - A007318 (Nat.choose 2 n) ^ 2

end

end A319504.P2809510529344962327

/-! ## A319504.P11476145075952899397

`and(-A020639(2*(n+1)), A317743(n+1))-1`
-/

namespace A319504.P11476145075952899397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A020639 (2 * (n + 1))) (A317743 (n + 1)) - 1

end

end A319504.P11476145075952899397

/-! ## A319504.P14353861254925963098

`and(-2, A317743(n+1))-A000041(C(2, n+2))`
-/

namespace A319504.P14353861254925963098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-2) (A317743 (n + 1)) - A000041 (Nat.choose 2 (n + 2))

end

end A319504.P14353861254925963098

/-! ## A319504.P11593497312027438663

`and(-2, A317743(n+1))-A000108(C(2, n+2))`
-/

namespace A319504.P11593497312027438663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-2) (A317743 (n + 1)) - A000108 (Nat.choose 2 (n + 2))

end

end A319504.P11593497312027438663

/-! ## A319504.P11213134733617781554

`and(-2, A317743(n+1))-A000045(gcd(n, n+1))`
-/

namespace A319504.P11213134733617781554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-2) (A317743 (n + 1)) - A000045 (Nat.gcd n (n + 1))

end

end A319504.P11213134733617781554

/-!
# A319506: Number of numbers of the form 2*p or 3*p between consecutive triangular numbers T(n - 1) < {2,3}*p <= T(n) with p prime.

The programs for A319506, there is no canonical definition to state claims against.
-/

/-! ## A319506.P13882489198766362049

`and(A001221(A306673(3*n+2)), A140966(n))`
-/

namespace A319506.P13882489198766362049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001221 (A306673 (3 * n + 2)).toNat) (A140966 n)

end

end A319506.P13882489198766362049

/-! ## A319506.P14929245903444083243

`A001221(A230866(n)*A282120(n))`
-/

namespace A319506.P14929245903444083243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A230866 n * A282120 n).toNat

end

end A319506.P14929245903444083243

/-! ## A319506.P11870266124675663976

`A001222(A329667(n+1)-A002117(n+1))`
-/

namespace A319506.P11870266124675663976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A329667 (n + 1) - A002117 (n + 1)).toNat

end

end A319506.P11870266124675663976

/-! ## A319506.P10508934314414254862

`A001221(A257695(2*(n+1))*A282120(n))`
-/

namespace A319506.P10508934314414254862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A257695 (2 * (n + 1)) * A282120 n).toNat

end

end A319506.P10508934314414254862

/-!
# A319508: a(n) = n! * [x^n] 1/(1 + n - exp(x)*(exp(n*x) - 1)/(exp(x) - 1)).

The programs for A319508, there is no canonical definition to state claims against.
-/

/-! ## A319508.P12759524196384151438

`A320253(∑[4*n])`
-/

namespace A319508.P12759524196384151438
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320253 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A319508.P12759524196384151438

/-!
# A319510: Rank of elliptic curve y^2 = x^3 - n^2 * x.

The programs for A319510, there is no canonical definition to state claims against.
-/

/-! ## A319510.P3771956771788542715

`A060952((n+1)²)`
-/

namespace A319510.P3771956771788542715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060952 ((n + 1) ^ 2)

end

end A319510.P3771956771788542715

/-! ## A319510.P844324040519865863

`A309061(Δ[2*A069891(n)])`
-/

namespace A319510.P844324040519865863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A069891 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309061 (f1 (n + 1) - f1 n).toNat

end

end A319510.P844324040519865863

/-! ## A319510.P15801306790810228048

`A309061(2*A007913(n+1))`
-/

namespace A319510.P15801306790810228048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309061 (2 * A007913 (n + 1)).toNat

end

end A319510.P15801306790810228048

/-! ## A319510.P3932544088953511764

`A309061(2*A160400(n+1))`
-/

namespace A319510.P3932544088953511764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309061 (2 * A160400 (n + 1)).toNat

end

end A319510.P3932544088953511764

/-! ## A319510.P9965884145245362666

`A309061(2*A167976(n+1))`
-/

namespace A319510.P9965884145245362666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309061 (2 * A167976 (n + 1)).toNat

end

end A319510.P9965884145245362666

/-! ## A319510.P2014818351126585941

`A309061(Δ[A004273(A069891(n))])`
-/

namespace A319510.P2014818351126585941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A069891 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309061 (f1 (n + 1) - f1 n).toNat

end

end A319510.P2014818351126585941

/-! ## A319510.P14984472111361692629

`A309061(A007913(A005843(n+1)))`
-/

namespace A319510.P14984472111361692629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309061 (A007913 (A005843 (n + 1)).toNat).toNat

end

end A319510.P14984472111361692629

/-! ## A319510.P2161444523260635061

`A309061(Δ[A069891(n)+A069891(n)])`
-/

namespace A319510.P2161444523260635061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069891 n + A069891 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309061 (f1 (n + 1) - f1 n).toNat

end

end A319510.P2161444523260635061

/-! ## A319510.P2934491152410288248

`A309061(A007913(n+1)+A007913(n+1))`
-/

namespace A319510.P2934491152410288248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309061 (A007913 (n + 1) + A007913 (n + 1)).toNat

end

end A319510.P2934491152410288248

/-!
# A319511: Triangle read by rows: T(n,k) is the number of Boolean functions on n variables having an algebraic degree equal to k (for n >= 0 and 0 <= k <= n).

The programs for A319511, there is no canonical definition to state claims against.
-/

/-! ## A319511.P1416990270251219275

`A178858(A200082(n+1)*A371767(n))`
-/

namespace A319511.P1416990270251219275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178858 (A200082 (n + 1) * A371767 n).toNat

end

end A319511.P1416990270251219275

/-!
# A319512: a(n) = 7*a(n-1) - 14*a(n-2) + 7*a(n-3), a(0) = 1, a(1) = 3, a(2) = 11.

The programs for A319512, the canonical program `A319512.P12714734316770768982` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A319512 has offset 0).

The definition of A319512 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `7*a(n-1)-14*a(n-2)+7*a(n-3)` (program `A319512.P12714734316770768982`, by `A319512.P12714734316770768982.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A319512.P12714734316770768982

`7*a(n-1)-14*a(n-2)+7*a(n-3)` with `a(0)=1, a(1)=3, a(2)=11`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A319512

/-- `7*a(n-1)-14*a(n-2)+7*a(n-3)` -/
def P12714734316770768982.Spec : Prop :=
  ∀ n, P12714734316770768982.a n = A319512 n

theorem P12714734316770768982.correct : P12714734316770768982.Spec := by
  intro n
  simp only [A319512]

end A319512

/-! ## A319512.P15341893105329830309

`A215493(n)+A215143(n)`
-/

namespace A319512.P15341893105329830309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215493 n + A215143 n

end

end A319512.P15341893105329830309

namespace A319512

/-- `A215493(n)+A215143(n)` -/
def P15341893105329830309.Spec : Prop :=
  ∀ n, P15341893105329830309.a n = A319512 n

end A319512

/-! ## A319512.P17542265964289320942

`Δ[A215008(n)]-A215008(n)`
-/

namespace A319512.P17542265964289320942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215008 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A215008 n

end

end A319512.P17542265964289320942

namespace A319512

/-- `Δ[A215008(n)]-A215008(n)` -/
def P17542265964289320942.Spec : Prop :=
  ∀ n, P17542265964289320942.a n = A319512 n

end A319512

/-! ## A319512.P4421100943750333639

`2*A122068(n+1)-A215007(n)`
-/

namespace A319512.P4421100943750333639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A122068 (n + 1) - A215007 n

end

end A319512.P4421100943750333639

namespace A319512

/-- `2*A122068(n+1)-A215007(n)` -/
def P4421100943750333639.Spec : Prop :=
  ∀ n, P4421100943750333639.a n = A319512 n

end A319512

/-! ## A319512.P3363095968593731194

`A215008(n+1)-2*A215008(n)`
-/

namespace A319512.P3363095968593731194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215008 (n + 1) - 2 * A215008 n

end

end A319512.P3363095968593731194

namespace A319512

/-- `A215008(n+1)-2*A215008(n)` -/
def P3363095968593731194.Spec : Prop :=
  ∀ n, P3363095968593731194.a n = A319512 n

end A319512

/-! ## A319512.P14757073176938103420

`A215007(n)+A217274(n)-A215008(n)`
-/

namespace A319512.P14757073176938103420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215007 n + (A217274 n - A215008 n)

end

end A319512.P14757073176938103420

namespace A319512

/-- `A215007(n)+A217274(n)-A215008(n)` -/
def P14757073176938103420.Spec : Prop :=
  ∀ n, P14757073176938103420.a n = A319512 n

end A319512

/-! ## A319512.P16091943090449769089

`Δ[Δ[A215493(n)]]-A215493(n+1)`
-/

namespace A319512.P16091943090449769089
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215493 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A215493 (n + 1)

end

end A319512.P16091943090449769089

namespace A319512

/-- `Δ[Δ[A215493(n)]]-A215493(n+1)` -/
def P16091943090449769089.Spec : Prop :=
  ∀ n, P16091943090449769089.a n = A319512 n

end A319512

/-!
# A319513: The boustrophedonic Rosenberg-Strong function maps N onto N X N where N = {0, 1, 2, ...} and n -> factor(a(n)) = 2^x*3^y -> (x, y).

The programs for A319513, there is no canonical definition to state claims against.
-/

/-! ## A319513.P1533017402458689988

`A175840(A194280(n+1)-1)`
-/

namespace A319513.P1533017402458689988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175840 (A194280 (n + 1) - 1).toNat

end

end A319513.P1533017402458689988

/-!
# A319514: The shell enumeration of N X N where N = {0, 1, 2, ...}, also called boustrophedonic Rosenberg-Strong function. Terms are interleaved x and y coordinates.

The programs for A319514, there is no canonical definition to state claims against.
-/

/-! ## A319514.P15963288374651559707

`val(A319513(floor(n/2)), A010693(n))`
-/

namespace A319514.P15963288374651559707
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A319513 ⌊(n : ℚ) / 2⌋.toNat).toNat (A010693 n).toNat

end

end A319514.P15963288374651559707

/-! ## A319514.P5153170025243800928

`A011371(A326172(n))%3`
-/

namespace A319514.P5153170025243800928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A011371 (A326172 n).toNat) 3

end

end A319514.P5153170025243800928

/-! ## A319514.P13106485133336666592

`A001179(A010027(∑[A331310(n+1)]))`
-/

namespace A319514.P13106485133336666592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331310 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001179 (A010027 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A319514.P13106485133336666592

/-! ## A319514.P17975252018595357478

`A001878(A141214(2*n+1))%A131818(n+1)`
-/

namespace A319514.P17975252018595357478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001878 (A141214 (2 * n + 1)).toNat) (A131818 (n + 1))

end

end A319514.P17975252018595357478

/-! ## A319514.P7872627757143168840

`A105700(Δ[record[A298100(n+1)]])`
-/

namespace A319514.P7872627757143168840
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298100 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 (f1 (n + 1) - f1 n).toNat

end

end A319514.P7872627757143168840

/-!
# A319515: Second term of the simple continued fraction of (Sum_{k=1..n} k^k)/(n^n).

The programs for A319515, there is no canonical definition to state claims against.
-/

/-! ## A319515.P12204113138854706746

`floor(A316083(n+1)/A000312(n))`
-/

namespace A319515.P12204113138854706746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A316083 (n + 1) : ℚ) / (A000312 n : ℚ)⌋

end

end A319515.P12204113138854706746

/-! ## A319515.P18164382025645443148

`A292988(n+1)-A033873(A049054(n+1))`
-/

namespace A319515.P18164382025645443148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292988 (n + 1) - A033873 (A049054 (n + 1)).toNat

end

end A319515.P18164382025645443148

/-! ## A319515.P12590992835930331237

`A292988(n+1)-A033873(A102006(n+1)+1)`
-/

namespace A319515.P12590992835930331237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292988 (n + 1) - A033873 (A102006 (n + 1) + 1).toNat

end

end A319515.P12590992835930331237

/-! ## A319515.P6239717297589795006

`4*n+A000038(A002415(n))-A001961(n+1)`
-/

namespace A319515.P6239717297589795006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n : ℤ) + (A000038 (A002415 n).toNat - A001961 (n + 1))

end

end A319515.P6239717297589795006

/-! ## A319515.P14209235726610478229

`A008574(n)-A001221(A011782(n))*A005206(2*n+1)`
-/

namespace A319515.P14209235726610478229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n - A001221 (A011782 n).toNat * A005206 (2 * n + 1)

end

end A319515.P14209235726610478229

/-!
# A319516: Number of integers x such that 1 <= x <= n and gcd(x,n) = gcd(x+2,n) = gcd(x+6,n) = gcd(x+8,n) = 1.

The programs for A319516, there is no canonical definition to state claims against.
-/

/-! ## A319516.P2131085665760915311

`or(A003557(n+1)%A113058(n+1), A321029(n+1))`
-/

namespace A319516.P2131085665760915311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (Int.tmod (A003557 (n + 1)) (A113058 (n + 1))) (A321029 (n + 1))

end

end A319516.P2131085665760915311

/-! ## A319516.P9089045901243827752

`A319534(A187829(n+1))-A106799(n+1)`
-/

namespace A319516.P9089045901243827752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319534 (A187829 (n + 1)).toNat - A106799 (n + 1)

end

end A319516.P9089045901243827752

/-! ## A319516.P6486403461027967870

`or(A000190(n+1), A321029(A187829(n+1)))`
-/

namespace A319516.P6486403461027967870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000190 (n + 1)) (A321029 (A187829 (n + 1)).toNat)

end

end A319516.P6486403461027967870

/-! ## A319516.P12979208960965514062

`or(A003557(n+1), A321029(A187829(n+1)))`
-/

namespace A319516.P12979208960965514062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A003557 (n + 1)) (A321029 (A187829 (n + 1)).toNat)

end

end A319516.P12979208960965514062

/-! ## A319516.P13601476975272265183

`or(A106799(A187829(n+1)), A321029(n+1))`
-/

namespace A319516.P13601476975272265183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A106799 (A187829 (n + 1)).toNat) (A321029 (n + 1))

end

end A319516.P13601476975272265183

/-!
# A319517: Expansion of Product_{1 <= i_1 <= i_2 <= i_3 <= i_4} (1 - x^(i_1*i_2*i_3*i_4)).

The programs for A319517, there is no canonical definition to state claims against.
-/

/-! ## A319517.P16221661467463497041

`A321460(n)+A185284(A325132(n))`
-/

namespace A319517.P16221661467463497041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321460 n + A185284 (A325132 n).toNat

end

end A319517.P16221661467463497041

/-!
# A319518: Number of sets of nonempty words with a total of n letters over n-ary alphabet such that if a letter occurs in the set all predecessors occur at least once.

The programs for A319518, there is no canonical definition to state claims against.
-/

/-! ## A319518.P8085575646838092606

`xor(A005408(n*a(n-1)), A248869(n))` with `a(0)=1, a(1)=1`
-/

namespace A319518.P8085575646838092606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  Int.xor (A005408 ((n : ℤ) * a (n - 1)).toNat) (A248869 n)

end

end A319518.P8085575646838092606

/-! ## A319518.P4594034685514119597

`A047222(A121673(n))+A002033(n)`
-/

namespace A319518.P4594034685514119597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047222 (A121673 n).toNat + A002033 n

end

end A319518.P4594034685514119597

/-!
# A319519: Number of sets of nonempty words with a total of 2n letters over n-ary alphabet such that all n letters occur at least once in the set.

The programs for A319519, there is no canonical definition to state claims against.
-/

/-! ## A319519.P13671246713589580076

`A319501(∑[4*n])`
-/

namespace A319519.P13671246713589580076
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319501 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A319519.P13671246713589580076

/-! ## A319519.P17329370640074423647

`char[A004442(n)]*A319501(A046092(n))`
-/

namespace A319519.P17329370640074423647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A319501 (A046092 n).toNat

end

end A319519.P17329370640074423647

/-! ## A319519.P12879825003694935769

`A007318(C(2, n+2))*A319501(A046092(n))`
-/

namespace A319519.P12879825003694935769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 (n + 2)) * A319501 (A046092 n).toNat

end

end A319519.P12879825003694935769

/-! ## A319519.P14034128102063292075

`A014963(A017137(n))*A319501(A046092(n))`
-/

namespace A319519.P14034128102063292075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A017137 n).toNat * A319501 (A046092 n).toNat

end

end A319519.P14034128102063292075

/-! ## A319519.P4330990213666451457

`A014963(A011199(n))*A319501(A046092(n))`
-/

namespace A319519.P4330990213666451457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A011199 n).toNat * A319501 (A046092 n).toNat

end

end A319519.P4330990213666451457

/-!
# A319521: Completely multiplicative with a(prime(2*k-1)) = prime(k) and a(prime(2*k)) = 1 for any k > 0 (where prime(k) denotes the k-th prime number).

The programs for A319521, there is no canonical definition to state claims against.
-/

/-! ## A319521.P8391053412656548227

`A319522(A061898(n+1))`
-/

namespace A319521.P8391053412656548227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319522 (A061898 (n + 1)).toNat

end

end A319521.P8391053412656548227

/-! ## A319521.P12593180851186184986

`A319522(A003961(n+1))`
-/

namespace A319521.P12593180851186184986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319522 (A003961 (n + 1)).toNat

end

end A319521.P12593180851186184986

/-! ## A319521.P1392825007275523496

`A319522(A045965(n+1))`
-/

namespace A319521.P1392825007275523496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319522 (A045965 (n + 1)).toNat

end

end A319521.P1392825007275523496

/-! ## A319521.P17994548234881280258

`A319522(A336853(n+1)+n+1)`
-/

namespace A319521.P17994548234881280258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319522 (A336853 (n + 1) + (n : ℤ) + 1).toNat

end

end A319521.P17994548234881280258

/-! ## A319521.P12250698336441040539

`A319522(A283980(n+1))`
-/

namespace A319521.P12250698336441040539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319522 (A283980 (n + 1)).toNat

end

end A319521.P12250698336441040539

/-! ## A319521.P13722875465608950419

`A295878(A181821(n+1))`
-/

namespace A319521.P13722875465608950419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295878 (A181821 (n + 1)).toNat

end

end A319521.P13722875465608950419

/-! ## A319521.P893521450026783162

`A295878(A304660(n+1))`
-/

namespace A319521.P893521450026783162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295878 (A304660 (n + 1)).toNat

end

end A319521.P893521450026783162

/-!
# A319522: Completely multiplicative with a(prime(2*k)) = prime(k) and a(prime(2*k-1)) = 1 for any k > 0 (where prime(k) denotes the k-th prime number).

The programs for A319522, there is no canonical definition to state claims against.
-/

/-! ## A319522.P9707914469124358465

`A319521(A064989(n+1))`
-/

namespace A319522.P9707914469124358465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319521 (A064989 (n + 1)).toNat

end

end A319522.P9707914469124358465

/-! ## A319522.P14603403208283689404

`A319521(abs(A290099(n+1)))`
-/

namespace A319522.P14603403208283689404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319521 |A290099 (n + 1)|.toNat

end

end A319522.P14603403208283689404

/-! ## A319522.P9804548052165088856

`A319521(∑{d}[n+1, A349127(#)])`
-/

namespace A319522.P9804548052165088856
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319521 (∑ d ∈ Nat.divisors (f1 n), A349127 d).toNat

end

end A319522.P9804548052165088856

/-! ## A319522.P2764462674887150005

`A319521(A200746(n+1)/(n+1))`
-/

namespace A319522.P2764462674887150005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319521 (SequenceMachineLib.roundAway ((A200746 (n + 1) : ℚ) / (n + 1 : ℚ))).toNat

end

end A319522.P2764462674887150005

/-! ## A319522.P4073048693901879488

`A319521(A252463((n+1)/2^val(n+1, 2)))`
-/

namespace A319522.P4073048693901879488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319521 (A252463 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat).toNat

end

end A319522.P4073048693901879488

/-! ## A319522.P2329010981551791770

`A319521(A252463((n+1)*2^-val(n+1, 2)))`
-/

namespace A319522.P2329010981551791770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319521 (A252463 (SequenceMachineLib.roundAway ((n + 1 : ℚ) * (2 : ℚ) ^ (-(SequenceMachineLib.valuation (n + 1) 2 : ℤ) : ℤ))).toNat).toNat

end

end A319522.P2329010981551791770

/-! ## A319522.P12390288688322570882

`A319521(A252463(2*(n+1)/(xor(n, n+1)+1)))`
-/

namespace A319522.P12390288688322570882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319521 (A252463 (SequenceMachineLib.roundAway ((2 * (n + 1) : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ))).toNat).toNat

end

end A319522.P12390288688322570882

/-! ## A319522.P1812560659391327972

`A319521(lcm(A065357(n), A290099(n+1)))`
-/

namespace A319522.P1812560659391327972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319521 (Int.lcm (A065357 n) (A290099 (n + 1)))

end

end A319522.P1812560659391327972

/-! ## A319522.P18223348024570362228

`A319521(A000010(n+1)-A353748(n+1))`
-/

namespace A319522.P18223348024570362228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319521 (A000010 (n + 1) - A353748 (n + 1)).toNat

end

end A319522.P18223348024570362228

/-! ## A319522.P8378857640670115699

`A319521(A353747(n+1)-A000010(n+1))`
-/

namespace A319522.P8378857640670115699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319521 (A353747 (n + 1) - A000010 (n + 1)).toNat

end

end A319522.P8378857640670115699

/-! ## A319522.P547528014451973659

`A319521(A061898(n+1))`
-/

namespace A319522.P547528014451973659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319521 (A061898 (n + 1)).toNat

end

end A319522.P547528014451973659

/-!
# A319524: a(n) is the smallest number that belongs simultaneously to the two arithmetic progressions prime(n) + m*prime(n+1) and prime(n+1) + m*prime(n+2), m >= 1, n >= 1.

The programs for A319524, there is no canonical definition to state claims against.
-/

/-! ## A319524.P15766473394718979140

`A268491(∑[n+2])`
-/

namespace A319524.P15766473394718979140
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268491 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A319524.P15766473394718979140

/-!
# A319525: Completely multiplicative with a(prime(k)) = prime(2*k - 1) (where prime(k) denotes the k-th prime).

The programs for A319525, there is no canonical definition to state claims against.
-/

/-! ## A319525.P6308381668975163401

`A064989(A297002(n+1))`
-/

namespace A319525.P6308381668975163401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (A297002 (n + 1)).toNat

end

end A319525.P6308381668975163401

/-! ## A319525.P14377503732545365583

`A283463(A297002(n+1)+1)`
-/

namespace A319525.P14377503732545365583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283463 (A297002 (n + 1) + 1).toNat

end

end A319525.P14377503732545365583

/-! ## A319525.P10655437016717784552

`A118306(or(1, A297002(n+1)))`
-/

namespace A319525.P10655437016717784552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118306 (Int.lor 1 (A297002 (n + 1))).toNat

end

end A319525.P10655437016717784552

/-! ## A319525.P5864105853629645632

`A252463(A297002(n+1))%A007618(n+1)`
-/

namespace A319525.P5864105853629645632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A252463 (A297002 (n + 1)).toNat) (A007618 (n + 1))

end

end A319525.P5864105853629645632

/-! ## A319525.P12570378349534231169

`A246277(A297002(2*(n+1)))`
-/

namespace A319525.P12570378349534231169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246277 (A297002 (2 * (n + 1))).toNat

end

end A319525.P12570378349534231169

/-! ## A319525.P1848650084286222318

`A290099(4*A297002(n+1))`
-/

namespace A319525.P1848650084286222318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290099 (4 * A297002 (n + 1)).toNat

end

end A319525.P1848650084286222318

/-! ## A319525.P2082442522593298401

`A285727(3*A297002(n+1))`
-/

namespace A319525.P2082442522593298401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285727 (3 * A297002 (n + 1)).toNat

end

end A319525.P2082442522593298401

/-!
# A319526: Square array read by antidiagonals upwards: T(n,k) = sigma(n*k), n >= 1, k >= 1.

The programs for A319526, the canonical program `A319526.P5033743873858827334` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A319526 has offset 1).

The definition of A319526 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A319526.P5033743873858827334

`A000203(A003991(n+1))`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A319526

/-- `A000203(A003991(n+1))` -/
def P5033743873858827334.Spec : Prop :=
  ∀ n, P5033743873858827334.a n = A319526 (n + 1)

theorem P5033743873858827334.correct : P5033743873858827334.Spec := by
  intro n
  simp only [A319526, Nat.add_sub_cancel]

end A319526

/-! ## A319526.P7667202827090012446

`A000203(C(comp[∑[n]]-n, 2)-∑[2*n-round(sqrt(2*n))²])`
-/

namespace A319526.P7667202827090012446
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - SequenceMachineLib.roundAway (Real.sqrt (2 * n : ℝ)) ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - ∑ j ∈ Finset.range (n + 1), f3 j).toNat

end

end A319526.P7667202827090012446

namespace A319526

/-- `A000203(C(comp[∑[n]]-n, 2)-∑[2*n-round(sqrt(2*n))²])` -/
def P7667202827090012446.Spec : Prop :=
  ∀ n, P7667202827090012446.a n = A319526 (n + 1)

end A319526

/-! ## A319526.P16139355766306298212

`A000203((1-C(∑[char[∑[n]]], 2)+n)*(C(comp[∑[n]]-n, 2)-n))`
-/

namespace A319526.P16139355766306298212
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
  A000203 ((1 - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) + (n : ℤ)) * ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f4 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ))).toNat

end

end A319526.P16139355766306298212

namespace A319526

/-- `A000203((1-C(∑[char[∑[n]]], 2)+n)*(C(comp[∑[n]]-n, 2)-n))` -/
def P16139355766306298212.Spec : Prop :=
  ∀ n, P16139355766306298212.a n = A319526 (n + 1)

end A319526

/-! ## A319526.P12802286241237577156

`A000203(∑[∑[char[∑[n]]]²]%(n+1)+1-C(∑[char[∑[n]]], 2)+n)`
-/

namespace A319526.P12802286241237577156
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def f7 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f7 j

open Classical in
def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f6 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 ((((∑ j ∈ Finset.range (n + 1), f1 j) % (n + 1) : ℕ) : ℤ) + (1 - (Nat.choose (∑ j ∈ Finset.range (n + 1), f5 j) 2 : ℤ) + (n : ℤ))).toNat

end

end A319526.P12802286241237577156

namespace A319526

/-- `A000203(∑[∑[char[∑[n]]]²]%(n+1)+1-C(∑[char[∑[n]]], 2)+n)` -/
def P12802286241237577156.Spec : Prop :=
  ∀ n, P12802286241237577156.a n = A319526 (n + 1)

end A319526

/-! ## A319526.P12343266291998003802

`A000203(A059036(n)+1)`
-/

namespace A319526.P12343266291998003802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A059036 n + 1).toNat

end

end A319526.P12343266291998003802

namespace A319526

/-- `A000203(A059036(n)+1)` -/
def P12343266291998003802.Spec : Prop :=
  ∀ n, P12343266291998003802.a n = A319526 (n + 1)

end A319526

/-! ## A319526.P5194081083136063712

`A000203(A098352(n+1)/4)`
-/

namespace A319526.P5194081083136063712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.roundAway ((A098352 (n + 1) : ℚ) / 4)).toNat

end

end A319526.P5194081083136063712

namespace A319526

/-- `A000203(A098352(n+1)/4)` -/
def P5194081083136063712.Spec : Prop :=
  ∀ n, P5194081083136063712.a n = A319526 (n + 1)

end A319526

/-! ## A319526.P16586075362866980684

`∑{d}[A094053(n+1)+A002260(n+1), #]`
-/

namespace A319526.P16586075362866980684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094053 (n + 1) + A002260 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A319526.P16586075362866980684

namespace A319526

/-- `∑{d}[A094053(n+1)+A002260(n+1), #]` -/
def P16586075362866980684.Spec : Prop :=
  ∀ n, (P16586075362866980684.a n : ℤ) = A319526 (n + 1)

end A319526

/-! ## A319526.P9184108469487517218

`A000203(A002260(n+1)*A004736(n+1))`
-/

namespace A319526.P9184108469487517218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A002260 (n + 1) * A004736 (n + 1)).toNat

end

end A319526.P9184108469487517218

namespace A319526

/-- `A000203(A002260(n+1)*A004736(n+1))` -/
def P9184108469487517218.Spec : Prop :=
  ∀ n, P9184108469487517218.a n = A319526 (n + 1)

end A319526

/-! ## A319526.P10768124336745024830

`A000203(A057555(2*n+1)*A057555(2*(n+1)))`
-/

namespace A319526.P10768124336745024830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A057555 (2 * n + 1) * A057555 (2 * (n + 1))).toNat

end

end A319526.P10768124336745024830

namespace A319526

/-- `A000203(A057555(2*n+1)*A057555(2*(n+1)))` -/
def P10768124336745024830.Spec : Prop :=
  ∀ n, P10768124336745024830.a n = A319526 (n + 1)

end A319526

/-! ## A319526.P12023398387014545256

`A069290(A098359(n+1))`
-/

namespace A319526.P12023398387014545256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069290 (A098359 (n + 1)).toNat

end

end A319526.P12023398387014545256

namespace A319526

/-- `A069290(A098359(n+1))` -/
def P12023398387014545256.Spec : Prop :=
  ∀ n, P12023398387014545256.a n = A319526 (n + 1)

end A319526

/-!
# A319527: a(n) = 7 * sigma(n).

The programs for A319527, the canonical program `A319527.P18010082604810730284` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A319527 has offset 1).

The definition of A319527 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A319527.P18010082604810730284

`7*A000203(n+1)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A319527

/-- `7*A000203(n+1)` -/
def P18010082604810730284.Spec : Prop :=
  ∀ n, P18010082604810730284.a n = A319527 (n + 1)

theorem P18010082604810730284.correct : P18010082604810730284.Spec := by
  intro n
  simp only [A319527, Nat.add_sub_cancel]

end A319527

/-! ## A319527.P4042957300228502732

`A000203(n+1)+A274536(n+1)`
-/

namespace A319527.P4042957300228502732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) + A274536 (n + 1)

end

end A319527.P4042957300228502732

namespace A319527

/-- `A000203(n+1)+A274536(n+1)` -/
def P4042957300228502732.Spec : Prop :=
  ∀ n, P4042957300228502732.a n = A319527 (n + 1)

end A319527

/-! ## A319527.P16213510215713616957

`7*∑{d}[n+1, #]`
-/

namespace A319527.P16213510215713616957
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 * (∑ d ∈ Nat.divisors (f1 n), d)

end

end A319527.P16213510215713616957

namespace A319527

/-- `7*∑{d}[n+1, #]` -/
def P16213510215713616957.Spec : Prop :=
  ∀ n, (P16213510215713616957.a n : ℤ) = A319527 (n + 1)

end A319527

/-! ## A319527.P202042170755410025

`∑{d}[2*n-(n-1), 7*#]`
-/

namespace A319527.P202042170755410025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - ((n : ℤ) - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, 7 * d

end

end A319527.P202042170755410025

namespace A319527

/-- `∑{d}[2*n-(n-1), 7*#]` -/
def P202042170755410025.Spec : Prop :=
  ∀ n, (P202042170755410025.a n : ℤ) = A319527 (n + 1)

end A319527

/-! ## A319527.P5226451435442511997

`Δ[7*A160664(n)]`
-/

namespace A319527.P5226451435442511997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * A160664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A319527.P5226451435442511997

namespace A319527

/-- `Δ[7*A160664(n)]` -/
def P5226451435442511997.Spec : Prop :=
  ∀ n, P5226451435442511997.a n = A319527 (n + 1)

end A319527

/-! ## A319527.P1425995461341625811

`abs(Δ[7*A330725(n)])`
-/

namespace A319527.P1425995461341625811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * A330725 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A319527.P1425995461341625811

namespace A319527

/-- `abs(Δ[7*A330725(n)])` -/
def P1425995461341625811.Spec : Prop :=
  ∀ n, P1425995461341625811.a n = A319527 (n + 1)

end A319527

/-! ## A319527.P10843207877369812551

`7*A245092(Δ[n²])`
-/

namespace A319527.P10843207877369812551
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * A245092 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A319527.P10843207877369812551

namespace A319527

/-- `7*A245092(Δ[n²])` -/
def P10843207877369812551.Spec : Prop :=
  ∀ n, P10843207877369812551.a n = A319527 (n + 1)

end A319527

/-! ## A319527.P6216118174737146763

`7*sqrt(A072861(n+1))`
-/

namespace A319527.P6216118174737146763
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  7 * Real.sqrt (A072861 (n + 1) : ℝ)

end

end A319527.P6216118174737146763

namespace A319527

/-- `7*sqrt(A072861(n+1))` -/
def P6216118174737146763.Spec : Prop :=
  ∀ n, P6216118174737146763.a n = (A319527 (n + 1) : ℝ)

end A319527

/-! ## A319527.P7559548075712217207

`7*(A001065(n+1)+1+n)`
-/

namespace A319527.P7559548075712217207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * (A001065 (n + 1) + 1 + (n : ℤ))

end

end A319527.P7559548075712217207

namespace A319527

/-- `7*(A001065(n+1)+1+n)` -/
def P7559548075712217207.Spec : Prop :=
  ∀ n, P7559548075712217207.a n = A319527 (n + 1)

end A319527

/-! ## A319527.P1179678224809686447

`7*(A155085(n+1)-(n+1))`
-/

namespace A319527.P1179678224809686447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * (A155085 (n + 1) - (n + 1 : ℤ))

end

end A319527.P1179678224809686447

namespace A319527

/-- `7*(A155085(n+1)-(n+1))` -/
def P1179678224809686447.Spec : Prop :=
  ∀ n, P1179678224809686447.a n = A319527 (n + 1)

end A319527

/-! ## A319527.P5940811135638646351

`7*A064987(n+1)/(n+1)`
-/

namespace A319527.P5940811135638646351
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  7 * ((A064987 (n + 1) : ℚ) / (n + 1 : ℚ))

end

end A319527.P5940811135638646351

namespace A319527

/-- `7*A064987(n+1)/(n+1)` -/
def P5940811135638646351.Spec : Prop :=
  ∀ n, P5940811135638646351.a n = (A319527 (n + 1) : ℚ)

end A319527

/-! ## A319527.P16990007066427583233

`A274535(n+1)+A074400(n+1)`
-/

namespace A319527.P16990007066427583233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274535 (n + 1) + A074400 (n + 1)

end

end A319527.P16990007066427583233

namespace A319527

/-- `A274535(n+1)+A074400(n+1)` -/
def P16990007066427583233.Spec : Prop :=
  ∀ n, P16990007066427583233.a n = A319527 (n + 1)

end A319527

/-! ## A319527.P4171103677636719609

`A272027(n+1)+A239050(n+1)`
-/

namespace A319527.P4171103677636719609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272027 (n + 1) + A239050 (n + 1)

end

end A319527.P4171103677636719609

namespace A319527

/-- `A272027(n+1)+A239050(n+1)` -/
def P4171103677636719609.Spec : Prop :=
  ∀ n, P4171103677636719609.a n = A319527 (n + 1)

end A319527

/-! ## A319527.P12740033193638581319

`A319528(n+1)-A000203(n+1)`
-/

namespace A319527.P12740033193638581319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319528 (n + 1) - A000203 (n + 1)

end

end A319527.P12740033193638581319

namespace A319527

/-- `A319528(n+1)-A000203(n+1)` -/
def P12740033193638581319.Spec : Prop :=
  ∀ n, P12740033193638581319.a n = A319527 (n + 1)

end A319527

/-! ## A319527.P16637911836003176634

`A283078(n+1)-A113957(n+1)`
-/

namespace A319527.P16637911836003176634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283078 (n + 1) - A113957 (n + 1)

end

end A319527.P16637911836003176634

namespace A319527

/-- `A283078(n+1)-A113957(n+1)` -/
def P16637911836003176634.Spec : Prop :=
  ∀ n, P16637911836003176634.a n = A319527 (n + 1)

end A319527

/-! ## A319527.P4409614364661902522

`A325299(n+1)-A074400(n+1)`
-/

namespace A319527.P4409614364661902522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325299 (n + 1) - A074400 (n + 1)

end

end A319527.P4409614364661902522

namespace A319527

/-- `A325299(n+1)-A074400(n+1)` -/
def P4409614364661902522.Spec : Prop :=
  ∀ n, P4409614364661902522.a n = A319527 (n + 1)

end A319527

/-! ## A319527.P8992082619902383602

`A326122(n+1)-A272027(n+1)`
-/

namespace A319527.P8992082619902383602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326122 (n + 1) - A272027 (n + 1)

end

end A319527.P8992082619902383602

namespace A319527

/-- `A326122(n+1)-A272027(n+1)` -/
def P8992082619902383602.Spec : Prop :=
  ∀ n, P8992082619902383602.a n = A319527 (n + 1)

end A319527

/-! ## A319527.P1723773261142178512

`(A088841(n+1)-1)*A113957(n+1)`
-/

namespace A319527.P1723773261142178512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A088841 (n + 1) - 1) * A113957 (n + 1)

end

end A319527.P1723773261142178512

namespace A319527

/-- `(A088841(n+1)-1)*A113957(n+1)` -/
def P1723773261142178512.Spec : Prop :=
  ∀ n, P1723773261142178512.a n = A319527 (n + 1)

end A319527

/-! ## A319527.P17306086877288460248

`A272027(n+1)+2*A074400(n+1)`
-/

namespace A319527.P17306086877288460248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272027 (n + 1) + 2 * A074400 (n + 1)

end

end A319527.P17306086877288460248

namespace A319527

/-- `A272027(n+1)+2*A074400(n+1)` -/
def P17306086877288460248.Spec : Prop :=
  ∀ n, P17306086877288460248.a n = A319527 (n + 1)

end A319527

/-! ## A319527.P16051977672657290417

`A274536(n+1)+A074400(n+1)/2`
-/

namespace A319527.P16051977672657290417
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A274536 (n + 1) : ℚ) + (A074400 (n + 1) : ℚ) / 2

end

end A319527.P16051977672657290417

namespace A319527

/-- `A274536(n+1)+A074400(n+1)/2` -/
def P16051977672657290417.Spec : Prop :=
  ∀ n, P16051977672657290417.a n = (A319527 (n + 1) : ℚ)

end A319527

/-!
# A319528: a(n) = 8 * sigma(n).

The programs for A319528, the canonical program `A319528.P15910586286940725723` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A319528 has offset 1).

The definition of A319528 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A319528.P15910586286940725723

`2*A239050(n+1)`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A319528

/-- `2*A239050(n+1)` -/
def P15910586286940725723.Spec : Prop :=
  ∀ n, P15910586286940725723.a n = A319528 (n + 1)

theorem P15910586286940725723.correct : P15910586286940725723.Spec := by
  intro n
  simp only [A319528, Nat.add_sub_cancel]

end A319528

/-! ## A319528.P4345757171150599787

`4*A074400(n+1)`
-/

namespace A319528.P4345757171150599787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A074400 (n + 1)

end

end A319528.P4345757171150599787

namespace A319528

/-- `4*A074400(n+1)` -/
def P4345757171150599787.Spec : Prop :=
  ∀ n, P4345757171150599787.a n = A319528 (n + 1)

end A319528

/-! ## A319528.P5610714732727847470

`8*A000203(n+1)`
-/

namespace A319528.P5610714732727847470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A000203 (n + 1)

end

end A319528.P5610714732727847470

namespace A319528

/-- `8*A000203(n+1)` -/
def P5610714732727847470.Spec : Prop :=
  ∀ n, P5610714732727847470.a n = A319528 (n + 1)

end A319528

/-! ## A319528.P284449228994056436

`A000203(n+1)+A319527(n+1)`
-/

namespace A319528.P284449228994056436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) + A319527 (n + 1)

end

end A319528.P284449228994056436

namespace A319528

/-- `A000203(n+1)+A319527(n+1)` -/
def P284449228994056436.Spec : Prop :=
  ∀ n, P284449228994056436.a n = A319528 (n + 1)

end A319528

/-! ## A319528.P13540852232052206102

`8*∑{d}[n+1, #]`
-/

namespace A319528.P13540852232052206102
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * (∑ d ∈ Nat.divisors (f1 n), d)

end

end A319528.P13540852232052206102

namespace A319528

/-- `8*∑{d}[n+1, #]` -/
def P13540852232052206102.Spec : Prop :=
  ∀ n, (P13540852232052206102.a n : ℤ) = A319528 (n + 1)

end A319528

/-! ## A319528.P11005490580887123011

`2^(log2(∑{d}[n+1, #])+3)`
-/

namespace A319528.P11005490580887123011
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (2 : ℝ) ^ (Real.logb 2 ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℝ) + 3)

end

end A319528.P11005490580887123011

namespace A319528

/-- `2^(log2(∑{d}[n+1, #])+3)` -/
def P11005490580887123011.Spec : Prop :=
  ∀ n, P11005490580887123011.a n = (A319528 (n + 1) : ℝ)

end A319528

/-! ## A319528.P1386193392012265158

`∑{d}[2*n-(n-1), 8*#]`
-/

namespace A319528.P1386193392012265158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - ((n : ℤ) - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, 8 * d

end

end A319528.P1386193392012265158

namespace A319528

/-- `∑{d}[2*n-(n-1), 8*#]` -/
def P1386193392012265158.Spec : Prop :=
  ∀ n, (P1386193392012265158.a n : ℤ) = A319528 (n + 1)

end A319528

/-! ## A319528.P5751376941512789681

`Δ[8*A160664(n)]`
-/

namespace A319528.P5751376941512789681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A160664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A319528.P5751376941512789681

namespace A319528

/-- `Δ[8*A160664(n)]` -/
def P5751376941512789681.Spec : Prop :=
  ∀ n, P5751376941512789681.a n = A319528 (n + 1)

end A319528

/-! ## A319528.P13366664789627124152

`4*(A002659(n+1)+1)`
-/

namespace A319528.P13366664789627124152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A002659 (n + 1) + 1)

end

end A319528.P13366664789627124152

namespace A319528

/-- `4*(A002659(n+1)+1)` -/
def P13366664789627124152.Spec : Prop :=
  ∀ n, P13366664789627124152.a n = A319528 (n + 1)

end A319528

/-! ## A319528.P14333785686953272406

`4*A326136(2*(n+1))`
-/

namespace A319528.P14333785686953272406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A326136 (2 * (n + 1))

end

end A319528.P14333785686953272406

namespace A319528

/-- `4*A326136(2*(n+1))` -/
def P14333785686953272406.Spec : Prop :=
  ∀ n, P14333785686953272406.a n = A319528 (n + 1)

end A319528

/-! ## A319528.P9123535166702854402

`4/3*A274536(n+1)`
-/

namespace A319528.P9123535166702854402
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 : ℚ) / 3 * (A274536 (n + 1) : ℚ)

end

end A319528.P9123535166702854402

namespace A319528

/-- `4/3*A274536(n+1)` -/
def P9123535166702854402.Spec : Prop :=
  ∀ n, P9123535166702854402.a n = (A319528 (n + 1) : ℚ)

end A319528

/-! ## A319528.P8265507481841412498

`8*A245092(2*n+1)`
-/

namespace A319528.P8265507481841412498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A245092 (2 * n + 1)

end

end A319528.P8265507481841412498

namespace A319528

/-- `8*A245092(2*n+1)` -/
def P8265507481841412498.Spec : Prop :=
  ∀ n, P8265507481841412498.a n = A319528 (n + 1)

end A319528

/-! ## A319528.P10408955777327114493

`4/5*A326122(n+1)`
-/

namespace A319528.P10408955777327114493
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 : ℚ) / 5 * (A326122 (n + 1) : ℚ)

end

end A319528.P10408955777327114493

namespace A319528

/-- `4/5*A326122(n+1)` -/
def P10408955777327114493.Spec : Prop :=
  ∀ n, P10408955777327114493.a n = (A319528 (n + 1) : ℚ)

end A319528

/-! ## A319528.P15272234034349138263

`A076835(n+1)/(3*(n+1))`
-/

namespace A319528.P15272234034349138263
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A076835 (n + 1) : ℚ) / (3 * (n + 1) : ℚ)

end

end A319528.P15272234034349138263

namespace A319528

/-- `A076835(n+1)/(3*(n+1))` -/
def P15272234034349138263.Spec : Prop :=
  ∀ n, P15272234034349138263.a n = (A319528 (n + 1) : ℚ)

end A319528

/-! ## A319528.P1877412842229106681

`8*(A001065(n+1)+n+1)`
-/

namespace A319528.P1877412842229106681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * (A001065 (n + 1) + (n + 1 : ℤ))

end

end A319528.P1877412842229106681

namespace A319528

/-- `8*(A001065(n+1)+n+1)` -/
def P1877412842229106681.Spec : Prop :=
  ∀ n, P1877412842229106681.a n = A319528 (n + 1)

end A319528

/-! ## A319528.P1536384393016407728

`8*A064987(n+1)/(n+1)`
-/

namespace A319528.P1536384393016407728
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  8 * ((A064987 (n + 1) : ℚ) / (n + 1 : ℚ))

end

end A319528.P1536384393016407728

namespace A319528

/-- `8*A064987(n+1)/(n+1)` -/
def P1536384393016407728.Spec : Prop :=
  ∀ n, P1536384393016407728.a n = (A319528 (n + 1) : ℚ)

end A319528

/-! ## A319528.P11910334816609686398

`2*4*A000203(2*n-(n-1))`
-/

namespace A319528.P11910334816609686398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (4 * A000203 ((2 * n : ℤ) - ((n : ℤ) - 1)).toNat)

end

end A319528.P11910334816609686398

namespace A319528

/-- `2*4*A000203(2*n-(n-1))` -/
def P11910334816609686398.Spec : Prop :=
  ∀ n, P11910334816609686398.a n = A319528 (n + 1)

end A319528

/-! ## A319528.P7743253267569159842

`A294628(n+1)+A017113(n)`
-/

namespace A319528.P7743253267569159842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294628 (n + 1) + A017113 n

end

end A319528.P7743253267569159842

namespace A319528

/-- `A294628(n+1)+A017113(n)` -/
def P7743253267569159842.Spec : Prop :=
  ∀ n, P7743253267569159842.a n = A319528 (n + 1)

end A319528

/-! ## A319528.P12772583572322719502

`A274536(n+1)+A074400(n+1)`
-/

namespace A319528.P12772583572322719502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274536 (n + 1) + A074400 (n + 1)

end

end A319528.P12772583572322719502

namespace A319528

/-- `A274536(n+1)+A074400(n+1)` -/
def P12772583572322719502.Spec : Prop :=
  ∀ n, P12772583572322719502.a n = A319528 (n + 1)

end A319528

/-! ## A319528.P14603973691933191996

`A274535(n+1)+A272027(n+1)`
-/

namespace A319528.P14603973691933191996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274535 (n + 1) + A272027 (n + 1)

end

end A319528.P14603973691933191996

namespace A319528

/-- `A274535(n+1)+A272027(n+1)` -/
def P14603973691933191996.Spec : Prop :=
  ∀ n, P14603973691933191996.a n = A319528 (n + 1)

end A319528

/-!
# A319529: Odd numbers that have middle divisors.

The programs for A319529, the canonical program `A319529.P1117598042908344676` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A319529 has offset 1).

The definition of A319529 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5445 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A319529.P1117598042908344676

`2*lt[A348327(2*n+1), 1]+1`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A319529

/-- `2*lt[A348327(2*n+1), 1]+1` -/
def P1117598042908344676.Spec : Prop :=
  ∀ n, (P1117598042908344676.a n : ℤ) = A319529 (n + 1)

theorem P1117598042908344676.correct : P1117598042908344676.Spec := by
  intro n
  simp only [A319529, Nat.add_sub_cancel]

end A319529

/-! ## A319529.P1041983609954909102

`record[(2*n+1)*A347950(2*n+1)]`
-/

namespace A319529.P1041983609954909102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * A347950 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A319529.P1041983609954909102

namespace A319529

/-- `record[(2*n+1)*A347950(2*n+1)]` -/
def P1041983609954909102.Spec : Prop :=
  ∀ n, P1041983609954909102.a n = A319529 (n + 1)

end A319529

/-! ## A319529.P5968230124230656813

`filter[A014076(n+1), A347950(#)]`
-/

namespace A319529.P5968230124230656813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014076 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A347950 (f1 j).toNat = 1) n)

end

end A319529.P5968230124230656813

namespace A319529

/-- `filter[A014076(n+1), A347950(#)]` -/
def P5968230124230656813.Spec : Prop :=
  ∀ n, P5968230124230656813.a n = A319529 (n + 1)

end A319529

/-! ## A319529.P15333009670322784095

`∩[A014076(n+1), A071562(n+1)]`
-/

namespace A319529.P15333009670322784095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014076 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071562 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A319529.P15333009670322784095

namespace A319529

/-- `∩[A014076(n+1), A071562(n+1)]` -/
def P15333009670322784095.Spec : Prop :=
  ∀ n, (P15333009670322784095.a n : ℤ) = A319529 (n + 1)

end A319529

/-! ## A319529.P15609603265889294385

`filter[A255763(n+1), A347950(#)]`
-/

namespace A319529.P15609603265889294385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255763 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A347950 (f1 j).toNat = 1) n)

end

end A319529.P15609603265889294385

namespace A319529

/-- `filter[A255763(n+1), A347950(#)]` -/
def P15609603265889294385.Spec : Prop :=
  ∀ n, P15609603265889294385.a n = A319529 (n + 1)

end A319529

/-! ## A319529.P10841279682469937183

`∩[A071562(n+1), A255763(n+1)]`
-/

namespace A319529.P10841279682469937183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071562 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255763 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A319529.P10841279682469937183

namespace A319529

/-- `∩[A071562(n+1), A255763(n+1)]` -/
def P10841279682469937183.Spec : Prop :=
  ∀ n, (P10841279682469937183.a n : ℤ) = A319529 (n + 1)

end A319529

/-! ## A319529.P7790615902410116893

`record[A093178(A071562(n+1))]`
-/

namespace A319529.P7790615902410116893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 (A071562 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A319529.P7790615902410116893

namespace A319529

/-- `record[A093178(A071562(n+1))]` -/
def P7790615902410116893.Spec : Prop :=
  ∀ n, P7790615902410116893.a n = A319529 (n + 1)

end A319529

/-! ## A319529.P13277512068244098542

`filter[A004273(n+1), A347950(#)]`
-/

namespace A319529.P13277512068244098542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A347950 (f1 j).toNat = 1) n)

end

end A319529.P13277512068244098542

namespace A319529

/-- `filter[A004273(n+1), A347950(#)]` -/
def P13277512068244098542.Spec : Prop :=
  ∀ n, P13277512068244098542.a n = A319529 (n + 1)

end A319529

/-! ## A319529.P1655747867364652517

`filter[A060747(n+1), A347950(#)]`
-/

namespace A319529.P1655747867364652517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060747 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A347950 (f1 j).toNat = 1) n)

end

end A319529.P1655747867364652517

namespace A319529

/-- `filter[A060747(n+1), A347950(#)]` -/
def P1655747867364652517.Spec : Prop :=
  ∀ n, P1655747867364652517.a n = A319529 (n + 1)

end A319529

/-! ## A319529.P17897926489027336334

`filter[A267872(n+1), A347950(#)]`
-/

namespace A319529.P17897926489027336334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267872 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A347950 (f1 j).toNat = 1) n)

end

end A319529.P17897926489027336334

namespace A319529

/-- `filter[A267872(n+1), A347950(#)]` -/
def P17897926489027336334.Spec : Prop :=
  ∀ n, P17897926489027336334.a n = A319529 (n + 1)

end A319529

/-! ## A319529.P1962625121107723304

`∩[A071562(n+1), A004273(n)]`
-/

namespace A319529.P1962625121107723304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071562 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A319529.P1962625121107723304

namespace A319529

/-- `∩[A071562(n+1), A004273(n)]` -/
def P1962625121107723304.Spec : Prop :=
  ∀ n, (P1962625121107723304.a n : ℤ) = A319529 (n + 1)

end A319529

/-! ## A319529.P4044786470898519024

`∩[A071562(n+1), A060747(n)]`
-/

namespace A319529.P4044786470898519024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071562 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060747 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A319529.P4044786470898519024

namespace A319529

/-- `∩[A071562(n+1), A060747(n)]` -/
def P4044786470898519024.Spec : Prop :=
  ∀ n, (P4044786470898519024.a n : ℤ) = A319529 (n + 1)

end A319529

/-! ## A319529.P3062691945303451576

`∩[A071562(n+1), A005843(n)+1]`
-/

namespace A319529.P3062691945303451576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071562 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A319529.P3062691945303451576

namespace A319529

/-- `∩[A071562(n+1), A005843(n)+1]` -/
def P3062691945303451576.Spec : Prop :=
  ∀ n, (P3062691945303451576.a n : ℤ) = A319529 (n + 1)

end A319529

/-! ## A319529.P16940473531308538963

`record[A093178(A244367(n+1))]`
-/

namespace A319529.P16940473531308538963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 (A244367 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A319529.P16940473531308538963

namespace A319529

/-- `record[A093178(A244367(n+1))]` -/
def P16940473531308538963.Spec : Prop :=
  ∀ n, P16940473531308538963.a n = A319529 (n + 1)

end A319529

/-! ## A319529.P9885844623665198432

`filter[A075065(2*n+1), A347950(#)]`
-/

namespace A319529.P9885844623665198432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075065 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A347950 (f1 j).toNat = 1) n)

end

end A319529.P9885844623665198432

namespace A319529

/-- `filter[A075065(2*n+1), A347950(#)]` -/
def P9885844623665198432.Spec : Prop :=
  ∀ n, P9885844623665198432.a n = A319529 (n + 1)

end A319529

/-! ## A319529.P3830298883777588624

`filter[A004442(2*n), A347950(#)]`
-/

namespace A319529.P3830298883777588624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A347950 (f1 j).toNat = 1) n)

end

end A319529.P3830298883777588624

namespace A319529

/-- `filter[A004442(2*n), A347950(#)]` -/
def P3830298883777588624.Spec : Prop :=
  ∀ n, P3830298883777588624.a n = A319529 (n + 1)

end A319529

/-! ## A319529.P7978132853339318531

`filter[A109613(2*n), A347950(#)]`
-/

namespace A319529.P7978132853339318531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A347950 (f1 j).toNat = 1) n)

end

end A319529.P7978132853339318531

namespace A319529

/-- `filter[A109613(2*n), A347950(#)]` -/
def P7978132853339318531.Spec : Prop :=
  ∀ n, P7978132853339318531.a n = A319529 (n + 1)

end A319529

/-! ## A319529.P6695601288629117724

`filter[A071562(n+1), A000035(#)]`
-/

namespace A319529.P6695601288629117724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071562 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A319529.P6695601288629117724

namespace A319529

/-- `filter[A071562(n+1), A000035(#)]` -/
def P6695601288629117724.Spec : Prop :=
  ∀ n, P6695601288629117724.a n = A319529 (n + 1)

end A319529

/-! ## A319529.P4529199136554877715

`filter[A057174(2*n), A347950(#)]`
-/

namespace A319529.P4529199136554877715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057174 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A347950 (f1 j).toNat = 1) n)

end

end A319529.P4529199136554877715

namespace A319529

/-- `filter[A057174(2*n), A347950(#)]` -/
def P4529199136554877715.Spec : Prop :=
  ∀ n, P4529199136554877715.a n = A319529 (n + 1)

end A319529

/-!
# A319534: Number of integers x such that 1 <= x <= n and gcd(x,n) = gcd(x+2,n) = gcd(x+6,n) = 1.

The programs for A319534, there is no canonical definition to state claims against.
-/

/-! ## A319534.P727788979389730476

`A048766(A002472(n+1)²*A319516(n+1))`
-/

namespace A319534.P727788979389730476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A002472 (n + 1) ^ 2 * A319516 (n + 1)).toNat

end

end A319534.P727788979389730476

/-! ## A319534.P10536692732157274718

`A048766(A002472(n+1)*A319516(n+1)*A002472(n+1))`
-/

namespace A319534.P10536692732157274718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A002472 (n + 1) * A319516 (n + 1) * A002472 (n + 1)).toNat

end

end A319534.P10536692732157274718

/-! ## A319534.P7703733577618613571

`A007432(A187829(n+1)+A120229(n+1))`
-/

namespace A319534.P7703733577618613571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007432 (A187829 (n + 1) + A120229 (n + 1)).toNat

end

end A319534.P7703733577618613571

/-! ## A319534.P7391753621866803605

`A319516(A187829(n+1))+A106799(n+1)`
-/

namespace A319534.P7391753621866803605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319516 (A187829 (n + 1)).toNat + A106799 (n + 1)

end

end A319534.P7391753621866803605

/-! ## A319534.P504955244117722653

`A002472(n+1)-A106799(A187829(n+1))`
-/

namespace A319534.P504955244117722653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002472 (n + 1) - A106799 (A187829 (n + 1)).toNat

end

end A319534.P504955244117722653

/-!
# A319535: Primes of the form 2*6^k - 1.

The programs for A319535, there is no canonical definition to state claims against.
-/

/-! ## A319535.P5457553044457257843

`2*6^A057472(n+1)-1`
-/

namespace A319535.P5457553044457257843
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * (6 : ℚ) ^ (A057472 (n + 1) : ℤ) - 1

end

end A319535.P5457553044457257843

/-! ## A319535.P4526286568539125438

`A164559(A057472(n+1)+1)`
-/

namespace A319535.P4526286568539125438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164559 (A057472 (n + 1) + 1).toNat

end

end A319535.P4526286568539125438

/-! ## A319535.P8303769893137410558

`A164560(2*A057472(n+1)+1)`
-/

namespace A319535.P8303769893137410558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164560 (2 * A057472 (n + 1) + 1).toNat

end

end A319535.P8303769893137410558

/-! ## A319535.P11469600659936049210

`A164560(A057472(n+1)+A057472(n+1)+1)`
-/

namespace A319535.P11469600659936049210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164560 (A057472 (n + 1) + (A057472 (n + 1) + 1)).toNat

end

end A319535.P11469600659936049210

/-! ## A319535.P2795709617208042947

`A164559(record[A184721(2*n+1)-A184703(n+1)]+1)`
-/

namespace A319535.P2795709617208042947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184721 (2 * n + 1) - A184703 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164559 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1).toNat

end

end A319535.P2795709617208042947

/-!
# A319536: Number of signed permutations of length n where numbers occur in consecutive order.

The programs for A319536, the canonical program `A319536.P16022269160005628560` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A319536 has offset 1).

The definition of A319536 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A319536.P16022269160005628560

`A000165(n+1)-A271212(n+1)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A319536

/-- `A000165(n+1)-A271212(n+1)` -/
def P16022269160005628560.Spec : Prop :=
  ∀ n, P16022269160005628560.a n = A319536 (n + 1)

theorem P16022269160005628560.correct : P16022269160005628560.Spec := by
  intro n
  simp only [A319536, Nat.add_sub_cancel]

end A319536

/-! ## A319536.P16736050272789352880

`A000165(n+1)-(A000354(n+1)+A000354(n))`
-/

namespace A319536.P16736050272789352880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000165 (n + 1) - (A000354 (n + 1) + A000354 n)

end

end A319536.P16736050272789352880

namespace A319536

/-- `A000165(n+1)-(A000354(n+1)+A000354(n))` -/
def P16736050272789352880.Spec : Prop :=
  ∀ n, P16736050272789352880.a n = A319536 (n + 1)

end A319536

/-! ## A319536.P18182745516142902517

`A000079(n+1)*A000142(n+1)-A271212(n+1)`
-/

namespace A319536.P18182745516142902517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (n + 1) * A000142 (n + 1) - A271212 (n + 1)

end

end A319536.P18182745516142902517

namespace A319536

/-- `A000079(n+1)*A000142(n+1)-A271212(n+1)` -/
def P18182745516142902517.Spec : Prop :=
  ∀ n, P18182745516142902517.a n = A319536 (n + 1)

end A319536

/-! ## A319536.P12198150756831757525

`A000165(A000027(n+1))%A271212(A000027(n+1))`
-/

namespace A319536.P12198150756831757525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000165 (A000027 (n + 1)).toNat) (A271212 (A000027 (n + 1)).toNat)

end

end A319536.P12198150756831757525

namespace A319536

/-- `A000165(A000027(n+1))%A271212(A000027(n+1))` -/
def P12198150756831757525.Spec : Prop :=
  ∀ n, P12198150756831757525.a n = A319536 (n + 1)

end A319536

/-! ## A319536.P15093659804062754668

`A000165(A130446(n+1))%A271212(A130446(n+1))`
-/

namespace A319536.P15093659804062754668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000165 (A130446 (n + 1)).toNat) (A271212 (A130446 (n + 1)).toNat)

end

end A319536.P15093659804062754668

namespace A319536

/-- `A000165(A130446(n+1))%A271212(A130446(n+1))` -/
def P15093659804062754668.Spec : Prop :=
  ∀ n, P15093659804062754668.a n = A319536 (n + 1)

end A319536

/-!
# A319539: Array read by antidiagonals: T(n,k) is the number of binary rooted trees with n leaves of k colors and all non-leaf nodes having out-degree 2.

The programs for A319539, there is no canonical definition to state claims against.
-/

/-! ## A319539.P11342848892422052037

`∏{e}[A083658(A135853(n)), #]`
-/

namespace A319539.P11342848892422052037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083658 (A135853 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A319539.P11342848892422052037

/-! ## A319539.P1959985658558737288

`A135278(n)+A124761(A178301(n))`
-/

namespace A319539.P1959985658558737288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135278 n + A124761 (A178301 n).toNat

end

end A319539.P1959985658558737288

/-! ## A319539.P4080165139847455330

`A316270(A131689(n))+A122176(n)`
-/

namespace A319539.P4080165139847455330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316270 (A131689 n).toNat + A122176 n

end

end A319539.P4080165139847455330

/-! ## A319539.P5293429738501011347

`A342753(A126116(n))+A122176(n)`
-/

namespace A319539.P5293429738501011347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342753 (A126116 n).toNat + A122176 n

end

end A319539.P5293429738501011347

/-! ## A319539.P8474174001273151073

`A169674(A092492(n+1))+A143328(n+1)`
-/

namespace A319539.P8474174001273151073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169674 (A092492 (n + 1)).toNat + A143328 (n + 1)

end

end A319539.P8474174001273151073

/-!
# A319540: Number of unlabeled 3-uniform hypergraphs spanning n vertices such that every pair of vertices appears together in some block.

The programs for A319540, there is no canonical definition to state claims against.
-/

/-! ## A319540.P4410384256750393653

`A219642(A296407(n)-A052344(n))`
-/

namespace A319540.P4410384256750393653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219642 (A296407 n - A052344 n).toNat

end

end A319540.P4410384256750393653

/-! ## A319540.P9122224607260278838

`A339369(A169934(n+1)+A008486(n))`
-/

namespace A319540.P9122224607260278838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339369 (A169934 (n + 1) + A008486 n).toNat

end

end A319540.P9122224607260278838

/-! ## A319540.P4057056932766216526

`A117195(A000262(n))-A117168(n+1)`
-/

namespace A319540.P4057056932766216526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117195 (A000262 n).toNat - A117168 (n + 1)

end

end A319540.P4057056932766216526

/-!
# A319542: Record values in A039932.

The programs for A319542, there is no canonical definition to state claims against.
-/

/-! ## A319542.P12527487980515173877

`record[A039932(A324347(n))]`
-/

namespace A319542.P12527487980515173877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039932 (A324347 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A319542.P12527487980515173877

/-! ## A319542.P1395888692949787640

`record[A039932(A328397(n))]`
-/

namespace A319542.P1395888692949787640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039932 (A328397 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A319542.P1395888692949787640

/-! ## A319542.P6907410335262867125

`A039932(A319548(n+1))`
-/

namespace A319542.P6907410335262867125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039932 (A319548 (n + 1)).toNat

end

end A319542.P6907410335262867125

/-! ## A319542.P10189561790595708334

`record[A039932(A038388(n+1))]`
-/

namespace A319542.P10189561790595708334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039932 (A038388 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A319542.P10189561790595708334

/-! ## A319542.P2784987133469231043

`record[A039932(A275055(n+1))]`
-/

namespace A319542.P2784987133469231043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039932 (A275055 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A319542.P2784987133469231043

/-!
# A319543: a(n) = 1*2*3 - 4*5*6 + 7*8*9 - 10*11*12 + 13*14*15 - ... + (up to n).

The programs for A319543, there is no canonical definition to state claims against.
-/

/-! ## A319543.P9300206666828219578

`A026597(n)-A169923(A169954(n))`
-/

namespace A319543.P9300206666828219578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026597 n - A169923 (A169954 n).toNat

end

end A319543.P9300206666828219578

/-! ## A319543.P15454259684531328786

`A001223(A086902(n))-A293049(n)`
-/

namespace A319543.P15454259684531328786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (A086902 n).toNat - A293049 n

end

end A319543.P15454259684531328786

/-!
# A319545: a(n) = 1*2*3*4*5 - 6*7*8*9*10 + 11*12*13*14*15 - ... + (up to n).

The programs for A319545, there is no canonical definition to state claims against.
-/

/-! ## A319545.P6763449953147774621

`∏[n+1]%A081700(2*(n+1))`
-/

namespace A319545.P6763449953147774621
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (A081700 (2 * (n + 1)))

end

end A319545.P6763449953147774621

/-! ## A319545.P11791371645585522855

`record[and(n+1, xor(n, n+1)-n)]!%A124402(9*(n+1))`
-/

namespace A319545.P11791371645585522855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n + 1 : ℤ) ((Nat.xor n (n + 1) : ℤ) - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Nat.factorial (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat : ℤ) (A124402 (9 * (n + 1)))

end

end A319545.P11791371645585522855

/-!
# A319546: a(n) = 1*2*3*4*5*6 - 7*8*9*10*11*12 + 13*14*15*16*17*18 - ... + (up to n).

The programs for A319546, there is no canonical definition to state claims against.
-/

/-! ## A319546.P16925592927158226027

`gcd(n+1, lcm(3, C(n², 3)))!%A056679(n+2)`
-/

namespace A319546.P16925592927158226027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Nat.factorial (Nat.gcd (n + 1) (Nat.lcm 3 (Nat.choose (n ^ 2) 3))) : ℤ) (A056679 (n + 2))

end

end A319546.P16925592927158226027

/-! ## A319546.P4588553999667672526

`Δ[A007489(n)%A056679(n+1)]`
-/

namespace A319546.P4588553999667672526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007489 n) (A056679 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A319546.P4588553999667672526

/-! ## A319546.P1099397612286492691

`record[A061602(n)]%A056679(n+2)`
-/

namespace A319546.P1099397612286492691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061602 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A056679 (n + 2))

end

end A319546.P1099397612286492691

/-!
# A319547: a(n) = 1*2*3*4*5*6*7 - 8*9*10*11*12*13*14 + 15*16*17*18*19*20*21 - ... + (up to n).

The programs for A319547, there is no canonical definition to state claims against.
-/

/-! ## A319547.P10271301347645962294

`A131451(n+1)%A005843(A214521(n+1))`
-/

namespace A319547.P10271301347645962294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A131451 (n + 1)) (A005843 (A214521 (n + 1)).toNat)

end

end A319547.P10271301347645962294

/-! ## A319547.P13795839460495957538

`A152709(n+1)%A005843(A214521(n+1))`
-/

namespace A319547.P13795839460495957538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A152709 (n + 1)) (A005843 (A214521 (n + 1)).toNat)

end

end A319547.P13795839460495957538

/-! ## A319547.P4466547559999028095

`A182287(n+1)%A005843(A214521(n+1))`
-/

namespace A319547.P4466547559999028095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A182287 (n + 1)) (A005843 (A214521 (n + 1)).toNat)

end

end A319547.P4466547559999028095

/-! ## A319547.P5702457641188084191

`A000142(n+1)%A190437(A216370(n+1))`
-/

namespace A319547.P5702457641188084191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000142 (n + 1)) (A190437 (A216370 (n + 1)).toNat)

end

end A319547.P5702457641188084191

/-!
# A319550: a(n) = 1*2*3*4*5*6*7*8*9 - 10*11*12*13*14*15*16*17*18 + 19*20*21*22*23*24*25*26*27 - ... + (up to n).

The programs for A319550, there is no canonical definition to state claims against.
-/

/-! ## A319550.P3085341626487411043

`A131451(n+1)-A185255(A130702(n+1))`
-/

namespace A319550.P3085341626487411043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131451 (n + 1) - A185255 (A130702 (n + 1)).toNat

end

end A319550.P3085341626487411043

/-!
# A319552: Expansion of 1/theta_4(q)^3 in powers of q = exp(Pi i t).

The programs for A319552, there is no canonical definition to state claims against.
-/

/-! ## A319552.P6545092608831416155

`(-1)^n*A004404(n)`
-/

namespace A319552.P6545092608831416155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A004404 n

end

end A319552.P6545092608831416155

/-! ## A319552.P16082809327561046439

`abs(A004404(n))`
-/

namespace A319552.P16082809327561046439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A004404 n|

end

end A319552.P16082809327561046439

/-! ## A319552.P18028444561921574921

`A004404(n)*A033999(n)`
-/

namespace A319552.P18028444561921574921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004404 n * A033999 n

end

end A319552.P18028444561921574921

/-! ## A319552.P1997944470396823402

`gcd(A000038(n), A004404(n))`
-/

namespace A319552.P1997944470396823402
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A004404 n)

end

end A319552.P1997944470396823402

/-! ## A319552.P16852542673991758929

`lcm(A000034(n), A004404(n))`
-/

namespace A319552.P16852542673991758929
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000034 n) (A004404 n)

end

end A319552.P16852542673991758929

/-! ## A319552.P11081232085787609916

`A004404(n)/A004405(n)*A284286(n)`
-/

namespace A319552.P11081232085787609916
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004404 n : ℚ) / (A004405 n : ℚ) * (A284286 n : ℚ)

end

end A319552.P11081232085787609916

/-! ## A319552.P16143942901285455118

`A001934(n)*A004404(n)/A004403(n)`
-/

namespace A319552.P16143942901285455118
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001934 n * A004404 n : ℚ) / (A004403 n : ℚ)

end

end A319552.P16143942901285455118

/-! ## A319552.P16169377281020083146

`A288515(∑[n+4]+2)`
-/

namespace A319552.P16169377281020083146
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288515 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A319552.P16169377281020083146

/-!
# A319553: Expansion of 1/theta_4(q)^8 in powers of q = exp(Pi i t).

The programs for A319553, there is no canonical definition to state claims against.
-/

/-! ## A319553.P1164774897142497848

`(-1)^n*A004409(n)`
-/

namespace A319553.P1164774897142497848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A004409 n

end

end A319553.P1164774897142497848

/-! ## A319553.P14903331944956140603

`abs(A004409(n))`
-/

namespace A319553.P14903331944956140603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A004409 n|

end

end A319553.P14903331944956140603

/-! ## A319553.P16979097131959502759

`A004409(n)*A033999(n)`
-/

namespace A319553.P16979097131959502759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004409 n * A033999 n

end

end A319553.P16979097131959502759

/-! ## A319553.P3629611351764055632

`gcd(A000038(n), A004409(n))`
-/

namespace A319553.P3629611351764055632
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A004409 n)

end

end A319553.P3629611351764055632

/-! ## A319553.P3580225439846147464

`lcm(A000034(n), A004409(n))`
-/

namespace A319553.P3580225439846147464
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000034 n) (A004409 n)

end

end A319553.P3580225439846147464

/-! ## A319553.P16797385029071245777

`A105094(n)/8`
-/

namespace A319553.P16797385029071245777
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A105094 n : ℚ) / 8

end

end A319553.P16797385029071245777

/-! ## A319553.P15426793045286544027

`A034998(2*n+1)/A034998(A234959(2*n+1))`
-/

namespace A319553.P15426793045286544027
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034998 (2 * n + 1) : ℚ) / (A034998 (A234959 (2 * n + 1)).toNat : ℚ)

end

end A319553.P15426793045286544027

/-!
# A319554: Expansion of 1/theta_4(q)^12 in powers of q = exp(Pi i t).

The programs for A319554, there is no canonical definition to state claims against.
-/

/-! ## A319554.P5289086108952196589

`(-1)^n*A004413(n)`
-/

namespace A319554.P5289086108952196589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A004413 n

end

end A319554.P5289086108952196589

/-! ## A319554.P13161569305500784875

`abs(A004413(n))`
-/

namespace A319554.P13161569305500784875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A004413 n|

end

end A319554.P13161569305500784875

/-! ## A319554.P18259454119583849553

`A004413(n)*A033999(n)`
-/

namespace A319554.P18259454119583849553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004413 n * A033999 n

end

end A319554.P18259454119583849553

/-! ## A319554.P15983215606614147060

`gcd(A000038(n), A004413(n))`
-/

namespace A319554.P15983215606614147060
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A004413 n)

end

end A319554.P15983215606614147060

/-! ## A319554.P2177594799704627052

`lcm(A000034(n), A004413(n))`
-/

namespace A319554.P2177594799704627052
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000034 n) (A004413 n)

end

end A319554.P2177594799704627052

/-! ## A319554.P16213438594976848329

`lcm(-A004413(n), A001285(n))`
-/

namespace A319554.P16213438594976848329
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (-A004413 n) (A001285 n)

end

end A319554.P16213438594976848329

/-!
# A319555: Digits of one of the three 7-adic integers 6^(1/3) that is related to A319199.

The programs for A319555, there is no canonical definition to state claims against.
-/

/-! ## A319555.P16300124653713765992

`Δ[A319199(n)]/7^n`
-/

namespace A319555.P16300124653713765992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319199 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (7 ^ n : ℚ)

end

end A319555.P16300124653713765992

/-! ## A319555.P6229829420843407402

`floor(A319199(n+1)/7^n)`
-/

namespace A319555.P6229829420843407402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A319199 (n + 1) : ℚ) / (7 ^ n : ℚ)⌋

end

end A319555.P6229829420843407402

/-! ## A319555.P17381018364044021986

`Δ[A319199(n)]%A019325(n)`
-/

namespace A319555.P17381018364044021986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319199 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A019325 n)

end

end A319555.P17381018364044021986

/-!
# A319556: a(n) gives the alternating sum of length n, starting at n: n - (n+1) + (n+2) - ... + (-1)^(n+1) * (2n-1).

The programs for A319556, the canonical program `A319556.P16977657756078503717` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A319556 has offset 1).

The definition of A319556 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A319556.P16977657756078503717

`2*a(n-2)-a(n-4)` with `a(0)=1, a(1)=-1, a(2)=4, a(3)=-2`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A319556

/-- `2*a(n-2)-a(n-4)` -/
def P16977657756078503717.Spec : Prop :=
  ∀ n, P16977657756078503717.a n = A319556 (n + 1)

theorem P16977657756078503717.correct : P16977657756078503717.Spec := by
  intro n
  simp only [A319556, Nat.add_sub_cancel]

end A319556

/-! ## A319556.P1971585425544545369

`((2*(n+1)-1)*(n+1)%2-(n+1)*(-1)^(n+1))/2`
-/

namespace A319556.P1971585425544545369
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((2 * (n + 1) : ℤ) - 1) * (((n + 1) % 2 : ℕ) : ℤ) - (n + 1 : ℤ) * (-1) ^ (n + 1) : ℚ) / 2

end

end A319556.P1971585425544545369

namespace A319556

/-- `((2*(n+1)-1)*(n+1)%2-(n+1)*(-1)^(n+1))/2` -/
def P1971585425544545369.Spec : Prop :=
  ∀ n, P1971585425544545369.a n = (A319556 (n + 1) : ℚ)

end A319556

/-! ## A319556.P2033841984859584954

`((2*(n+1)-1)*(1-(-1)^(n+1))-2*(n+1)*(-1)^(n+1))/4`
-/

namespace A319556.P2033841984859584954
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((2 * (n + 1) : ℤ) - 1) * (1 - (-1) ^ (n + 1)) - 2 * ((n + 1 : ℤ) * (-1) ^ (n + 1)) : ℚ) / 4

end

end A319556.P2033841984859584954

namespace A319556

/-- `((2*(n+1)-1)*(1-(-1)^(n+1))-2*(n+1)*(-1)^(n+1))/4` -/
def P2033841984859584954.Spec : Prop :=
  ∀ n, P2033841984859584954.a n = (A319556 (n + 1) : ℚ)

theorem P2033841984859584954.correct : P2033841984859584954.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A319556, Nat.add_sub_cancel, A319556.P2033841984859584954.a, A319556.P16977657756078503717.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h2 := ih (m + 2) (by omega)
      have h4 := ih m (by omega)
      simp only [A319556, Nat.add_sub_cancel, A319556.P2033841984859584954.a, A319556.P16977657756078503717.a, SequenceMachineLib.memo_apply] at h2 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 2 = m + 2 by omega, show m + 4 - 4 = m by omega, show m + 2 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h2 h4 ⊢
      rw [← h2, ← h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A319556

/-! ## A319556.P12711654543146227641

`xor(1, n)-a(n-1)` with `a(0)=1`
-/

namespace A319556.P12711654543146227641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (Nat.xor 1 n : ℤ) - a (n - 1)

end

end A319556.P12711654543146227641

namespace A319556

/-- `xor(1, n)-a(n-1)` -/
def P12711654543146227641.Spec : Prop :=
  ∀ n, P12711654543146227641.a n = A319556 (n + 1)

end A319556

/-! ## A319556.P16976656668784291800

`∑[xor((-1)^n, comp[or(2, n)])]`
-/

namespace A319556.P16976656668784291800
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((-1) ^ n) (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A319556.P16976656668784291800

namespace A319556

/-- `∑[xor((-1)^n, comp[or(2, n)])]` -/
def P16976656668784291800.Spec : Prop :=
  ∀ n, P16976656668784291800.a n = A319556 (n + 1)

end A319556

/-! ## A319556.P5035069881108315977

`∑[(or(1, n)+n)*(-1)^n]`
-/

namespace A319556.P5035069881108315977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 1 n + n : ℤ) * (-1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A319556.P5035069881108315977

namespace A319556

/-- `∑[(or(1, n)+n)*(-1)^n]` -/
def P5035069881108315977.Spec : Prop :=
  ∀ n, P5035069881108315977.a n = A319556 (n + 1)

end A319556

/-! ## A319556.P8103261430844281066

`∑[(or(1, n)+n)/(-1)^n]`
-/

namespace A319556.P8103261430844281066
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lor 1 n + n : ℚ) / ((-1) ^ n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A319556.P8103261430844281066

namespace A319556

/-- `∑[(or(1, n)+n)/(-1)^n]` -/
def P8103261430844281066.Spec : Prop :=
  ∀ n, P8103261430844281066.a n = (A319556 (n + 1) : ℚ)

end A319556

/-! ## A319556.P9621781463739895712

`floor(Δ[lcm(2, n)]+(n-2)/2)`
-/

namespace A319556.P9621781463739895712
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℚ) + ((n : ℤ) - 2 : ℚ) / 2⌋

end

end A319556.P9621781463739895712

namespace A319556

/-- `floor(Δ[lcm(2, n)]+(n-2)/2)` -/
def P9621781463739895712.Spec : Prop :=
  ∀ n, P9621781463739895712.a n = A319556 (n + 1)

end A319556

/-! ## A319556.P15972284195117427165

`(-1)^n-a(n-1)+n` with `a(0)=1`
-/

namespace A319556.P15972284195117427165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (-1) ^ n - a (n - 1) + (n : ℤ)

end

end A319556.P15972284195117427165

namespace A319556

/-- `(-1)^n-a(n-1)+n` -/
def P15972284195117427165.Spec : Prop :=
  ∀ n, P15972284195117427165.a n = A319556 (n + 1)

end A319556

/-! ## A319556.P1484271850628296096

`n-(a(n-1)-(-1)^n)` with `a(0)=1`
-/

namespace A319556.P1484271850628296096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℤ) - (a (n - 1) - (-1) ^ n)

end

end A319556.P1484271850628296096

namespace A319556

/-- `n-(a(n-1)-(-1)^n)` -/
def P1484271850628296096.Spec : Prop :=
  ∀ n, P1484271850628296096.a n = A319556 (n + 1)

end A319556

/-! ## A319556.P9359984548996557148

`n-floor((1/n+1)*a(n-1))` with `a(0)=1`
-/

namespace A319556.P9359984548996557148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℤ) - ⌊(1 / (n : ℚ) + 1) * (a (n - 1) : ℚ)⌋

end

end A319556.P9359984548996557148

namespace A319556

/-- `n-floor((1/n+1)*a(n-1))` -/
def P9359984548996557148.Spec : Prop :=
  ∀ n, P9359984548996557148.a n = A319556 (n + 1)

end A319556

/-! ## A319556.P9032688403997520294

`∑[2-a(n-1)]-a(n-1)` with `a(0)=1, a(1)=-1`
-/

namespace A319556.P9032688403997520294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, -1] fun n f1 =>
  2 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [1, -1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j - a (n - 1)

end

end A319556.P9032688403997520294

namespace A319556

/-- `∑[2-a(n-1)]-a(n-1)` -/
def P9032688403997520294.Spec : Prop :=
  ∀ n, P9032688403997520294.a n = A319556 (n + 1)

end A319556

/-! ## A319556.P2728613576087427185

`n-floor(a(n-1)+a(n-1)/n)` with `a(0)=1`
-/

namespace A319556.P2728613576087427185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℤ) - ⌊(a (n - 1) : ℚ) + (a (n - 1) : ℚ) / (n : ℚ)⌋

end

end A319556.P2728613576087427185

namespace A319556

/-- `n-floor(a(n-1)+a(n-1)/n)` -/
def P2728613576087427185.Spec : Prop :=
  ∀ n, P2728613576087427185.a n = A319556 (n + 1)

end A319556

/-! ## A319556.P12516181705248167642

`n-floor(a(n-1)/n)-a(n-1)` with `a(0)=1`
-/

namespace A319556.P12516181705248167642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℤ) - ⌊(a (n - 1) : ℚ) / (n : ℚ)⌋ - a (n - 1)

end

end A319556.P12516181705248167642

namespace A319556

/-- `n-floor(a(n-1)/n)-a(n-1)` -/
def P12516181705248167642.Spec : Prop :=
  ∀ n, P12516181705248167642.a n = A319556 (n + 1)

end A319556

/-! ## A319556.P14997060355186662392

`n-(a(n-1)+a(n-1)+1)%2-a(n-1)` with `a(0)=1`
-/

namespace A319556.P14997060355186662392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℤ) - Int.tmod (a (n - 1) + (a (n - 1) + 1)) 2 - a (n - 1)

end

end A319556.P14997060355186662392

namespace A319556

/-- `n-(a(n-1)+a(n-1)+1)%2-a(n-1)` -/
def P14997060355186662392.Spec : Prop :=
  ∀ n, P14997060355186662392.a n = A319556 (n + 1)

end A319556

/-! ## A319556.P17599682533736703593

`n-(a(n-1)-(1-a(n-1)))%2-a(n-1)` with `a(0)=1`
-/

namespace A319556.P17599682533736703593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℤ) - Int.tmod (a (n - 1) - (1 - a (n - 1))) 2 - a (n - 1)

end

end A319556.P17599682533736703593

namespace A319556

/-- `n-(a(n-1)-(1-a(n-1)))%2-a(n-1)` -/
def P17599682533736703593.Spec : Prop :=
  ∀ n, P17599682533736703593.a n = A319556 (n + 1)

end A319556

/-! ## A319556.P17962229181716379799

`ceil((A157142(n)+n)/2)`
-/

namespace A319556.P17962229181716379799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A157142 n + (n : ℤ) : ℚ) / 2⌉

end

end A319556.P17962229181716379799

namespace A319556

/-- `ceil((A157142(n)+n)/2)` -/
def P17962229181716379799.Spec : Prop :=
  ∀ n, P17962229181716379799.a n = A319556 (n + 1)

end A319556

/-! ## A319556.P18055417020951002808

`A004442(n)-a(n-1)` with `a(0)=1`
-/

namespace A319556.P18055417020951002808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A004442 n - a (n - 1)

end

end A319556.P18055417020951002808

namespace A319556

/-- `A004442(n)-a(n-1)` -/
def P18055417020951002808.Spec : Prop :=
  ∀ n, P18055417020951002808.a n = A319556 (n + 1)

end A319556

/-!
# A319557: Number of non-isomorphic strict connected multiset partitions of weight n.

The programs for A319557, there is no canonical definition to state claims against.
-/

/-! ## A319557.P8845122218687326208

`A316980(n)+A319793(n)-A319077(n)`
-/

namespace A319557.P8845122218687326208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316980 n + (A319793 n - A319077 n)

end

end A319557.P8845122218687326208

/-! ## A319557.P3579346823600606424

`A319760(n)+A319793(n)-A319763(n)`
-/

namespace A319557.P3579346823600606424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319760 n + (A319793 n - A319763 n)

end

end A319557.P3579346823600606424

/-! ## A319557.P5662492760317182386

`A264749(2*A071755(n))`
-/

namespace A319557.P5662492760317182386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264749 (2 * A071755 n).toNat

end

end A319557.P5662492760317182386

/-! ## A319557.P7275645370631975619

`A264749(A071755(n)+A071755(n))`
-/

namespace A319557.P7275645370631975619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264749 (A071755 n + A071755 n).toNat

end

end A319557.P7275645370631975619

/-!
# A319558: The squarefree dual of a multiset partition has, for each vertex, one block consisting of the indices (or positions) of the blocks containing that vertex, counted without multiplicity. Then a(n) is the number of non-isomorphic multiset partitions of weight n whose squarefree dual is strict (no repeated blocks).

The programs for A319558, there is no canonical definition to state claims against.
-/

/-! ## A319558.P7482197287532780761

`A065382(A287804(n)+A065382(n+1))`
-/

namespace A319558.P7482197287532780761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065382 (A287804 n + A065382 (n + 1)).toNat

end

end A319558.P7482197287532780761

/-! ## A319558.P7720153062215354764

`or(1, ∑[A060810(2*(n+1))]-3*n)`
-/

namespace A319558.P7720153062215354764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060810 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (∑ j ∈ Finset.range (n + 1), f1 j - (3 * n : ℤ))

end

end A319558.P7720153062215354764

/-! ## A319558.P15036627152492013711

`A306556(ceil(2^(n-1))+(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1])`
-/

namespace A319558.P15036627152492013711
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306556 (SequenceMachineLib.roundAway ((⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ : ℚ) + (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ))).toNat

end

end A319558.P15036627152492013711

/-!
# A319559: Number of non-isomorphic T_0 set systems of weight n.

The programs for A319559, there is no canonical definition to state claims against.
-/

/-! ## A319559.P4765332829417798117

`A000196(A210668(n))`
-/

namespace A319559.P4765332829417798117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A210668 n).toNat

end

end A319559.P4765332829417798117

/-! ## A319559.P11843203111375330799

`A000196(A279564(n))`
-/

namespace A319559.P11843203111375330799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A279564 n).toNat

end

end A319559.P11843203111375330799

/-! ## A319559.P1850564123432286044

`A287864(A244519(n))`
-/

namespace A319559.P1850564123432286044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287864 (A244519 n).toNat

end

end A319559.P1850564123432286044

/-! ## A319559.P5879750330033772063

`A206551(A049885(n+1))`
-/

namespace A319559.P5879750330033772063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206551 (A049885 (n + 1)).toNat

end

end A319559.P5879750330033772063

/-! ## A319559.P7108103546154255986

`A356316(A331934(n+1))`
-/

namespace A319559.P7108103546154255986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356316 (A331934 (n + 1)).toNat

end

end A319559.P7108103546154255986

/-!
# A319560: Number of non-isomorphic strict T_0 multiset partitions of weight n.

The programs for A319560, there is no canonical definition to state claims against.
-/

/-! ## A319560.P15410730115313581304

`A266646(A151515(n+1))`
-/

namespace A319560.P15410730115313581304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266646 (A151515 (n + 1)).toNat

end

end A319560.P15410730115313581304

/-! ## A319560.P10995065845417688284

`A007718(n)-A363945(A051190(n+2))`
-/

namespace A319560.P10995065845417688284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007718 n - A363945 (A051190 (n + 2)).toNat

end

end A319560.P10995065845417688284

/-! ## A319560.P9426945138427675046

`A316981(n)`
-/

namespace A319560.P9426945138427675046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316981 n

end

end A319560.P9426945138427675046

/-!
# A319561: Let f(1) = 1, f(2) = 1 + i (where i denotes the imaginary unit), and for n > 1, f(n+1) is the Gaussian integer in the first quadrant (with positive real part and nonnegative imaginary part) with least modulus and sharing a prime factor with f(n) (in case of a tie, minimize the imaginary part); a(n) = the square of the modulus of f(n).

The programs for A319561, there is no canonical definition to state claims against.
-/

/-! ## A319561.P11649057726078353009

`A319562(n+1)²+A319563(n+1)²`
-/

namespace A319561.P11649057726078353009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319562 (n + 1) ^ 2 + A319563 (n + 1) ^ 2

end

end A319561.P11649057726078353009

/-!
# A319562: Let f(1) = 1, f(2) = 1 + i (where i denotes the imaginary unit), and for n > 1, f(n+1) is the Gaussian integer in the first quadrant (with positive real part and nonnegative imaginary part) with least modulus and sharing a prime factor with f(n) (in case of a tie, minimize the imaginary part); a(n) = the real part of f(n).

The programs for A319562, there is no canonical definition to state claims against.
-/

/-! ## A319562.P5528429053212802817

`sqrt(A319561(n+1)-A319563(n+1)²)`
-/

namespace A319562.P5528429053212802817
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A319561 (n + 1) - A319563 (n + 1) ^ 2 : ℝ)

end

end A319562.P5528429053212802817

/-! ## A319562.P1980903423626238019

`A000188(A319561(n+1)-A319563(n+1)²)`
-/

namespace A319562.P1980903423626238019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (A319561 (n + 1) - A319563 (n + 1) ^ 2).toNat

end

end A319562.P1980903423626238019

/-! ## A319562.P17193839205670832598

`A000196(A319561(n+1)-A319563(n+1)²)`
-/

namespace A319562.P17193839205670832598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A319561 (n + 1) - A319563 (n + 1) ^ 2).toNat

end

end A319562.P17193839205670832598

/-! ## A319562.P11816326151403869072

`A137735(A319561(n+1)-A319563(n+1)²)`
-/

namespace A319562.P11816326151403869072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137735 (A319561 (n + 1) - A319563 (n + 1) ^ 2).toNat

end

end A319562.P11816326151403869072

/-! ## A319562.P12409610388311660689

`A043276(A306603(n)+n+1)`
-/

namespace A319562.P12409610388311660689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043276 (A306603 n + (n + 1 : ℤ)).toNat

end

end A319562.P12409610388311660689

/-!
# A319563: Let f(1) = 1, f(2) = 1 + i (where i denotes the imaginary unit), and for n > 1, f(n+1) is the Gaussian integer in the first quadrant (with positive real part and nonnegative imaginary part) with least modulus and sharing a prime factor with f(n) (in case of a tie, minimize the imaginary part); a(n) = the imaginary part of f(n).

The programs for A319563, there is no canonical definition to state claims against.
-/

/-! ## A319563.P10065630469062610830

`sqrt(A319561(n+1)-A319562(n+1)²)`
-/

namespace A319563.P10065630469062610830
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A319561 (n + 1) - A319562 (n + 1) ^ 2 : ℝ)

end

end A319563.P10065630469062610830

/-! ## A319563.P11606448235148438069

`A000196(A319561(n+1)-A319562(n+1)²)`
-/

namespace A319563.P11606448235148438069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A319561 (n + 1) - A319562 (n + 1) ^ 2).toNat

end

end A319563.P11606448235148438069

/-! ## A319563.P16756423846015420426

`and(A085238(n+1), A329456(A105436(n)))`
-/

namespace A319563.P16756423846015420426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A085238 (n + 1)) (A329456 (A105436 n).toNat)

end

end A319563.P16756423846015420426

/-! ## A319563.P877687320000867016

`comp[xor(n, 2*n+1)]%A000005(A335903(n+1)+1)`
-/

namespace A319563.P877687320000867016
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) (A000005 (A335903 (n + 1) + 1).toNat)

end

end A319563.P877687320000867016

/-! ## A319563.P11102749866512675038

`A000120(n)*A178686(A151555(n))`
-/

namespace A319563.P11102749866512675038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n * A178686 (A151555 n).toNat

end

end A319563.P11102749866512675038

/-!
# A319564: Number of T_0 integer partitions of n.

The programs for A319564, there is no canonical definition to state claims against.
-/

/-! ## A319564.P11857446549067586229

`A195120(∑[record[A290262(n+1)]])`
-/

namespace A319564.P11857446549067586229
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290262 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195120 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A319564.P11857446549067586229

/-! ## A319564.P1108477922602868040

`A332280(n)-A133144(A332280(n))`
-/

namespace A319564.P1108477922602868040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332280 n - A133144 (A332280 n).toNat

end

end A319564.P1108477922602868040

/-! ## A319564.P5890302118162749572

`A331914(floor(sqrt(A088209(n))))`
-/

namespace A319564.P5890302118162749572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331914 (Int.sqrt (A088209 n)).toNat

end

end A319564.P5890302118162749572

/-! ## A319564.P9321895134336983526

`A000041(n)-A050602(A003432(n+2))`
-/

namespace A319564.P9321895134336983526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A050602 (A003432 (n + 2)).toNat

end

end A319564.P9321895134336983526

/-! ## A319564.P11519552977765082110

`A239088(A184642(n))`
-/

namespace A319564.P11519552977765082110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239088 (A184642 n).toNat

end

end A319564.P11519552977765082110

/-!
# A319565: Number of non-isomorphic connected strict T_0 multiset partitions of weight n.

The programs for A319565, there is no canonical definition to state claims against.
-/

/-! ## A319565.P7171920968203368664

`A238005(A000255(n))+A100063(n)`
-/

namespace A319565.P7171920968203368664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238005 (A000255 n).toNat + A100063 n

end

end A319565.P7171920968203368664

/-! ## A319565.P11386489583875937930

`A185283(A007808(n))-A002262(n)`
-/

namespace A319565.P11386489583875937930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185283 (A007808 n).toNat - A002262 n

end

end A319565.P11386489583875937930

/-! ## A319565.P3069536032920409210

`A262689(A143405(n)-A161840(2*n+5))`
-/

namespace A319565.P3069536032920409210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262689 (A143405 n - A161840 (2 * n + 5)).toNat

end

end A319565.P3069536032920409210

/-!
# A319566: Number of non-isomorphic connected T_0 set systems of weight n.

The programs for A319566, there is no canonical definition to state claims against.
-/

/-! ## A319566.P9371326197288074663

`A025147(A000212(n)%A197795(n+1))`
-/

namespace A319566.P9371326197288074663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025147 (Int.tmod (A000212 n) (A197795 (n + 1))).toNat

end

end A319566.P9371326197288074663

/-! ## A319566.P12408923409075765562

`A025147(A194180(n+1)%A002686(n+1))`
-/

namespace A319566.P12408923409075765562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025147 (Int.tmod (A194180 (n + 1)) (A002686 (n + 1))).toNat

end

end A319566.P12408923409075765562

/-! ## A319566.P6297133813683063461

`A025147(A194180(n+1))%A351029(n+3)`
-/

namespace A319566.P6297133813683063461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A025147 (A194180 (n + 1)).toNat) (A351029 (n + 3))

end

end A319566.P6297133813683063461

/-! ## A319566.P12367617581713530424

`A272187(A327036(n²))`
-/

namespace A319566.P12367617581713530424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272187 (A327036 (n ^ 2)).toNat

end

end A319566.P12367617581713530424

/-! ## A319566.P1802847719373225509

`A000194(xor(1, A062162(n+1)))`
-/

namespace A319566.P1802847719373225509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (Int.xor 1 (A062162 (n + 1))).toNat

end

end A319566.P1802847719373225509

/-!
# A319567: Product of y divided by the GCD of y to the power of the length of y, where y is the integer partition with Heinz number n.

The programs for A319567, there is no canonical definition to state claims against.
-/

/-! ## A319567.P17309759375460347915

`A003963(A316437(n+1))`
-/

namespace A319567.P17309759375460347915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (A316437 (n + 1)).toNat

end

end A319567.P17309759375460347915

/-! ## A319567.P9262469124204453274

`∏{d}[A316437(n+1), A318574(A014963(#))]`
-/

namespace A319567.P9262469124204453274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316437 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A318574 (A014963 d).toNat

end

end A319567.P9262469124204453274

/-! ## A319567.P14400634406759198157

`A003963(n+1)/A289508(n+1)^A001222(n+1)`
-/

namespace A319567.P14400634406759198157
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003963 (n + 1) : ℚ) / (A289508 (n + 1) : ℚ) ^ (A001222 (n + 1) : ℤ)

end

end A319567.P14400634406759198157

/-! ## A319567.P16437676976509997258

`A290104(A316437((n+1)²))/A290104(A316437(n+1))`
-/

namespace A319567.P16437676976509997258
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A290104 (A316437 ((n + 1) ^ 2)).toNat : ℚ) / (A290104 (A316437 (n + 1)).toNat : ℚ)

end

end A319567.P16437676976509997258

/-! ## A319567.P861414891026933400

`A290104(A316437(n+1)*A327389(n+1))`
-/

namespace A319567.P861414891026933400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290104 (A316437 (n + 1) * A327389 (n + 1)).toNat

end

end A319567.P861414891026933400

/-! ## A319567.P7762272380348875059

`∏{e}[A052410(A181821(n+1)), #]`
-/

namespace A319567.P7762272380348875059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052410 (A181821 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A319567.P7762272380348875059

/-! ## A319567.P3524823031214114025

`A329382(A052410(A122111(n+1)))`
-/

namespace A319567.P3524823031214114025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329382 (A052410 (A122111 (n + 1)).toNat).toNat

end

end A319567.P3524823031214114025

/-!
# A319570: a(n) = A284986(n)^2.

The programs for A319570, there is no canonical definition to state claims against.
-/

/-! ## A319570.P4809166306199337533

`A284986(n+1)²`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A319570.P4809166306199337533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284986 (n + 1) ^ 2

end

end A319570.P4809166306199337533

/-! ## A319570.P16661560223752176893

`record[A284986(A022446(n))²]`
-/

namespace A319570.P16661560223752176893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284986 (A022446 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A319570.P16661560223752176893

/-! ## A319570.P11765744968647117771

`record[A284986(A328396(n))²]`
-/

namespace A319570.P11765744968647117771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284986 (A328396 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A319570.P11765744968647117771

/-! ## A319570.P14566099011202693103

`A284986(n+1)^(char[A006368(n)]+1)`
-/

namespace A319570.P14566099011202693103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006368 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284986 (n + 1) ^ ((if ∃ j, f1 j = (n : ℤ) then 1 else 0) + 1)

end

end A319570.P14566099011202693103

/-! ## A319570.P16159322717760693027

`A284986(n+1)^(A178334(n+1)+1)`
-/

namespace A319570.P16159322717760693027
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A284986 (n + 1) : ℚ) ^ (A178334 (n + 1) + 1 : ℤ)

end

end A319570.P16159322717760693027

/-!
# A319571: The stripe enumeration of N X N where N = {0, 1, 2, ...}, also called boustrophedonic Cantor enumeration. Terms are interleaved x and y coordinates.

The programs for A319571, there is no canonical definition to state claims against.
-/

/-! ## A319571.P6814040952920817586

`A320040(n+1)-1`
-/

namespace A319571.P6814040952920817586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320040 (n + 1) - 1

end

end A319571.P6814040952920817586

/-! ## A319571.P5529076151665593849

`A070198(n)%A320040(n+1)`
-/

namespace A319571.P5529076151665593849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A070198 n) (A320040 (n + 1))

end

end A319571.P5529076151665593849

/-! ## A319571.P18117887400719377522

`A198277(n)%A320040(n+1)`
-/

namespace A319571.P18117887400719377522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A198277 n) (A320040 (n + 1))

end

end A319571.P18117887400719377522

/-! ## A319571.P10070780552518901657

`A200748(n)%A320040(n+1)`
-/

namespace A319571.P10070780552518901657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A200748 n) (A320040 (n + 1))

end

end A319571.P10070780552518901657

/-! ## A319571.P767959212012901301

`A030494(n+1)%A320040(n+1)`
-/

namespace A319571.P767959212012901301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A030494 (n + 1)) (A320040 (n + 1))

end

end A319571.P767959212012901301

/-! ## A319571.P10772163852826610999

`A058000(n+1)%A320040(n+1)`
-/

namespace A319571.P10772163852826610999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A058000 (n + 1)) (A320040 (n + 1))

end

end A319571.P10772163852826610999

/-! ## A319571.P11906789825583012540

`A058197(n+1)%A320040(n+1)`
-/

namespace A319571.P11906789825583012540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A058197 (n + 1)) (A320040 (n + 1))

end

end A319571.P11906789825583012540

/-! ## A319571.P3316276322507075780

`A072828(n+1)%A320040(n+1)`
-/

namespace A319571.P3316276322507075780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A072828 (n + 1)) (A320040 (n + 1))

end

end A319571.P3316276322507075780

/-! ## A319571.P8336895131076829485

`A079782(n+1)%A320040(n+1)`
-/

namespace A319571.P8336895131076829485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A079782 (n + 1)) (A320040 (n + 1))

end

end A319571.P8336895131076829485

/-! ## A319571.P1126268253316066798

`A083685(n+1)%A320040(n+1)`
-/

namespace A319571.P1126268253316066798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083685 (n + 1)) (A320040 (n + 1))

end

end A319571.P1126268253316066798

/-!
# A319572: The x coordinates of the stripe enumeration of N X N where N = {0, 1, 2, ...}.

The programs for A319572, there is no canonical definition to state claims against.
-/

/-! ## A319572.P17533066536199860639

`A319571(2*n)`
-/

namespace A319572.P17533066536199860639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319571 (2 * n)

end

end A319572.P17533066536199860639

/-! ## A319572.P6787324267641623759

`A092542(n+1)-1`
-/

namespace A319572.P6787324267641623759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092542 (n + 1) - 1

end

end A319572.P6787324267641623759

/-! ## A319572.P7196099031483303792

`val(A082234(n+1), 3)`
-/

namespace A319572.P7196099031483303792
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A082234 (n + 1)).toNat 3

end

end A319572.P7196099031483303792

/-! ## A319572.P13387035357111710800

`A082233(n)-∑[char[∑[n]]]`
-/

namespace A319572.P13387035357111710800
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082233 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A319572.P13387035357111710800

/-! ## A319572.P2478794392678402910

`∑[char[∑[n]]]-A092543(n+1)`
-/

namespace A319572.P2478794392678402910
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A092543 (n + 1)

end

end A319572.P2478794392678402910

/-! ## A319572.P12462876675993634105

`∑[char[∑[n+1]]]-A319573(n)`
-/

namespace A319572.P12462876675993634105
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A319573 n

end

end A319572.P12462876675993634105

/-! ## A319572.P14787943221735055971

`abs(A210530(n+1)-∑[char[∑[n]]])`
-/

namespace A319572.P14787943221735055971
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A210530 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)|

end

end A319572.P14787943221735055971

/-! ## A319572.P15137884143997326960

`A092543(∑[char[∑[n]]]²-n)-1`
-/

namespace A319572.P15137884143997326960
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092543 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n) - 1

end

end A319572.P15137884143997326960

/-! ## A319572.P2653354761553642655

`C(comp[∑[n]]-n, 2)-A056011(n+1)`
-/

namespace A319572.P2653354761553642655
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - A056011 (n + 1)

end

end A319572.P2653354761553642655

/-! ## A319572.P5533290798290180516

`A025660(A056011(n+1))`
-/

namespace A319572.P5533290798290180516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025660 (A056011 (n + 1)).toNat

end

end A319572.P5533290798290180516

/-!
# A319573: The y coordinates of the stripe enumeration of N X N where N = {0, 1, 2, ...}.

The programs for A319573, there is no canonical definition to state claims against.
-/

/-! ## A319573.P11112287520801275737

`A319571(Δ[n²])`
-/

namespace A319573.P11112287520801275737
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319571 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A319573.P11112287520801275737

/-! ## A319573.P17700927390992206468

`A092543(n+1)-1`
-/

namespace A319573.P17700927390992206468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092543 (n + 1) - 1

end

end A319573.P17700927390992206468

/-! ## A319573.P7668270954421887598

`val(A082234(n+1), 2)`
-/

namespace A319573.P7668270954421887598
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A082234 (n + 1)).toNat 2

end

end A319573.P7668270954421887598

/-! ## A319573.P13049908866597439605

`A319571(2*n+1)%12`
-/

namespace A319573.P13049908866597439605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A319571 (2 * n + 1)) 12

end

end A319573.P13049908866597439605

/-! ## A319573.P5145709925593105436

`A304585(n)%round(acot(n)+n)`
-/

namespace A319573.P5145709925593105436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A304585 n) (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ)))

end

end A319573.P5145709925593105436

/-! ## A319573.P13679350778909253164

`or(char[1], A319571(n+1+n))`
-/

namespace A319573.P13679350778909253164
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A319571 (n + 1 + n))

end

end A319573.P13679350778909253164

/-! ## A319573.P2016319464386739633

`C(comp[∑[n]]-n, 2)-A056023(n+1)`
-/

namespace A319573.P2016319464386739633
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - A056023 (n + 1)

end

end A319573.P2016319464386739633

/-! ## A319573.P15330090635021910118

`A025668(A056011(n+1))`
-/

namespace A319573.P15330090635021910118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025668 (A056011 (n + 1)).toNat

end

end A319573.P15330090635021910118

/-! ## A319573.P10722823711727438459

`A000401(A092543(n+1))`
-/

namespace A319573.P10722823711727438459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000401 (A092543 (n + 1)).toNat

end

end A319573.P10722823711727438459

/-! ## A319573.P2275247018844760738

`A025668(A380245(n+1))`
-/

namespace A319573.P2275247018844760738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025668 (A380245 (n + 1)).toNat

end

end A319573.P2275247018844760738

/-!
# A319574: A(n, k) = [x^k] JacobiTheta3(x)^n, square array read by descending antidiagonals, A(n, k) for n >= 0 and k >= 0.

The programs for A319574, there is no canonical definition to state claims against.
-/

/-! ## A319574.P15473079411654908061

`A286815(∑[char[∑[n]]]²-(n+1))`
-/

namespace A319574.P15473079411654908061
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286815 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - (n + 1))

end

end A319574.P15473079411654908061

/-! ## A319574.P8567639036278321964

`or(char[2], A286815(A061579(n)))`
-/

namespace A319574.P8567639036278321964
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A286815 (A061579 n).toNat)

end

end A319574.P8567639036278321964

/-! ## A319574.P12953175188678762727

`and(A260196(n), A286815(A061579(n)))`
-/

namespace A319574.P12953175188678762727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A260196 n) (A286815 (A061579 n).toNat)

end

end A319574.P12953175188678762727

/-! ## A319574.P9985478971342013560

`char[A004442(n)]*A286815(A061579(n))`
-/

namespace A319574.P9985478971342013560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A286815 (A061579 n).toNat

end

end A319574.P9985478971342013560

/-! ## A319574.P12917268333995914429

`A286815(A061579(n))+A000007(n+1)`
-/

namespace A319574.P12917268333995914429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286815 (A061579 n).toNat + A000007 (n + 1)

end

end A319574.P12917268333995914429

/-! ## A319574.P379715211671693220

`gcd(A010816(n+1), A286815(A061579(n)))`
-/

namespace A319574.P379715211671693220
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A010816 (n + 1)) (A286815 (A061579 n).toNat)

end

end A319574.P379715211671693220

/-! ## A319574.P7362825975845836879

`A001222(A005145(n+1))*A286815(A061579(n))`
-/

namespace A319574.P7362825975845836879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A005145 (n + 1)).toNat * A286815 (A061579 n).toNat

end

end A319574.P7362825975845836879

/-! ## A319574.P2489285867638356211

`A286815(A061579(n))+A007814(2*n+1)`
-/

namespace A319574.P2489285867638356211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286815 (A061579 n).toNat + A007814 (2 * n + 1)

end

end A319574.P2489285867638356211

/-! ## A319574.P6719238079097174838

`A001222(A034694(n+1))*A286815(A061579(n))`
-/

namespace A319574.P6719238079097174838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A034694 (n + 1)).toNat * A286815 (A061579 n).toNat

end

end A319574.P6719238079097174838

/-! ## A319574.P13557272853505020508

`A001222(A332346(n+1))*A286815(A061579(n))`
-/

namespace A319574.P13557272853505020508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A332346 (n + 1)).toNat * A286815 (A061579 n).toNat

end

end A319574.P13557272853505020508

/-! ## A319574.P14882768308416748064

`and(A126646(n), A286815(A061579(n)))`
-/

namespace A319574.P14882768308416748064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A126646 n) (A286815 (A061579 n).toNat)

end

end A319574.P14882768308416748064

/-! ## A319574.P16658370896772198724

`and(A286815(A061579(n)), A286826(n))`
-/

namespace A319574.P16658370896772198724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A286815 (A061579 n).toNat) (A286826 n)

end

end A319574.P16658370896772198724

/-!
# A319575: a(n) = (2/3)*n*(n^3 - 6*n^2 + 11*n - 3).

The programs for A319575, the canonical program `A319575.P15823261250650836285` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A319575 has offset 0).

The definition of A319575 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2/3*n*(n^3-6*n²+11*n-3)` (program `A319575.P1497349652388636967`, by `A319575.P1497349652388636967.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A319575.P1497349652388636967

`2/3*n*(n^3-6*n²+11*n-3)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A319575.P1497349652388636967
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) / 3 * ((n : ℤ) * ((n ^ 3 : ℤ) - (6 * n ^ 2 : ℤ) + (11 * n : ℤ) - 3) : ℚ)

end

end A319575.P1497349652388636967

namespace A319575

/-- `2/3*n*(n^3-6*n²+11*n-3)` -/
def P1497349652388636967.Spec : Prop :=
  ∀ n, P1497349652388636967.a n = (A319575 n : ℚ)

theorem P1497349652388636967.correct : P1497349652388636967.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 | 4 =>
      simp [A319575, Nat.add_sub_cancel, A319575.P1497349652388636967.a, A319575.P15823261250650836285.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 5 =>
      have h1 := ih (m + 4) (by omega)
      have h2 := ih (m + 3) (by omega)
      have h3 := ih (m + 2) (by omega)
      have h4 := ih (m + 1) (by omega)
      have h5 := ih m (by omega)
      simp only [A319575, Nat.add_sub_cancel, A319575.P1497349652388636967.a, A319575.P15823261250650836285.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 h5 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 5 - 1 = m + 4 by omega, show m + 5 - 2 = m + 3 by omega, show m + 5 - 3 = m + 2 by omega, show m + 5 - 4 = m + 1 by omega, show m + 5 - 5 = m by omega, show m + 4 < m + 5 by omega, show m + 3 < m + 5 by omega, show m + 2 < m + 5 by omega, show m + 1 < m + 5 by omega, show m < m + 5 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 h5 ⊢
      rw [← h1, ← h2, ← h3, ← h4, ← h5]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A319575

/-! ## A319575.P15823261250650836285

`5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=0, a(1)=2, a(2)=4, a(3)=6, a(4)=24`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A319575

/-- `5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` -/
def P15823261250650836285.Spec : Prop :=
  ∀ n, P15823261250650836285.a n = A319575 n

theorem P15823261250650836285.correct : P15823261250650836285.Spec := by
  intro n
  simp only [A319575]

end A319575

/-! ## A319575.P10756185904229425527

`16*C(n, 4)+2*n`
-/

namespace A319575.P10756185904229425527
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16 * Nat.choose n 4 + 2 * n

end

end A319575.P10756185904229425527

namespace A319575

/-- `16*C(n, 4)+2*n` -/
def P10756185904229425527.Spec : Prop :=
  ∀ n, (P10756185904229425527.a n : ℤ) = A319575 n

end A319575

/-! ## A319575.P3353084960521863099

`2/3*A052762(n)+2*n`
-/

namespace A319575.P3353084960521863099
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) / 3 * (A052762 n : ℚ) + (2 * n : ℚ)

end

end A319575.P3353084960521863099

namespace A319575

/-- `2/3*A052762(n)+2*n` -/
def P3353084960521863099.Spec : Prop :=
  ∀ n, P3353084960521863099.a n = (A319575 n : ℚ)

end A319575

/-! ## A319575.P7811211824370200328

`lcm(2, 2*(4*A034827(n)+n))`
-/

namespace A319575.P7811211824370200328
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (2 * (4 * A034827 n + (n : ℤ)))

end

end A319575.P7811211824370200328

namespace A319575

/-- `lcm(2, 2*(4*A034827(n)+n))` -/
def P7811211824370200328.Spec : Prop :=
  ∀ n, (P7811211824370200328.a n : ℤ) = A319575 n

end A319575

/-! ## A319575.P4969979474223137875

`A055426(n)-A161712(n)`
-/

namespace A319575.P4969979474223137875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055426 n - A161712 n

end

end A319575.P4969979474223137875

namespace A319575

/-- `A055426(n)-A161712(n)` -/
def P4969979474223137875.Spec : Prop :=
  ∀ n, P4969979474223137875.a n = A319575 n

end A319575

/-! ## A319575.P8719929298110013952

`A266395(n+1)+A005843(n)+A000332(n)`
-/

namespace A319575.P8719929298110013952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266395 (n + 1) + (A005843 n + A000332 n)

end

end A319575.P8719929298110013952

namespace A319575

/-- `A266395(n+1)+A005843(n)+A000332(n)` -/
def P8719929298110013952.Spec : Prop :=
  ∀ n, P8719929298110013952.a n = A319575 n

end A319575

/-!
# A319576: a(n) = (4/15)*n*(n - 1)*(n^3 - 9*n^2 + 26*n - 9).

The programs for A319576, the canonical program `A319576.P8844544195375515149` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A319576 has offset 0).

The definition of A319576 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A319576.P8844544195375515149

`4/15*n*(n-1)*(n^3-9*n²+26*n-9)`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A319576

/-- `4/15*n*(n-1)*(n^3-9*n²+26*n-9)` -/
def P8844544195375515149.Spec : Prop :=
  ∀ n, P8844544195375515149.a n = (A319576 n : ℚ)

end A319576

/-! ## A319576.P8326807898944336577

`A286815(A167499(n+4))`
-/

namespace A319576.P8326807898944336577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286815 (A167499 (n + 4)).toNat

end

end A319576.P8326807898944336577

namespace A319576

/-- `A286815(A167499(n+4))` -/
def P8326807898944336577.Spec : Prop :=
  ∀ n, P8326807898944336577.a n = A319576 n

end A319576

/-! ## A319576.P15647720017791842759

`A286815(A167614(n+4)+2)`
-/

namespace A319576.P15647720017791842759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286815 (A167614 (n + 4) + 2).toNat

end

end A319576.P15647720017791842759

namespace A319576

/-- `A286815(A167614(n+4)+2)` -/
def P15647720017791842759.Spec : Prop :=
  ∀ n, P15647720017791842759.a n = A319576 n

end A319576

/-! ## A319576.P9050119578984379465

`A286815(A000124(n+5)+4)`
-/

namespace A319576.P9050119578984379465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286815 (A000124 (n + 5) + 4).toNat

end

end A319576.P9050119578984379465

namespace A319576

/-- `A286815(A000124(n+5)+4)` -/
def P9050119578984379465.Spec : Prop :=
  ∀ n, P9050119578984379465.a n = A319576 n

end A319576

/-! ## A319576.P70967611245548205

`A286815(A000096(n+4)+6)`
-/

namespace A319576.P70967611245548205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286815 (A000096 (n + 4) + 6).toNat

end

end A319576.P70967611245548205

namespace A319576

/-- `A286815(A000096(n+4)+6)` -/
def P70967611245548205.Spec : Prop :=
  ∀ n, P70967611245548205.a n = A319576 n

end A319576

/-! ## A319576.P7975993340271811022

`A286815(eq[6, A002260(n+1)])`
-/

namespace A319576.P7975993340271811022
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286815 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A319576.P7975993340271811022

namespace A319576

/-- `A286815(eq[6, A002260(n+1)])` -/
def P7975993340271811022.Spec : Prop :=
  ∀ n, P7975993340271811022.a n = A319576 n

end A319576

/-! ## A319576.P9950981527121011700

`record[A286815(A167499(n))]%A167667(n)`
-/

namespace A319576.P9950981527121011700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286815 (A167499 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A167667 n)

end

end A319576.P9950981527121011700

namespace A319576

/-- `record[A286815(A167499(n))]%A167667(n)` -/
def P9950981527121011700.Spec : Prop :=
  ∀ n, P9950981527121011700.a n = A319576 n

end A319576

/-! ## A319576.P1562827234537558189

`A319574(Δ[A023551(n+1)])`
-/

namespace A319576.P1562827234537558189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319574 (f1 (n + 1) - f1 n).toNat

end

end A319576.P1562827234537558189

namespace A319576

/-- `A319574(Δ[A023551(n+1)])` -/
def P1562827234537558189.Spec : Prop :=
  ∀ n, P1562827234537558189.a n = A319576 n

end A319576

/-! ## A319576.P18366349036024164115

`A319574(A000217(n+6)-6)`
-/

namespace A319576.P18366349036024164115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319574 (A000217 (n + 6) - 6).toNat

end

end A319576.P18366349036024164115

namespace A319576

/-- `A319574(A000217(n+6)-6)` -/
def P18366349036024164115.Spec : Prop :=
  ∀ n, P18366349036024164115.a n = A319576 n

end A319576

/-! ## A319576.P18099544323481423839

`A319574(A199969(n+1)+A000217(n+5))`
-/

namespace A319576.P18099544323481423839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319574 (A199969 (n + 1) + A000217 (n + 5)).toNat

end

end A319576.P18099544323481423839

namespace A319576

/-- `A319574(A199969(n+1)+A000217(n+5))` -/
def P18099544323481423839.Spec : Prop :=
  ∀ n, P18099544323481423839.a n = A319576 n

end A319576

/-!
# A319577: a(n) = (4/45)*n*(n - 2)*(n - 1)*(n^3 - 12*n^2 + 47*n - 15).

The programs for A319577, the canonical program `A319577.P6160726538963060346` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A319577 has offset 0).

The definition of A319577 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A319577.P6160726538963060346

`4/45*n*(n-2)*(n-1)*(n^3-12*n²+47*n-15)`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A319577

/-- `4/45*n*(n-2)*(n-1)*(n^3-12*n²+47*n-15)` -/
def P6160726538963060346.Spec : Prop :=
  ∀ n, P6160726538963060346.a n = (A319577 n : ℚ)

end A319577

/-! ## A319577.P11040977650143109896

`A286815(A167499(n+5)+1)`
-/

namespace A319577.P11040977650143109896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286815 (A167499 (n + 5) + 1).toNat

end

end A319577.P11040977650143109896

namespace A319577

/-- `A286815(A167499(n+5)+1)` -/
def P11040977650143109896.Spec : Prop :=
  ∀ n, P11040977650143109896.a n = A319577 n

end A319577

/-! ## A319577.P6986676887293022284

`A286815(A133263(n+6)+4)`
-/

namespace A319577.P6986676887293022284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286815 (A133263 (n + 6) + 4).toNat

end

end A319577.P6986676887293022284

namespace A319577

/-- `A286815(A133263(n+6)+4)` -/
def P6986676887293022284.Spec : Prop :=
  ∀ n, P6986676887293022284.a n = A319577 n

end A319577

/-! ## A319577.P9051173917627395167

`A286815(A000096(n+5)+7)`
-/

namespace A319577.P9051173917627395167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286815 (A000096 (n + 5) + 7).toNat

end

end A319577.P9051173917627395167

namespace A319577

/-- `A286815(A000096(n+5)+7)` -/
def P9051173917627395167.Spec : Prop :=
  ∀ n, P9051173917627395167.a n = A319577 n

end A319577

/-! ## A319577.P213277870202929483

`A286815(A000217(n+6)+6)`
-/

namespace A319577.P213277870202929483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286815 (A000217 (n + 6) + 6).toNat

end

end A319577.P213277870202929483

namespace A319577

/-- `A286815(A000217(n+6)+6)` -/
def P213277870202929483.Spec : Prop :=
  ∀ n, P213277870202929483.a n = A319577 n

end A319577

/-! ## A319577.P4778031571406028617

`A286815(A055998(n+6)-A005843(n+3))`
-/

namespace A319577.P4778031571406028617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286815 (A055998 (n + 6) - A005843 (n + 3)).toNat

end

end A319577.P4778031571406028617

namespace A319577

/-- `A286815(A055998(n+6)-A005843(n+3))` -/
def P4778031571406028617.Spec : Prop :=
  ∀ n, P4778031571406028617.a n = A319577 n

end A319577

/-! ## A319577.P16854449728478854667

`A286815(A002620(n+3)+A002620(n+10))`
-/

namespace A319577.P16854449728478854667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286815 (A002620 (n + 3) + A002620 (n + 10)).toNat

end

end A319577.P16854449728478854667

namespace A319577

/-- `A286815(A002620(n+3)+A002620(n+10))` -/
def P16854449728478854667.Spec : Prop :=
  ∀ n, P16854449728478854667.a n = A319577 n

end A319577

/-! ## A319577.P6533302525897221532

`A319574(A000217(n+7)-7)`
-/

namespace A319577.P6533302525897221532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319574 (A000217 (n + 7) - 7).toNat

end

end A319577.P6533302525897221532

namespace A319577

/-- `A319574(A000217(n+7)-7)` -/
def P6533302525897221532.Spec : Prop :=
  ∀ n, P6533302525897221532.a n = A319577 n

end A319577

/-! ## A319577.P2317497748157402911

`A319574(Δ[A023551(n+2)]-1)`
-/

namespace A319577.P2317497748157402911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319574 (f1 (n + 1) - f1 n - 1).toNat

end

end A319577.P2317497748157402911

namespace A319577

/-- `A319574(Δ[A023551(n+2)]-1)` -/
def P2317497748157402911.Spec : Prop :=
  ∀ n, P2317497748157402911.a n = A319577 n

end A319577

/-!
# A319578: a(n) = (1/3)*(n+2)^2*(3*n+3)!/(n+2)!^3.

The programs for A319578, the canonical program `A319578.P8261913953332540830` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A319578 has offset 0).

The definition of A319578 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A319578.P8261913953332540830

`(n+2)*(3*n+2)!/((n+2)!²*n!)`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A319578

/-- `(n+2)*(3*n+2)!/((n+2)!²*n!)` -/
def P8261913953332540830.Spec : Prop :=
  ∀ n, P8261913953332540830.a n = (A319578 n : ℚ)

end A319578

/-! ## A319578.P2772235760481888308

`A215287(Δ[n²])`
-/

namespace A319578.P2772235760481888308
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215287 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A319578.P2772235760481888308

namespace A319578

/-- `A215287(Δ[n²])` -/
def P2772235760481888308.Spec : Prop :=
  ∀ n, P2772235760481888308.a n = A319578 n

end A319578

/-! ## A319578.P10595015198386145474

`record[(-1)^n*A215287(n+1)]`
-/

namespace A319578.P10595015198386145474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A215287 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A319578.P10595015198386145474

namespace A319578

/-- `record[(-1)^n*A215287(n+1)]` -/
def P10595015198386145474.Spec : Prop :=
  ∀ n, P10595015198386145474.a n = A319578 n

end A319578

/-! ## A319578.P8026696684310894654

`C(3*n+2, n)*A000108(n+1)`
-/

namespace A319578.P8026696684310894654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (3 * n + 2) n : ℤ) * A000108 (n + 1)

end

end A319578.P8026696684310894654

namespace A319578

/-- `C(3*n+2, n)*A000108(n+1)` -/
def P8026696684310894654.Spec : Prop :=
  ∀ n, P8026696684310894654.a n = A319578 n

end A319578

/-! ## A319578.P16964360960208961090

`A000108(n+1)*A025174(n+1)`
-/

namespace A319578.P16964360960208961090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (n + 1) * A025174 (n + 1)

end

end A319578.P16964360960208961090

namespace A319578

/-- `A000108(n+1)*A025174(n+1)` -/
def P16964360960208961090.Spec : Prop :=
  ∀ n, P16964360960208961090.a n = A319578 n

end A319578

/-! ## A319578.P17950858963518985495

`A000108(n+1)*A099578(2*n+1)`
-/

namespace A319578.P17950858963518985495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (n + 1) * A099578 (2 * n + 1)

end

end A319578.P17950858963518985495

namespace A319578

/-- `A000108(n+1)*A099578(2*n+1)` -/
def P17950858963518985495.Spec : Prop :=
  ∀ n, P17950858963518985495.a n = A319578 n

end A319578

/-! ## A319578.P4415221320523478997

`Δ[A277637(n)/3]`
-/

namespace A319578.P4415221320523478997
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A277637 n : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A319578.P4415221320523478997

namespace A319578

/-- `Δ[A277637(n)/3]` -/
def P4415221320523478997.Spec : Prop :=
  ∀ n, P4415221320523478997.a n = (A319578 n : ℚ)

end A319578

/-! ## A319578.P16863436598880411177

`A365771(n+1)/2`
-/

namespace A319578.P16863436598880411177
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A365771 (n + 1) : ℚ) / 2

end

end A319578.P16863436598880411177

namespace A319578

/-- `A365771(n+1)/2` -/
def P16863436598880411177.Spec : Prop :=
  ∀ n, P16863436598880411177.a n = (A319578 n : ℚ)

end A319578

/-! ## A319578.P11820940088926340090

`A007004(n+1)/3`
-/

namespace A319578.P11820940088926340090
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007004 (n + 1) : ℚ) / 3

end

end A319578.P11820940088926340090

namespace A319578

/-- `A007004(n+1)/3` -/
def P11820940088926340090.Spec : Prop :=
  ∀ n, P11820940088926340090.a n = (A319578 n : ℚ)

end A319578

/-! ## A319578.P1516913456153931200

`A215287(2*(n+1))/3`
-/

namespace A319578.P1516913456153931200
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A215287 (2 * (n + 1)) : ℚ) / 3

end

end A319578.P1516913456153931200

namespace A319578

/-- `A215287(2*(n+1))/3` -/
def P1516913456153931200.Spec : Prop :=
  ∀ n, P1516913456153931200.a n = (A319578 n : ℚ)

end A319578

/-!
# A319580: Number of binary rooted trees with n leaves of n colors and all non-leaf nodes having out-degree 2.

The programs for A319580, there is no canonical definition to state claims against.
-/

/-! ## A319580.P1082226074346356228

`A319539((n+1)²+n²)`
-/

namespace A319580.P1082226074346356228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319539 ((n + 1) ^ 2 + n ^ 2)

end

end A319580.P1082226074346356228

/-! ## A319580.P17332302494740393526

`record[gcd(A114327(n), A319539(n+1))]`
-/

namespace A319580.P17332302494740393526
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114327 n) (A319539 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A319580.P17332302494740393526

/-! ## A319580.P10627213728345115595

`A319539(A001844(n))^A178334(n)`
-/

namespace A319580.P10627213728345115595
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A319539 (A001844 n).toNat : ℚ) ^ (A178334 n : ℤ)

end

end A319580.P10627213728345115595

/-! ## A319580.P2878403679044438950

`gcd(A000038(n), A319539(A001844(n)))`
-/

namespace A319580.P2878403679044438950
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A319539 (A001844 n).toNat)

end

end A319580.P2878403679044438950

/-! ## A319580.P1032878300028299079

`A319539(A001844(n))%A319535(n+1)`
-/

namespace A319580.P1032878300028299079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A319539 (A001844 n).toNat) (A319535 (n + 1))

end

end A319580.P1032878300028299079

/-!
# A319581: Square array T(n, k) = Sum_{p prime} [v_p(n) >= v_p(k) > 0] read by antidiagonals up, where [] is the Iverson bracket and v_p is the p-adic valuation, n >= 1, k >= 1.

The programs for A319581, there is no canonical definition to state claims against.
-/

/-! ## A319581.P461768452269107874

`log2(A319582(n+1))`
-/

namespace A319581.P461768452269107874
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A319582 (n + 1) : ℝ)

end

end A319581.P461768452269107874

/-! ## A319581.P10555209786816951864

`A000701(or(and(1, -n), A319582(n+1)))`
-/

namespace A319581.P10555209786816951864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000701 (Int.lor (Int.land 1 (-(n : ℤ))) (A319582 (n + 1))).toNat

end

end A319581.P10555209786816951864

/-! ## A319581.P7151889886151576837

`A332390(or(and(1, -n), A319582(n+1)))`
-/

namespace A319581.P7151889886151576837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332390 (Int.lor (Int.land 1 (-(n : ℤ))) (A319582 (n + 1))).toNat

end

end A319581.P7151889886151576837

/-! ## A319581.P1157105264393500204

`A000701(xor(and(1, -n), A319582(n+1)))`
-/

namespace A319581.P1157105264393500204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000701 (Int.xor (Int.land 1 (-(n : ℤ))) (A319582 (n + 1))).toNat

end

end A319581.P1157105264393500204

/-! ## A319581.P17166947423863287284

`val(A319582(n+1), 2)^A006519(n+1)`
-/

namespace A319581.P17166947423863287284
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (A319582 (n + 1)).toNat 2 : ℚ) ^ (A006519 (n + 1) : ℤ)

end

end A319581.P17166947423863287284

/-! ## A319581.P8840120814910943309

`val(A319582(n+1), 2)^A059897(n+1)`
-/

namespace A319581.P8840120814910943309
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (A319582 (n + 1)).toNat 2 : ℚ) ^ (A059897 (n + 1) : ℤ)

end

end A319581.P8840120814910943309

/-! ## A319581.P2893008792211114536

`val(A319582(n+1), 2)^A089913(n+1)`
-/

namespace A319581.P2893008792211114536
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (A319582 (n + 1)).toNat 2 : ℚ) ^ (A089913 (n + 1) : ℤ)

end

end A319581.P2893008792211114536

/-! ## A319581.P3265338264741078655

`val(A319582(n+1), 2%A050376(n+4))`
-/

namespace A319581.P3265338264741078655
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A319582 (n + 1)).toNat (Int.tmod 2 (A050376 (n + 4))).toNat

end

end A319581.P3265338264741078655

/-! ## A319581.P18205133407646345792

`A246846(and(n²-2, A319582(n+1))+1)`
-/

namespace A319581.P18205133407646345792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246846 (Int.land ((n ^ 2 : ℤ) - 2) (A319582 (n + 1)) + 1).toNat

end

end A319581.P18205133407646345792

/-! ## A319581.P3735708871325998099

`A202472((A319582(n+1)+n)%(n+1)+1)`
-/

namespace A319581.P3735708871325998099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202472 (Int.tmod (A319582 (n + 1) + (n : ℤ)) (n + 1 : ℤ) + 1).toNat

end

end A319581.P3735708871325998099

/-!
# A319582: Square array T(n, k) = 2 ^ (Sum_{p prime} [v_p(n) >= v_p(k) > 0]) read by antidiagonals up, where [] is the Iverson bracket and v_p is the p-adic valuation, n >= 1, k >= 1.

The programs for A319582, there is no canonical definition to state claims against.
-/

/-! ## A319582.P2423223110989727843

`2^A319581(n+1)`
-/

namespace A319582.P2423223110989727843
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A319581 (n + 1) : ℤ)

end

end A319582.P2423223110989727843

/-! ## A319582.P13644663672071370649

`A000079(and(2*n-1, A319581(n+1)))`
-/

namespace A319582.P13644663672071370649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (Int.land ((2 * n : ℤ) - 1) (A319581 (n + 1))).toNat

end

end A319582.P13644663672071370649

/-! ## A319582.P10781654811600252554

`A098151(and(or(1, n-1), A319581(n+1)))`
-/

namespace A319582.P10781654811600252554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098151 (Int.land (Int.lor 1 ((n : ℤ) - 1)) (A319581 (n + 1))).toNat

end

end A319582.P10781654811600252554

/-! ## A319582.P13667755127343833882

`A294860(and(or(1, n-1), A319581(n+1)))`
-/

namespace A319582.P13667755127343833882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294860 (Int.land (Int.lor 1 ((n : ℤ) - 1)) (A319581 (n + 1))).toNat

end

end A319582.P13667755127343833882

/-! ## A319582.P13876494048618857656

`A326080(and(or(1, n-1), A319581(n+1)))`
-/

namespace A319582.P13876494048618857656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326080 (Int.land (Int.lor 1 ((n : ℤ) - 1)) (A319581 (n + 1))).toNat

end

end A319582.P13876494048618857656

/-! ## A319582.P12763957735295395663

`A294860(and(-or(1, -n), A319581(n+1)))`
-/

namespace A319582.P12763957735295395663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294860 (Int.land (-Int.lor 1 (-(n : ℤ))) (A319581 (n + 1))).toNat

end

end A319582.P12763957735295395663

/-! ## A319582.P6527123814509586228

`A087686(and(2*n-1, A319581(n+1))+1)`
-/

namespace A319582.P6527123814509586228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087686 (Int.land ((2 * n : ℤ) - 1) (A319581 (n + 1)) + 1).toNat

end

end A319582.P6527123814509586228

/-! ## A319582.P16432008204505593883

`A059268(A319581(n+1)+A008795(n))`
-/

namespace A319582.P16432008204505593883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 (A319581 (n + 1) + A008795 n).toNat

end

end A319582.P16432008204505593883

/-! ## A319582.P2911133764963414673

`A059268(A319581(n+1)+A057944(n))`
-/

namespace A319582.P2911133764963414673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 (A319581 (n + 1) + A057944 n).toNat

end

end A319582.P2911133764963414673

/-! ## A319582.P5003276940967030905

`A001222(A005385(n+1)-A319581(n+1))`
-/

namespace A319582.P5003276940967030905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A005385 (n + 1) - A319581 (n + 1)).toNat

end

end A319582.P5003276940967030905

/-!
# A319583: Numbers in base 10 that are palindromic in bases 2, 4, and 16.

The programs for A319583, there is no canonical definition to state claims against.
-/

/-! ## A319583.P2802121676376993090

`∩[A097856(n+1), A340559(n+1)]`
-/

namespace A319583.P2802121676376993090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097856 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340559 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A319583.P2802121676376993090

/-! ## A319583.P4926833501831134483

`∩[A029730(n+1), A097856(n+1)]`
-/

namespace A319583.P4926833501831134483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029730 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097856 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A319583.P4926833501831134483

/-! ## A319583.P3035415290996909992

`∩[A014192(n+1), A340559(n+1)]`
-/

namespace A319583.P3035415290996909992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014192 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340559 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A319583.P3035415290996909992

/-! ## A319583.P2800754025123386467

`∩[A340559(n+1), A391850(n+1)]`
-/

namespace A319583.P2800754025123386467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340559 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391850 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A319583.P2800754025123386467

/-! ## A319583.P16257652302831693911

`∩[A340559(n+1), A006288(n)]`
-/

namespace A319583.P16257652302831693911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340559 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006288 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A319583.P16257652302831693911

/-!
# A319584: Numbers that are palindromic in bases 2, 4, and 8.

The programs for A319584, there is no canonical definition to state claims against.
-/

/-! ## A319584.P15105771639356621898

`∩[A097856(n+1), A259382(n+1)]`
-/

namespace A319584.P15105771639356621898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097856 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259382 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A319584.P15105771639356621898

/-! ## A319584.P898282420748395956

`∩[A097856(n+1), A259380(n+1)]`
-/

namespace A319584.P898282420748395956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097856 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259380 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A319584.P898282420748395956

/-! ## A319584.P6439356602885876307

`∩[A259380(n+1), A259382(n+1)]`
-/

namespace A319584.P6439356602885876307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259380 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259382 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A319584.P6439356602885876307

/-! ## A319584.P8039662588853125520

`∩[A029803(n+1), A097856(n+1)]`
-/

namespace A319584.P8039662588853125520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029803 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097856 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A319584.P8039662588853125520

/-! ## A319584.P3894294378137940231

`∩[A006995(n+1), A259382(n+1)]`
-/

namespace A319584.P3894294378137940231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006995 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259382 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A319584.P3894294378137940231

/-!
# A319585: Numbers in base 10 that are palindromic in bases 2, 8, and 16.

The programs for A319585, there is no canonical definition to state claims against.
-/

/-! ## A319585.P5887923964375288396

`∩[A259380(n+1), A340559(n+1)]`
-/

namespace A319585.P5887923964375288396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259380 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340559 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A319585.P5887923964375288396

/-! ## A319585.P16534812053714767955

`∩[A029803(n+1), A340559(n+1)]`
-/

namespace A319585.P16534812053714767955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029803 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340559 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A319585.P16534812053714767955

/-! ## A319585.P15139694450347687002

`∩[A028903(A118599(n+1)), A340559(n+1)]`
-/

namespace A319585.P15139694450347687002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028903 (A118599 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340559 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A319585.P15139694450347687002

/-!
# A319588: First of three consecutive triangular numbers that add up to a perfect square.

The programs for A319588, the canonical program `A319588.P16662565000547195772` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A319588 has offset 1).

The definition of A319588 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A319588.P16662565000547195772

`A000217(A165517(n+1))`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A319588

/-- `A000217(A165517(n+1))` -/
def P16662565000547195772.Spec : Prop :=
  ∀ n, P16662565000547195772.a n = A319588 (n + 1)

theorem P16662565000547195772.correct : P16662565000547195772.Spec := by
  intro n
  simp only [A319588, Nat.add_sub_cancel]

end A319588

/-! ## A319588.P2613471695112013088

`A077288(n)*A181442(n+2)`
-/

namespace A319588.P2613471695112013088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077288 n * A181442 (n + 2)

end

end A319588.P2613471695112013088

namespace A319588

/-- `A077288(n)*A181442(n+2)` -/
def P2613471695112013088.Spec : Prop :=
  ∀ n, P2613471695112013088.a n = A319588 (n + 1)

end A319588

/-! ## A319588.P11663074452828594108

`(A077288(n+2)+1)*A077288(n)`
-/

namespace A319588.P11663074452828594108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A077288 (n + 2) + 1) * A077288 n

end

end A319588.P11663074452828594108

namespace A319588

/-- `(A077288(n+2)+1)*A077288(n)` -/
def P11663074452828594108.Spec : Prop :=
  ∀ n, P11663074452828594108.a n = A319588 (n + 1)

end A319588

/-! ## A319588.P186739715260816315

`(A181442(n)-1)*A181442(n+2)`
-/

namespace A319588.P186739715260816315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A181442 n - 1) * A181442 (n + 2)

end

end A319588.P186739715260816315

namespace A319588

/-- `(A181442(n)-1)*A181442(n+2)` -/
def P186739715260816315.Spec : Prop :=
  ∀ n, P186739715260816315.a n = A319588 (n + 1)

end A319588

/-! ## A319588.P1818247068155511306

`C(A233450(n+2), 2)`
-/

namespace A319588.P1818247068155511306
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A233450 (n + 2)).toNat 2

end

end A319588.P1818247068155511306

namespace A319588

/-- `C(A233450(n+2), 2)` -/
def P1818247068155511306.Spec : Prop :=
  ∀ n, (P1818247068155511306.a n : ℤ) = A319588 (n + 1)

end A319588

/-! ## A319588.P5252846001392302458

`C(∑[A080872(n+1)], 2)`
-/

namespace A319588.P5252846001392302458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080872 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j).toNat 2

end

end A319588.P5252846001392302458

namespace A319588

/-- `C(∑[A080872(n+1)], 2)` -/
def P5252846001392302458.Spec : Prop :=
  ∀ n, (P5252846001392302458.a n : ℤ) = A319588 (n + 1)

end A319588

/-!
# A319590: Number of binary rooted trees with n leaves spanning an initial interval of positive integers and all non-leaf nodes having out-degree 2.

The programs for A319590, there is no canonical definition to state claims against.
-/

/-! ## A319590.P11659133236010846371

`∏{p}[A122367(∑[n])+n, #-1]`
-/

namespace A319590.P11659133236010846371
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122367 (∑ j ∈ Finset.range (n + 1), f2 j) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, ((p : ℤ) - 1)

end

end A319590.P11659133236010846371

/-!
# A319591: Number of nonnegative integer matrices with n columns and any number of nonzero distinct rows with every column summing to 3 up to permutation of rows.

The programs for A319591, there is no canonical definition to state claims against.
-/

/-! ## A319591.P11184264023883622198

`A219585(A167614(n+2))`
-/

namespace A319591.P11184264023883622198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219585 (A167614 (n + 2)).toNat

end

end A319591.P11184264023883622198

/-! ## A319591.P11178278010872096740

`A219585(A141214(n)+6)`
-/

namespace A319591.P11178278010872096740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219585 (A141214 n + 6).toNat

end

end A319591.P11178278010872096740

/-! ## A319591.P11156328224746868860

`A219585(A055999(n)+9)`
-/

namespace A319591.P11156328224746868860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219585 (A055999 n + 9).toNat

end

end A319591.P11156328224746868860

/-! ## A319591.P7092221976695133552

`A219585(eq[2, A141169(n)])`
-/

namespace A319591.P7092221976695133552
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141169 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219585 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A319591.P7092221976695133552

/-! ## A319591.P7837097001699775458

`A219585(eq[8, A059268(n)])`
-/

namespace A319591.P7837097001699775458
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219585 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A319591.P7837097001699775458

/-!
# A319595: Numbers in base 10 that are palindromic in bases 3, 7, and 9.

The programs for A319595, there is no canonical definition to state claims against.
-/

/-! ## A319595.P17923434639715290651

`∩[A029954(n+1), A259386(n+1)]`
-/

namespace A319595.P17923434639715290651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029954 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259386 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A319595.P17923434639715290651

/-! ## A319595.P6526154271694690040

`∩[A259377(n+1), A259390(n+1)]`
-/

namespace A319595.P6526154271694690040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259377 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259390 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A319595.P6526154271694690040

/-! ## A319595.P4542935203516299260

`∩[A259377(n+1), A259386(n+1)]`
-/

namespace A319595.P4542935203516299260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259377 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259386 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A319595.P4542935203516299260

/-! ## A319595.P3051957469091686984

`∩[A259386(n+1), A259390(n+1)]`
-/

namespace A319595.P3051957469091686984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259386 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259390 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A319595.P3051957469091686984

/-! ## A319595.P2738720345992468561

`∩[A259390(n+1), record[A265511(n)]]`
-/

namespace A319595.P2738720345992468561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259390 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265511 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A319595.P2738720345992468561

/-!
# A319596: Base-3 deletable primes (written in base 10).

The programs for A319596, there is no canonical definition to state claims against.
-/

/-! ## A319596.P2101352584389096160

`eq[A047814(A007089(n)), A225244(n)]`
-/

namespace A319596.P2101352584389096160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047814 (A007089 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225244 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A319596.P2101352584389096160

/-! ## A319596.P15108684453089044805

`p?[A023692(n+1)+A003982(A002415(n))]`
-/

namespace A319596.P15108684453089044805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023692 (n + 1) + A003982 (A002415 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A319596.P15108684453089044805

/-! ## A319596.P717792198403282424

`A118003(p?[n*A062756(n)])`
-/

namespace A319596.P717792198403282424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A062756 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118003 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A319596.P717792198403282424

/-! ## A319596.P9228022769336569417

`∩[A129946(n+1), A345667(n+1)]`
-/

namespace A319596.P9228022769336569417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345667 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A319596.P9228022769336569417

/-! ## A319596.P15995967094042130671

`p?[A047412(n+1)-A011650(n+2)]`
-/

namespace A319596.P15995967094042130671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047412 (n + 1) - A011650 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A319596.P15995967094042130671

/-!
# A319597: Number of conjugacy classes for a non-abelian group of order p^3, where p is prime: a(n) = p^2 + p - 1 where p = prime(n).

The programs for A319597, the canonical program `A319597.P15066160713591870138` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A319597 has offset 1).

The definition of A319597 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A319597.P15066160713591870138

`A028387(A000040(n+1)-1)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A319597

/-- `A028387(A000040(n+1)-1)` -/
def P15066160713591870138.Spec : Prop :=
  ∀ n, P15066160713591870138.a n = A319597 (n + 1)

theorem P15066160713591870138.correct : P15066160713591870138.Spec := by
  intro n
  simp only [A319597, Nat.add_sub_cancel]

end A319597

/-! ## A319597.P1406486180030045484

`A036690(n+1)-1`
-/

namespace A319597.P1406486180030045484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036690 (n + 1) - 1

end

end A319597.P1406486180030045484

namespace A319597

/-- `A036690(n+1)-1` -/
def P1406486180030045484.Spec : Prop :=
  ∀ n, P1406486180030045484.a n = A319597 (n + 1)

end A319597

/-! ## A319597.P4431434264516699212

`A060800(n+1)-2`
-/

namespace A319597.P4431434264516699212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060800 (n + 1) - 2

end

end A319597.P4431434264516699212

namespace A319597

/-- `A060800(n+1)-2` -/
def P4431434264516699212.Spec : Prop :=
  ∀ n, P4431434264516699212.a n = A319597 (n + 1)

end A319597

/-! ## A319597.P7293737438515689808

`∑[2*A138383(n)]-1`
-/

namespace A319597.P7293737438515689808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A138383 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A319597.P7293737438515689808

namespace A319597

/-- `∑[2*A138383(n)]-1` -/
def P7293737438515689808.Spec : Prop :=
  ∀ n, P7293737438515689808.a n = A319597 (n + 1)

end A319597

/-! ## A319597.P17606580378029289660

`2*A034953(n+1)-1`
-/

namespace A319597.P17606580378029289660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A034953 (n + 1) - 1

end

end A319597.P17606580378029289660

namespace A319597

/-- `2*A034953(n+1)-1` -/
def P17606580378029289660.Spec : Prop :=
  ∀ n, P17606580378029289660.a n = A319597 (n + 1)

end A319597

/-! ## A319597.P3826593561319315579

`A367573(n+1)/2-1`
-/

namespace A319597.P3826593561319315579
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A367573 (n + 1) : ℚ) / 2 - 1

end

end A319597.P3826593561319315579

namespace A319597

/-- `A367573(n+1)/2-1` -/
def P3826593561319315579.Spec : Prop :=
  ∀ n, P3826593561319315579.a n = (A319597 (n + 1) : ℚ)

end A319597

/-! ## A319597.P9079264020823358966

`A084920(n+1)+Δ[A007504(n)]`
-/

namespace A319597.P9079264020823358966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084920 (n + 1) + (f1 (n + 1) - f1 n)

end

end A319597.P9079264020823358966

namespace A319597

/-- `A084920(n+1)+Δ[A007504(n)]` -/
def P9079264020823358966.Spec : Prop :=
  ∀ n, P9079264020823358966.a n = A319597 (n + 1)

end A319597

/-! ## A319597.P18157473279527926403

`A001248(n+1)+A006093(n+1)`
-/

namespace A319597.P18157473279527926403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 1) + A006093 (n + 1)

end

end A319597.P18157473279527926403

namespace A319597

/-- `A001248(n+1)+A006093(n+1)` -/
def P18157473279527926403.Spec : Prop :=
  ∀ n, P18157473279527926403.a n = A319597 (n + 1)

end A319597

/-! ## A319597.P8126189686365606099

`A049001(n+1)+A008864(n+1)`
-/

namespace A319597.P8126189686365606099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049001 (n + 1) + A008864 (n + 1)

end

end A319597.P8126189686365606099

namespace A319597

/-- `A049001(n+1)+A008864(n+1)` -/
def P8126189686365606099.Spec : Prop :=
  ∀ n, P8126189686365606099.a n = A319597 (n + 1)

end A319597

/-! ## A319597.P5883584236176011219

`A084920(n+1)+A000040(n+1)`
-/

namespace A319597.P5883584236176011219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084920 (n + 1) + A000040 (n + 1)

end

end A319597.P5883584236176011219

namespace A319597

/-- `A084920(n+1)+A000040(n+1)` -/
def P5883584236176011219.Spec : Prop :=
  ∀ n, P5883584236176011219.a n = A319597 (n + 1)

end A319597

/-! ## A319597.P5276989325465407521

`A066872(n+1)+A040976(n+1)`
-/

namespace A319597.P5276989325465407521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066872 (n + 1) + A040976 (n + 1)

end

end A319597.P5276989325465407521

namespace A319597

/-- `A066872(n+1)+A040976(n+1)` -/
def P5276989325465407521.Spec : Prop :=
  ∀ n, P5276989325465407521.a n = A319597 (n + 1)

end A319597

/-! ## A319597.P731121236928239505

`A086801(n+1)+A061725(n+1)`
-/

namespace A319597.P731121236928239505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086801 (n + 1) + A061725 (n + 1)

end

end A319597.P731121236928239505

namespace A319597

/-- `A086801(n+1)+A061725(n+1)` -/
def P731121236928239505.Spec : Prop :=
  ∀ n, P731121236928239505.a n = A319597 (n + 1)

end A319597

/-! ## A319597.P11707943409191567598

`A119959(n+1)+A037168(n+1)`
-/

namespace A319597.P11707943409191567598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119959 (n + 1) + A037168 (n + 1)

end

end A319597.P11707943409191567598

namespace A319597

/-- `A119959(n+1)+A037168(n+1)` -/
def P11707943409191567598.Spec : Prop :=
  ∀ n, P11707943409191567598.a n = A319597 (n + 1)

end A319597

/-! ## A319597.P13061848897420591070

`A182200(n+1)+A052147(n+1)`
-/

namespace A319597.P13061848897420591070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182200 (n + 1) + A052147 (n + 1)

end

end A319597.P13061848897420591070

namespace A319597

/-- `A182200(n+1)+A052147(n+1)` -/
def P13061848897420591070.Spec : Prop :=
  ∀ n, P13061848897420591070.a n = A319597 (n + 1)

end A319597

/-! ## A319597.P6912987973604726962

`A182174(n+1)+A095116(n+1)`
-/

namespace A319597.P6912987973604726962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182174 (n + 1) + A095116 (n + 1)

end

end A319597.P6912987973604726962

namespace A319597

/-- `A182174(n+1)+A095116(n+1)` -/
def P6912987973604726962.Spec : Prop :=
  ∀ n, P6912987973604726962.a n = A319597 (n + 1)

end A319597

/-! ## A319597.P7996012284164241885

`A166010(n+1)+A113935(n+1)`
-/

namespace A319597.P7996012284164241885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166010 (n + 1) + A113935 (n + 1)

end

end A319597.P7996012284164241885

namespace A319597

/-- `A166010(n+1)+A113935(n+1)` -/
def P7996012284164241885.Spec : Prop :=
  ∀ n, P7996012284164241885.a n = A319597 (n + 1)

end A319597

/-! ## A319597.P2412717013196496065

`A178398(n+1)-A181151(n+1)`
-/

namespace A319597.P2412717013196496065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178398 (n + 1) - A181151 (n + 1)

end

end A319597.P2412717013196496065

namespace A319597

/-- `A178398(n+1)-A181151(n+1)` -/
def P2412717013196496065.Spec : Prop :=
  ∀ n, P2412717013196496065.a n = A319597 (n + 1)

end A319597

/-! ## A319597.P3455928500594391311

`A008864(n+1)+A153480(n)/2`
-/

namespace A319597.P3455928500594391311
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008864 (n + 1) : ℚ) + (A153480 n : ℚ) / 2

end

end A319597.P3455928500594391311

namespace A319597

/-- `A008864(n+1)+A153480(n)/2` -/
def P3455928500594391311.Spec : Prop :=
  ∀ n, P3455928500594391311.a n = (A319597 (n + 1) : ℚ)

end A319597

/-! ## A319597.P6358034266741920698

`(A153480(n)+A089241(n+1))/2`
-/

namespace A319597.P6358034266741920698
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A153480 n + A089241 (n + 1) : ℚ) / 2

end

end A319597.P6358034266741920698

namespace A319597

/-- `(A153480(n)+A089241(n+1))/2` -/
def P6358034266741920698.Spec : Prop :=
  ∀ n, P6358034266741920698.a n = (A319597 (n + 1) : ℚ)

end A319597

/-! ## A319597.P14551963529907474589

`A367573(n+1)%A060800(n+1)`
-/

namespace A319597.P14551963529907474589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A367573 (n + 1)) (A060800 (n + 1))

end

end A319597.P14551963529907474589

namespace A319597

/-- `A367573(n+1)%A060800(n+1)` -/
def P14551963529907474589.Spec : Prop :=
  ∀ n, P14551963529907474589.a n = A319597 (n + 1)

end A319597

/-!
# A319598: Numbers in base 10 that are palindromic in bases 2, 4, 8, and 16.

The programs for A319598, there is no canonical definition to state claims against.
-/

/-! ## A319598.P4037146425505637591

`∩[A319583(n+1), A319584(n+1)]`
-/

namespace A319598.P4037146425505637591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319583 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319584 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A319598.P4037146425505637591

/-! ## A319598.P14762493767700616011

`∩[A259382(n+1), A319583(n+1)]`
-/

namespace A319598.P14762493767700616011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259382 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319583 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A319598.P14762493767700616011

/-! ## A319598.P15295319333533242211

`∩[A259380(n+1), A319583(n+1)]`
-/

namespace A319598.P15295319333533242211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259380 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319583 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A319598.P15295319333533242211

/-! ## A319598.P17777272578842957445

`∩[A259382(n+1), A340559(n+1)]`
-/

namespace A319598.P17777272578842957445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259382 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340559 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A319598.P17777272578842957445

/-! ## A319598.P11464229342915581101

`∩[A319584(n+1), A340559(n+1)]`
-/

namespace A319598.P11464229342915581101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319584 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340559 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A319598.P11464229342915581101

/-!
# A319599: Numbers k such that k mod (2, 3, 4, ... , i+1) = (d_i, d_i-1, ..., d_1), where d_1, d_2, ..., d_i are the digits of k, with MSD(k) = d_1 and LSD(k) = d_i.

The programs for A319599, there is no canonical definition to state claims against.
-/

/-! ## A319599.P4251174195925915540

`A089601(A217098(n+1))`
-/

namespace A319599.P4251174195925915540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089601 (A217098 (n + 1)).toNat

end

end A319599.P4251174195925915540

