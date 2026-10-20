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
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
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
import Seq.B008.C001
import Seq.B009.C000
import Seq.B009.C001
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

/-!
# A238501: Primes p for which x! + (p-1)!/x!==0 (mod p) has only three solutions 1<=x<=p-2.

The programs for A238501, there is no canonical definition to state claims against.
-/

/-! ## A238501.P8777391595304276075

`A045319(eq[3, A238444(n+1)])`
-/

namespace A238501.P8777391595304276075
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238444 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A238501.P8777391595304276075

/-! ## A238501.P309001813561968502

`A045344(eq[3, A238444(n+1)])`
-/

namespace A238501.P309001813561968502
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238444 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A238501.P309001813561968502

/-! ## A238501.P15817004853371696332

`A065091(eq[3, A238444(n+1)])`
-/

namespace A238501.P15817004853371696332
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238444 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A238501.P15817004853371696332

/-! ## A238501.P6717939055907025223

`A000040(eq[3, A238444(n+1)]+1)`
-/

namespace A238501.P6717939055907025223
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238444 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A238501.P6717939055907025223

/-! ## A238501.P17802715523661821436

`A008578(eq[3, A238444(n+1)]+2)`
-/

namespace A238501.P17802715523661821436
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238444 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2)

end

end A238501.P17802715523661821436

/-! ## A238501.P17407342156480854279

`p?[(A238444(n+1)-2)*A000040(n+1)]`
-/

namespace A238501.P17407342156480854279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A238444 (n + 1) - 2) * A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A238501.P17407342156480854279

/-!
# A238502: Let k = A239161(n); then a(n) = (sum of divisors of k) /(sum of divisors d of k with d <= sqrt(k)).

The programs for A238502, there is no canonical definition to state claims against.
-/

/-! ## A238502.P13181428015581996329

`A000203(A239161(n+1))/A066839(A239161(n+1))`
-/

namespace A238502.P13181428015581996329
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (A239161 (n + 1)).toNat : ℚ) / (A066839 (A239161 (n + 1)).toNat : ℚ)

end

end A238502.P13181428015581996329

/-!
# A238503: Numbers of the form pq + pr + ps + qr + qs + rs where p, q, r, and s are distinct primes.

The programs for A238503, there is no canonical definition to state claims against.
-/

/-! ## A238503.P15752665747841030893

`A376445(A376488(n+4))-A068229(n+1)`
-/

namespace A238503.P15752665747841030893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376445 (A376488 (n + 4)).toNat - A068229 (n + 1)

end

end A238503.P15752665747841030893

/-!
# A238504: Number of primes p <= n with pi(pi((p-1)*n)) prime, where pi(x) denotes the number of primes not exceeding x.

The programs for A238504, there is no canonical definition to state claims against.
-/

/-! ## A238504.P3287444261547699849

`A064547(A361718(n)+A002530(n))`
-/

namespace A238504.P3287444261547699849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064547 (A361718 n + A002530 n).toNat

end

end A238504.P3287444261547699849

/-! ## A238504.P3153387365653598352

`A193929(A002264(∑[A098057(n)]))`
-/

namespace A238504.P3153387365653598352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098057 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193929 (A002264 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A238504.P3153387365653598352

/-! ## A238504.P12690173137966532987

`A124765(∑[A177100(A191121(n+1))])`
-/

namespace A238504.P12690173137966532987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177100 (A191121 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124765 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A238504.P12690173137966532987

/-! ## A238504.P7600616933196749936

`A297034(A057809(n+1)+A001891(n))`
-/

namespace A238504.P7600616933196749936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297034 (A057809 (n + 1) + A001891 n).toNat

end

end A238504.P7600616933196749936

/-! ## A238504.P10691735940651069148

`A001221(A094541(n)-A065359(n))`
-/

namespace A238504.P10691735940651069148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A094541 n - A065359 n).toNat

end

end A238504.P10691735940651069148

/-!
# A238505: a(n) is the minimum number such that a(n)!/n! - 1 is prime (or 0 if no such number exists).

The programs for A238505, there is no canonical definition to state claims against.
-/

/-! ## A238505.P17719630476143416296

`A172130(n+1)+n`
-/

namespace A238505.P17719630476143416296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172130 (n + 1) + (n : ℤ)

end

end A238505.P17719630476143416296

/-! ## A238505.P15600307510483078537

`A051903(A000055(n+3)+7)+n`
-/

namespace A238505.P15600307510483078537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A000055 (n + 3) + 7).toNat + (n : ℤ)

end

end A238505.P15600307510483078537

/-!
# A238507: Smallest number m such that 3^m contains a string of n consecutive increasing integers in its decimal representation.

The programs for A238507, there is no canonical definition to state claims against.
-/

/-! ## A238507.P16778154201622287746

`lcm(n, A027434(A074614(n)))`
-/

namespace A238507.P16778154201622287746
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (A027434 (A074614 n).toNat)

end

end A238507.P16778154201622287746

/-!
# A238508: Smallest number m such that 3^m contains a string of n consecutive decreasing integers in its decimal representation.

The programs for A238508, there is no canonical definition to state claims against.
-/

/-! ## A238508.P1708667166168975995

`C(A243304(n+1), A244104(n+7)+1)`
-/

namespace A238508.P1708667166168975995
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A243304 (n + 1)).toNat (A244104 (n + 7) + 1).toNat

end

end A238508.P1708667166168975995

/-! ## A238508.P18287624607707890634

`A243304(n+1)-A008683(A093123(n))`
-/

namespace A238508.P18287624607707890634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243304 (n + 1) - A008683 (A093123 n).toNat

end

end A238508.P18287624607707890634

/-! ## A238508.P6787567158613124419

`A243304(n+1)*A285501(A359083(n+1))`
-/

namespace A238508.P6787567158613124419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243304 (n + 1) * A285501 (A359083 (n + 1)).toNat

end

end A238508.P6787567158613124419

/-!
# A238509: a(n) = |{0 < k < n: p(n) + p(k) - 1 is prime}|, where p(.) is the partition function (A000041).

The programs for A238509, there is no canonical definition to state claims against.
-/

/-! ## A238509.P18170708817015622925

`A328620(A328097(n+1)+A283259(n))`
-/

namespace A238509.P18170708817015622925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328620 (A328097 (n + 1) + A283259 n).toNat

end

end A238509.P18170708817015622925

/-! ## A238509.P5619521544892391072

`A104272(n+1)%A331256(A358137(n+1))`
-/

namespace A238509.P5619521544892391072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A104272 (n + 1)) (A331256 (A358137 (n + 1)).toNat)

end

end A238509.P5619521544892391072

/-! ## A238509.P9313174601266904508

`A001222(A071766(A000566(n)*A112594(n)))`
-/

namespace A238509.P9313174601266904508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A071766 (A000566 n * A112594 n).toNat).toNat

end

end A238509.P9313174601266904508

/-! ## A238509.P330807841132077261

`A007814(A243917(∑[C(2*n, 3)+4*n+1]))`
-/

namespace A238509.P330807841132077261
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n) 3 + (4 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A243917 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A238509.P330807841132077261

/-! ## A238509.P9159973568770440528

`A124767(n)+A079978(A005902(n))`
-/

namespace A238509.P9159973568770440528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124767 n + A079978 (A005902 n).toNat

end

end A238509.P9159973568770440528

/-!
# A238510: Number of (n+1)X(1+1) 0..3 arrays with no element equal to all horizontal neighbors or equal to all vertical neighbors, and new values 0..3 introduced in row major order.

The programs for A238510, there is no canonical definition to state claims against.
-/

/-! ## A238510.P15862379366060820516

`A238515(∑[n]+1)`
-/

namespace A238510.P15862379366060820516
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238515 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A238510.P15862379366060820516

/-! ## A238510.P14623044481552349881

`record[A010054(n)*A238515(n+1)]`
-/

namespace A238510.P14623044481552349881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A238515 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A238510.P14623044481552349881

/-! ## A238510.P16314171892088707418

`record[A176602(n)*A238515(n+1)]`
-/

namespace A238510.P16314171892088707418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176602 n * A238515 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A238510.P16314171892088707418

/-! ## A238510.P9441865934619105537

`record[gcd(A002262(n), A238515(n+1))]`
-/

namespace A238510.P9441865934619105537
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A238515 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A238510.P9441865934619105537

/-! ## A238510.P9541921063499464377

`A007318(C(2, n))*A238515(A000124(n))`
-/

namespace A238510.P9541921063499464377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A238515 (A000124 n).toNat

end

end A238510.P9541921063499464377

/-!
# A238511: Number of (n+1)X(2+1) 0..3 arrays with no element equal to all horizontal neighbors or equal to all vertical neighbors, and new values 0..3 introduced in row major order.

The programs for A238511, there is no canonical definition to state claims against.
-/

/-! ## A238511.P16735133958366744822

`A238515(∑[n+1]+2)`
-/

namespace A238511.P16735133958366744822
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238515 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A238511.P16735133958366744822

/-! ## A238511.P17802730567936107008

`record[A010054(n)*A238515(n+2)]`
-/

namespace A238511.P17802730567936107008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A238515 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A238511.P17802730567936107008

/-! ## A238511.P878700005960145269

`record[gcd(A002262(n), A238515(n+2))]`
-/

namespace A238511.P878700005960145269
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A238515 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A238511.P878700005960145269

/-! ## A238511.P8407294523615682393

`A238515(A238531(n+2))%A238519(n+1)`
-/

namespace A238511.P8407294523615682393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A238515 (A238531 (n + 2)).toNat) (A238519 (n + 1))

end

end A238511.P8407294523615682393

/-! ## A238511.P11897427636462021824

`record[A238515(abs(A201163(n)))]`
-/

namespace A238511.P11897427636462021824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238515 |A201163 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A238511.P11897427636462021824

/-!
# A238512: Number of (n+1)X(3+1) 0..3 arrays with no element equal to all horizontal neighbors or equal to all vertical neighbors, and new values 0..3 introduced in row major order.

The programs for A238512, there is no canonical definition to state claims against.
-/

/-! ## A238512.P15157768094512208835

`A238515(∑[n+2]+4)`
-/

namespace A238512.P15157768094512208835
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238515 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A238512.P15157768094512208835

/-! ## A238512.P7780186698499652648

`lcm((-1)^n, A238515(A167614(n+1)))`
-/

namespace A238512.P7780186698499652648
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A238515 (A167614 (n + 1)).toNat)

end

end A238512.P7780186698499652648

/-! ## A238512.P14097255872740125808

`or(A000007(n), A238515(A167614(n+1)))`
-/

namespace A238512.P14097255872740125808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A238515 (A167614 (n + 1)).toNat)

end

end A238512.P14097255872740125808

/-! ## A238512.P9044754198761569516

`or(A010054(n), A238515(A167614(n+1)))`
-/

namespace A238512.P9044754198761569516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A010054 n) (A238515 (A167614 (n + 1)).toNat)

end

end A238512.P9044754198761569516

/-! ## A238512.P10317031320395199710

`A238515(A167614(n+1))%A238520(n+1)`
-/

namespace A238512.P10317031320395199710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A238515 (A167614 (n + 1)).toNat) (A238520 (n + 1))

end

end A238512.P10317031320395199710

/-!
# A238513: Number of (n+1)X(4+1) 0..3 arrays with no element equal to all horizontal neighbors or equal to all vertical neighbors, and new values 0..3 introduced in row major order.

The programs for A238513, there is no canonical definition to state claims against.
-/

/-! ## A238513.P2497709214558259434

`A238515(A052905(n)+9)`
-/

namespace A238513.P2497709214558259434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238515 (A052905 n + 9).toNat

end

end A238513.P2497709214558259434

/-! ## A238513.P2458097360926717939

`A238515(eq[5, A066657(n)])`
-/

namespace A238513.P2458097360926717939
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238515 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A238513.P2458097360926717939

/-!
# A238515: T(n,k)=Number of (n+1)X(k+1) 0..3 arrays with no element equal to all horizontal neighbors or equal to all vertical neighbors, and new values 0..3 introduced in row major order.

The programs for A238515, there is no canonical definition to state claims against.
-/

/-! ## A238515.P12739229763730657233

`A008647(A238523(n+1)/2)`
-/

namespace A238515.P12739229763730657233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008647 (SequenceMachineLib.roundAway ((A238523 (n + 1) : ℚ) / 2)).toNat

end

end A238515.P12739229763730657233

/-! ## A238515.P14249986626319122914

`A008679(A238523(n+1)/2)`
-/

namespace A238515.P14249986626319122914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008679 (SequenceMachineLib.roundAway ((A238523 (n + 1) : ℚ) / 2)).toNat

end

end A238515.P14249986626319122914

/-!
# A238517: Square row sums of the table A008289 (A060016).

The programs for A238517, there is no canonical definition to state claims against.
-/

/-! ## A238517.P1100445884061728467

`A000196(A277275(n+1)+A026520(n))`
-/

namespace A238517.P1100445884061728467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A277275 (n + 1) + A026520 n).toNat

end

end A238517.P1100445884061728467

/-! ## A238517.P17660850652552311011

`A094275(A195865(n))+A064459(A238531(n))`
-/

namespace A238517.P17660850652552311011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094275 (A195865 n).toNat + A064459 (A238531 n).toNat

end

end A238517.P17660850652552311011

/-! ## A238517.P5602140433888442369

`A194966(A222006(n))+A064459(A238531(n))`
-/

namespace A238517.P5602140433888442369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194966 (A222006 n).toNat + A064459 (A238531 n).toNat

end

end A238517.P5602140433888442369

/-!
# A238518: Number of (n+1) X (1+1) 0..3 arrays with no element equal to all horizontal neighbors or equal to all vertical neighbors.

The programs for A238518, there is no canonical definition to state claims against.
-/

/-! ## A238518.P15033684516734356562

`sqrt(A238520(n+1))`
-/

namespace A238518.P15033684516734356562
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A238520 (n + 1) : ℝ)

end

end A238518.P15033684516734356562

/-! ## A238518.P10970308733767543829

`A238523(∑[n]+1)`
-/

namespace A238518.P10970308733767543829
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238523 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A238518.P10970308733767543829

/-! ## A238518.P17004087636786980426

`lcm(2, A238523(A000124(n)))`
-/

namespace A238518.P17004087636786980426
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A238523 (A000124 n).toNat)

end

end A238518.P17004087636786980426

/-! ## A238518.P5597856367718164212

`record[A176602(n)*A238523(n+1)]`
-/

namespace A238518.P5597856367718164212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176602 n * A238523 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A238518.P5597856367718164212

/-! ## A238518.P11097967890572871279

`record[gcd(A002262(n), A238523(n+1))]`
-/

namespace A238518.P11097967890572871279
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A238523 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A238518.P11097967890572871279

/-!
# A238519: Number of (n+1) X (2+1) 0..3 arrays with no element equal to all horizontal neighbors or equal to all vertical neighbors.

The programs for A238519, there is no canonical definition to state claims against.
-/

/-! ## A238519.P2427768654427876349

`A238523(∑[n+1]+2)`
-/

namespace A238519.P2427768654427876349
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238523 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A238519.P2427768654427876349

/-! ## A238519.P2422350780218604969

`lcm(2, A238523(A238531(n+2)))`
-/

namespace A238519.P2422350780218604969
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A238523 (A238531 (n + 2)).toNat)

end

end A238519.P2422350780218604969

/-! ## A238519.P1517312476914023120

`record[gcd(A002262(n), A238523(n+2))]`
-/

namespace A238519.P1517312476914023120
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A238523 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A238519.P1517312476914023120

/-! ## A238519.P9639752749569232882

`A238523(A238531(n+2))+A051516(n+1)`
-/

namespace A238519.P9639752749569232882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238523 (A238531 (n + 2)).toNat + A051516 (n + 1)

end

end A238519.P9639752749569232882

/-! ## A238519.P5509999560771405660

`A238523(A238531(n+2))%A238520(n+1)`
-/

namespace A238519.P5509999560771405660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A238523 (A238531 (n + 2)).toNat) (A238520 (n + 1))

end

end A238519.P5509999560771405660

/-!
# A238520: Number of (n+1) X (3+1) 0..3 arrays with no element equal to all horizontal neighbors or equal to all vertical neighbors.

The programs for A238520, there is no canonical definition to state claims against.
-/

/-! ## A238520.P7699883106123362746

`A238518(n+1)²`
-/

namespace A238520.P7699883106123362746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238518 (n + 1) ^ 2

end

end A238520.P7699883106123362746

/-! ## A238520.P3654691510235623020

`A238523(A000124(n))²`
-/

namespace A238520.P3654691510235623020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238523 (A000124 n).toNat ^ 2

end

end A238520.P3654691510235623020

/-! ## A238520.P6902442150837499004

`record[A238523(n+1)²*A176602(n)]`
-/

namespace A238520.P6902442150837499004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238523 (n + 1) ^ 2 * A176602 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A238520.P6902442150837499004

/-! ## A238520.P5161993578806725977

`A238523(∑[n+1])²`
-/

namespace A238520.P5161993578806725977
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238523 (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A238520.P5161993578806725977

/-! ## A238520.P11577984921245250573

`A238523(A167614(n+1))`
-/

namespace A238520.P11577984921245250573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238523 (A167614 (n + 1)).toNat

end

end A238520.P11577984921245250573

/-!
# A238521: Number of (n+1)X(4+1) 0..3 arrays with no element equal to all horizontal neighbors or equal to all vertical neighbors.

The programs for A238521, there is no canonical definition to state claims against.
-/

/-! ## A238521.P16820756924384087776

`A238523(A052905(n)+9)`
-/

namespace A238521.P16820756924384087776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238523 (A052905 n + 9).toNat

end

end A238521.P16820756924384087776

/-!
# A238524: Numbers n such that the symmetric representation of sigma(n) is formed by two or more parts.

The programs for A238524, there is no canonical definition to state claims against.
-/

/-! ## A238524.P11613976223507971049

`eq[0, A365429(n+1)]+1`
-/

namespace A238524.P11613976223507971049
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365429 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A238524.P11613976223507971049

/-! ## A238524.P2510642247492196634

`lt[1, A237271(n+1)]+1`
-/

namespace A238524.P2510642247492196634
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237271 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A238524.P2510642247492196634

/-! ## A238524.P11274155898797675153

`lt[sqrt(a(A237271(n))), 2]` with `a(0)=2, a(1)=7`
-/

namespace A238524.P11274155898797675153
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.rec [2, 7] fun n f1 =>
  Real.sqrt (f1 (A237271 n).toNat)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A238524.P11274155898797675153

/-! ## A238524.P15360202243851741983

`lt[1, A244971(n+1)]+1`
-/

namespace A238524.P15360202243851741983
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244971 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A238524.P15360202243851741983

/-! ## A238524.P13167046963607504542

`lt[0, A340502(n+1)]+1`
-/

namespace A238524.P13167046963607504542
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340502 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A238524.P13167046963607504542

/-! ## A238524.P1687400947055837033

`∩[A136447(n+1), A336426(n+1)]`
-/

namespace A238524.P1687400947055837033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136447 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336426 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A238524.P1687400947055837033

/-!
# A238525: n modulo sopfr(n), where sopfr(n) is the sum of the prime factors of n, with multiplicity.

The programs for A238525, the canonical program `A238525.P9528007354923680125` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A238525 has offset 2).

The definition of A238525 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A238525.P9528007354923680125

`(n+2)%A001414(n+2)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A238525

/-- `(n+2)%A001414(n+2)` -/
def P9528007354923680125.Spec : Prop :=
  ∀ n, P9528007354923680125.a n = A238525 (n + 2)

theorem P9528007354923680125.correct : P9528007354923680125.Spec := by
  intro n
  simp only [A238525, Nat.add_sub_cancel]

end A238525

/-! ## A238525.P6444099580553474430

`A075255(n+2)%A107463(n+2)`
-/

namespace A238525.P6444099580553474430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A075255 (n + 2)) (A107463 (n + 2))

end

end A238525.P6444099580553474430

namespace A238525

/-- `A075255(n+2)%A107463(n+2)` -/
def P6444099580553474430.Spec : Prop :=
  ∀ n, P6444099580553474430.a n = A238525 (n + 2)

end A238525

/-! ## A238525.P2414508850649627802

`A020725(n+1)%Δ[A025281(n+1)]`
-/

namespace A238525.P2414508850649627802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025281 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A020725 (n + 1)) (f1 (n + 1) - f1 n)

end

end A238525.P2414508850649627802

namespace A238525

/-- `A020725(n+1)%Δ[A025281(n+1)]` -/
def P2414508850649627802.Spec : Prop :=
  ∀ n, P2414508850649627802.a n = A238525 (n + 2)

end A238525

/-! ## A238525.P12366919237834466239

`A000027(n+2)%Δ[A025281(n+1)]`
-/

namespace A238525.P12366919237834466239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025281 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000027 (n + 2)) (f1 (n + 1) - f1 n)

end

end A238525.P12366919237834466239

namespace A238525

/-- `A000027(n+2)%Δ[A025281(n+1)]` -/
def P12366919237834466239.Spec : Prop :=
  ∀ n, P12366919237834466239.a n = A238525 (n + 2)

end A238525

/-! ## A238525.P16703812548844734010

`A075254(n+2)%Δ[A025281(n+1)]`
-/

namespace A238525.P16703812548844734010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025281 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A075254 (n + 2)) (f1 (n + 1) - f1 n)

end

end A238525.P16703812548844734010

namespace A238525

/-- `A075254(n+2)%Δ[A025281(n+1)]` -/
def P16703812548844734010.Spec : Prop :=
  ∀ n, P16703812548844734010.a n = A238525 (n + 2)

end A238525

/-! ## A238525.P15438433544910427189

`A233583(n+3)%A107463(n+2)`
-/

namespace A238525.P15438433544910427189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A233583 (n + 3)) (A107463 (n + 2))

end

end A238525.P15438433544910427189

namespace A238525

/-- `A233583(n+3)%A107463(n+2)` -/
def P15438433544910427189.Spec : Prop :=
  ∀ n, P15438433544910427189.a n = A238525 (n + 2)

end A238525

/-!
# A238526: Record values of A238525.

The programs for A238526, the canonical program `A238526.P8534158535877198451` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A238526 has offset 1).

The definition of A238526 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9594 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A238526.P9600865809676908225

`∪[A208361(n+1), A040976(n+1)]`
-/

namespace A238526.P9600865809676908225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208361 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A238526.P9600865809676908225

namespace A238526

/-- `∪[A208361(n+1), A040976(n+1)]` -/
def P9600865809676908225.Spec : Prop :=
  ∀ n, (P9600865809676908225.a n : ℤ) = A238526 (n + 1)

end A238526

/-! ## A238526.P11025185040869233602

`A193339(n+1)-A020639(A002174(n+1))`
-/

namespace A238526.P11025185040869233602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193339 (n + 1) - A020639 (A002174 (n + 1)).toNat

end

end A238526.P11025185040869233602

namespace A238526

/-- `A193339(n+1)-A020639(A002174(n+1))` -/
def P11025185040869233602.Spec : Prop :=
  ∀ n, P11025185040869233602.a n = A238526 (n + 1)

end A238526

/-! ## A238526.P12255080970123468594

`A193339(n+1)-A034444(A034444(n+1))`
-/

namespace A238526.P12255080970123468594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193339 (n + 1) - A034444 (A034444 (n + 1)).toNat

end

end A238526.P12255080970123468594

namespace A238526

/-- `A193339(n+1)-A034444(A034444(n+1))` -/
def P12255080970123468594.Spec : Prop :=
  ∀ n, P12255080970123468594.a n = A238526 (n + 1)

end A238526

/-! ## A238526.P9721837743323204655

`A193339(n+1)-A073093(A020639(n+1))`
-/

namespace A238526.P9721837743323204655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193339 (n + 1) - A073093 (A020639 (n + 1)).toNat

end

end A238526.P9721837743323204655

namespace A238526

/-- `A193339(n+1)-A073093(A020639(n+1))` -/
def P9721837743323204655.Spec : Prop :=
  ∀ n, P9721837743323204655.a n = A238526 (n + 1)

end A238526

/-! ## A238526.P5553771110716964719

`A193339(n+1)-A125747(A027746(n+1))`
-/

namespace A238526.P5553771110716964719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193339 (n + 1) - A125747 (A027746 (n + 1)).toNat

end

end A238526.P5553771110716964719

namespace A238526

/-- `A193339(n+1)-A125747(A027746(n+1))` -/
def P5553771110716964719.Spec : Prop :=
  ∀ n, P5553771110716964719.a n = A238526 (n + 1)

end A238526

/-! ## A238526.P17418531290264916937

`A067126(n+2)-2`
-/

namespace A238526.P17418531290264916937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067126 (n + 2) - 2

end

end A238526.P17418531290264916937

namespace A238526

/-- `A067126(n+2)-2` -/
def P17418531290264916937.Spec : Prop :=
  ∀ n, P17418531290264916937.a n = A238526 (n + 1)

end A238526

/-! ## A238526.P8534158535877198451

`record[abs(abs(A008472(n+1)-n)-n)]`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A238526

/-- `record[abs(abs(A008472(n+1)-n)-n)]` -/
def P8534158535877198451.Spec : Prop :=
  ∀ n, P8534158535877198451.a n = A238526 (n + 1)

theorem P8534158535877198451.correct : P8534158535877198451.Spec := by
  intro n
  simp only [A238526, Nat.add_sub_cancel]

end A238526

/-! ## A238526.P6273025896436316709

`lt[A300726(n+2)-1, 2]`
-/

namespace A238526.P6273025896436316709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300726 (n + 2) - 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A238526.P6273025896436316709

namespace A238526

/-- `lt[A300726(n+2)-1, 2]` -/
def P6273025896436316709.Spec : Prop :=
  ∀ n, (P6273025896436316709.a n : ℤ) = A238526 (n + 1)

end A238526

/-! ## A238526.P17194704393207112278

`lt[A318320(n+2)-2, 2]`
-/

namespace A238526.P17194704393207112278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318320 (n + 2) - 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A238526.P17194704393207112278

namespace A238526

/-- `lt[A318320(n+2)-2, 2]` -/
def P17194704393207112278.Spec : Prop :=
  ∀ n, (P17194704393207112278.a n : ℤ) = A238526 (n + 1)

end A238526

/-! ## A238526.P14477322615789351150

`lt[n, A000010(n+2)+2]`
-/

namespace A238526.P14477322615789351150
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 2) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A238526.P14477322615789351150

namespace A238526

/-- `lt[n, A000010(n+2)+2]` -/
def P14477322615789351150.Spec : Prop :=
  ∀ n, (P14477322615789351150.a n : ℤ) = A238526 (n + 1)

end A238526

/-! ## A238526.P18243884364606610397

`lt[A000203(n+2), n+7]`
-/

namespace A238526.P18243884364606610397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A238526.P18243884364606610397

namespace A238526

/-- `lt[A000203(n+2), n+7]` -/
def P18243884364606610397.Spec : Prop :=
  ∀ n, (P18243884364606610397.a n : ℤ) = A238526 (n + 1)

end A238526

/-! ## A238526.P4677677986696429248

`lt[n, lcm(4, A020639(n+2))]`
-/

namespace A238526.P4677677986696429248
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 4 (A020639 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A238526.P4677677986696429248

namespace A238526

/-- `lt[n, lcm(4, A020639(n+2))]` -/
def P4677677986696429248.Spec : Prop :=
  ∀ n, (P4677677986696429248.a n : ℤ) = A238526 (n + 1)

end A238526

/-! ## A238526.P8046659932605430687

`lt[n-2, A000010(2*n-(n-2))]`
-/

namespace A238526.P8046659932605430687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 ((2 * n : ℤ) - ((n : ℤ) - 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A238526.P8046659932605430687

namespace A238526

/-- `lt[n-2, A000010(2*n-(n-2))]` -/
def P8046659932605430687.Spec : Prop :=
  ∀ n, (P8046659932605430687.a n : ℤ) = A238526 (n + 1)

end A238526

/-! ## A238526.P16304595180668204875

`lt[n, (n+3)/(A000005(n+2)-ϕ)]`
-/

namespace A238526.P16304595180668204875
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℝ) / ((A000005 (n + 2) : ℝ) - Real.goldenRatio)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A238526.P16304595180668204875

namespace A238526

/-- `lt[n, (n+3)/(A000005(n+2)-ϕ)]` -/
def P16304595180668204875.Spec : Prop :=
  ∀ n, (P16304595180668204875.a n : ℤ) = A238526 (n + 1)

end A238526

/-! ## A238526.P16520672166334070394

`eq[n+3, lcm(n+3, n+1-A006530(n+2))]`
-/

namespace A238526.P16520672166334070394
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 3 : ℤ) ((n + 1 : ℤ) - A006530 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A238526.P16520672166334070394

namespace A238526

/-- `eq[n+3, lcm(n+3, n+1-A006530(n+2))]` -/
def P16520672166334070394.Spec : Prop :=
  ∀ n, (P16520672166334070394.a n : ℤ) = A238526 (n + 1)

end A238526

/-! ## A238526.P501055718310231777

`∩[A066050(n+1)-2, A004276(n)]`
-/

namespace A238526.P501055718310231777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066050 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004276 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A238526.P501055718310231777

namespace A238526

/-- `∩[A066050(n+1)-2, A004276(n)]` -/
def P501055718310231777.Spec : Prop :=
  ∀ n, (P501055718310231777.a n : ℤ) = A238526 (n + 1)

end A238526

/-! ## A238526.P5731068756374648873

`lt[A000005(6*(n+2)), 9]`
-/

namespace A238526.P5731068756374648873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (6 * (n + 2))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A238526.P5731068756374648873

namespace A238526

/-- `lt[A000005(6*(n+2)), 9]` -/
def P5731068756374648873.Spec : Prop :=
  ∀ n, (P5731068756374648873.a n : ℤ) = A238526 (n + 1)

end A238526

/-! ## A238526.P11787238037515959593

`lt[A082023(n+2), 2]`
-/

namespace A238526.P11787238037515959593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082023 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A238526.P11787238037515959593

namespace A238526

/-- `lt[A082023(n+2), 2]` -/
def P11787238037515959593.Spec : Prop :=
  ∀ n, (P11787238037515959593.a n : ℤ) = A238526 (n + 1)

end A238526

/-! ## A238526.P11082943284601153809

`lt[A069359(n+2)-2, 2]`
-/

namespace A238526.P11082943284601153809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069359 (n + 2) - 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A238526.P11082943284601153809

namespace A238526

/-- `lt[A069359(n+2)-2, 2]` -/
def P11082943284601153809.Spec : Prop :=
  ∀ n, (P11082943284601153809.a n : ℤ) = A238526 (n + 1)

end A238526

/-!
# A238527: Prime values of A238525.

The programs for A238527, the canonical program `A238527.P10086126541978314139` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A238527 has offset 1).

The definition of A238527 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A238527.P10086126541978314139

`p?[(n+2)%A001414(n+2)]`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A238527

/-- `p?[(n+2)%A001414(n+2)]` -/
def P10086126541978314139.Spec : Prop :=
  ∀ n, P10086126541978314139.a n = A238527 (n + 1)

theorem P10086126541978314139.correct : P10086126541978314139.Spec := by
  intro n
  simp only [A238527, Nat.add_sub_cancel]

end A238527

/-! ## A238527.P3366772406510989467

`p?[(n+1)%A107463(n+1)]`
-/

namespace A238527.P3366772406510989467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A107463 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A238527.P3366772406510989467

namespace A238527

/-- `p?[(n+1)%A107463(n+1)]` -/
def P3366772406510989467.Spec : Prop :=
  ∀ n, P3366772406510989467.a n = A238527 (n + 1)

end A238527

/-! ## A238527.P4998946678240377080

`p?[A002808(n+1)%A046343(n+1)]`
-/

namespace A238527.P4998946678240377080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002808 (n + 1)) (A046343 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A238527.P4998946678240377080

namespace A238527

/-- `p?[A002808(n+1)%A046343(n+1)]` -/
def P4998946678240377080.Spec : Prop :=
  ∀ n, P4998946678240377080.a n = A238527 (n + 1)

end A238527

/-! ## A238527.P3674525817668232743

`p?[A145834(n+1)%A046343(n+1)]`
-/

namespace A238527.P3674525817668232743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A145834 (n + 1)) (A046343 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A238527.P3674525817668232743

namespace A238527

/-- `p?[A145834(n+1)%A046343(n+1)]` -/
def P3674525817668232743.Spec : Prop :=
  ∀ n, P3674525817668232743.a n = A238527 (n + 1)

end A238527

/-! ## A238527.P18426246953156207743

`p?[A238525(n+2)]`
-/

namespace A238527.P18426246953156207743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238525 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A238527.P18426246953156207743

namespace A238527

/-- `p?[A238525(n+2)]` -/
def P18426246953156207743.Spec : Prop :=
  ∀ n, P18426246953156207743.a n = A238527 (n + 1)

end A238527

/-!
# A238528: Record prime values of A238525.

The programs for A238528, the canonical program `A238528.P13011311718076480428` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A238528 has offset 1).

The definition of A238528 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5002 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A238528.P13011311718076480428

`A171821(A004281(n))`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A238528

/-- `A171821(A004281(n))` -/
def P13011311718076480428.Spec : Prop :=
  ∀ n, P13011311718076480428.a n = A238528 (n + 1)

theorem P13011311718076480428.correct : P13011311718076480428.Spec := by
  intro n
  simp only [A238528, Nat.add_sub_cancel]

end A238528

/-! ## A238528.P4869326012071377896

`A171821(A004276(n+1))`
-/

namespace A238528.P4869326012071377896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171821 (A004276 (n + 1)).toNat

end

end A238528.P4869326012071377896

namespace A238528

/-- `A171821(A004276(n+1))` -/
def P4869326012071377896.Spec : Prop :=
  ∀ n, P4869326012071377896.a n = A238528 (n + 1)

end A238528

/-! ## A238528.P7945368460193470214

`p?[A238526(n+1)]`
-/

namespace A238528.P7945368460193470214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238526 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A238528.P7945368460193470214

namespace A238528

/-- `p?[A238526(n+1)]` -/
def P7945368460193470214.Spec : Prop :=
  ∀ n, P7945368460193470214.a n = A238528 (n + 1)

end A238528

/-! ## A238528.P17071428966772631068

`p?[A067126(n+1)-2]`
-/

namespace A238528.P17071428966772631068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067126 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A238528.P17071428966772631068

namespace A238528

/-- `p?[A067126(n+1)-2]` -/
def P17071428966772631068.Spec : Prop :=
  ∀ n, P17071428966772631068.a n = A238528 (n + 1)

end A238528

/-! ## A238528.P15433623165362095487

`p?[A161346(n+1)-2]`
-/

namespace A238528.P15433623165362095487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161346 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A238528.P15433623165362095487

namespace A238528

/-- `p?[A161346(n+1)-2]` -/
def P15433623165362095487.Spec : Prop :=
  ∀ n, P15433623165362095487.a n = A238528 (n + 1)

end A238528

/-! ## A238528.P7391292725980054758

`p?[A193339(n+1)-2]`
-/

namespace A238528.P7391292725980054758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193339 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A238528.P7391292725980054758

namespace A238528

/-- `p?[A193339(n+1)-2]` -/
def P7391292725980054758.Spec : Prop :=
  ∀ n, P7391292725980054758.a n = A238528 (n + 1)

end A238528

/-! ## A238528.P5105354355744721891

`∩[A000040(n+1), A238526(n+1)]`
-/

namespace A238528.P5105354355744721891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238526 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A238528.P5105354355744721891

namespace A238528

/-- `∩[A000040(n+1), A238526(n+1)]` -/
def P5105354355744721891.Spec : Prop :=
  ∀ n, (P5105354355744721891.a n : ℤ) = A238528 (n + 1)

end A238528

/-! ## A238528.P11777669025967980434

`∩[A040046(n+1), A238526(n+1)]`
-/

namespace A238528.P11777669025967980434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040046 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238526 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A238528.P11777669025967980434

namespace A238528

/-- `∩[A040046(n+1), A238526(n+1)]` -/
def P11777669025967980434.Spec : Prop :=
  ∀ n, (P11777669025967980434.a n : ℤ) = A238528 (n + 1)

end A238528

/-! ## A238528.P10799080664578533447

`∩[A040049(n+1), A238526(n+1)]`
-/

namespace A238528.P10799080664578533447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040049 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238526 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A238528.P10799080664578533447

namespace A238528

/-- `∩[A040049(n+1), A238526(n+1)]` -/
def P10799080664578533447.Spec : Prop :=
  ∀ n, (P10799080664578533447.a n : ℤ) = A238528 (n + 1)

end A238528

/-! ## A238528.P15524497470522925905

`∩[A040065(n+1), A238526(n+1)]`
-/

namespace A238528.P15524497470522925905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040065 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238526 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A238528.P15524497470522925905

namespace A238528

/-- `∩[A040065(n+1), A238526(n+1)]` -/
def P15524497470522925905.Spec : Prop :=
  ∀ n, (P15524497470522925905.a n : ℤ) = A238528 (n + 1)

end A238528

/-! ## A238528.P11625862120452699168

`∩[A040085(n+1), A238526(n+1)]`
-/

namespace A238528.P11625862120452699168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040085 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238526 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A238528.P11625862120452699168

namespace A238528

/-- `∩[A040085(n+1), A238526(n+1)]` -/
def P11625862120452699168.Spec : Prop :=
  ∀ n, (P11625862120452699168.a n : ℤ) = A238528 (n + 1)

end A238528

/-! ## A238528.P14778217305351436066

`∩[A040087(n+1), A238526(n+1)]`
-/

namespace A238528.P14778217305351436066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040087 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238526 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A238528.P14778217305351436066

namespace A238528

/-- `∩[A040087(n+1), A238526(n+1)]` -/
def P14778217305351436066.Spec : Prop :=
  ∀ n, (P14778217305351436066.a n : ℤ) = A238528 (n + 1)

end A238528

/-! ## A238528.P8986959768380779534

`∩[A040089(n+1), A238526(n+1)]`
-/

namespace A238528.P8986959768380779534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040089 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238526 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A238528.P8986959768380779534

namespace A238528

/-- `∩[A040089(n+1), A238526(n+1)]` -/
def P8986959768380779534.Spec : Prop :=
  ∀ n, (P8986959768380779534.a n : ℤ) = A238528 (n + 1)

end A238528

/-! ## A238528.P3064885451755420279

`∩[A051948(n+1), A238526(n+1)]`
-/

namespace A238528.P3064885451755420279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238526 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A238528.P3064885451755420279

namespace A238528

/-- `∩[A051948(n+1), A238526(n+1)]` -/
def P3064885451755420279.Spec : Prop :=
  ∀ n, (P3064885451755420279.a n : ℤ) = A238528 (n + 1)

end A238528

/-! ## A238528.P11156722547867100236

`∩[A053813(n+1), A238526(n+1)]`
-/

namespace A238528.P11156722547867100236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238526 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A238528.P11156722547867100236

namespace A238528

/-- `∩[A053813(n+1), A238526(n+1)]` -/
def P11156722547867100236.Spec : Prop :=
  ∀ n, (P11156722547867100236.a n : ℤ) = A238528 (n + 1)

end A238528

/-! ## A238528.P5257508448006265437

`∩[A061771(n+1), A238526(n+1)]`
-/

namespace A238528.P5257508448006265437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061771 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238526 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A238528.P5257508448006265437

namespace A238528

/-- `∩[A061771(n+1), A238526(n+1)]` -/
def P5257508448006265437.Spec : Prop :=
  ∀ n, (P5257508448006265437.a n : ℤ) = A238528 (n + 1)

end A238528

/-! ## A238528.P14707273330767573331

`∩[A109611(n+1), A238526(n+1)]`
-/

namespace A238528.P14707273330767573331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109611 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238526 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A238528.P14707273330767573331

namespace A238528

/-- `∩[A109611(n+1), A238526(n+1)]` -/
def P14707273330767573331.Spec : Prop :=
  ∀ n, (P14707273330767573331.a n : ℤ) = A238528 (n + 1)

end A238528

/-! ## A238528.P6268015338395805797

`∩[A116974(n+1), A238526(n+1)]`
-/

namespace A238528.P6268015338395805797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116974 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238526 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A238528.P6268015338395805797

namespace A238528

/-- `∩[A116974(n+1), A238526(n+1)]` -/
def P6268015338395805797.Spec : Prop :=
  ∀ n, (P6268015338395805797.a n : ℤ) = A238528 (n + 1)

end A238528

/-! ## A238528.P1352682463242000597

`∩[A124590(n+1), A238526(n+1)]`
-/

namespace A238528.P1352682463242000597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124590 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238526 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A238528.P1352682463242000597

namespace A238528

/-- `∩[A124590(n+1), A238526(n+1)]` -/
def P1352682463242000597.Spec : Prop :=
  ∀ n, (P1352682463242000597.a n : ℤ) = A238528 (n + 1)

end A238528

/-! ## A238528.P15420210527077777831

`∩[A070159(n+1), A238526(n+1)]`
-/

namespace A238528.P15420210527077777831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070159 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238526 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A238528.P15420210527077777831

namespace A238528

/-- `∩[A070159(n+1), A238526(n+1)]` -/
def P15420210527077777831.Spec : Prop :=
  ∀ n, (P15420210527077777831.a n : ℤ) = A238528 (n + 1)

end A238528

/-!
# A238529: a(0) = a(1) = 0, and for n > 1, a(n) = number of iterations of A238525 (n modulo sopfr(n)) needed to reach either 0 or 1. Here sopfr(n) is the sum of the prime factors of n, with multiplicity, A001414.

The programs for A238529, the canonical program `A238529.P10773024009408837413` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A238529 has offset 0).

The definition of A238529 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A238525, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A238529.P10773024009408837413

`1+a(A238525(n))` with `a(0)=0, a(1)=0, a(2)=1`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A238529

/-- `1+a(A238525(n))` -/
def P10773024009408837413.Spec : Prop :=
  ∀ n, (P10773024009408837413.a n : ℤ) = A238529 n

theorem P10773024009408837413.correct : P10773024009408837413.Spec := by
  intro n
  simp only [A238529]

end A238529

/-! ## A238529.P8505233648922016951

`a(A238525(n))+1` with `a(0)=0, a(1)=0`
-/

namespace A238529.P8505233648922016951
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0] fun n a =>
  a (A238525 n).toNat + 1

end

end A238529.P8505233648922016951

namespace A238529

/-- `a(A238525(n))+1` -/
def P8505233648922016951.Spec : Prop :=
  ∀ n, (P8505233648922016951.a n : ℤ) = A238529 n

end A238529

/-! ## A238529.P2377664695763108002

`A000079(a(A238525(n))^n)` with `a(0)=0, a(1)=0`
-/

namespace A238529.P2377664695763108002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  A000079 (a (A238525 n).toNat ^ n).toNat

end

end A238529.P2377664695763108002

namespace A238529

/-- `A000079(a(A238525(n))^n)` -/
def P2377664695763108002.Spec : Prop :=
  ∀ n, P2377664695763108002.a n = A238529 n

end A238529

/-! ## A238529.P7746288920459159242

`A007717(a(A238525(n))^n)` with `a(0)=0, a(1)=0`
-/

namespace A238529.P7746288920459159242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  A007717 (a (A238525 n).toNat ^ n).toNat

end

end A238529.P7746288920459159242

namespace A238529

/-- `A007717(a(A238525(n))^n)` -/
def P7746288920459159242.Spec : Prop :=
  ∀ n, P7746288920459159242.a n = A238529 n

end A238529

/-! ## A238529.P5792565562782638460

`A015906(a(A238525(n))^n)` with `a(0)=0, a(1)=0`
-/

namespace A238529.P5792565562782638460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  A015906 (a (A238525 n).toNat ^ n).toNat

end

end A238529.P5792565562782638460

namespace A238529

/-- `A015906(a(A238525(n))^n)` -/
def P5792565562782638460.Spec : Prop :=
  ∀ n, P5792565562782638460.a n = A238529 n

end A238529

/-!
# A238531: Expansion of (1 - x + x^2)^2 / (1 - x)^3 in powers of x.

The programs for A238531, the canonical program `A238531.P13514544259633971617` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A238531 has offset 0).

The definition of A238531 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-2x+3x^2-2x^3+x^4)/(1-3x+3x^2-x^3))` (program `A238531.P13514544259633971617`, by `A238531.P13514544259633971617.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A238531.P13514544259633971617

`ogf((1-2x+3x^2-2x^3+x^4)/(1-3x+3x^2-x^3))`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A238531

/-- `ogf((1-2x+3x^2-2x^3+x^4)/(1-3x+3x^2-x^3))` -/
def P13514544259633971617.Spec : Prop :=
  ∀ n, P13514544259633971617.a n = A238531 n

theorem P13514544259633971617.correct : P13514544259633971617.Spec := by
  intro n
  simp only [A238531]

end A238531

/-! ## A238531.P15459276620736025701

`∑[abs(1-(char[2]+n))]`
-/

namespace A238531.P15459276620736025701
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (((if ∃ j, f2 j = n then 1 else 0) + n : ℕ) : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A238531.P15459276620736025701

namespace A238531

/-- `∑[abs(1-(char[2]+n))]` -/
def P15459276620736025701.Spec : Prop :=
  ∀ n, P15459276620736025701.a n = A238531 n

end A238531

/-! ## A238531.P2464334912361500643

`∑[xor(n, char[2])-1]+2`
-/

namespace A238531.P2464334912361500643
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.xor n (if ∃ j, f2 j = n then 1 else 0) : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A238531.P2464334912361500643

namespace A238531

/-- `∑[xor(n, char[2])-1]+2` -/
def P2464334912361500643.Spec : Prop :=
  ∀ n, P2464334912361500643.a n = A238531 n

end A238531

/-! ## A238531.P6501889283203766694

`floor(atan(n))+C(n, 2)+1`
-/

namespace A238531.P6501889283203766694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.arctan (n : ℝ)⌋ + (Nat.choose n 2 + 1 : ℤ)

end

end A238531.P6501889283203766694

namespace A238531

/-- `floor(atan(n))+C(n, 2)+1` -/
def P6501889283203766694.Spec : Prop :=
  ∀ n, P6501889283203766694.a n = A238531 n

end A238531

/-! ## A238531.P2027797945103347072

`C(n, 2)+gcd(2, C(3, n²))`
-/

namespace A238531.P2027797945103347072
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2 + Nat.gcd 2 (Nat.choose 3 (n ^ 2))

end

end A238531.P2027797945103347072

namespace A238531

/-- `C(n, 2)+gcd(2, C(3, n²))` -/
def P2027797945103347072.Spec : Prop :=
  ∀ n, (P2027797945103347072.a n : ℤ) = A238531 n

end A238531

/-! ## A238531.P15350214457495444281

`C(n, 2)+2-C(n, n²)`
-/

namespace A238531.P15350214457495444281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose n 2 : ℤ) + (2 - (Nat.choose n (n ^ 2) : ℤ))

end

end A238531.P15350214457495444281

namespace A238531

/-- `C(n, 2)+2-C(n, n²)` -/
def P15350214457495444281.Spec : Prop :=
  ∀ n, P15350214457495444281.a n = A238531 n

end A238531

/-! ## A238531.P13924863713851757050

`2-(C(n, n²)-C(n, 2))`
-/

namespace A238531.P13924863713851757050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ((Nat.choose n (n ^ 2) : ℤ) - (Nat.choose n 2 : ℤ))

end

end A238531.P13924863713851757050

namespace A238531

/-- `2-(C(n, n²)-C(n, 2))` -/
def P13924863713851757050.Spec : Prop :=
  ∀ n, P13924863713851757050.a n = A238531 n

end A238531

/-! ## A238531.P1245638095953415609

`ceil(∑[n-cos(2/(n+1))])`
-/

namespace A238531.P1245638095953415609
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n : ℝ) - Real.cos (2 / (n + 1 : ℚ) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉

end

end A238531.P1245638095953415609

namespace A238531

/-- `ceil(∑[n-cos(2/(n+1))])` -/
def P1245638095953415609.Spec : Prop :=
  ∀ n, P1245638095953415609.a n = A238531 n

end A238531

/-! ## A238531.P10973342043987077057

`n-1+a(n-1)` with `a(0)=1, a(1)=1, a(2)=3`
-/

namespace A238531.P10973342043987077057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 3] fun n a =>
  (n : ℤ) - 1 + a (n - 1)

end

end A238531.P10973342043987077057

namespace A238531

/-- `n-1+a(n-1)` -/
def P10973342043987077057.Spec : Prop :=
  ∀ n, P10973342043987077057.a n = A238531 n

end A238531

/-! ## A238531.P639577929245498524

`n-(1-a(n-1))` with `a(0)=1, a(1)=1, a(2)=3`
-/

namespace A238531.P639577929245498524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 3] fun n a =>
  (n : ℤ) - (1 - a (n - 1))

end

end A238531.P639577929245498524

namespace A238531

/-- `n-(1-a(n-1))` -/
def P639577929245498524.Spec : Prop :=
  ∀ n, P639577929245498524.a n = A238531 n

end A238531

/-! ## A238531.P3771528839387447148

`abs(∑[n-1]+3%(2*n+1))`
-/

namespace A238531.P3771528839387447148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j + ((3 % (2 * n + 1) : ℕ) : ℤ)|

end

end A238531.P3771528839387447148

namespace A238531

/-- `abs(∑[n-1]+3%(2*n+1))` -/
def P3771528839387447148.Spec : Prop :=
  ∀ n, P3771528839387447148.a n = A238531 n

end A238531

/-! ## A238531.P4836695212044696512

`floor(∑[2/C(n+2, 2)+n-1])`
-/

namespace A238531.P4836695212044696512
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (Nat.choose (n + 2) 2 : ℚ) + ((n : ℤ) - 1 : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A238531.P4836695212044696512

namespace A238531

/-- `floor(∑[2/C(n+2, 2)+n-1])` -/
def P4836695212044696512.Spec : Prop :=
  ∀ n, P4836695212044696512.a n = A238531 n

end A238531

/-! ## A238531.P774942891719673088

`(n²+n)%(2-∑[n+1])+1`
-/

namespace A238531.P774942891719673088
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n ^ 2 + n : ℤ) (2 - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)) + 1

end

end A238531.P774942891719673088

namespace A238531

/-- `(n²+n)%(2-∑[n+1])+1` -/
def P774942891719673088.Spec : Prop :=
  ∀ n, P774942891719673088.a n = A238531 n

end A238531

/-! ## A238531.P18190439608081550417

`ceil((2*n+1)/(n+2))+C(n, 2)`
-/

namespace A238531.P18190439608081550417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 * n + 1 : ℚ) / (n + 2 : ℚ)⌉ + (Nat.choose n 2 : ℤ)

end

end A238531.P18190439608081550417

namespace A238531

/-- `ceil((2*n+1)/(n+2))+C(n, 2)` -/
def P18190439608081550417.Spec : Prop :=
  ∀ n, P18190439608081550417.a n = A238531 n

end A238531

/-! ## A238531.P1416357301196221174

`∑[val(2*n+1, n+3)+n-1]+2`
-/

namespace A238531.P1416357301196221174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (2 * n + 1) (n + 3) : ℤ) + ((n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A238531.P1416357301196221174

namespace A238531

/-- `∑[val(2*n+1, n+3)+n-1]+2` -/
def P1416357301196221174.Spec : Prop :=
  ∀ n, P1416357301196221174.a n = A238531 n

end A238531

/-! ## A238531.P4523265719781112365

`∑[n+1]-floor(lcm(2*n+1, n+1)/(n+2))`
-/

namespace A238531.P4523265719781112365
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ⌊(Nat.lcm (2 * n + 1) (n + 1) : ℚ) / (n + 2 : ℚ)⌋

end

end A238531.P4523265719781112365

namespace A238531

/-- `∑[n+1]-floor(lcm(2*n+1, n+1)/(n+2))` -/
def P4523265719781112365.Spec : Prop :=
  ∀ n, P4523265719781112365.a n = A238531 n

end A238531

/-! ## A238531.P1738578504287944048

`round(sqrt(A066455(n+1)))`
-/

namespace A238531.P1738578504287944048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A066455 (n + 1) : ℝ))

end

end A238531.P1738578504287944048

namespace A238531

/-- `round(sqrt(A066455(n+1)))` -/
def P1738578504287944048.Spec : Prop :=
  ∀ n, P1738578504287944048.a n = A238531 n

end A238531

/-! ## A238531.P14109760575734102567

`A133263((n-1)%(n+1))`
-/

namespace A238531.P14109760575734102567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133263 (Int.tmod ((n : ℤ) - 1) (n + 1 : ℤ)).toNat

end

end A238531.P14109760575734102567

namespace A238531

/-- `A133263((n-1)%(n+1))` -/
def P14109760575734102567.Spec : Prop :=
  ∀ n, P14109760575734102567.a n = A238531 n

end A238531

/-! ## A238531.P13853368230608883899

`∑[n-1]+A000032((n+3)%(n+1))`
-/

namespace A238531.P13853368230608883899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + A000032 ((n + 3) % (n + 1))

end

end A238531.P13853368230608883899

namespace A238531

/-- `∑[n-1]+A000032((n+3)%(n+1))` -/
def P13853368230608883899.Spec : Prop :=
  ∀ n, P13853368230608883899.a n = A238531 n

end A238531

/-! ## A238531.P8403813055138067962

`∑[n]-(A000045(C(2, n+1))+n-2)`
-/

namespace A238531.P8403813055138067962
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (A000045 (Nat.choose 2 (n + 1)) + ((n : ℤ) - 2))

end

end A238531.P8403813055138067962

namespace A238531

/-- `∑[n]-(A000045(C(2, n+1))+n-2)` -/
def P8403813055138067962.Spec : Prop :=
  ∀ n, P8403813055138067962.a n = A238531 n

end A238531

/-!
# A238532: Number of distinct factorial numbers congruent to -1 (mod n).

The programs for A238532, there is no canonical definition to state claims against.
-/

/-! ## A238532.P11490254658024129259

`val(A151710(n+1), A000040(A046523(n+1)))`
-/

namespace A238532.P11490254658024129259
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A151710 (n + 1)).toNat (A000040 (A046523 (n + 1)).toNat).toNat

end

end A238532.P11490254658024129259

/-! ## A238532.P5028691425718663311

`val(A151710(n+1), A000040(A071364(n+1)))`
-/

namespace A238532.P5028691425718663311
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A151710 (n + 1)).toNat (A000040 (A071364 (n + 1)).toNat).toNat

end

end A238532.P5028691425718663311

/-! ## A238532.P9081045179123853045

`val(A151710(n+1), A098544(A166469(n+1)))`
-/

namespace A238532.P9081045179123853045
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A151710 (n + 1)).toNat (A098544 (A166469 (n + 1)).toNat).toNat

end

end A238532.P9081045179123853045

/-! ## A238532.P5339022394205270124

`val(A151710(n+1), A000040(A318885(n+1)))`
-/

namespace A238532.P5339022394205270124
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A151710 (n + 1)).toNat (A000040 (A318885 (n + 1)).toNat).toNat

end

end A238532.P5339022394205270124

/-! ## A238532.P51920013283773299

`val(A151710(n+1), A000040(A329600(n+1)))`
-/

namespace A238532.P51920013283773299
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A151710 (n + 1)).toNat (A000040 (A329600 (n + 1)).toNat).toNat

end

end A238532.P51920013283773299

/-!
# A238533: Number of solutions to gcd(x^2 + y^2 + z^2 + t^2 + h^2, n) = 1 with x,y,z,t,h in [0,n-1].

The programs for A238533, the canonical program `A238533.P17719701383286130883` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A238533 has offset 1).

The definition of A238533 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A238533.P17719701383286130883

`(n+1)*A189393(n+1)`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A238533

/-- `(n+1)*A189393(n+1)` -/
def P17719701383286130883.Spec : Prop :=
  ∀ n, P17719701383286130883.a n = A238533 (n + 1)

theorem P17719701383286130883.correct : P17719701383286130883.Spec := by
  intro n
  simp only [A238533, Nat.add_sub_cancel]

end A238533

/-! ## A238533.P10236717045138072009

`A306411(n+1)/(n+1)`
-/

namespace A238533.P10236717045138072009
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A306411 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A238533.P10236717045138072009

namespace A238533

/-- `A306411(n+1)/(n+1)` -/
def P10236717045138072009.Spec : Prop :=
  ∀ n, P10236717045138072009.a n = (A238533 (n + 1) : ℚ)

end A238533

/-! ## A238533.P17172839525314667335

`(n+1)²*A053191(n+1)`
-/

namespace A238533.P17172839525314667335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) * A053191 (n + 1)

end

end A238533.P17172839525314667335

namespace A238533

/-- `(n+1)²*A053191(n+1)` -/
def P17172839525314667335.Spec : Prop :=
  ∀ n, P17172839525314667335.a n = A238533 (n + 1)

end A238533

/-! ## A238533.P14095749935074756875

`A239442(n+1)/(n+1)²`
-/

namespace A238533.P14095749935074756875
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A239442 (n + 1) : ℚ) / ((n + 1) ^ 2 : ℚ)

end

end A238533.P14095749935074756875

namespace A238533

/-- `A239442(n+1)/(n+1)²` -/
def P14095749935074756875.Spec : Prop :=
  ∀ n, P14095749935074756875.a n = (A238533 (n + 1) : ℚ)

end A238533

/-! ## A238533.P15818849799102492591

`(n+1)^4*A000010(n+1)`
-/

namespace A238533.P15818849799102492591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 4 : ℤ) * A000010 (n + 1)

end

end A238533.P15818849799102492591

namespace A238533

/-- `(n+1)^4*A000010(n+1)` -/
def P15818849799102492591.Spec : Prop :=
  ∀ n, P15818849799102492591.a n = A238533 (n + 1)

end A238533

/-! ## A238533.P12286242851316896928

`A306412(n+1)/(n+1)^3`
-/

namespace A238533.P12286242851316896928
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A306412 (n + 1) : ℚ) / ((n + 1) ^ 3 : ℚ)

end

end A238533.P12286242851316896928

namespace A238533

/-- `A306412(n+1)/(n+1)^3` -/
def P12286242851316896928.Spec : Prop :=
  ∀ n, P12286242851316896928.a n = (A238533 (n + 1) : ℚ)

end A238533

/-! ## A238533.P11405675978172899168

`A239443(n+1)/(n+1)²²`
-/

namespace A238533.P11405675978172899168
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A239443 (n + 1) : ℚ) / (((n + 1) ^ 2) ^ 2 : ℚ)

end

end A238533.P11405675978172899168

namespace A238533

/-- `A239443(n+1)/(n+1)²²` -/
def P11405675978172899168.Spec : Prop :=
  ∀ n, P11405675978172899168.a n = (A238533 (n + 1) : ℚ)

end A238533

/-! ## A238533.P12179591996928987867

`(A109606(n+1)+1)*(n+1)^4`
-/

namespace A238533.P12179591996928987867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A109606 (n + 1) + 1) * ((n + 1) ^ 4 : ℤ)

end

end A238533.P12179591996928987867

namespace A238533

/-- `(A109606(n+1)+1)*(n+1)^4` -/
def P12179591996928987867.Spec : Prop :=
  ∀ n, P12179591996928987867.a n = A238533 (n + 1)

end A238533

/-! ## A238533.P12860688285292273245

`(A039649(n+1)-1)*(n+1)²²`
-/

namespace A238533.P12860688285292273245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A039649 (n + 1) - 1) * (((n + 1) ^ 2) ^ 2 : ℤ)

end

end A238533.P12860688285292273245

namespace A238533

/-- `(A039649(n+1)-1)*(n+1)²²` -/
def P12860688285292273245.Spec : Prop :=
  ∀ n, P12860688285292273245.a n = A238533 (n + 1)

end A238533

/-! ## A238533.P9013926516957694314

`A103517(n)*A308474(n+1)`
-/

namespace A238533.P9013926516957694314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 n * A308474 (n + 1)

end

end A238533.P9013926516957694314

namespace A238533

/-- `A103517(n)*A308474(n+1)` -/
def P9013926516957694314.Spec : Prop :=
  ∀ n, P9013926516957694314.a n = A238533 (n + 1)

end A238533

/-! ## A238533.P13466698549014582412

`A000578(n+1)*A002618(n+1)`
-/

namespace A238533.P13466698549014582412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (n + 1) * A002618 (n + 1)

end

end A238533.P13466698549014582412

namespace A238533

/-- `A000578(n+1)*A002618(n+1)` -/
def P13466698549014582412.Spec : Prop :=
  ∀ n, P13466698549014582412.a n = A238533 (n + 1)

end A238533

/-! ## A238533.P17068912844421197913

`A053191(n+1)²/A000010(n+1)`
-/

namespace A238533.P17068912844421197913
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053191 (n + 1) ^ 2 : ℚ) / (A000010 (n + 1) : ℚ)

end

end A238533.P17068912844421197913

namespace A238533

/-- `A053191(n+1)²/A000010(n+1)` -/
def P17068912844421197913.Spec : Prop :=
  ∀ n, P17068912844421197913.a n = (A238533 (n + 1) : ℚ)

end A238533

/-! ## A238533.P3316508086697585200

`A189393(n+1)²/A053191(n+1)`
-/

namespace A238533.P3316508086697585200
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A189393 (n + 1) ^ 2 : ℚ) / (A053191 (n + 1) : ℚ)

end

end A238533.P3316508086697585200

namespace A238533

/-- `A189393(n+1)²/A053191(n+1)` -/
def P3316508086697585200.Spec : Prop :=
  ∀ n, P3316508086697585200.a n = (A238533 (n + 1) : ℚ)

end A238533

/-! ## A238533.P13294995844241030421

`A000010(n+1)*∑[A005917(n+1)]`
-/

namespace A238533.P13294995844241030421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005917 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A238533.P13294995844241030421

namespace A238533

/-- `A000010(n+1)*∑[A005917(n+1)]` -/
def P13294995844241030421.Spec : Prop :=
  ∀ n, P13294995844241030421.a n = A238533 (n + 1)

end A238533

/-! ## A238533.P2138769567149453797

`A000010(n+1)*record[A305296(n)²²]`
-/

namespace A238533.P2138769567149453797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A305296 n ^ 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A238533.P2138769567149453797

namespace A238533

/-- `A000010(n+1)*record[A305296(n)²²]` -/
def P2138769567149453797.Spec : Prop :=
  ∀ n, P2138769567149453797.a n = A238533 (n + 1)

end A238533

/-! ## A238533.P1148801997651070907

`A000010(n+1)*record[A324347(n)²²]`
-/

namespace A238533.P1148801997651070907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A324347 n ^ 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A238533.P1148801997651070907

namespace A238533

/-- `A000010(n+1)*record[A324347(n)²²]` -/
def P1148801997651070907.Spec : Prop :=
  ∀ n, P1148801997651070907.a n = A238533 (n + 1)

end A238533

/-! ## A238533.P1052489342149594676

`A000010(n+1)*record[A318500(n+1)²²]`
-/

namespace A238533.P1052489342149594676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A318500 (n + 1) ^ 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A238533.P1052489342149594676

namespace A238533

/-- `A000010(n+1)*record[A318500(n+1)²²]` -/
def P1052489342149594676.Spec : Prop :=
  ∀ n, P1052489342149594676.a n = A238533 (n + 1)

end A238533

/-! ## A238533.P9265389072855053767

`∑{d}[n+1, A001160(#)*A053826((n+1)/#)]`
-/

namespace A238533.P9265389072855053767
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001160 d * A053826 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A238533.P9265389072855053767

namespace A238533

/-- `∑{d}[n+1, A001160(#)*A053826((n+1)/#)]` -/
def P9265389072855053767.Spec : Prop :=
  ∀ n, P9265389072855053767.a n = A238533 (n + 1)

end A238533

/-! ## A238533.P7902628752366673369

`∑{d}[n+1, A059378(#)*A189922((n+1)/#)]`
-/

namespace A238533.P7902628752366673369
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A059378 d * A189922 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A238533.P7902628752366673369

namespace A238533

/-- `∑{d}[n+1, A059378(#)*A189922((n+1)/#)]` -/
def P7902628752366673369.Spec : Prop :=
  ∀ n, P7902628752366673369.a n = A238533 (n + 1)

end A238533

/-! ## A238533.P16538359825423256597

`∑{d}[n+1, A008683(#)*A372965((n+1)/#)]`
-/

namespace A238533.P16538359825423256597
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A372965 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A238533.P16538359825423256597

namespace A238533

/-- `∑{d}[n+1, A008683(#)*A372965((n+1)/#)]` -/
def P16538359825423256597.Spec : Prop :=
  ∀ n, P16538359825423256597.a n = A238533 (n + 1)

end A238533

/-!
# A238535: Sum of divisors d of n where d > sqrt(n).

The programs for A238535, there is no canonical definition to state claims against.
-/

/-! ## A238535.P17843489111370782226

`A000203(n+1)-A066839(n+1)`
-/

namespace A238535.P17843489111370782226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A066839 (n + 1)

end

end A238535.P17843489111370782226

/-! ## A238535.P8811667661128048253

`Δ[A160664(n)]-A066839(n+1)`
-/

namespace A238535.P8811667661128048253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A066839 (n + 1)

end

end A238535.P8811667661128048253

/-! ## A238535.P3173506887830153884

`A079667(n+1)+A070039(n+1)`
-/

namespace A238535.P3173506887830153884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079667 (n + 1) + A070039 (n + 1)

end

end A238535.P3173506887830153884

/-! ## A238535.P12085389939897946883

`A070038(n+1)-A037213(n+1)`
-/

namespace A238535.P12085389939897946883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070038 (n + 1) - A037213 (n + 1)

end

end A238535.P12085389939897946883

/-! ## A238535.P5537373144377771632

`A117003(n+1)-A070038(n+1)`
-/

namespace A238535.P5537373144377771632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117003 (n + 1) - A070038 (n + 1)

end

end A238535.P5537373144377771632

/-! ## A238535.P13689057905221357640

`A337177(n+1)-A070039(n+1)`
-/

namespace A238535.P13689057905221357640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337177 (n + 1) - A070039 (n + 1)

end

end A238535.P13689057905221357640

/-! ## A238535.P5666976672999476219

`A000203(n+1)-(A070039(n+1)+A037213(n+1))`
-/

namespace A238535.P5666976672999476219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - (A070039 (n + 1) + A037213 (n + 1))

end

end A238535.P5666976672999476219

/-! ## A238535.P569002680564854273

`A000203(n+1)+A070038(n+1)-A060866(n+1)`
-/

namespace A238535.P569002680564854273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) + (A070038 (n + 1) - A060866 (n + 1))

end

end A238535.P569002680564854273

/-! ## A238535.P5927646958368310260

`A000203(n+1)+A079667(n+1)-A070038(n+1)`
-/

namespace A238535.P5927646958368310260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) + (A079667 (n + 1) - A070038 (n + 1))

end

end A238535.P5927646958368310260

/-! ## A238535.P4023130527387017482

`A060866(n+1)-(A066839(n+1)+A037213(n+1))`
-/

namespace A238535.P4023130527387017482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060866 (n + 1) - (A066839 (n + 1) + A037213 (n + 1))

end

end A238535.P4023130527387017482

/-! ## A238535.P13167129196942953718

`A066839(n+1)+A079667(n+1)-A037213(n+1)`
-/

namespace A238535.P13167129196942953718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066839 (n + 1) + (A079667 (n + 1) - A037213 (n + 1))

end

end A238535.P13167129196942953718

/-! ## A238535.P4334387554163564363

`A000203(n+1)+A070039(n+1)-A117004(n+1)`
-/

namespace A238535.P4334387554163564363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) + (A070039 (n + 1) - A117004 (n + 1))

end

end A238535.P4334387554163564363

/-! ## A238535.P11519076013138844488

`A070038(n+1)+A070039(n+1)-A066839(n+1)`
-/

namespace A238535.P11519076013138844488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070038 (n + 1) + (A070039 (n + 1) - A066839 (n + 1))

end

end A238535.P11519076013138844488

/-! ## A238535.P8812994948208806067

`A066839(n+1)+A117003(n+1)-A060866(n+1)`
-/

namespace A238535.P8812994948208806067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066839 (n + 1) + (A117003 (n + 1) - A060866 (n + 1))

end

end A238535.P8812994948208806067

/-! ## A238535.P6753084462102194785

`A079667(n+1)+A117004(n+1)-A066839(n+1)`
-/

namespace A238535.P6753084462102194785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079667 (n + 1) + (A117004 (n + 1) - A066839 (n + 1))

end

end A238535.P6753084462102194785

/-! ## A238535.P11355555463601422463

`A117003(n+1)-(A079667(n+1)+A066839(n+1))`
-/

namespace A238535.P11355555463601422463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117003 (n + 1) - (A079667 (n + 1) + A066839 (n + 1))

end

end A238535.P11355555463601422463

/-! ## A238535.P2018990056284287007

`A070039(n+1)+A088580(n+1)-(A117004(n+1)+1)`
-/

namespace A238535.P2018990056284287007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070039 (n + 1) + (A088580 (n + 1) - (A117004 (n + 1) + 1))

end

end A238535.P2018990056284287007

/-! ## A238535.P12184579754525580111

`A070039(n+1)+A001065(n+1)+n+1-A117004(n+1)`
-/

namespace A238535.P12184579754525580111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070039 (n + 1) + (A001065 (n + 1) + (n + 1 : ℤ) - A117004 (n + 1))

end

end A238535.P12184579754525580111

/-! ## A238535.P18170290462568808617

`A000203(n+1)-A069292((n+1)²)`
-/

namespace A238535.P18170290462568808617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A069292 ((n + 1) ^ 2)

end

end A238535.P18170290462568808617

/-!
# A238536: A fourth-order linear divisibility sequence related to the Fibonacci numbers: a(n) = (1/2)*Fibonacci(3*n)*Lucas(n).

The programs for A238536, the canonical program `A238536.P14844855121276231802` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A238536 has offset 1).

The definition of A238536 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A238536.P14844855121276231802

`4*a(n-1)+19*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=1, a(1)=12, a(2)=68, a(3)=504`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A238536

/-- `4*a(n-1)+19*a(n-2)+4*a(n-3)-a(n-4)` -/
def P14844855121276231802.Spec : Prop :=
  ∀ n, P14844855121276231802.a n = A238536 (n + 1)

theorem P14844855121276231802.correct : P14844855121276231802.Spec := by
  intro n
  simp only [A238536, Nat.add_sub_cancel]

end A238536

/-! ## A238536.P8569421732545626374

`1/2*A000045(3*(n+1))*A000032(n+1)`
-/

namespace A238536.P8569421732545626374
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * (A000045 (3 * (n + 1)) : ℚ) * (A000032 (n + 1) : ℚ)

end

end A238536.P8569421732545626374

namespace A238536

/-- `1/2*A000045(3*(n+1))*A000032(n+1)` -/
def P8569421732545626374.Spec : Prop :=
  ∀ n, P8569421732545626374.a n = (A238536 (n + 1) : ℚ)

end A238536

/-! ## A238536.P4142856753968499671

`∑[A033887(n)]*A000204(n+1)`
-/

namespace A238536.P4142856753968499671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033887 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A000204 (n + 1)

end

end A238536.P4142856753968499671

namespace A238536

/-- `∑[A033887(n)]*A000204(n+1)` -/
def P4142856753968499671.Spec : Prop :=
  ∀ n, P4142856753968499671.a n = A238536 (n + 1)

end A238536

/-! ## A238536.P5672594176859566910

`Δ[A014739(n)]*A001076(n+1)`
-/

namespace A238536.P5672594176859566910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A001076 (n + 1)

end

end A238536.P5672594176859566910

namespace A238536

/-- `Δ[A014739(n)]*A001076(n+1)` -/
def P5672594176859566910.Spec : Prop :=
  ∀ n, P5672594176859566910.a n = A238536 (n + 1)

end A238536

/-! ## A238536.P3663398968568719673

`A000032(n+1)*Δ[A049652(n)]`
-/

namespace A238536.P3663398968568719673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049652 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (n + 1) * (f1 (n + 1) - f1 n)

end

end A238536.P3663398968568719673

namespace A238536

/-- `A000032(n+1)*Δ[A049652(n)]` -/
def P3663398968568719673.Spec : Prop :=
  ∀ n, P3663398968568719673.a n = A238536 (n + 1)

end A238536

/-! ## A238536.P9438067248696874187

`A000032(n+1)*A001076(n+1)`
-/

namespace A238536.P9438067248696874187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (n + 1) * A001076 (n + 1)

end

end A238536.P9438067248696874187

namespace A238536

/-- `A000032(n+1)*A001076(n+1)` -/
def P9438067248696874187.Spec : Prop :=
  ∀ n, P9438067248696874187.a n = A238536 (n + 1)

end A238536

/-! ## A238536.P8271303991239062605

`A000204(n+1)*A001076(n+1)`
-/

namespace A238536.P8271303991239062605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000204 (n + 1) * A001076 (n + 1)

end

end A238536.P8271303991239062605

namespace A238536

/-- `A000204(n+1)*A001076(n+1)` -/
def P8271303991239062605.Spec : Prop :=
  ∀ n, P8271303991239062605.a n = A238536 (n + 1)

end A238536

/-! ## A238536.P12134933917708665690

`A290890(2*n+1)-A113067(n)`
-/

namespace A238536.P12134933917708665690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290890 (2 * n + 1) - A113067 n

end

end A238536.P12134933917708665690

namespace A238536

/-- `A290890(2*n+1)-A113067(n)` -/
def P12134933917708665690.Spec : Prop :=
  ∀ n, P12134933917708665690.a n = A238536 (n + 1)

end A238536

/-! ## A238536.P1743409914007345316

`abs(A113066(2*n+1)+A113066(n))`
-/

namespace A238536.P1743409914007345316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A113066 (2 * n + 1) + A113066 n|

end

end A238536.P1743409914007345316

namespace A238536

/-- `abs(A113066(2*n+1)+A113066(n))` -/
def P1743409914007345316.Spec : Prop :=
  ∀ n, P1743409914007345316.a n = A238536 (n + 1)

end A238536

/-! ## A238536.P17212533122657027311

`abs(A113067(2*n+1)+A113067(n))`
-/

namespace A238536.P17212533122657027311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A113067 (2 * n + 1) + A113067 n|

end

end A238536.P17212533122657027311

namespace A238536

/-- `abs(A113067(2*n+1)+A113067(n))` -/
def P17212533122657027311.Spec : Prop :=
  ∀ n, P17212533122657027311.a n = A238536 (n + 1)

end A238536

/-! ## A238536.P15044513812597285880

`A000032(n+1)/2*A014445(n+1)`
-/

namespace A238536.P15044513812597285880
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000032 (n + 1) : ℚ) / 2 * (A014445 (n + 1) : ℚ)

end

end A238536.P15044513812597285880

namespace A238536

/-- `A000032(n+1)/2*A014445(n+1)` -/
def P15044513812597285880.Spec : Prop :=
  ∀ n, P15044513812597285880.a n = (A238536 (n + 1) : ℚ)

end A238536

/-! ## A238536.P227937134489385193

`A000204(n+1)*A167808(3*(n+1))`
-/

namespace A238536.P227937134489385193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000204 (n + 1) * A167808 (3 * (n + 1))

end

end A238536.P227937134489385193

namespace A238536

/-- `A000204(n+1)*A167808(3*(n+1))` -/
def P227937134489385193.Spec : Prop :=
  ∀ n, P227937134489385193.a n = A238536 (n + 1)

end A238536

/-! ## A238536.P6308351174418971361

`A000032(n+1)*A024490(3*n+2)`
-/

namespace A238536.P6308351174418971361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (n + 1) * A024490 (3 * n + 2)

end

end A238536.P6308351174418971361

namespace A238536

/-- `A000032(n+1)*A024490(3*n+2)` -/
def P6308351174418971361.Spec : Prop :=
  ∀ n, P6308351174418971361.a n = A238536 (n + 1)

end A238536

/-! ## A238536.P7724164675032513063

`A000032(n+1)*∑[A000045(3*n+1)]`
-/

namespace A238536.P7724164675032513063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (n + 1) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A238536.P7724164675032513063

namespace A238536

/-- `A000032(n+1)*∑[A000045(3*n+1)]` -/
def P7724164675032513063.Spec : Prop :=
  ∀ n, P7724164675032513063.a n = A238536 (n + 1)

end A238536

/-! ## A238536.P4744978067120466535

`∑[A212804(3*n+2)]*A000204(n+1)`
-/

namespace A238536.P4744978067120466535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A000204 (n + 1)

end

end A238536.P4744978067120466535

namespace A238536

/-- `∑[A212804(3*n+2)]*A000204(n+1)` -/
def P4744978067120466535.Spec : Prop :=
  ∀ n, P4744978067120466535.a n = A238536 (n + 1)

end A238536

/-! ## A238536.P8549414109011190728

`(A014445(n)+A001077(n))*A000032(n+1)`
-/

namespace A238536.P8549414109011190728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A014445 n + A001077 n) * A000032 (n + 1)

end

end A238536.P8549414109011190728

namespace A238536

/-- `(A014445(n)+A001077(n))*A000032(n+1)` -/
def P8549414109011190728.Spec : Prop :=
  ∀ n, P8549414109011190728.a n = A238536 (n + 1)

end A238536

/-! ## A238536.P17057752648499791826

`(A066258(n)+A001655(n))*A000032(n+1)`
-/

namespace A238536.P17057752648499791826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A066258 n + A001655 n) * A000032 (n + 1)

end

end A238536.P17057752648499791826

namespace A238536

/-- `(A066258(n)+A001655(n))*A000032(n+1)` -/
def P17057752648499791826.Spec : Prop :=
  ∀ n, P17057752648499791826.a n = A238536 (n + 1)

end A238536

/-! ## A238536.P7624703709057482425

`(A110526(n+1)+A110526(n))*A000032(n+1)`
-/

namespace A238536.P7624703709057482425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A110526 (n + 1) + A110526 n) * A000032 (n + 1)

end

end A238536.P7624703709057482425

namespace A238536

/-- `(A110526(n+1)+A110526(n))*A000032(n+1)` -/
def P7624703709057482425.Spec : Prop :=
  ∀ n, P7624703709057482425.a n = A238536 (n + 1)

end A238536

/-! ## A238536.P465316220112806749

`(A049652(n+1)-A049652(n))*A000032(n+1)`
-/

namespace A238536.P465316220112806749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A049652 (n + 1) - A049652 n) * A000032 (n + 1)

end

end A238536.P465316220112806749

namespace A238536

/-- `(A049652(n+1)-A049652(n))*A000032(n+1)` -/
def P465316220112806749.Spec : Prop :=
  ∀ n, P465316220112806749.a n = A238536 (n + 1)

end A238536

/-! ## A238536.P12946091272351370506

`(A049651(n+1)-A099919(n))*A000032(n+1)`
-/

namespace A238536.P12946091272351370506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A049651 (n + 1) - A099919 n) * A000032 (n + 1)

end

end A238536.P12946091272351370506

namespace A238536

/-- `(A049651(n+1)-A099919(n))*A000032(n+1)` -/
def P12946091272351370506.Spec : Prop :=
  ∀ n, P12946091272351370506.a n = A238536 (n + 1)

end A238536

/-!
# A238537: A fourth-order linear divisibility sequence related to the Pell numbers.

The programs for A238537, the canonical program `A238537.P9528414148842263238` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A238537 has offset 1).

The definition of A238537 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A238537.P9528414148842263238

`1/5*A000129(3*(n+1))*A001333(n+1)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A238537

/-- `1/5*A000129(3*(n+1))*A001333(n+1)` -/
def P9528414148842263238.Spec : Prop :=
  ∀ n, P9528414148842263238.a n = (A238537 (n + 1) : ℚ)

end A238537

/-! ## A238537.P5012770433970122480

`A041085(n)*A078057(n)`
-/

namespace A238537.P5012770433970122480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041085 n * A078057 n

end

end A238537.P5012770433970122480

namespace A238537

/-- `A041085(n)*A078057(n)` -/
def P5012770433970122480.Spec : Prop :=
  ∀ n, P5012770433970122480.a n = A238537 (n + 1)

end A238537

/-! ## A238537.P219039262112602858

`A041371(n)*A159582(n)`
-/

namespace A238537.P219039262112602858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041371 n * A159582 n

end

end A238537.P219039262112602858

namespace A238537

/-- `A041371(n)*A159582(n)` -/
def P219039262112602858.Spec : Prop :=
  ∀ n, P219039262112602858.a n = A238537 (n + 1)

end A238537

/-! ## A238537.P13712017955810286159

`Δ[A052937(n)]*A041085(n)`
-/

namespace A238537.P13712017955810286159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052937 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A041085 n

end

end A238537.P13712017955810286159

namespace A238537

/-- `Δ[A052937(n)]*A041085(n)` -/
def P13712017955810286159.Spec : Prop :=
  ∀ n, P13712017955810286159.a n = A238537 (n + 1)

end A238537

/-! ## A238537.P2490777449749199125

`A001333(n+1)*A041085(n)`
-/

namespace A238537.P2490777449749199125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001333 (n + 1) * A041085 n

end

end A238537.P2490777449749199125

namespace A238537

/-- `A001333(n+1)*A041085(n)` -/
def P2490777449749199125.Spec : Prop :=
  ∀ n, P2490777449749199125.a n = A238537 (n + 1)

end A238537

/-! ## A238537.P5915005698180575303

`Δ[A000129(n+1)]*A041085(n)`
-/

namespace A238537.P5915005698180575303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A041085 n

end

end A238537.P5915005698180575303

namespace A238537

/-- `Δ[A000129(n+1)]*A041085(n)` -/
def P5915005698180575303.Spec : Prop :=
  ∀ n, P5915005698180575303.a n = A238537 (n + 1)

end A238537

/-! ## A238537.P10370115827384191746

`A002965(2*n+3)*A041085(n)`
-/

namespace A238537.P10370115827384191746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002965 (2 * n + 3) * A041085 n

end

end A238537.P10370115827384191746

namespace A238537

/-- `A002965(2*n+3)*A041085(n)` -/
def P10370115827384191746.Spec : Prop :=
  ∀ n, P10370115827384191746.a n = A238537 (n + 1)

end A238537

/-! ## A238537.P893815947450513369

`A000034(n)*A041371(n)*A078057(n)`
-/

namespace A238537.P893815947450513369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n * A041371 n * A078057 n

end

end A238537.P893815947450513369

namespace A238537

/-- `A000034(n)*A041371(n)*A078057(n)` -/
def P893815947450513369.Spec : Prop :=
  ∀ n, P893815947450513369.a n = A238537 (n + 1)

end A238537

/-! ## A238537.P9835290966747084384

`(A000129(n+1)+A000129(n))*A041085(n)`
-/

namespace A238537.P9835290966747084384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000129 (n + 1) + A000129 n) * A041085 n

end

end A238537.P9835290966747084384

namespace A238537

/-- `(A000129(n+1)+A000129(n))*A041085(n)` -/
def P9835290966747084384.Spec : Prop :=
  ∀ n, P9835290966747084384.a n = A238537 (n + 1)

end A238537

/-! ## A238537.P4453170359526114876

`A108300(n)%3*A041371(n)*A078057(n)`
-/

namespace A238537.P4453170359526114876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A108300 n) 3 * A041371 n * A078057 n

end

end A238537.P4453170359526114876

namespace A238537

/-- `A108300(n)%3*A041371(n)*A078057(n)` -/
def P4453170359526114876.Spec : Prop :=
  ∀ n, P4453170359526114876.a n = A238537 (n + 1)

end A238537

/-!
# A238538: A fourth-order linear divisibility sequence: a(n) = (2^n + 1)*(2^(3*n) - 1)/ ( (2 + 1)*(2^3 - 1) ).

The programs for A238538, the canonical program `A238538.P15346386030997339685` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A238538 has offset 1).

The definition of A238538 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A238538.P15346386030997339685

`1/21*(2^(n+1)+1)*(2^(3*(n+1))-1)`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A238538

/-- `1/21*(2^(n+1)+1)*(2^(3*(n+1))-1)` -/
def P15346386030997339685.Spec : Prop :=
  ∀ n, P15346386030997339685.a n = (A238538 (n + 1) : ℚ)

end A238538

/-! ## A238538.P5297384092344421343

`(2^(n+1)+1)*(2^(3*(n+1))-1)/((2+1)*(2^3-1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A238538.P5297384092344421343
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 ^ (n + 1) + 1 : ℤ) * ((2 ^ (3 * (n + 1)) : ℤ) - 1) : ℚ) / ((2 + 1 : ℤ) * ((2 ^ 3 : ℤ) - 1) : ℚ)

end

end A238538.P5297384092344421343

namespace A238538

/-- `(2^(n+1)+1)*(2^(3*(n+1))-1)/((2+1)*(2^3-1))` -/
def P5297384092344421343.Spec : Prop :=
  ∀ n, P5297384092344421343.a n = (A238538 (n + 1) : ℚ)

end A238538

/-! ## A238538.P6114687130381920669

`A320917(2^n)`
-/

namespace A238538.P6114687130381920669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320917 (2 ^ n)

end

end A238538.P6114687130381920669

namespace A238538

/-- `A320917(2^n)` -/
def P6114687130381920669.Spec : Prop :=
  ∀ n, P6114687130381920669.a n = A238538 (n + 1)

end A238538

/-! ## A238538.P16976196529267737897

`record[A320917(A001316(n))]`
-/

namespace A238538.P16976196529267737897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320917 (A001316 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A238538.P16976196529267737897

namespace A238538

/-- `record[A320917(A001316(n))]` -/
def P16976196529267737897.Spec : Prop :=
  ∀ n, P16976196529267737897.a n = A238538 (n + 1)

end A238538

/-! ## A238538.P15016605717231681935

`record[A320917(A059268(n))]`
-/

namespace A238538.P15016605717231681935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320917 (A059268 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A238538.P15016605717231681935

namespace A238538

/-- `record[A320917(A059268(n))]` -/
def P15016605717231681935.Spec : Prop :=
  ∀ n, P15016605717231681935.a n = A238538 (n + 1)

end A238538

/-!
# A238539: A fourth-order linear divisibility sequence: a(n) = (1/9)*(2^n + (-1)^n)*(2^(3*n) - (-1)^n).

The programs for A238539, the canonical program `A238539.P8003931258814774973` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A238539 has offset 1).

The definition of A238539 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A238539.P8003931258814774973

`(2^(n+1)+(-1)^(n+1))*(8^(n+1)-(-1)^(n+1))/9`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A238539

/-- `(2^(n+1)+(-1)^(n+1))*(8^(n+1)-(-1)^(n+1))/9` -/
def P8003931258814774973.Spec : Prop :=
  ∀ n, P8003931258814774973.a n = (A238539 (n + 1) : ℚ)

end A238539

/-! ## A238539.P14218523495922860118

`A246036(n)²-A139818(n)`
-/

namespace A238539.P14218523495922860118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246036 n ^ 2 - A139818 n

end

end A238539.P14218523495922860118

namespace A238539

/-- `A246036(n)²-A139818(n)` -/
def P14218523495922860118.Spec : Prop :=
  ∀ n, P14218523495922860118.a n = A238539 (n + 1)

end A238539

/-! ## A238539.P763191539305209642

`A246036(n)²-A001045(n)²`
-/

namespace A238539.P763191539305209642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246036 n ^ 2 - A001045 n ^ 2

end

end A238539.P763191539305209642

namespace A238539

/-- `A246036(n)²-A001045(n)²` -/
def P763191539305209642.Spec : Prop :=
  ∀ n, P763191539305209642.a n = A238539 (n + 1)

end A238539

/-! ## A238539.P9740653074875817296

`lcm(∑[A090409(n)], A001045(2*(n+1)))`
-/

namespace A238539.P9740653074875817296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090409 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (∑ j ∈ Finset.range (n + 1), f1 j) (A001045 (2 * (n + 1)))

end

end A238539.P9740653074875817296

namespace A238539

/-- `lcm(∑[A090409(n)], A001045(2*(n+1)))` -/
def P9740653074875817296.Spec : Prop :=
  ∀ n, (P9740653074875817296.a n : ℤ) = A238539 (n + 1)

end A238539

/-! ## A238539.P699518703848034545

`A000079(n+1)*A015565(n+1)-A014990(n+1)`
-/

namespace A238539.P699518703848034545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (n + 1) * A015565 (n + 1) - A014990 (n + 1)

end

end A238539.P699518703848034545

namespace A238539

/-- `A000079(n+1)*A015565(n+1)-A014990(n+1)` -/
def P699518703848034545.Spec : Prop :=
  ∀ n, P699518703848034545.a n = A238539 (n + 1)

end A238539

/-!
# A238540: A fourth-order linear divisibility sequence: a(n) := (3^n + 1)*(3^(3*n) - 1)/( (3 + 1)*(3^3 - 1)).

The programs for A238540, the canonical program `A238540.P18432707290213249833` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A238540 has offset 1).

The definition of A238540 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A238540.P18432707290213249833

`1/104*(3^(n+1)+1)*(3^(3*(n+1))-1)`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A238540

/-- `1/104*(3^(n+1)+1)*(3^(3*(n+1))-1)` -/
def P18432707290213249833.Spec : Prop :=
  ∀ n, P18432707290213249833.a n = (A238540 (n + 1) : ℚ)

end A238540

/-! ## A238540.P12723011581420749487

`(3^(n+1)+1)*(3^(3*(n+1))-1)/((3+1)*(3^3-1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A238540.P12723011581420749487
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((3 ^ (n + 1) + 1 : ℤ) * ((3 ^ (3 * (n + 1)) : ℤ) - 1) : ℚ) / ((3 + 1 : ℤ) * ((3 ^ 3 : ℤ) - 1) : ℚ)

end

end A238540.P12723011581420749487

namespace A238540

/-- `(3^(n+1)+1)*(3^(3*(n+1))-1)/((3+1)*(3^3-1))` -/
def P12723011581420749487.Spec : Prop :=
  ∀ n, P12723011581420749487.a n = (A238540 (n + 1) : ℚ)

end A238540

/-! ## A238540.P3817820795917709264

`A320917(3^n)`
-/

namespace A238540.P3817820795917709264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320917 (3 ^ n)

end

end A238540.P3817820795917709264

namespace A238540

/-- `A320917(3^n)` -/
def P3817820795917709264.Spec : Prop :=
  ∀ n, P3817820795917709264.a n = A238540 (n + 1)

end A238540

/-! ## A238540.P3606722885795235771

`record[A320917(A048883(n))]`
-/

namespace A238540.P3606722885795235771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320917 (A048883 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A238540.P3606722885795235771

namespace A238540

/-- `record[A320917(A048883(n))]` -/
def P3606722885795235771.Spec : Prop :=
  ∀ n, P3606722885795235771.a n = A238540 (n + 1)

end A238540

/-! ## A238540.P13560246871770730141

`record[A320917(A106516(n))]`
-/

namespace A238540.P13560246871770730141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320917 (A106516 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A238540.P13560246871770730141

namespace A238540

/-- `record[A320917(A106516(n))]` -/
def P13560246871770730141.Spec : Prop :=
  ∀ n, P13560246871770730141.a n = A238540 (n + 1)

end A238540

/-!
# A238541: A fourth-order linear divisibility sequence: a(n) := A(n)/A(1) where A(n) := ( (3^n + 2^n)*(3^(3*n) - 2^(3*n)) ).

The programs for A238541, the canonical program `A238541.P8071605811896637763` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A238541 has offset 1).

The definition of A238541 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A238541.P8071605811896637763

`1/95*(3^(n+1)+2^(n+1))*(3^(3*(n+1))-2^(3*(n+1)))`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A238541

/-- `1/95*(3^(n+1)+2^(n+1))*(3^(3*(n+1))-2^(3*(n+1)))` -/
def P8071605811896637763.Spec : Prop :=
  ∀ n, P8071605811896637763.a n = (A238541 (n + 1) : ℚ)

end A238541

/-!
# A238542: Number of partitions p of n such that 2*min(p) + (number of parts of p) is not a part of p.

The programs for A238542, there is no canonical definition to state claims against.
-/

/-! ## A238542.P16906270662168228481

`A344646(A261037(n+2))`
-/

namespace A238542.P16906270662168228481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344646 (A261037 (n + 2)).toNat

end

end A238542.P16906270662168228481

/-! ## A238542.P10658002180492682925

`record[A181819(A263273(n)+A052330(n))]`
-/

namespace A238542.P10658002180492682925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181819 (A263273 n + A052330 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A238542.P10658002180492682925

/-! ## A238542.P9596670139055816888

`A344551(n+1)+A046660(A026135(n))`
-/

namespace A238542.P9596670139055816888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344551 (n + 1) + A046660 (A026135 n).toNat

end

end A238542.P9596670139055816888

/-! ## A238542.P16991093977818049492

`A341026(A007434(n+1))+A240218(n+1)`
-/

namespace A238542.P16991093977818049492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341026 ((A007434 (n + 1)).toNat + 165) + A240218 (n + 1)

end

end A238542.P16991093977818049492

/-!
# A238543: Number of partitions p of n such that 3*min(p) + (number of parts of p) is not a part of p.

The programs for A238543, there is no canonical definition to state claims against.
-/

/-! ## A238543.P8711537323768425634

`A357862(A027340(n+1))`
-/

namespace A238543.P8711537323768425634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357862 (A027340 (n + 1)).toNat

end

end A238543.P8711537323768425634

/-! ## A238543.P12175930848365172129

`A357862(A035975(n+1))`
-/

namespace A238543.P12175930848365172129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357862 (A035975 (n + 1)).toNat

end

end A238543.P12175930848365172129

/-! ## A238543.P16849350947810954901

`A357862(A035984(n+1))`
-/

namespace A238543.P16849350947810954901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357862 (A035984 (n + 1)).toNat

end

end A238543.P16849350947810954901

/-! ## A238543.P13600404128551674895

`A357862(A035994(n+1))`
-/

namespace A238543.P13600404128551674895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357862 (A035994 (n + 1)).toNat

end

end A238543.P13600404128551674895

/-! ## A238543.P8351542542649201510

`A357862(A036005(n+1))`
-/

namespace A238543.P8351542542649201510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357862 (A036005 (n + 1)).toNat

end

end A238543.P8351542542649201510

/-!
# A238544: Number of partitions p of n such that max(p) - (number of parts of p) is a part of p.

The programs for A238544, there is no canonical definition to state claims against.
-/

/-! ## A238544.P5371386182450473811

`Δ[A000070(n)]-A238545(n+1)`
-/

namespace A238544.P5371386182450473811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A238545 (n + 1)

end

end A238544.P5371386182450473811

/-! ## A238544.P7605720612594618484

`record[A035363(n)]-A238545(n+1)`
-/

namespace A238544.P7605720612594618484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A238545 (n + 1)

end

end A238544.P7605720612594618484

/-! ## A238544.P13763321511433598199

`record[A035377(n)]-A238545(n+1)`
-/

namespace A238544.P13763321511433598199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035377 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A238545 (n + 1)

end

end A238544.P13763321511433598199

/-! ## A238544.P11947115294481234082

`record[A035444(n)]-A238545(n+1)`
-/

namespace A238544.P11947115294481234082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035444 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A238545 (n + 1)

end

end A238544.P11947115294481234082

/-! ## A238544.P4786636096053359842

`A000041(n+1)-A238545(n+1)`
-/

namespace A238544.P4786636096053359842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) - A238545 (n + 1)

end

end A238544.P4786636096053359842

/-!
# A238545: Number of partitions p of n such that max(p) - (number of parts of p) is not a part of p.

The programs for A238545, there is no canonical definition to state claims against.
-/

/-! ## A238545.P932347560352125994

`Δ[A000070(n)]-A238544(n+1)`
-/

namespace A238545.P932347560352125994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A238544 (n + 1)

end

end A238545.P932347560352125994

/-! ## A238545.P15736842458058704980

`record[A035363(n)]-A238544(n+1)`
-/

namespace A238545.P15736842458058704980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A238544 (n + 1)

end

end A238545.P15736842458058704980

/-! ## A238545.P9893333536968884607

`record[A035377(n)]-A238544(n+1)`
-/

namespace A238545.P9893333536968884607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035377 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A238544 (n + 1)

end

end A238545.P9893333536968884607

/-! ## A238545.P9517074723223197261

`record[A035444(n)]-A238544(n+1)`
-/

namespace A238545.P9517074723223197261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035444 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A238544 (n + 1)

end

end A238545.P9517074723223197261

/-! ## A238545.P3519020334597497516

`A000041(n+1)-A238544(n+1)`
-/

namespace A238545.P3519020334597497516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) - A238544 (n + 1)

end

end A238545.P3519020334597497516

/-!
# A238546: Number of partitions p of n such that floor(n/2) is not a part of p.

The programs for A238546, there is no canonical definition to state claims against.
-/

/-! ## A238546.P3100048926774917132

`A000041(A254667(n+1))-A000041(A008619(n))`
-/

namespace A238546.P3100048926774917132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A254667 (n + 1)).toNat - A000041 (A008619 n).toNat

end

end A238546.P3100048926774917132

/-! ## A238546.P479542424138807142

`A000041(A028310(n)+1)-A000041(A065033(n+1))`
-/

namespace A238546.P479542424138807142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A028310 n + 1).toNat - A000041 (A065033 (n + 1)).toNat

end

end A238546.P479542424138807142

/-! ## A238546.P11261199455561594558

`A187219(n+1)+A000041(n)-A000041(A008619(n))`
-/

namespace A238546.P11261199455561594558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187219 (n + 1) + (A000041 n - A000041 (A008619 n).toNat)

end

end A238546.P11261199455561594558

/-! ## A238546.P14434559266740997434

`A000041(n+1)-A000041(A008619(n))*A057427(n)`
-/

namespace A238546.P14434559266740997434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) - A000041 (A008619 n).toNat * A057427 n

end

end A238546.P14434559266740997434

/-! ## A238546.P16893454636657293750

`A000041(A233583(n+2))-A000041(A065033(n+1))`
-/

namespace A238546.P16893454636657293750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A233583 (n + 2)).toNat - A000041 (A065033 (n + 1)).toNat

end

end A238546.P16893454636657293750

/-! ## A238546.P9745609019702979085

`A027300(2*A076921(n+1))`
-/

namespace A238546.P9745609019702979085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027300 (2 * A076921 (n + 1)).toNat

end

end A238546.P9745609019702979085

/-! ## A238546.P9162458336176527166

`A303940(∑[A029578(3*n+2)])`
-/

namespace A238546.P9162458336176527166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029578 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303940 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A238546.P9162458336176527166

/-! ## A238546.P812888818364609553

`A303940(∑[A016777(A026741(n))])`
-/

namespace A238546.P812888818364609553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 (A026741 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303940 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A238546.P812888818364609553

/-! ## A238546.P18207294880714288225

`A303940(A000124(A007494(n))+n)`
-/

namespace A238546.P18207294880714288225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303940 (A000124 (A007494 n).toNat + (n : ℤ)).toNat

end

end A238546.P18207294880714288225

/-! ## A238546.P6522810755091712321

`A303940(∑[A141310(n)+A001281(n)])`
-/

namespace A238546.P6522810755091712321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141310 n + A001281 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303940 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A238546.P6522810755091712321

/-!
# A238547: Number of partitions p of n such that (number of parts of p) - min(p) is a part of p.

The programs for A238547, there is no canonical definition to state claims against.
-/

/-! ## A238547.P2066889169726169882

`Δ[A000070(n)]-A238548(n+1)`
-/

namespace A238547.P2066889169726169882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A238548 (n + 1)

end

end A238547.P2066889169726169882

/-! ## A238547.P13659745531050274923

`record[A035363(n)]-A238548(n+1)`
-/

namespace A238547.P13659745531050274923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A238548 (n + 1)

end

end A238547.P13659745531050274923

/-! ## A238547.P15313959070193002058

`record[A035444(n)]-A238548(n+1)`
-/

namespace A238547.P15313959070193002058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035444 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A238548 (n + 1)

end

end A238547.P15313959070193002058

/-! ## A238547.P10835579435903566551

`record[A114099(n)]-A238548(n+1)`
-/

namespace A238547.P10835579435903566551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114099 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A238548 (n + 1)

end

end A238547.P10835579435903566551

/-! ## A238547.P8535443731506181157

`A000041(n+1)-A238548(n+1)`
-/

namespace A238547.P8535443731506181157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) - A238548 (n + 1)

end

end A238547.P8535443731506181157

/-!
# A238548: Number of partitions p of n such that (number of parts of p) - min(p) is not a part of p.

The programs for A238548, there is no canonical definition to state claims against.
-/

/-! ## A238548.P15496534720568008318

`Δ[A000070(n)]-A238547(n+1)`
-/

namespace A238548.P15496534720568008318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A238547 (n + 1)

end

end A238548.P15496534720568008318

/-! ## A238548.P6639097999411131557

`record[A035363(n)]-A238547(n+1)`
-/

namespace A238548.P6639097999411131557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A238547 (n + 1)

end

end A238548.P6639097999411131557

/-! ## A238548.P4184577049989722574

`record[A035444(n)]-A238547(n+1)`
-/

namespace A238548.P4184577049989722574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035444 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A238547 (n + 1)

end

end A238548.P4184577049989722574

/-! ## A238548.P6505206827997564294

`record[A114099(n)]-A238547(n+1)`
-/

namespace A238548.P6505206827997564294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114099 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A238547 (n + 1)

end

end A238548.P6505206827997564294

/-! ## A238548.P1879248572682718716

`A000041(n+1)-A238547(n+1)`
-/

namespace A238548.P1879248572682718716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) - A238547 (n + 1)

end

end A238548.P1879248572682718716

/-!
# A238549: a(n) is one fourth of the total number of free ends of 4 line segments expansion at n iterations (see Comments lines for definition).

The programs for A238549, the canonical program `A238549.P4049361369938499386` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A238549 has offset 1).

The definition of A238549 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A238549.P4049361369938499386

`a(n-1)+2*a(n-2)-2*a(n-3)` with `a(0)=1, a(1)=2, a(2)=6`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A238549

/-- `a(n-1)+2*a(n-2)-2*a(n-3)` -/
def P4049361369938499386.Spec : Prop :=
  ∀ n, P4049361369938499386.a n = A238549 (n + 1)

theorem P4049361369938499386.correct : P4049361369938499386.Spec := by
  intro n
  simp only [A238549, Nat.add_sub_cancel]

end A238549

/-! ## A238549.P8067160125883882954

`∑[ogf((1+x+2x^2)/(1-2x^2))]`
-/

namespace A238549.P8067160125883882954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, 2] [1, 0, -2] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A238549.P8067160125883882954

namespace A238549

/-- `∑[ogf((1+x+2x^2)/(1-2x^2))]` -/
def P8067160125883882954.Spec : Prop :=
  ∀ n, P8067160125883882954.a n = A238549 (n + 1)

end A238549

/-! ## A238549.P3292844044338143435

`ogf((1+x+2x^2)/(1-x-2x^2+2x^3))`
-/

namespace A238549.P3292844044338143435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, 2] [1, -1, -2, 2] n

end

end A238549.P3292844044338143435

namespace A238549

/-- `ogf((1+x+2x^2)/(1-x-2x^2+2x^3))` -/
def P3292844044338143435.Spec : Prop :=
  ∀ n, P3292844044338143435.a n = A238549 (n + 1)

end A238549

/-! ## A238549.P14055988425936833007

`2*(a(n-2)+2)` with `a(0)=1, a(1)=2`
-/

namespace A238549.P14055988425936833007
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  2 * (a (n - 2) + 2)

end

end A238549.P14055988425936833007

namespace A238549

/-- `2*(a(n-2)+2)` -/
def P14055988425936833007.Spec : Prop :=
  ∀ n, (P14055988425936833007.a n : ℤ) = A238549 (n + 1)

end A238549

/-! ## A238549.P5266724377101012808

`∑[2*a(n-2)]` with `a(0)=1, a(1)=1, a(2)=4`
-/

namespace A238549.P5266724377101012808
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 4] fun n f1 =>
  2 * f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A238549.P5266724377101012808

namespace A238549

/-- `∑[2*a(n-2)]` -/
def P5266724377101012808.Spec : Prop :=
  ∀ n, (P5266724377101012808.a n : ℤ) = A238549 (n + 1)

end A238549

/-! ## A238549.P13848878218972666213

`∑[∏[2/a(n-1)]]` with `a(0)=1, a(1)=1, a(2)=4`
-/

namespace A238549.P13848878218972666213
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.rec [1, 1, 4] fun n f2 =>
  2 / f2 (n - 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A238549.P13848878218972666213

namespace A238549

/-- `∑[∏[2/a(n-1)]]` -/
def P13848878218972666213.Spec : Prop :=
  ∀ n, P13848878218972666213.a n = (A238549 (n + 1) : ℚ)

end A238549

/-! ## A238549.P7918794833490317911

`6-2*(1-a(n-2))` with `a(0)=1, a(1)=2`
-/

namespace A238549.P7918794833490317911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  6 - 2 * (1 - a (n - 2))

end

end A238549.P7918794833490317911

namespace A238549

/-- `6-2*(1-a(n-2))` -/
def P7918794833490317911.Spec : Prop :=
  ∀ n, P7918794833490317911.a n = A238549 (n + 1)

end A238549

/-! ## A238549.P5368988360519356890

`∑[2^∑[1-a(n-1)]]` with `a(0)=0, a(1)=0, a(2)=2`
-/

namespace A238549.P5368988360519356890
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 2] fun n f2 =>
  1 - f2 (n - 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (∑ j ∈ Finset.range (n + 1), f2 j : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A238549.P5368988360519356890

namespace A238549

/-- `∑[2^∑[1-a(n-1)]]` -/
def P5368988360519356890.Spec : Prop :=
  ∀ n, P5368988360519356890.a n = (A238549 (n + 1) : ℚ)

end A238549

/-! ## A238549.P1563541227764269113

`a(n-2)+a(n-2)+4` with `a(0)=1, a(1)=2`
-/

namespace A238549.P1563541227764269113
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 2) + (a (n - 2) + 4)

end

end A238549.P1563541227764269113

namespace A238549

/-- `a(n-2)+a(n-2)+4` -/
def P1563541227764269113.Spec : Prop :=
  ∀ n, (P1563541227764269113.a n : ℤ) = A238549 (n + 1)

end A238549

/-! ## A238549.P11576156383835664830

`4-a(n-2)/(1/2-1)` with `a(0)=1, a(1)=2`
-/

namespace A238549.P11576156383835664830
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 2] fun n a =>
  4 - a (n - 2) / ((1 : ℚ) / 2 - 1)

end

end A238549.P11576156383835664830

namespace A238549

/-- `4-a(n-2)/(1/2-1)` -/
def P11576156383835664830.Spec : Prop :=
  ∀ n, P11576156383835664830.a n = (A238549 (n + 1) : ℚ)

end A238549

/-! ## A238549.P15239986010732435092

`5-floor(1-a(n-2)-a(n-2))` with `a(0)=1, a(1)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A238549.P15239986010732435092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  5 - (1 - a (n - 2) - a (n - 2))

end

end A238549.P15239986010732435092

namespace A238549

/-- `5-floor(1-a(n-2)-a(n-2))` -/
def P15239986010732435092.Spec : Prop :=
  ∀ n, P15239986010732435092.a n = A238549 (n + 1)

end A238549

/-! ## A238549.P11291018026896076112

`n-∑[a(n-2)-(1-a(n-2))]` with `a(0)=-1, a(1)=0`
-/

namespace A238549.P11291018026896076112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [-1, 0] fun n f1 =>
  f1 (n - 2) - (1 - f1 (n - 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A238549.P11291018026896076112

namespace A238549

/-- `n-∑[a(n-2)-(1-a(n-2))]` -/
def P11291018026896076112.Spec : Prop :=
  ∀ n, P11291018026896076112.a n = A238549 (n + 1)

end A238549

/-! ## A238549.P3895440426217716529

`4-(a(n-1)%2-a(n-2)-a(n-2))` with `a(0)=1, a(1)=2`
-/

namespace A238549.P3895440426217716529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  4 - (Int.tmod (a (n - 1)) 2 - a (n - 2) - a (n - 2))

end

end A238549.P3895440426217716529

namespace A238549

/-- `4-(a(n-1)%2-a(n-2)-a(n-2))` -/
def P3895440426217716529.Spec : Prop :=
  ∀ n, P3895440426217716529.a n = A238549 (n + 1)

end A238549

/-! ## A238549.P401434952485225178

`∑[A135530(n)]-1`
-/

namespace A238549.P401434952485225178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135530 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A238549.P401434952485225178

namespace A238549

/-- `∑[A135530(n)]-1` -/
def P401434952485225178.Spec : Prop :=
  ∀ n, P401434952485225178.a n = A238549 (n + 1)

end A238549

/-! ## A238549.P6932955124839115049

`∑[A316742(n)]+n`
-/

namespace A238549.P6932955124839115049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316742 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A238549.P6932955124839115049

namespace A238549

/-- `∑[A316742(n)]+n` -/
def P6932955124839115049.Spec : Prop :=
  ∀ n, P6932955124839115049.a n = A238549 (n + 1)

end A238549

/-! ## A238549.P16953273944788878503

`A164095(n+1)-4`
-/

namespace A238549.P16953273944788878503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164095 (n + 1) - 4

end

end A238549.P16953273944788878503

namespace A238549

/-- `A164095(n+1)-4` -/
def P16953273944788878503.Spec : Prop :=
  ∀ n, P16953273944788878503.a n = A238549 (n + 1)

end A238549

/-! ## A238549.P14736650510054939325

`∑[abs(A137206(n+1))]-1`
-/

namespace A238549.P14736650510054939325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A137206 (n + 1)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A238549.P14736650510054939325

namespace A238549

/-- `∑[abs(A137206(n+1))]-1` -/
def P14736650510054939325.Spec : Prop :=
  ∀ n, P14736650510054939325.a n = A238549 (n + 1)

end A238549

/-! ## A238549.P5574982753422532077

`A143095(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A238549.P5574982753422532077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A143095 (n - 1) + a (n - 1)

end

end A238549.P5574982753422532077

namespace A238549

/-- `A143095(n-1)+a(n-1)` -/
def P5574982753422532077.Spec : Prop :=
  ∀ n, P5574982753422532077.a n = A238549 (n + 1)

end A238549

/-! ## A238549.P1032633126408705904

`∑[A135530(A028310(n))]`
-/

namespace A238549.P1032633126408705904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135530 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A238549.P1032633126408705904

namespace A238549

/-- `∑[A135530(A028310(n))]` -/
def P1032633126408705904.Spec : Prop :=
  ∀ n, P1032633126408705904.a n = A238549 (n + 1)

end A238549

/-! ## A238549.P6213599072560407979

`A200678(A042963(n+1))`
-/

namespace A238549.P6213599072560407979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200678 (A042963 (n + 1)).toNat

end

end A238549.P6213599072560407979

namespace A238549

/-- `A200678(A042963(n+1))` -/
def P6213599072560407979.Spec : Prop :=
  ∀ n, P6213599072560407979.a n = A238549 (n + 1)

end A238549

/-!
# A238552: Number T(n,k) of equivalence classes of ways of placing k 4 X 4 tiles in an n X 6 rectangle under all symmetry operations of the rectangle; irregular triangle T(n,k), n>=4, 0<=k<=floor(n/4), read by rows.

The programs for A238552, there is no canonical definition to state claims against.
-/

/-! ## A238552.P17696560322595484628

`A337217(n+1)%A257523(n+4)+1`
-/

namespace A238552.P17696560322595484628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A337217 (n + 1)) (A257523 (n + 4)) + 1

end

end A238552.P17696560322595484628

/-! ## A238552.P11330596477286629886

`A257523(n+4)-A083892(A081703(n+1))`
-/

namespace A238552.P11330596477286629886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257523 (n + 4) - A083892 (A081703 (n + 1)).toNat

end

end A238552.P11330596477286629886

/-! ## A238552.P14249363903309836021

`A134021(A257523(n+4)^A231568(n+4))`
-/

namespace A238552.P14249363903309836021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134021 (SequenceMachineLib.roundAway ((A257523 (n + 4) : ℚ) ^ (A231568 (n + 4) : ℤ))).toNat

end

end A238552.P14249363903309836021

/-! ## A238552.P15027130690103017771

`A033273(A091403(n+1)-8)`
-/

namespace A238552.P15027130690103017771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033273 (A091403 (n + 1) - 8).toNat

end

end A238552.P15027130690103017771

/-!
# A238554: Smallest k such that k + 2^n and k*2^n + 1 are both prime.

The programs for A238554, there is no canonical definition to state claims against.
-/

/-! ## A238554.P13057071767211083282

`A085063(2^n)`
-/

namespace A238554.P13057071767211083282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085063 (2 ^ n)

end

end A238554.P13057071767211083282

/-! ## A238554.P13200517428019757107

`or(1, A085063(A000079(n)))`
-/

namespace A238554.P13200517428019757107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A085063 (A000079 n).toNat)

end

end A238554.P13200517428019757107

/-! ## A238554.P17834851006062320243

`or(1, A085063(Δ[A000051(n)]))`
-/

namespace A238554.P17834851006062320243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A085063 (f1 (n + 1) - f1 n).toNat)

end

end A238554.P17834851006062320243

/-! ## A238554.P90101883060553775

`or(1, A085063(A016116(2*n)))`
-/

namespace A238554.P90101883060553775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A085063 (A016116 (2 * n)).toNat)

end

end A238554.P90101883060553775

/-! ## A238554.P11040091413394820177

`A085063(A000079(n))+A025444(n)`
-/

namespace A238554.P11040091413394820177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085063 (A000079 n).toNat + A025444 n

end

end A238554.P11040091413394820177

/-!
# A238556: Number T(n,k) of equivalence classes of ways of placing k 3 X 3 tiles in an n X 7 rectangle under all symmetry operations of the rectangle; irregular triangle T(n,k), n>=3, 0<=k<=2*floor(n/3), read by rows.

The programs for A238556, there is no canonical definition to state claims against.
-/

/-! ## A238556.P16288853110080725527

`A238583(n+4)+A033582(A172534(n+1))`
-/

namespace A238556.P16288853110080725527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238583 (n + 4) + A033582 (A172534 (n + 1)).toNat

end

end A238556.P16288853110080725527

/-! ## A238556.P10629042822624509064

`A238583(n+4)+A004526(A185284((5-n)²))`
-/

namespace A238556.P10629042822624509064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238583 (n + 4) + A004526 (A185284 ((5 - (n : ℤ)) ^ 2).toNat).toNat

end

end A238556.P10629042822624509064

/-! ## A238556.P7452034260930132435

`A238583(n+4)+A100640(A185284(3*(n+1)))`
-/

namespace A238556.P7452034260930132435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238583 (n + 4) + A100640 (A185284 (3 * (n + 1))).toNat

end

end A238556.P7452034260930132435

/-! ## A238556.P3444582712473908072

`A324674(A238583(2*n+5))+A238583(n+4)`
-/

namespace A238556.P3444582712473908072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324674 (A238583 (2 * n + 5)).toNat + A238583 (n + 4)

end

end A238556.P3444582712473908072

/-! ## A238556.P3131166361470494357

`A005349(A238583(n+4)%A321805(3*n+2))`
-/

namespace A238556.P3131166361470494357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005349 (Int.tmod (A238583 (n + 4)) (A321805 (3 * n + 2))).toNat

end

end A238556.P3131166361470494357

/-!
# A238560: Number of partitions of 3^n into parts that are at most n.

The programs for A238560, there is no canonical definition to state claims against.
-/

/-! ## A238560.P16830632230752634348

`A238010(∑[n+4]+2)`
-/

namespace A238560.P16830632230752634348
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238010 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A238560.P16830632230752634348

/-! ## A238560.P12249677078980018883

`record[A238010(A060577(n))]`
-/

namespace A238560.P12249677078980018883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238010 (A060577 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A238560.P12249677078980018883

/-! ## A238560.P10710772633648711670

`record[A238010(abs(A046691(n)))]`
-/

namespace A238560.P10710772633648711670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238010 |A046691 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A238560.P10710772633648711670

/-! ## A238560.P1031732901375004453

`record[A238010(A027379(n)-1)]`
-/

namespace A238560.P1031732901375004453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238010 (A027379 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A238560.P1031732901375004453

/-! ## A238560.P12563317588546635151

`record[A238010(n)/A113025(n+4)]`
-/

namespace A238560.P12563317588546635151
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A238010 n : ℚ) / (A113025 (n + 4) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A238560.P12563317588546635151

/-!
# A238561: Number of partitions of 4^n into parts that are at most n.

The programs for A238561, there is no canonical definition to state claims against.
-/

/-! ## A238561.P3325998666386309290

`record[A238010(A052905(n))]`
-/

namespace A238561.P3325998666386309290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238010 (A052905 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A238561.P3325998666386309290

/-! ## A238561.P11799862737331121327

`A238010(A052905(n+2))`
-/

namespace A238561.P11799862737331121327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238010 (A052905 (n + 2)).toNat

end

end A238561.P11799862737331121327

/-! ## A238561.P9164731084145403852

`A238010(A056115(n)+10)`
-/

namespace A238561.P9164731084145403852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238010 (A056115 n + 10).toNat

end

end A238561.P9164731084145403852

/-! ## A238561.P2483977087420629207

`A238010(eq[4, A025581(n)])`
-/

namespace A238561.P2483977087420629207
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238010 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A238561.P2483977087420629207

/-! ## A238561.P8874001253228841475

`A238010(eq[5, A193739(n)])`
-/

namespace A238561.P8874001253228841475
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238010 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A238561.P8874001253228841475

/-!
# A238562: Number of partitions of 5^n into parts that are at most n.

The programs for A238562, there is no canonical definition to state claims against.
-/

/-! ## A238562.P12021880111927678168

`record[A238010(A055999(n))]`
-/

namespace A238562.P12021880111927678168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238010 (A055999 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A238562.P12021880111927678168

/-! ## A238562.P12296739325076287922

`A238010(eq[5, A025581(n)])`
-/

namespace A238562.P12296739325076287922
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238010 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A238562.P12296739325076287922

/-! ## A238562.P16032573854384247805

`record[A238010(A052905(n)-1)]`
-/

namespace A238562.P16032573854384247805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238010 (A052905 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A238562.P16032573854384247805

/-!
# A238563: Number of partitions of 6^n into parts that are at most n.

The programs for A238563, there is no canonical definition to state claims against.
-/

/-! ## A238563.P5273812356950120998

`record[A238010(∑[n+4]-1)]`
-/

namespace A238563.P5273812356950120998
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238010 (∑ j ∈ Finset.range (n + 1), f2 j - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A238563.P5273812356950120998

/-! ## A238563.P16621699078675210006

`A238010(eq[6, A025581(n)])`
-/

namespace A238563.P16621699078675210006
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238010 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A238563.P16621699078675210006

/-!
# A238564: Number of partitions of 7^n into parts that are at most n.

The programs for A238564, there is no canonical definition to state claims against.
-/

/-! ## A238564.P10265007442396251325

`A238010(eq[7, A025581(n)])`
-/

namespace A238564.P10265007442396251325
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238010 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A238564.P10265007442396251325

/-!
# A238565: Number of partitions of 8^n into parts that are at most n.

The programs for A238565, there is no canonical definition to state claims against.
-/

/-! ## A238565.P7531564300517217488

`A238010(eq[8, A025581(n)])`
-/

namespace A238565.P7531564300517217488
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238010 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A238565.P7531564300517217488

/-!
# A238566: Number of partitions of 9^n into parts that are at most n.

The programs for A238566, there is no canonical definition to state claims against.
-/

/-! ## A238566.P5540431718118224019

`A238010(eq[9, A025581(n)])`
-/

namespace A238566.P5540431718118224019
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238010 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A238566.P5540431718118224019

/-!
# A238568: a(n) = |{0 < k < n: n^2 - pi(k*n) is prime}|, where pi(x) denotes the number of primes not exceeding x.

The programs for A238568, there is no canonical definition to state claims against.
-/

/-! ## A238568.P5276693976742905018

`A001222(∑[A220280(A018174(n))])`
-/

namespace A238568.P5276693976742905018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220280 (A018174 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A238568.P5276693976742905018

/-! ## A238568.P12955196954244298289

`A001221(record[A212804(A337223(n))])`
-/

namespace A238568.P12955196954244298289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (A337223 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A238568.P12955196954244298289

/-! ## A238568.P2915135569479720786

`A001221(record[A280688(A304452(n))])`
-/

namespace A238568.P2915135569479720786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280688 (A304452 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A238568.P2915135569479720786

/-! ## A238568.P8640855753379470456

`A001221(A000045(A100959(n+1)+1))`
-/

namespace A238568.P8640855753379470456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A000045 (A100959 (n + 1) + 1).toNat).toNat

end

end A238568.P8640855753379470456

/-! ## A238568.P15275976557510720444

`A001221(A196957(n+1)*A205958(n))`
-/

namespace A238568.P15275976557510720444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A196957 (n + 1) * A205958 n).toNat

end

end A238568.P15275976557510720444

/-!
# A238569: Number of compositions of n avoiding any 3-term arithmetic progression.

The programs for A238569, there is no canonical definition to state claims against.
-/

/-! ## A238569.P14571669210053318834

`or(A048814(n), A124736(A048814(n)))`
-/

namespace A238569.P14571669210053318834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A048814 (n + 10)) (A124736 (A048814 (n + 10)).toNat)

end

end A238569.P14571669210053318834

/-! ## A238569.P14490758142238378525

`or(A074045(n), A124736(A074045(n)))`
-/

namespace A238569.P14490758142238378525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A074045 n) (A124736 (A074045 n).toNat)

end

end A238569.P14490758142238378525

/-! ## A238569.P4588181595602099978

`or(A290260(n+1), A294848(A000065(n)))`
-/

namespace A238569.P4588181595602099978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A290260 (n + 1)) (A294848 (A000065 n).toNat)

end

end A238569.P4588181595602099978

/-! ## A238569.P8783766981344403450

`A089850(A238686(n))`
-/

namespace A238569.P8783766981344403450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089850 (A238686 n).toNat

end

end A238569.P8783766981344403450

/-! ## A238569.P6813766971204355608

`A070770(A279556(n))`
-/

namespace A238569.P6813766971204355608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070770 (A279556 n).toNat

end

end A238569.P6813766971204355608

/-!
# A238570: a(n) = |{0 < k < n: pi((k+1)^2) - pi(k^2) and pi(n^2) - pi(k^2) are both prime}|, where pi(x) denotes the number of primes not exceeding x.

The programs for A238570, there is no canonical definition to state claims against.
-/

/-! ## A238570.P17573493595087246254

`gcd(A078431(n+1), A324781(n))`
-/

namespace A238570.P17573493595087246254
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A078431 (n + 1)) (A324781 n)

end

end A238570.P17573493595087246254

/-! ## A238570.P15334505914585274097

`∑{e}[A219428(A305117((∑[n+1]+2)²+n²)), #]`
-/

namespace A238570.P15334505914585274097
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219428 (A305117 ((∑ j ∈ Finset.range (n + 1), f2 j + 2) ^ 2 + n ^ 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A238570.P15334505914585274097

/-! ## A238570.P7416197616194237207

`gcd(A102977(n+1), A121854(A000217(n)))`
-/

namespace A238570.P7416197616194237207
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A102977 (n + 1)) (A121854 (A000217 n).toNat)

end

end A238570.P7416197616194237207

/-!
# A238572: Primes that can be expressed in more than one way in the form p * q + r such that p, q, and r are all prime, p > q, and p >= r.

The programs for A238572, there is no canonical definition to state claims against.
-/

/-! ## A238572.P16683745078480004579

`p?[lt[A088205(n), A088183(n+2)]]`
-/

namespace A238572.P16683745078480004579
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088205 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088183 (n + 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A238572.P16683745078480004579

/-! ## A238572.P6998831164207909837

`A230775(∑[A139979(n+4)-A106856(n+1)])`
-/

namespace A238572.P6998831164207909837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139979 (n + 4) - A106856 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230775 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A238572.P6998831164207909837

/-! ## A238572.P4084173657349499354

`A230775(∑[A139979(n+4)-A141183(n+1)])`
-/

namespace A238572.P4084173657349499354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139979 (n + 4) - A141183 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230775 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A238572.P4084173657349499354

/-! ## A238572.P7020512100350187681

`A230775(A014567(n+5)*A326257(2*n+1))`
-/

namespace A238572.P7020512100350187681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230775 (A014567 (n + 5) * A326257 (2 * n + 1)).toNat

end

end A238572.P7020512100350187681

/-! ## A238572.P7338923932207849122

`A230775(∑[A139979(n+4)-A079212(2*n+5)])`
-/

namespace A238572.P7338923932207849122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139979 (n + 4) - A079212 (2 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230775 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A238572.P7338923932207849122

/-!
# A238573: a(n) = |{0 < k <= n: prime(k*n) + 2 is prime}|.

The programs for A238573, there is no canonical definition to state claims against.
-/

/-! ## A238573.P12115224927347639925

`A124593(A077727(n+1))%∏{p}[n+1, #]`
-/

namespace A238573.P12115224927347639925
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A124593 (A077727 (n + 1)).toNat) ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℤ)

end

end A238573.P12115224927347639925

/-! ## A238573.P13767151844207576730

`A276625(A318185(n+1))%∏{p}[n+1, #]`
-/

namespace A238573.P13767151844207576730
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A276625 (A318185 (n + 1)).toNat) ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℤ)

end

end A238573.P13767151844207576730

/-! ## A238573.P11500551737577263428

`A323638(n+1)-A165211(A052921(n))`
-/

namespace A238573.P11500551737577263428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323638 (n + 1) - A165211 (A052921 n).toNat

end

end A238573.P11500551737577263428

/-! ## A238573.P14518702620196309423

`A014081(xor(A001787(n), A208466(n+1)))`
-/

namespace A238573.P14518702620196309423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014081 (Int.xor (A001787 n) (A208466 (n + 1))).toNat

end

end A238573.P14518702620196309423

/-!
# A238574: k-Lehmer numbers: composite integers n such that phi(n) | (n-1)^k.

The programs for A238574, there is no canonical definition to state claims against.
-/

/-! ## A238574.P18104774256127486149

`∪[A002997(n+1), A333314(n+1)]`
-/

namespace A238574.P18104774256127486149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002997 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333314 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A238574.P18104774256127486149

/-! ## A238574.P13037340614769869151

`∪[A333314(n+1), A392922(n+1)]`
-/

namespace A238574.P13037340614769869151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333314 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392922 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A238574.P13037340614769869151

/-! ## A238574.P13642847439178985180

`∪[A081703(n+1)*A141710(n+1), A333314(n+1)]`
-/

namespace A238574.P13642847439178985180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081703 (n + 1) * A141710 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333314 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A238574.P13642847439178985180

/-! ## A238574.P1140656515614952495

`∩[A187731(n+1), A380470(n+1)]`
-/

namespace A238574.P1140656515614952495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187731 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380470 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A238574.P1140656515614952495

/-! ## A238574.P11234984371126277938

`∩[A024556(n+1), A187731(n+1)]`
-/

namespace A238574.P11234984371126277938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024556 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187731 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A238574.P11234984371126277938

/-! ## A238574.P17566198357786847558

`∩[A187731(n+1), A374476(n+1)]`
-/

namespace A238574.P17566198357786847558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187731 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374476 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A238574.P17566198357786847558

/-! ## A238574.P3926604598347746978

`∩[A061346(n+1), A187731(n+1)]`
-/

namespace A238574.P3926604598347746978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061346 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187731 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A238574.P3926604598347746978

/-! ## A238574.P9331057708140581659

`∩[A082686(n+1), A187731(n+1)]`
-/

namespace A238574.P9331057708140581659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082686 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187731 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A238574.P9331057708140581659

/-! ## A238574.P15511493776730326427

`∩[A187731(n+1), A226025(n+1)]`
-/

namespace A238574.P15511493776730326427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187731 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226025 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A238574.P15511493776730326427

/-! ## A238574.P8932954460362692735

`∩[A071904(n+1), A187731(n+1)]`
-/

namespace A238574.P8932954460362692735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071904 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187731 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A238574.P8932954460362692735

/-! ## A238574.P1664165777302060954

`∩[A187731(n+1), A270574(n+1)]`
-/

namespace A238574.P1664165777302060954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187731 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270574 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A238574.P1664165777302060954

/-! ## A238574.P8642042202257912911

`∩[A078505(n+1), A187731(n+1)]`
-/

namespace A238574.P8642042202257912911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078505 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187731 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A238574.P8642042202257912911

/-! ## A238574.P6606710925381868294

`∩[A187731(n+1), A367018(n+1)]`
-/

namespace A238574.P6606710925381868294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187731 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367018 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A238574.P6606710925381868294

/-! ## A238574.P12700719336506189540

`∩[A068992(n+1), A187731(n+1)]`
-/

namespace A238574.P12700719336506189540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068992 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187731 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A238574.P12700719336506189540

/-! ## A238574.P293775259329391852

`∩[A120944(n+1), A187731(n+1)]`
-/

namespace A238574.P293775259329391852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120944 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187731 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A238574.P293775259329391852

/-! ## A238574.P4454085276240258840

`∩[A182853(n+1), A187731(n+1)]`
-/

namespace A238574.P4454085276240258840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182853 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187731 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A238574.P4454085276240258840

/-! ## A238574.P15435739061075379105

`∩[A187731(n+1), A366413(n+1)]`
-/

namespace A238574.P15435739061075379105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187731 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366413 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A238574.P15435739061075379105

/-! ## A238574.P7948045233653276311

`∩[A187731(n+1), A230766(n+1)]`
-/

namespace A238574.P7948045233653276311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187731 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230766 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A238574.P7948045233653276311

/-! ## A238574.P7059948939744265686

`∩[A039769(n+1), A187731(n+1)]`
-/

namespace A238574.P7059948939744265686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039769 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187731 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A238574.P7059948939744265686

/-! ## A238574.P4406822888963906066

`∩[A055465(n+1), A187731(n+1)]`
-/

namespace A238574.P4406822888963906066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055465 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187731 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A238574.P4406822888963906066

/-!
# A238575: k-Lehmer numbers with two prime factors.

The programs for A238575, there is no canonical definition to state claims against.
-/

/-! ## A238575.P1156001422868661293

`filter[A238574(n+1), A354927(#)]`
-/

namespace A238575.P1156001422868661293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238574 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354927 (f1 j).toNat = 1) n)

end

end A238575.P1156001422868661293

/-! ## A238575.P1830498499395759749

`filter[A333314(n+1), A354927(#)]`
-/

namespace A238575.P1830498499395759749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333314 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354927 (f1 j).toNat = 1) n)

end

end A238575.P1830498499395759749

/-! ## A238575.P13563759371920677784

`filter[A187731(n+1), A064911(#)]`
-/

namespace A238575.P13563759371920677784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187731 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A238575.P13563759371920677784

/-! ## A238575.P6243488840550388105

`filter[A238574(n+1), A064911(#)]`
-/

namespace A238575.P6243488840550388105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238574 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A238575.P6243488840550388105

/-! ## A238575.P11017720274852043827

`filter[A238574(n+1), A101040(#)]`
-/

namespace A238575.P11017720274852043827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238574 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A101040 (f1 j).toNat = 1) n)

end

end A238575.P11017720274852043827

/-! ## A238575.P8412286850150597222

`filter[A238574(n+1), A123927(#)]`
-/

namespace A238575.P8412286850150597222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238574 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A123927 (f1 j).toNat = 1) n)

end

end A238575.P8412286850150597222

/-! ## A238575.P7489897739836341751

`filter[A333314(n+1), A064911(#)]`
-/

namespace A238575.P7489897739836341751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333314 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A238575.P7489897739836341751

/-! ## A238575.P13068888934906967957

`filter[A333314(n+1), A101040(#)]`
-/

namespace A238575.P13068888934906967957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333314 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A101040 (f1 j).toNat = 1) n)

end

end A238575.P13068888934906967957

/-! ## A238575.P13210396594312360990

`filter[A333314(n+1), A123927(#)]`
-/

namespace A238575.P13210396594312360990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333314 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A123927 (f1 j).toNat = 1) n)

end

end A238575.P13210396594312360990

/-! ## A238575.P12378609305844828709

`filter[A238574(n+1), A280710(#)]`
-/

namespace A238575.P12378609305844828709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238574 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A280710 (f1 j).toNat = 1) n)

end

end A238575.P12378609305844828709

/-! ## A238575.P12095480631614416146

`filter[A238574(n+1), A340370(#)]`
-/

namespace A238575.P12095480631614416146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238574 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340370 (f1 j).toNat = 1) n)

end

end A238575.P12095480631614416146

/-! ## A238575.P6936063438143222128

`filter[A238574(n+1), A353471(#)]`
-/

namespace A238575.P6936063438143222128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238574 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353471 (f1 j).toNat = 1) n)

end

end A238575.P6936063438143222128

/-! ## A238575.P7831949122900017115

`filter[A238574(n+1), A353480(#)]`
-/

namespace A238575.P7831949122900017115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238574 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353480 (f1 j).toNat = 1) n)

end

end A238575.P7831949122900017115

/-! ## A238575.P7345599030326536641

`filter[A238574(n+1), A353481(#)]`
-/

namespace A238575.P7345599030326536641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238574 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353481 (f1 j).toNat = 1) n)

end

end A238575.P7345599030326536641

/-! ## A238575.P14021394098227551530

`filter[A238574(n+1), A353676(#)]`
-/

namespace A238575.P14021394098227551530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238574 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353676 (f1 j).toNat = 1) n)

end

end A238575.P14021394098227551530

/-! ## A238575.P9741476621851277388

`filter[A238574(n+1), A353788(#)]`
-/

namespace A238575.P9741476621851277388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238574 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353788 (f1 j).toNat = 1) n)

end

end A238575.P9741476621851277388

/-! ## A238575.P9286907163519000241

`filter[A238574(n+1), A353799(#)]`
-/

namespace A238575.P9286907163519000241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238574 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353799 (f1 j).toNat = 1) n)

end

end A238575.P9286907163519000241

/-! ## A238575.P12716894817591329120

`filter[A333314(n+1), A280710(#)]`
-/

namespace A238575.P12716894817591329120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333314 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A280710 (f1 j).toNat = 1) n)

end

end A238575.P12716894817591329120

/-! ## A238575.P17465583105359781557

`filter[A333314(n+1), A340370(#)]`
-/

namespace A238575.P17465583105359781557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333314 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340370 (f1 j).toNat = 1) n)

end

end A238575.P17465583105359781557

/-! ## A238575.P4014108868294475539

`filter[A333314(n+1), A353471(#)]`
-/

namespace A238575.P4014108868294475539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333314 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353471 (f1 j).toNat = 1) n)

end

end A238575.P4014108868294475539

/-!
# A238576: Number of odd primes p < 2*n with prime(n*(p-1)/2)^2 - 2 prime.

The programs for A238576, there is no canonical definition to state claims against.
-/

/-! ## A238576.P5023367650981335658

`A071028(A081927(2*n+3))+∑{e}[n+1, #]`
-/

namespace A238576.P5023367650981335658
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071028 (A081927 (2 * n + 3)).toNat + ((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℤ)

end

end A238576.P5023367650981335658

/-! ## A238576.P13830863266408006256

`A267708(A022381(n))+A046645(n+1)`
-/

namespace A238576.P13830863266408006256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267708 (A022381 n).toNat + A046645 (n + 1)

end

end A238576.P13830863266408006256

/-! ## A238576.P8433400531029318811

`A071031(A133529(n+1))+A001222(n+1)`
-/

namespace A238576.P8433400531029318811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071031 (A133529 (n + 1)).toNat + A001222 (n + 1)

end

end A238576.P8433400531029318811

/-! ## A238576.P425193851494453952

`A118953(A084000(n+1))+A046645(n+1)`
-/

namespace A238576.P425193851494453952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118953 (A084000 (n + 1)).toNat + A046645 (n + 1)

end

end A238576.P425193851494453952

/-! ## A238576.P15961497827032516416

`A118009(A055211(n+2))+A001222(n+1)`
-/

namespace A238576.P15961497827032516416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118009 (A055211 (n + 2)).toNat + A001222 (n + 1)

end

end A238576.P15961497827032516416

/-!
# A238577: a(n) = |{0 < k <= n: p(n)*q(k)*r(k) + 1 is prime}|, where p(.), q(.) and r(.) are given by A000041, A000009 and A047967 respectively.

The programs for A238577, there is no canonical definition to state claims against.
-/

/-! ## A238577.P4043131986886140834

`A001222(or(A002242(n+1), A003418(n)))`
-/

namespace A238577.P4043131986886140834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.lor (A002242 (n + 1)) (A003418 n)).toNat

end

end A238577.P4043131986886140834

/-! ## A238577.P8090215189713853243

`A062842(A140582(n)+A000129(n))`
-/

namespace A238577.P8090215189713853243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062842 (A140582 n + A000129 n).toNat

end

end A238577.P8090215189713853243

/-! ## A238577.P10567344279291765823

`A339927(A167614(n+1)-A325391(n))`
-/

namespace A238577.P10567344279291765823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339927 (A167614 (n + 1) - A325391 n).toNat

end

end A238577.P10567344279291765823

/-! ## A238577.P16372666148140782067

`A001222(A352891(n+1)+A056654(n+2))`
-/

namespace A238577.P16372666148140782067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A352891 (n + 1) + A056654 (n + 2)).toNat

end

end A238577.P16372666148140782067

/-!
# A238578: Expansion of -(-4*x^4 + sqrt(-4*x^2-4*x+1) * (2*x^3+x^2-2*x) -12*x^3-7*x^2+2*x) / (sqrt(-4*x^2-4*x+1) * (4*x^3+8*x^2+3*x-1) - 4*x^3-8*x^2-3*x+1).

The programs for A238578, there is no canonical definition to state claims against.
-/

/-! ## A238578.P13343945945969837860

`A052709(n)+A023443(n)*A025227(n)`
-/

namespace A238578.P13343945945969837860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052709 n + A023443 n * A025227 n

end

end A238578.P13343945945969837860

/-! ## A238578.P16628453986013593632

`A004526(A240688(n)+A052709(n))`
-/

namespace A238578.P16628453986013593632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A240688 n + A052709 n).toNat

end

end A238578.P16628453986013593632

/-! ## A238578.P14563757156902165023

`A025480(A240688(n)+A052709(n))`
-/

namespace A238578.P14563757156902165023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A240688 n + A052709 n).toNat

end

end A238578.P14563757156902165023

/-! ## A238578.P15986088652037423394

`A025480(A240688(n)+A052726(n)/n!)`
-/

namespace A238578.P15986088652037423394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (SequenceMachineLib.roundAway ((A240688 n : ℚ) + (A052726 n : ℚ) / (Nat.factorial n : ℚ))).toNat

end

end A238578.P15986088652037423394

/-!
# A238580: a(n) = |{0 < k <= n: 2*k + 1 and prime(k)*prime(n) - 2 are both prime}|.

The programs for A238580, there is no canonical definition to state claims against.
-/

/-! ## A238580.P13877496280913623795

`A238597(A130291(n+1))`
-/

namespace A238580.P13877496280913623795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238597 (A130291 (n + 1)).toNat

end

end A238580.P13877496280913623795

/-! ## A238580.P4353143561748864178

`A238643(A175787(n+2))`
-/

namespace A238580.P4353143561748864178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238643 (A175787 (n + 2)).toNat

end

end A238580.P4353143561748864178

/-! ## A238580.P11903558746769021236

`A238643(A039915(n+1)+1)`
-/

namespace A238580.P11903558746769021236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238643 (A039915 (n + 1) + 1).toNat

end

end A238580.P11903558746769021236

/-! ## A238580.P542398014446996237

`A238643(A068499(n+2)+1)`
-/

namespace A238580.P542398014446996237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238643 (A068499 (n + 2) + 1).toNat

end

end A238580.P542398014446996237

/-! ## A238580.P7496969946792609143

`A238643(or(1, A000040(n+1)))`
-/

namespace A238580.P7496969946792609143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238643 (Int.lor 1 (A000040 (n + 1))).toNat

end

end A238580.P7496969946792609143

/-! ## A238580.P7784806569695702617

`A238643(record[A000010(n+2)+(n+1)%2]+1)`
-/

namespace A238580.P7784806569695702617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 2) + (((n + 1) % 2 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238643 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1).toNat

end

end A238580.P7784806569695702617

/-! ## A238580.P3603225572649403688

`A238643(record[A000010(n+2)+and(1, n+1)]+1)`
-/

namespace A238580.P3603225572649403688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 2) + (Nat.land 1 (n + 1) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238643 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1).toNat

end

end A238580.P3603225572649403688

/-!
# A238583: Number T(n,k) of equivalence classes of ways of placing k 4 X 4 tiles in an n X 9 rectangle under all symmetry operations of the rectangle; irregular triangle T(n,k), n>=4, 0<=k<=2*floor(n/4), read by rows.

The programs for A238583, there is no canonical definition to state claims against.
-/

/-! ## A238583.P16715133444857158807

`A296756(A238556(n+3))%A091403(n+1)`
-/

namespace A238583.P16715133444857158807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A296756 (A238556 (n + 3)).toNat) (A091403 (n + 1))

end

end A238583.P16715133444857158807

/-! ## A238583.P16561275452686963886

`A238556(n+3)-A004525(A185284((5-n)²))`
-/

namespace A238583.P16561275452686963886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238556 (n + 3) - A004525 (A185284 ((5 - (n : ℤ)) ^ 2).toNat).toNat

end

end A238583.P16561275452686963886

/-!
# A238584: Ratios of consecutive terms in A152466.

The programs for A238584, there is no canonical definition to state claims against.
-/

/-! ## A238584.P5701201676294280247

`ratio[A152466(n+1)]`
-/

namespace A238584.P5701201676294280247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152466 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A238584.P5701201676294280247

/-! ## A238584.P16059747631423804000

`ceil(ratio[A242463(n+1)])`
-/

namespace A238584.P16059747631423804000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242463 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f1 (n + 1) : ℚ) / (f1 n : ℚ)⌉

end

end A238584.P16059747631423804000

/-! ## A238584.P9103334580118552345

`A152466(n+2)/A152466(n+1)`
-/

namespace A238584.P9103334580118552345
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A152466 (n + 2) : ℚ) / (A152466 (n + 1) : ℚ)

end

end A238584.P9103334580118552345

/-! ## A238584.P15505050672041876410

`gcd(A152466(A026424(n+1)), A242463(n+1))`
-/

namespace A238584.P15505050672041876410
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A152466 (A026424 (n + 1)).toNat) (A242463 (n + 1))

end

end A238584.P15505050672041876410

/-!
# A238585: Number of primes p < n with prime(p)^2 + (prime(n)-1)^2 prime.

The programs for A238585, there is no canonical definition to state claims against.
-/

/-! ## A238585.P15685021186551476127

`A037828(A339228(n+1))`
-/

namespace A238585.P15685021186551476127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037828 (A339228 (n + 1)).toNat

end

end A238585.P15685021186551476127

/-! ## A238585.P4548861994597204726

`A160380(A043816(n+1)-A193356(n+1))`
-/

namespace A238585.P4548861994597204726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160380 (A043816 (n + 1) - A193356 (n + 1)).toNat

end

end A238585.P4548861994597204726

/-! ## A238585.P844260039130676163

`A037800(A273905(n+2)-A037840(n+1))`
-/

namespace A238585.P844260039130676163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037800 (A273905 (n + 2) - A037840 (n + 1)).toNat

end

end A238585.P844260039130676163

/-! ## A238585.P9561899887413680443

`A000120(A000120(A054176(n)))%A121842(n)`
-/

namespace A238585.P9561899887413680443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000120 (A000120 (A054176 n).toNat).toNat) (A121842 n)

end

end A238585.P9561899887413680443

/-! ## A238585.P17951257078191903430

`A037829(A303666(n))`
-/

namespace A238585.P17951257078191903430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037829 (A303666 n).toNat

end

end A238585.P17951257078191903430

/-!
# A238588: Number of partitions p of n such that 2(number of parts of p) - 2*min(p) is a part of p.

The programs for A238588, there is no canonical definition to state claims against.
-/

/-! ## A238588.P14624017837554301742

`A048766(A000295(n)%A027306(n))`
-/

namespace A238588.P14624017837554301742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (Int.tmod (A000295 n) (A027306 n)).toNat

end

end A238588.P14624017837554301742

/-! ## A238588.P2750120533355532102

`A295891(A029542(n+1))+∑[floor(n/5)]`
-/

namespace A238588.P2750120533355532102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 5⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295891 (A029542 (n + 1)).toNat + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A238588.P2750120533355532102

/-!
# A238589: Number of partitions p of n such that 2*min(p) is a part of p.

The programs for A238589, there is no canonical definition to state claims against.
-/

/-! ## A238589.P5348862659853447904

`A000041(n+1)-A238594(n+1)`
-/

namespace A238589.P5348862659853447904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) - A238594 (n + 1)

end

end A238589.P5348862659853447904

/-! ## A238589.P5735231552615427037

`A238590(n+1)+A097091(n+1)`
-/

namespace A238589.P5735231552615427037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238590 (n + 1) + A097091 (n + 1)

end

end A238589.P5735231552615427037

/-! ## A238589.P138483736242047426

`A000065(n+1)+1-A238594(n+1)`
-/

namespace A238589.P138483736242047426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000065 (n + 1) + (1 - A238594 (n + 1))

end

end A238589.P138483736242047426

/-! ## A238589.P1252570666800035196

`Δ[A000070(n)]-A238594(n+1)`
-/

namespace A238589.P1252570666800035196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A238594 (n + 1)

end

end A238589.P1252570666800035196

/-! ## A238589.P568700275521301205

`record[A035444(n)]-A238594(n+1)`
-/

namespace A238589.P568700275521301205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035444 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A238594 (n + 1)

end

end A238589.P568700275521301205

/-! ## A238589.P14378864488419313854

`A117989(n+1)-A096373(n+1)`
-/

namespace A238589.P14378864488419313854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117989 (n + 1) - A096373 (n + 1)

end

end A238589.P14378864488419313854

/-!
# A238590: Number of partitions p of n such that 3*min(p) is a part of p.

The programs for A238590, there is no canonical definition to state claims against.
-/

/-! ## A238590.P14695912221398401406

`A238591(n+1)+A097092(n+1)`
-/

namespace A238590.P14695912221398401406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238591 (n + 1) + A097092 (n + 1)

end

end A238590.P14695912221398401406

/-! ## A238590.P2507510085374431328

`A238589(n+1)-A097091(n+1)`
-/

namespace A238590.P2507510085374431328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238589 (n + 1) - A097091 (n + 1)

end

end A238590.P2507510085374431328

/-! ## A238590.P3953970129827284526

`A238589(n+1)-(A238589(n+4)-A000041(n+1))`
-/

namespace A238590.P3953970129827284526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238589 (n + 1) - (A238589 (n + 4) - A000041 (n + 1))

end

end A238590.P3953970129827284526

/-! ## A238590.P3848057257459895260

`A238589(n+1)-(A238589(n+4)-∑[A187219(n+1)])`
-/

namespace A238590.P3848057257459895260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187219 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238589 (n + 1) - (A238589 (n + 4) - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A238590.P3848057257459895260

/-! ## A238590.P9977094109661681639

`A238589(n+1)-(A238589(n+4)-record[A035363(n)])`
-/

namespace A238590.P9977094109661681639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238589 (n + 1) - (A238589 (n + 4) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A238590.P9977094109661681639

/-! ## A238590.P14301766765581929825

`A238589(n+1)-(A238589(n+4)-record[A114099(n)])`
-/

namespace A238590.P14301766765581929825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114099 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238589 (n + 1) - (A238589 (n + 4) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A238590.P14301766765581929825

/-! ## A238590.P13122131255931596235

`A117989(n+1)-(A097091(n+1)+A096373(n+1))`
-/

namespace A238590.P13122131255931596235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117989 (n + 1) - (A097091 (n + 1) + A096373 (n + 1))

end

end A238590.P13122131255931596235

/-! ## A238590.P10066524940431060034

`A238589(n+1)-(A002865(n+2)+A096373(n+2)-A096373(n+4))`
-/

namespace A238590.P10066524940431060034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238589 (n + 1) - (A002865 (n + 2) + (A096373 (n + 2) - A096373 (n + 4)))

end

end A238590.P10066524940431060034

/-! ## A238590.P2278567970616536525

`A238589(n+1)-(A096373(n+2)+A187219(n+2)-A096373(n+4))`
-/

namespace A238590.P2278567970616536525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238589 (n + 1) - (A096373 (n + 2) + (A187219 (n + 2) - A096373 (n + 4)))

end

end A238590.P2278567970616536525

/-! ## A238590.P8523760909645472716

`A238589(n+1)-A096144(A152950(n+1))%A052365(n)`
-/

namespace A238590.P8523760909645472716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238589 (n + 1) - Int.tmod (A096144 (A152950 (n + 1)).toNat) (A052365 n)

end

end A238590.P8523760909645472716

/-!
# A238591: Number of partitions p of n such that 4*min(p) is a part of p.

The programs for A238591, there is no canonical definition to state claims against.
-/

/-! ## A238591.P16629515910240711705

`A361459(n+1)+A097093(n+1)`
-/

namespace A238591.P16629515910240711705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361459 (n + 1) + A097093 (n + 1)

end

end A238591.P16629515910240711705

/-! ## A238591.P9802813776139028439

`A238590(n+1)-A097092(n+1)`
-/

namespace A238591.P9802813776139028439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238590 (n + 1) - A097092 (n + 1)

end

end A238591.P9802813776139028439

/-! ## A238591.P4117596640253015581

`A238589(n+1)-(A097092(n+1)+A097091(n+1))`
-/

namespace A238591.P4117596640253015581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238589 (n + 1) - (A097092 (n + 1) + A097091 (n + 1))

end

end A238591.P4117596640253015581

/-! ## A238591.P5645442384203430221

`A238590(n+1)-(A238590(n+5)-A000041(n+1))`
-/

namespace A238591.P5645442384203430221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238590 (n + 1) - (A238590 (n + 5) - A000041 (n + 1))

end

end A238591.P5645442384203430221

/-! ## A238591.P7136773388289905630

`A238590(n+1)-(A238590(n+5)-Δ[A000070(n)])`
-/

namespace A238591.P7136773388289905630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238590 (n + 1) - (A238590 (n + 5) - (f1 (n + 1) - f1 n))

end

end A238591.P7136773388289905630

/-! ## A238591.P18147153704532179434

`A238590(n+1)-(A238590(n+5)-record[A035363(n)])`
-/

namespace A238591.P18147153704532179434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238590 (n + 1) - (A238590 (n + 5) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A238591.P18147153704532179434

/-! ## A238591.P13961022633215664151

`A238590(n+1)-(A238590(n+5)-record[A035444(n)])`
-/

namespace A238591.P13961022633215664151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035444 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238590 (n + 1) - (A238590 (n + 5) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A238591.P13961022633215664151

/-! ## A238591.P1633437823191486590

`A238590(n+1)-(A238590(n+5)-record[A114099(n)])`
-/

namespace A238591.P1633437823191486590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114099 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238590 (n + 1) - (A238590 (n + 5) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A238591.P1633437823191486590

/-! ## A238591.P11261429389096222069

`A117989(n+1)-(A325535(n+1)+A097092(n+1))`
-/

namespace A238591.P11261429389096222069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117989 (n + 1) - (A325535 (n + 1) + A097092 (n + 1))

end

end A238591.P11261429389096222069

/-! ## A238591.P18090507740605641972

`A117989(n+1)-(A097091(n+1)+A096373(n+1))-A097092(n+1)`
-/

namespace A238591.P18090507740605641972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117989 (n + 1) - (A097091 (n + 1) + A096373 (n + 1)) - A097092 (n + 1)

end

end A238591.P18090507740605641972

/-!
# A238594: Number of partitions p of n such that 2*min(p) is not a part of p.

The programs for A238594, there is no canonical definition to state claims against.
-/

/-! ## A238594.P15843250866690545765

`A000041(n+1)-A238589(n+1)`
-/

namespace A238594.P15843250866690545765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) - A238589 (n + 1)

end

end A238594.P15843250866690545765

/-! ## A238594.P755817154250681786

`∑[A187219(n+1)]-A238589(n+1)`
-/

namespace A238594.P755817154250681786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187219 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A238589 (n + 1)

end

end A238594.P755817154250681786

/-! ## A238594.P551719987994269374

`A117989(n+3)-A117989(n+1)`
-/

namespace A238594.P551719987994269374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117989 (n + 3) - A117989 (n + 1)

end

end A238594.P551719987994269374

/-! ## A238594.P17783332609979536328

`Δ[A117989(n+2)+A117989(n+1)]`
-/

namespace A238594.P17783332609979536328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117989 (n + 2) + A117989 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A238594.P17783332609979536328

/-! ## A238594.P120962029072335676

`Δ[A000070(n)]-A238589(n+1)`
-/

namespace A238594.P120962029072335676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A238589 (n + 1)

end

end A238594.P120962029072335676

/-! ## A238594.P13030296533640793412

`record[A035363(n)]-A238589(n+1)`
-/

namespace A238594.P13030296533640793412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A238589 (n + 1)

end

end A238594.P13030296533640793412

/-! ## A238594.P8643097131665782782

`record[A035444(n)]-A238589(n+1)`
-/

namespace A238594.P8643097131665782782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035444 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A238589 (n + 1)

end

end A238594.P8643097131665782782

/-! ## A238594.P11536522098775570616

`record[A114099(n)]-A238589(n+1)`
-/

namespace A238594.P11536522098775570616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114099 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A238589 (n + 1)

end

end A238594.P11536522098775570616

/-! ## A238594.P4943274107698011165

`A096373(n+1)+A002865(n+2)`
-/

namespace A238594.P4943274107698011165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096373 (n + 1) + A002865 (n + 2)

end

end A238594.P4943274107698011165

/-! ## A238594.P16692620783809173541

`A187219(n+2)+A096373(n+1)`
-/

namespace A238594.P16692620783809173541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187219 (n + 2) + A096373 (n + 1)

end

end A238594.P16692620783809173541

/-!
# A238597: Number of primes p < 2*n with 2*pi(p) + 1 and p*(2n-1) - 2 both prime, where pi(.) is given by A000720.

The programs for A238597, there is no canonical definition to state claims against.
-/

/-! ## A238597.P6595487949687417136

`A238643(Δ[n²])`
-/

namespace A238597.P6595487949687417136
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238643 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A238597.P6595487949687417136

/-! ## A238597.P10222986698841886331

`xor(1, xor(1, A238643(2*n+1)))`
-/

namespace A238597.P10222986698841886331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (Int.xor 1 (A238643 (2 * n + 1)))

end

end A238597.P10222986698841886331

/-! ## A238597.P15467511114742181406

`A238643(comp[2*n])%comp[2*n]`
-/

namespace A238597.P15467511114742181406
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A238643 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)) (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n : ℤ)

end

end A238597.P15467511114742181406

/-! ## A238597.P1032546639326515769

`lcm(A020985(n), A238643(2*n+1))`
-/

namespace A238597.P1032546639326515769
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A238643 (2 * n + 1))

end

end A238597.P1032546639326515769

/-! ## A238597.P14295073182924179784

`A020985(n+1)²*A238643(2*n+1)`
-/

namespace A238597.P14295073182924179784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020985 (n + 1) ^ 2 * A238643 (2 * n + 1)

end

end A238597.P14295073182924179784

/-! ## A238597.P1362160658950819435

`A001511(2*n+1)*A238643(2*n+1)`
-/

namespace A238597.P1362160658950819435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (2 * n + 1) * A238643 (2 * n + 1)

end

end A238597.P1362160658950819435

/-! ## A238597.P13932602947677000731

`A082460(2*(n+1))*A238643(2*n+1)`
-/

namespace A238597.P13932602947677000731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082460 (2 * (n + 1)) * A238643 (2 * n + 1)

end

end A238597.P13932602947677000731

/-! ## A238597.P9031217755393129096

`A084360(2*(n+1))*A238643(2*n+1)`
-/

namespace A238597.P9031217755393129096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084360 (2 * (n + 1)) * A238643 (2 * n + 1)

end

end A238597.P9031217755393129096

/-! ## A238597.P18263333373598981388

`(A010051(2*(n+1))+1)*A238643(2*n+1)`
-/

namespace A238597.P18263333373598981388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A010051 (2 * (n + 1)) + 1) * A238643 (2 * n + 1)

end

end A238597.P18263333373598981388

/-! ## A238597.P14971035809378706992

`A238643(A005408(n))/A020985(n)²`
-/

namespace A238597.P14971035809378706992
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A238643 (A005408 n).toNat : ℚ) / (A020985 n ^ 2 : ℚ)

end

end A238597.P14971035809378706992

/-! ## A238597.P7746956269630385550

`A020985(2*n)*A238643(2*n+1)*A020985(2*n)`
-/

namespace A238597.P7746956269630385550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020985 (2 * n) * A238643 (2 * n + 1) * A020985 (2 * n)

end

end A238597.P7746956269630385550

/-! ## A238597.P17559331775038645710

`A238643(2*n+1)+A010051(A000290(n+1))`
-/

namespace A238597.P17559331775038645710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238643 (2 * n + 1) + A010051 (A000290 (n + 1)).toNat

end

end A238597.P17559331775038645710

/-! ## A238597.P15280060041711602371

`A238643(2*n+1)*A304042(p?[A304042(2*n+1)])`
-/

namespace A238597.P15280060041711602371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304042 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238643 (2 * n + 1) * A304042 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A238597.P15280060041711602371

/-! ## A238597.P9414725430121572597

`A238643(2*n+1)+A010051(A135705(n+1))`
-/

namespace A238597.P9414725430121572597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238643 (2 * n + 1) + A010051 (A135705 (n + 1)).toNat

end

end A238597.P9414725430121572597

/-!
# A238598: Largest integer k such that n >= k^2-k-1 = A165900(k).

The programs for A238598, there is no canonical definition to state claims against.
-/

/-! ## A238598.P8375795233297807140

`round(sqrt(acos(char[1])+n))`
-/

namespace A238598.P8375795233297807140
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (Real.arccos ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℝ) + (n : ℝ)))

end

end A238598.P8375795233297807140

/-! ## A238598.P12931600265223078622

`round(sqrt(acot(char[1])+n))`
-/

namespace A238598.P12931600265223078622
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (SequenceMachineLib.acot ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℝ) + (n : ℝ)))

end

end A238598.P12931600265223078622

/-! ## A238598.P2135774764660445298

`round(sqrt(2-char[1]+n))`
-/

namespace A238598.P2135774764660445298
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (2 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + (n : ℤ) : ℝ))

end

end A238598.P2135774764660445298

/-! ## A238598.P6961355894704072382

`floor(sqrt(atan(n)+comp[n²]))`
-/

namespace A238598.P6961355894704072382
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (Real.arctan (n : ℝ) + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℝ))⌋

end

end A238598.P6961355894704072382

/-! ## A238598.P14295524650071403905

`floor(sqrt(comp[or(2, n²)]+1))`
-/

namespace A238598.P14295524650071403905
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 (n ^ 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.sqrt (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1)

end

end A238598.P14295524650071403905

/-! ## A238598.P17146612987514142356

`floor(sqrt(comp[xor(2, n²)]+1))`
-/

namespace A238598.P17146612987514142356
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 2 (n ^ 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.sqrt (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1)

end

end A238598.P17146612987514142356

/-! ## A238598.P9510438790056003253

`C(round(sqrt(n+2)), char[1]+1)`
-/

namespace A238598.P9510438790056003253
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.roundAway (Real.sqrt (n + 2 : ℝ))).toNat ((if ∃ j, f1 j = n then 1 else 0) + 1)

end

end A238598.P9510438790056003253

/-! ## A238598.P9133526178466108854

`ceil(sqrt(∑[xor(1, char[n²-3])]))`
-/

namespace A238598.P9133526178466108854
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - 3

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (if ∃ j, f2 j = (n : ℤ) then 1 else 0)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ)⌉

end

end A238598.P9133526178466108854

/-! ## A238598.P1862267315816798529

`∑[char[n²-floor(atan(n))+n]]`
-/

namespace A238598.P1862267315816798529
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - ⌊Real.arctan (n : ℝ)⌋ + (n : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A238598.P1862267315816798529

/-! ## A238598.P14777266139802597622

`ceil(sqrt(A097043(n+1)))`
-/

namespace A238598.P14777266139802597622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A097043 (n + 1) : ℝ)⌉

end

end A238598.P14777266139802597622

/-!
# A238599: Numbers k such that k+x+y is a perfect cube, where x and y are the two cubes nearest to k.

The programs for A238599, there is no canonical definition to state claims against.
-/

/-! ## A238599.P8568727267498008270

`A048865(A008574(n)*A299285(2*n))`
-/

namespace A238599.P8568727267498008270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048865 (A008574 n * A299285 (2 * n)).toNat

end

end A238599.P8568727267498008270

