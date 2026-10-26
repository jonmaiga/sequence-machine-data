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
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C012
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
import Seq.Opaque.C024
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A109700: Number of partitions of n into parts each equal to 4 mod 5.

The programs for A109700, there is no canonical definition to state claims against.
-/

/-! ## A109700.P11643562026839356311

`A046771(n)-A046783(n)`
-/

namespace A109700.P11643562026839356311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046771 n - A046783 n

end

end A109700.P11643562026839356311

/-! ## A109700.P5628127334477143230

`A046771(n)+A046783(n)*A057428(n)`
-/

namespace A109700.P5628127334477143230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046771 n + A046783 n * A057428 n

end

end A109700.P5628127334477143230

/-! ## A109700.P2777887055012170630

`A046771(n)+A046783(n)*A307445(A000040(n+1))`
-/

namespace A109700.P2777887055012170630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046771 n + A046783 n * A307445 (A000040 (n + 1)).toNat

end

end A109700.P2777887055012170630

/-! ## A109700.P780806123425751328

`∑{e}[A083329(A263141(n)), #]`
-/

namespace A109700.P780806123425751328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083329 (A263141 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A109700.P780806123425751328

/-! ## A109700.P15392165543260080395

`A001222(A083329(A263141(n)))`
-/

namespace A109700.P15392165543260080395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A083329 (A263141 n).toNat).toNat

end

end A109700.P15392165543260080395

/-!
# A109701: Number of partitions of n into parts each equal to 1 mod 6.

The programs for A109701, there is no canonical definition to state claims against.
-/

/-! ## A109701.P14020286779593995279

`∑[A277349(n)]`
-/

namespace A109701.P14020286779593995279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277349 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109701.P14020286779593995279

/-! ## A109701.P5620177026861049015

`A277349(n-char[16])+a(n-1)` with `a(0)=1`
-/

namespace A109701.P5620177026861049015
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A277349 (n - (if ∃ j, f1 j = n then 1 else 0)) + a (n - 1)

end

end A109701.P5620177026861049015

/-! ## A109701.P17856012466875652229

`A277349(n)-(a(n-1)-A005843(a(n-1)))` with `a(0)=1`
-/

namespace A109701.P17856012466875652229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A277349 n - (a (n - 1) - A005843 (a (n - 1)).toNat)

end

end A109701.P17856012466875652229

/-!
# A109702: Number of partitions of n into parts each equal to 5 mod 6.

The programs for A109702, there is no canonical definition to state claims against.
-/

/-! ## A109702.P17947610260348845092

`A109708(A195178(n)%A141214(n))`
-/

namespace A109702.P17947610260348845092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109708 (Int.tmod (A195178 n) (A141214 n)).toNat

end

end A109702.P17947610260348845092

/-! ## A109702.P6034732716437143616

`A109708(A195178(n))+A000007(A023545(n+1))`
-/

namespace A109702.P6034732716437143616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109708 (A195178 n).toNat + A000007 (A023545 (n + 1)).toNat

end

end A109702.P6034732716437143616

/-! ## A109702.P11642150532492316729

`and(A025896(n), A339036(A020639(n+1)))`
-/

namespace A109702.P11642150532492316729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A025896 n) (A339036 (A020639 (n + 1)).toNat)

end

end A109702.P11642150532492316729

/-! ## A109702.P620627292549345756

`A109708(A195178(n))^A280699(n+1)`
-/

namespace A109702.P620627292549345756
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109708 (A195178 n).toNat : ℚ) ^ (A280699 (n + 1) : ℤ)

end

end A109702.P620627292549345756

/-! ## A109702.P17863919235404630421

`and(A025896(n), A250120(A038619(n+1)))`
-/

namespace A109702.P17863919235404630421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A025896 n) (A250120 (A038619 (n + 1)).toNat)

end

end A109702.P17863919235404630421

/-!
# A109703: Number of partitions of n into parts each equal to 1 mod 7.

The programs for A109703, there is no canonical definition to state claims against.
-/

/-! ## A109703.P7767838306759516345

`A116371(A344543(n+2))%A233523(n+1)`
-/

namespace A109703.P7767838306759516345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A116371 (A344543 (n + 2)).toNat) (A233523 (n + 1))

end

end A109703.P7767838306759516345

/-! ## A109703.P3087892818383949505

`A109701(A083920(n+3)%A233523(n+1))`
-/

namespace A109703.P3087892818383949505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109701 (Int.tmod (A083920 (n + 3)) (A233523 (n + 1))).toNat

end

end A109703.P3087892818383949505

/-! ## A109703.P2012292803057783956

`A116371(A344543(n+2))%A154646(n)`
-/

namespace A109703.P2012292803057783956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A116371 (A344543 (n + 2)).toNat) (A154646 n)

end

end A109703.P2012292803057783956

/-! ## A109703.P7832237635244923519

`A116371(A344543(2*(n+1))/2)`
-/

namespace A109703.P7832237635244923519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116371 (SequenceMachineLib.roundAway ((A344543 (2 * (n + 1)) : ℚ) / 2)).toNat

end

end A109703.P7832237635244923519

/-!
# A109704: Number of partitions of n into parts each equal to 2 mod 7.

The programs for A109704, there is no canonical definition to state claims against.
-/

/-! ## A109704.P3314210433216880004

`A000045(A025821(n)%A034313(n))`
-/

namespace A109704.P3314210433216880004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (Int.tmod (A025821 n) (A034313 n)).toNat

end

end A109704.P3314210433216880004

/-! ## A109704.P15591878271846329644

`A004525(A029238(n)%A057025(n))`
-/

namespace A109704.P15591878271846329644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (Int.tmod (A029238 n) (A057025 n)).toNat

end

end A109704.P15591878271846329644

/-! ## A109704.P9338636170494250764

`A028950(A029153(n)*A339368(n))`
-/

namespace A109704.P9338636170494250764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028950 (A029153 n * A339368 n).toNat

end

end A109704.P9338636170494250764

/-! ## A109704.P5099478845954842378

`A059802(n+1)%A344087(A029223(n))`
-/

namespace A109704.P5099478845954842378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A059802 (n + 1)) (A344087 (A029223 n).toNat)

end

end A109704.P5099478845954842378

/-! ## A109704.P8169838920848695352

`A025865(n)^A025891(n)^A236112(n+1)`
-/

namespace A109704.P8169838920848695352
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A025865 n : ℝ) ^ ((A025891 n : ℚ) ^ (A236112 (n + 1) : ℤ) : ℝ)

end

end A109704.P8169838920848695352

/-!
# A109705: Number of partitions of n into parts each equal to 3 mod 7.

The programs for A109705, there is no canonical definition to state claims against.
-/

/-! ## A109705.P17117735245114057546

`A000120(A109708(2*n)^2^val(n+1, 2))`
-/

namespace A109705.P17117735245114057546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A109708 (2 * n) ^ 2 ^ SequenceMachineLib.valuation (n + 1) 2).toNat

end

end A109705.P17117735245114057546

/-! ## A109705.P15850758837968776997

`A000045(A109708(2*n))^A038243(n)`
-/

namespace A109705.P15850758837968776997
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000045 (A109708 (2 * n)).toNat : ℚ) ^ (A038243 n : ℤ)

end

end A109705.P15850758837968776997

/-! ## A109705.P11757681951221105181

`A354168(n+3)%A286622(A239928(n))`
-/

namespace A109705.P11757681951221105181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A354168 (n + 3)) (A286622 (A239928 n).toNat)

end

end A109705.P11757681951221105181

/-! ## A109705.P15458052676423286197

`A000045(A109708(2*n))^A007318(n)²`
-/

namespace A109705.P15458052676423286197
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000045 (A109708 (2 * n)).toNat : ℚ) ^ (A007318 n ^ 2 : ℤ)

end

end A109705.P15458052676423286197

/-! ## A109705.P3770133371707992202

`A114749(A109708(2*n))^A008292(n+1)`
-/

namespace A109705.P3770133371707992202
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A114749 (A109708 (2 * n)).toNat : ℚ) ^ (A008292 (n + 1) : ℤ)

end

end A109705.P3770133371707992202

/-!
# A109706: Number of partitions of n into parts each equal to 4 mod 7.

The programs for A109706, there is no canonical definition to state claims against.
-/

/-! ## A109706.P5421124251404759920

`A090677(eq[A210709(n), A278929(n)])`
-/

namespace A109706.P5421124251404759920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210709 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278929 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090677 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A109706.P5421124251404759920

/-! ## A109706.P7279194424662673644

`A090677(eq[A210709(n), A279760(n)])`
-/

namespace A109706.P7279194424662673644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210709 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279760 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090677 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A109706.P7279194424662673644

/-! ## A109706.P7275226557976653681

`A267525(A353384(n+1))`
-/

namespace A109706.P7275226557976653681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267525 (A353384 (n + 1)).toNat

end

end A109706.P7275226557976653681

/-! ## A109706.P1235240036703067326

`A186718(A244862(n+2))`
-/

namespace A109706.P1235240036703067326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186718 (A244862 (n + 2)).toNat

end

end A109706.P1235240036703067326

/-! ## A109706.P5391805251312412720

`A186718(A373794(n+2))`
-/

namespace A109706.P5391805251312412720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186718 (A373794 (n + 2)).toNat

end

end A109706.P5391805251312412720

/-!
# A109707: Number of partitions of n into parts each equal to 5 mod 7.

The programs for A109707, there is no canonical definition to state claims against.
-/

/-! ## A109707.P2347873690520934460

`A001222(or(gcd(5, n), A308400(n)!))`
-/

namespace A109707.P2347873690520934460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Nat.lor (Nat.gcd 5 n) (Nat.factorial (A308400 n).toNat))

end

end A109707.P2347873690520934460

/-! ## A109707.P3207888226878133540

`A112765(A114799(n))^n`
-/

namespace A109707.P3207888226878133540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112765 (A114799 n).toNat ^ n

end

end A109707.P3207888226878133540

/-! ## A109707.P17802087629656006437

`and(1, Δ[A049283(A037167(n+1))])`
-/

namespace A109707.P17802087629656006437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049283 (A037167 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (f1 (n + 1) - f1 n)

end

end A109707.P17802087629656006437

/-! ## A109707.P11901433248202124462

`C(2, A236103(A046092(3*n+1)))`
-/

namespace A109707.P11901433248202124462
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A236103 (A046092 (3 * n + 1)).toNat).toNat

end

end A109707.P11901433248202124462

/-! ## A109707.P11172321826461630533

`A226464(A181230(n+1)+A046308(n+1))`
-/

namespace A109707.P11172321826461630533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226464 (A181230 (n + 1) + A046308 (n + 1)).toNat

end

end A109707.P11172321826461630533

/-!
# A109708: Number of partitions of n into parts each equal to 6 mod 7.

The programs for A109708, there is no canonical definition to state claims against.
-/

/-! ## A109708.P3203246128392445726

`(A243741(n+6)^A293901(n+1))%7`
-/

namespace A109708.P3203246128392445726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A243741 (n + 6) : ℚ) ^ (A293901 (n + 1) : ℤ))) 7

end

end A109708.P3203246128392445726

/-! ## A109708.P12974489649798077048

`A292262(A043310(n+1)+A024643(n))`
-/

namespace A109708.P12974489649798077048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292262 (A043310 (n + 1) + A024643 n).toNat

end

end A109708.P12974489649798077048

/-!
# A109709: Triangle in which n-th row gives the prime factors of the n-th composite number with repetition.

The programs for A109709, there is no canonical definition to state claims against.
-/

/-! ## A109709.P4675904745114502652

`p?[gcd(A002182(n+1), A027746(n+2))]`
-/

namespace A109709.P4675904745114502652
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002182 (n + 1)) (A027746 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A109709.P4675904745114502652

/-! ## A109709.P4330725712253306141

`p?[gcd(A027746(n+3), A175943(n+1))]`
-/

namespace A109709.P4330725712253306141
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A027746 (n + 3)) (A175943 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A109709.P4330725712253306141

/-! ## A109709.P18398632321289498946

`p?[gcd(A275055(n+4), A319865(n+1))]`
-/

namespace A109709.P18398632321289498946
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A275055 (n + 4)) (A319865 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A109709.P18398632321289498946

/-! ## A109709.P14972926455451339635

`p?[gcd(A000720(n+1)!, A027746(n+1))]`
-/

namespace A109709.P14972926455451339635
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Nat.factorial (A000720 (n + 1)).toNat : ℤ) (A027746 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A109709.P14972926455451339635

/-! ## A109709.P11274389062205742400

`p?[A000040(A112798(n+2))%A338006(n+1)]`
-/

namespace A109709.P11274389062205742400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (A112798 (n + 2)).toNat) (A338006 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A109709.P11274389062205742400

/-! ## A109709.P14743677895032954941

`p?[A027746(n+1)%A338006(n+1)]`
-/

namespace A109709.P14743677895032954941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A027746 (n + 1)) (A338006 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A109709.P14743677895032954941

/-! ## A109709.P2147815671141639835

`p?[A006530(A265110(n+1))%A338006(n+1)]`
-/

namespace A109709.P2147815671141639835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006530 (A265110 (n + 1)).toNat) (A338006 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A109709.P2147815671141639835

/-!
# A109710: Numbers k such that the sum of the digits of pi(k)^prime(k) is divisible by k.

The programs for A109710, there is no canonical definition to state claims against.
-/

/-! ## A109710.P10393783711788543725

`A231014(Δ[n^3])-(∑{d}[n+1, #]-(n+1))`
-/

namespace A109710.P10393783711788543725
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231014 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - (((∑ d ∈ Nat.divisors (f2 n), d : ℕ) : ℤ) - (n + 1 : ℤ))

end

end A109710.P10393783711788543725

/-!
# A109711: Numbers k such that the sum of the binary digits of k! is divisible by k.

The programs for A109711, there is no canonical definition to state claims against.
-/

/-! ## A109711.P5333246321240580624

`A003152(A299519(n+1))-A299508(n+1)`
-/

namespace A109711.P5333246321240580624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003152 (A299519 (n + 1)).toNat - A299508 (n + 1)

end

end A109711.P5333246321240580624

/-!
# A109712: UnitarySigmaUnitaryPhi(n) or USUP(n).

The programs for A109712, the canonical program `A109712.P3623470777701250285` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A109712 has offset 1).

The definition of A109712 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034448, A047994, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A109712.P3623470777701250285

`A034448(A006519(n+1))*A047994((n+1)/A006519(n+1))`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A109712

/-- `A034448(A006519(n+1))*A047994((n+1)/A006519(n+1))` -/
def P3623470777701250285.Spec : Prop :=
  ∀ n, P3623470777701250285.a n = A109712 (n + 1)

theorem P3623470777701250285.correct : P3623470777701250285.Spec := by
  intro n
  simp only [A109712, Nat.add_sub_cancel]

end A109712

/-! ## A109712.P16191708681278768365

`abs(A191414(n+1)/A328258(n+1))`
-/

namespace A109712.P16191708681278768365
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A191414 (n + 1) : ℚ) / (A328258 (n + 1) : ℚ)|

end

end A109712.P16191708681278768365

namespace A109712

/-- `abs(A191414(n+1)/A328258(n+1))` -/
def P16191708681278768365.Spec : Prop :=
  ∀ n, P16191708681278768365.a n = (A109712 (n + 1) : ℚ)

end A109712

/-! ## A109712.P6253064205533510478

`A191414(n+1)/A107749(A026741(n+1))`
-/

namespace A109712.P6253064205533510478
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A191414 (n + 1) : ℚ) / (A107749 (A026741 (n + 1)).toNat : ℚ)

end

end A109712.P6253064205533510478

namespace A109712

/-- `A191414(n+1)/A107749(A026741(n+1))` -/
def P6253064205533510478.Spec : Prop :=
  ∀ n, P6253064205533510478.a n = (A109712 (n + 1) : ℚ)

end A109712

/-! ## A109712.P3131232263419373530

`A384056(n+1)+A384056(n+1)-A047994(n+1)`
-/

namespace A109712.P3131232263419373530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384056 (n + 1) + (A384056 (n + 1) - A047994 (n + 1))

end

end A109712.P3131232263419373530

namespace A109712

/-- `A384056(n+1)+A384056(n+1)-A047994(n+1)` -/
def P3131232263419373530.Spec : Prop :=
  ∀ n, P3131232263419373530.a n = A109712 (n + 1)

end A109712

/-! ## A109712.P6657549992981359467

`A384056(2*(n+1))-A047994(n+1)`
-/

namespace A109712.P6657549992981359467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384056 (2 * (n + 1)) - A047994 (n + 1)

end

end A109712.P6657549992981359467

namespace A109712

/-- `A384056(2*(n+1))-A047994(n+1)` -/
def P6657549992981359467.Spec : Prop :=
  ∀ n, P6657549992981359467.a n = A109712 (n + 1)

end A109712

/-! ## A109712.P2160809334006435904

`A047994(4*(n+1))-(A047994(2*(n+1))+A047994(n+1))`
-/

namespace A109712.P2160809334006435904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047994 (4 * (n + 1)) - (A047994 (2 * (n + 1)) + A047994 (n + 1))

end

end A109712.P2160809334006435904

namespace A109712

/-- `A047994(4*(n+1))-(A047994(2*(n+1))+A047994(n+1))` -/
def P2160809334006435904.Spec : Prop :=
  ∀ n, P2160809334006435904.a n = A109712 (n + 1)

end A109712

/-!
# A109714: Sequence defined by a recurrence close to that of A001147.

The programs for A109714, there is no canonical definition to state claims against.
-/

/-! ## A109714.P17783114010157094788

`A141765(n*(n+3))+62%(2^val(n+1, 2))`
-/

namespace A109714.P17783114010157094788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141765 (n * (n + 3)) + ((62 % 2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℕ) : ℤ)

end

end A109714.P17783114010157094788

/-! ## A109714.P6826535508625330594

`A069861(A149061(n))`
-/

namespace A109714.P6826535508625330594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069861 (A149061 n).toNat

end

end A109714.P6826535508625330594

/-!
# A109716: 

The programs for A109716, there is no canonical definition to state claims against.
-/

/-! ## A109716.P2262789404576756489

`(A154549(n+1)/(n+1))^n`
-/

namespace A109716.P2262789404576756489
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A154549 (n + 1) : ℚ) / (n + 1 : ℚ)) ^ n

end

end A109716.P2262789404576756489

/-! ## A109716.P13754210016987842911

`∏{digits}[A002279(n), A290680(#)]`
-/

namespace A109716.P13754210016987842911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002279 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A290680 x).prod

end

end A109716.P13754210016987842911

/-! ## A109716.P4472289392236869572

`A056143(A107844(n+1))^n`
-/

namespace A109716.P4472289392236869572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056143 (A107844 (n + 1)).toNat ^ n

end

end A109716.P4472289392236869572

/-! ## A109716.P4180337927993744515

`A256077(A345485(n+1))^n`
-/

namespace A109716.P4180337927993744515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256077 (A345485 (n + 1)).toNat ^ n

end

end A109716.P4180337927993744515

/-!
# A109717: Number of unlabeled graphs with n nodes and an invertible adjacency matrix.

The programs for A109717, there is no canonical definition to state claims against.
-/

/-! ## A109717.P8611202333106599292

`Δ[A006897(n)]-A133206(n+1)`
-/

namespace A109717.P8611202333106599292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006897 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A133206 (n + 1)

end

end A109717.P8611202333106599292

/-! ## A109717.P12232093932741400177

`A000088(n+1)-A133206(n+1)`
-/

namespace A109717.P12232093932741400177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000088 (n + 1) - A133206 (n + 1)

end

end A109717.P12232093932741400177

/-! ## A109717.P723790955320452097

`A004110(n+1)-A133279(n+1)`
-/

namespace A109717.P723790955320452097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004110 (n + 1) - A133279 (n + 1)

end

end A109717.P723790955320452097

/-! ## A109717.P16970794558731621688

`Δ[A006897(n)]-(A141580(n+1)+A133279(n+1))`
-/

namespace A109717.P16970794558731621688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006897 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (A141580 (n + 1) + A133279 (n + 1))

end

end A109717.P16970794558731621688

/-! ## A109717.P8620863167575566678

`A000088(n+1)-(A141580(n+1)+A133279(n+1))`
-/

namespace A109717.P8620863167575566678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000088 (n + 1) - (A141580 (n + 1) + A133279 (n + 1))

end

end A109717.P8620863167575566678

/-!
# A109718: Periodic sequence with period {0,1,0,3}, or n^3 mod 4.

The programs for A109718, the canonical program `A109718.P2635225778201244932` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A109718 has offset 0).

The definition of A109718 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n^3)%4` (program `A109718.P2635225778201244932`, by `A109718.P2635225778201244932.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A109718.P2635225778201244932

`(n^3)%4`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A109718

/-- `(n^3)%4` -/
def P2635225778201244932.Spec : Prop :=
  ∀ n, (P2635225778201244932.a n : ℤ) = A109718 n

theorem P2635225778201244932.correct : P2635225778201244932.Spec := by
  intro n
  simp only [A109718]

end A109718

/-!
# A109719: a(n) = Sum_{k=1..floor(n/2)} H_k * (n-k)!, where H_k = Sum_{j=1..k} 1/j.

The programs for A109719, there is no canonical definition to state claims against.
-/

/-! ## A109719.P8944782395256224737

`A127788(∑[11*3^n-1])`
-/

namespace A109719.P8944782395256224737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (11 * 3 ^ n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127788 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A109719.P8944782395256224737

/-! ## A109719.P14076262433896004260

`A083382(5^n-comp[or(2, n)-1])`
-/

namespace A109719.P14076262433896004260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 2 n : ℤ) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083382 (5 ^ n - SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A109719.P14076262433896004260

/-!
# A109720: Periodic sequence {0,1,1,1,1,1,1} or n^6 mod 7.

The programs for A109720, the canonical program `A109720.P12482709261537874782` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A109720 has offset 0).

The definition of A109720 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n^6)%7` (program `A109720.P12482709261537874782`, by `A109720.P12482709261537874782.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A109720.P12482709261537874782

`(n^6)%7`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A109720

/-- `(n^6)%7` -/
def P12482709261537874782.Spec : Prop :=
  ∀ n, (P12482709261537874782.a n : ℤ) = A109720 n

theorem P12482709261537874782.correct : P12482709261537874782.Spec := by
  intro n
  simp only [A109720]

end A109720

/-!
# A109721: Number of different ways of selecting n nonempty cells in a 4 X 4 binary matrix, excluding all rotationally and symmetrically equivalent matrices.

The programs for A109721, there is no canonical definition to state claims against.
-/

/-! ## A109721.P6501005258636415587

`A054252(n+18)`
-/

namespace A109721.P6501005258636415587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054252 (n + 18)

end

end A109721.P6501005258636415587

/-!
# A109722: Sum of first 2n primes.

The programs for A109722, the canonical program `A109722.P10188503146465590831` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A109722 has offset 0).

The definition of A109722 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A109722.P10188503146465590831

`A007504(2*n)`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A109722

/-- `A007504(2*n)` -/
def P10188503146465590831.Spec : Prop :=
  ∀ n, P10188503146465590831.a n = A109722 n

theorem P10188503146465590831.correct : P10188503146465590831.Spec := by
  intro n
  simp only [A109722]

end A109722

/-! ## A109722.P17308164930206199583

`record[A007504(n)/(-1)^n]`
-/

namespace A109722.P17308164930206199583
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007504 n : ℚ) / ((-1) ^ n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A109722.P17308164930206199583

namespace A109722

/-- `record[A007504(n)/(-1)^n]` -/
def P17308164930206199583.Spec : Prop :=
  ∀ n, P17308164930206199583.a n = (A109722 n : ℚ)

end A109722

/-! ## A109722.P6837194746189387292

`record[lcm(n%2, A007504(n+1))]`
-/

namespace A109722.P6837194746189387292
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((n % 2 : ℕ) : ℤ) (A007504 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A109722.P6837194746189387292

namespace A109722

/-- `record[lcm(n%2, A007504(n+1))]` -/
def P6837194746189387292.Spec : Prop :=
  ∀ n, (P6837194746189387292.a n : ℤ) = A109722 n

end A109722

/-! ## A109722.P6870547481523968854

`record[A007504(A240828(n+1))]`
-/

namespace A109722.P6870547481523968854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (A240828 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A109722.P6870547481523968854

namespace A109722

/-- `record[A007504(A240828(n+1))]` -/
def P6870547481523968854.Spec : Prop :=
  ∀ n, P6870547481523968854.a n = A109722 n

end A109722

/-! ## A109722.P10020657612596284272

`A109723(n)-A031368(n+1)`
-/

namespace A109722.P10020657612596284272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109723 n - A031368 (n + 1)

end

end A109722.P10020657612596284272

namespace A109722

/-- `A109723(n)-A031368(n+1)` -/
def P10020657612596284272.Spec : Prop :=
  ∀ n, P10020657612596284272.a n = A109722 n

end A109722

/-! ## A109722.P13614449114384632702

`∑[A100479(n+1)]-A100479(n+1)`
-/

namespace A109722.P13614449114384632702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100479 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A100479 (n + 1)

end

end A109722.P13614449114384632702

namespace A109722

/-- `∑[A100479(n+1)]-A100479(n+1)` -/
def P13614449114384632702.Spec : Prop :=
  ∀ n, P13614449114384632702.a n = A109722 n

end A109722

/-! ## A109722.P11452631468968090330

`A166448(2*n+1)+A001223(2*n+1)`
-/

namespace A109722.P11452631468968090330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166448 (2 * n + 1) + A001223 (2 * n + 1)

end

end A109722.P11452631468968090330

namespace A109722

/-- `A166448(2*n+1)+A001223(2*n+1)` -/
def P11452631468968090330.Spec : Prop :=
  ∀ n, P11452631468968090330.a n = A109722 n

end A109722

/-! ## A109722.P289314771798200476

`A007504(A005843(n))%A095661(n)`
-/

namespace A109722.P289314771798200476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007504 (A005843 n).toNat) (A095661 n)

end

end A109722.P289314771798200476

namespace A109722

/-- `A007504(A005843(n))%A095661(n)` -/
def P289314771798200476.Spec : Prop :=
  ∀ n, P289314771798200476.a n = A109722 n

end A109722

/-! ## A109722.P14774053390943002164

`A007504(A004277(n))%A037165(n+1)`
-/

namespace A109722.P14774053390943002164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007504 (A004277 n).toNat) (A037165 (n + 1))

end

end A109722.P14774053390943002164

namespace A109722

/-- `A007504(A004277(n))%A037165(n+1)` -/
def P14774053390943002164.Spec : Prop :=
  ∀ n, P14774053390943002164.a n = A109722 n

end A109722

/-! ## A109722.P9303753474508615281

`A007504(A005843(n))+A000007(n+2)`
-/

namespace A109722.P9303753474508615281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (A005843 n).toNat + A000007 (n + 2)

end

end A109722.P9303753474508615281

namespace A109722

/-- `A007504(A005843(n))+A000007(n+2)` -/
def P9303753474508615281.Spec : Prop :=
  ∀ n, P9303753474508615281.a n = A109722 n

end A109722

/-! ## A109722.P16096239855529780711

`A262392(2*n)-2`
-/

namespace A109722.P16096239855529780711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262392 (2 * n) - 2

end

end A109722.P16096239855529780711

namespace A109722

/-- `A262392(2*n)-2` -/
def P16096239855529780711.Spec : Prop :=
  ∀ n, P16096239855529780711.a n = A109722 n

end A109722

/-! ## A109722.P2048736188618051277

`A014284(Δ[n²])-1`
-/

namespace A109722.P2048736188618051277
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014284 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - 1

end

end A109722.P2048736188618051277

namespace A109722

/-- `A014284(Δ[n²])-1` -/
def P2048736188618051277.Spec : Prop :=
  ∀ n, P2048736188618051277.a n = A109722 n

end A109722

/-! ## A109722.P3258885096091440579

`A036439(Δ[n²])-2`
-/

namespace A109722.P3258885096091440579
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036439 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - 2

end

end A109722.P3258885096091440579

namespace A109722

/-- `A036439(Δ[n²])-2` -/
def P3258885096091440579.Spec : Prop :=
  ∀ n, P3258885096091440579.a n = A109722 n

end A109722

/-! ## A109722.P7457908924876657507

`A227547(Δ[n²])-3`
-/

namespace A109722.P7457908924876657507
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227547 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - 3

end

end A109722.P7457908924876657507

namespace A109722

/-- `A227547(Δ[n²])-3` -/
def P7457908924876657507.Spec : Prop :=
  ∀ n, P7457908924876657507.a n = A109722 n

end A109722

/-! ## A109722.P4159734954629868977

`A175965(2*(n+1))-2`
-/

namespace A109722.P4159734954629868977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175965 (2 * (n + 1)) - 2

end

end A109722.P4159734954629868977

namespace A109722

/-- `A175965(2*(n+1))-2` -/
def P4159734954629868977.Spec : Prop :=
  ∀ n, P4159734954629868977.a n = A109722 n

end A109722

/-! ## A109722.P3347670959344973096

`∑[A164653(2*n+1)]-1`
-/

namespace A109722.P3347670959344973096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164653 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A109722.P3347670959344973096

namespace A109722

/-- `∑[A164653(2*n+1)]-1` -/
def P3347670959344973096.Spec : Prop :=
  ∀ n, P3347670959344973096.a n = A109722 n

end A109722

/-! ## A109722.P14660136301401029478

`A110895(2*n+1)-(2*n+1)`
-/

namespace A109722.P14660136301401029478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110895 (2 * n + 1) - (2 * n + 1 : ℤ)

end

end A109722.P14660136301401029478

namespace A109722

/-- `A110895(2*n+1)-(2*n+1)` -/
def P14660136301401029478.Spec : Prop :=
  ∀ n, P14660136301401029478.a n = A109722 n

end A109722

/-! ## A109722.P15786264170123205744

`record[(∑[A008578(n+1)]-1)*(-1)^n]`
-/

namespace A109722.P15786264170123205744
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j - 1) * (-1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A109722.P15786264170123205744

namespace A109722

/-- `record[(∑[A008578(n+1)]-1)*(-1)^n]` -/
def P15786264170123205744.Spec : Prop :=
  ∀ n, P15786264170123205744.a n = A109722 n

end A109722

/-! ## A109722.P16639861029878997962

`A109723(n)-A000040(2*n+1)`
-/

namespace A109722.P16639861029878997962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109723 n - A000040 (2 * n + 1)

end

end A109722.P16639861029878997962

namespace A109722

/-- `A109723(n)-A000040(2*n+1)` -/
def P16639861029878997962.Spec : Prop :=
  ∀ n, P16639861029878997962.a n = A109722 n

end A109722

/-! ## A109722.P9198504589620291996

`A339194(2*n+1)/A031368(n+1)`
-/

namespace A109722.P9198504589620291996
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A339194 (2 * n + 1) : ℚ) / (A031368 (n + 1) : ℚ)

end

end A109722.P9198504589620291996

namespace A109722

/-- `A339194(2*n+1)/A031368(n+1)` -/
def P9198504589620291996.Spec : Prop :=
  ∀ n, P9198504589620291996.a n = (A109722 n : ℚ)

end A109722

/-!
# A109723: Sum of the first 2n+1 primes.

The programs for A109723, the canonical program `A109723.P9563710613651025040` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A109723 has offset 0).

The definition of A109723 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A109723.P9563710613651025040

`A007504(2*n+1)`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A109723

/-- `A007504(2*n+1)` -/
def P9563710613651025040.Spec : Prop :=
  ∀ n, P9563710613651025040.a n = A109723 n

theorem P9563710613651025040.correct : P9563710613651025040.Spec := by
  intro n
  simp only [A109723]

end A109723

/-! ## A109723.P5040585823790683881

`2*A321178(n)`
-/

namespace A109723.P5040585823790683881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A321178 n

end

end A109723.P5040585823790683881

namespace A109723

/-- `2*A321178(n)` -/
def P5040585823790683881.Spec : Prop :=
  ∀ n, P5040585823790683881.a n = A109723 n

end A109723

/-! ## A109723.P11948092027527690460

`record[A007504(xor(1, n))]`
-/

namespace A109723.P11948092027527690460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (Nat.xor 1 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A109723.P11948092027527690460

namespace A109723

/-- `record[A007504(xor(1, n))]` -/
def P11948092027527690460.Spec : Prop :=
  ∀ n, P11948092027527690460.a n = A109723 n

end A109723

/-! ## A109723.P16308947855129082770

`record[A007504(n^(n%2))]`
-/

namespace A109723.P16308947855129082770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (n ^ (n % 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A109723.P16308947855129082770

namespace A109723

/-- `record[A007504(n^(n%2))]` -/
def P16308947855129082770.Spec : Prop :=
  ∀ n, P16308947855129082770.a n = A109723 n

end A109723

/-! ## A109723.P4207140057528126887

`A092163(n)+a(n-1)` with `a(0)=2`
-/

namespace A109723.P4207140057528126887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A092163 n + a (n - 1)

end

end A109723.P4207140057528126887

namespace A109723

/-- `A092163(n)+a(n-1)` -/
def P4207140057528126887.Spec : Prop :=
  ∀ n, P4207140057528126887.a n = A109723 n

end A109723

/-! ## A109723.P17266994509865790595

`2*(∑[A058296(n+1)]-1)`
-/

namespace A109723.P17266994509865790595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058296 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A109723.P17266994509865790595

namespace A109723

/-- `2*(∑[A058296(n+1)]-1)` -/
def P17266994509865790595.Spec : Prop :=
  ∀ n, P17266994509865790595.a n = A109723 n

end A109723

/-! ## A109723.P10317260474661610624

`record[A007504(and(3, n+1)+n)]`
-/

namespace A109723.P10317260474661610624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (Nat.land 3 (n + 1) + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A109723.P10317260474661610624

namespace A109723

/-- `record[A007504(and(3, n+1)+n)]` -/
def P10317260474661610624.Spec : Prop :=
  ∀ n, P10317260474661610624.a n = A109723 n

end A109723

/-! ## A109723.P9270899794932038074

`A109722(n)+A031368(n+1)`
-/

namespace A109723.P9270899794932038074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109722 n + A031368 (n + 1)

end

end A109723.P9270899794932038074

namespace A109723

/-- `A109722(n)+A031368(n+1)` -/
def P9270899794932038074.Spec : Prop :=
  ∀ n, P9270899794932038074.a n = A109723 n

end A109723

/-! ## A109723.P1218103157086902032

`record[A007504(A240828(n+1)+1)]`
-/

namespace A109723.P1218103157086902032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (A240828 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A109723.P1218103157086902032

namespace A109723

/-- `record[A007504(A240828(n+1)+1)]` -/
def P1218103157086902032.Spec : Prop :=
  ∀ n, P1218103157086902032.a n = A109723 n

end A109723

/-! ## A109723.P8500969689183701931

`∑[A011974(2*n+1)]`
-/

namespace A109723.P8500969689183701931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011974 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109723.P8500969689183701931

namespace A109723

/-- `∑[A011974(2*n+1)]` -/
def P8500969689183701931.Spec : Prop :=
  ∀ n, P8500969689183701931.a n = A109723 n

end A109723

/-! ## A109723.P10850808339820662031

`A008866(2*n)+a(n-1)` with `a(0)=2`
-/

namespace A109723.P10850808339820662031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A008866 (2 * n) + a (n - 1)

end

end A109723.P10850808339820662031

namespace A109723

/-- `A008866(2*n)+a(n-1)` -/
def P10850808339820662031.Spec : Prop :=
  ∀ n, P10850808339820662031.a n = A109723 n

end A109723

/-! ## A109723.P13787107613960771936

`A061802(2*n)-A007504(2*n)`
-/

namespace A109723.P13787107613960771936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061802 (2 * n) - A007504 (2 * n)

end

end A109723.P13787107613960771936

namespace A109723

/-- `A061802(2*n)-A007504(2*n)` -/
def P13787107613960771936.Spec : Prop :=
  ∀ n, P13787107613960771936.a n = A109723 n

end A109723

/-! ## A109723.P242066778486398101

`A237589(Δ[n²])+1`
-/

namespace A109723.P242066778486398101
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237589 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 1

end

end A109723.P242066778486398101

namespace A109723

/-- `A237589(Δ[n²])+1` -/
def P242066778486398101.Spec : Prop :=
  ∀ n, P242066778486398101.a n = A109723 n

end A109723

/-! ## A109723.P17724549584972855322

`A262392(Δ[n²])-3`
-/

namespace A109723.P17724549584972855322
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262392 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - 3

end

end A109723.P17724549584972855322

namespace A109723

/-- `A262392(Δ[n²])-3` -/
def P17724549584972855322.Spec : Prop :=
  ∀ n, P17724549584972855322.a n = A109723 n

end A109723

/-! ## A109723.P8558749107640317351

`A362419(Δ[n²])/2`
-/

namespace A109723.P8558749107640317351
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A362419 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 2

end

end A109723.P8558749107640317351

namespace A109723

/-- `A362419(Δ[n²])/2` -/
def P8558749107640317351.Spec : Prop :=
  ∀ n, P8558749107640317351.a n = (A109723 n : ℚ)

end A109723

/-! ## A109723.P3873390781592838612

`A014284(2*(n+1))-1`
-/

namespace A109723.P3873390781592838612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014284 (2 * (n + 1)) - 1

end

end A109723.P3873390781592838612

namespace A109723

/-- `A014284(2*(n+1))-1` -/
def P3873390781592838612.Spec : Prop :=
  ∀ n, P3873390781592838612.a n = A109723 n

end A109723

/-! ## A109723.P4011754604498043103

`A036439(2*(n+1))-2`
-/

namespace A109723.P4011754604498043103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036439 (2 * (n + 1)) - 2

end

end A109723.P4011754604498043103

namespace A109723

/-- `A036439(2*(n+1))-2` -/
def P4011754604498043103.Spec : Prop :=
  ∀ n, P4011754604498043103.a n = A109723 n

end A109723

/-! ## A109723.P17740835800747765118

`A227547(2*(n+1))-3`
-/

namespace A109723.P17740835800747765118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227547 (2 * (n + 1)) - 3

end

end A109723.P17740835800747765118

namespace A109723

/-- `A227547(2*(n+1))-3` -/
def P17740835800747765118.Spec : Prop :=
  ∀ n, P17740835800747765118.a n = A109723 n

end A109723

/-! ## A109723.P4977985588909100357

`ceil(sqrt(A092780(2*n+1)))`
-/

namespace A109723.P4977985588909100357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A092780 (2 * n + 1) : ℝ)⌉

end

end A109723.P4977985588909100357

namespace A109723

/-- `ceil(sqrt(A092780(2*n+1)))` -/
def P4977985588909100357.Spec : Prop :=
  ∀ n, P4977985588909100357.a n = A109723 n

end A109723

/-! ## A109723.P1339372134210937346

`A101301(2*n+1)+2*n+1`
-/

namespace A109723.P1339372134210937346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101301 (2 * n + 1) + (2 * n + 1 : ℤ)

end

end A109723.P1339372134210937346

namespace A109723

/-- `A101301(2*n+1)+2*n+1` -/
def P1339372134210937346.Spec : Prop :=
  ∀ n, P1339372134210937346.a n = A109723 n

theorem P1339372134210937346.correct : P1339372134210937346.Spec := by
  intro n
  simp only [A109723, Nat.add_sub_cancel, A109723.P1339372134210937346.a, A109723.P9563710613651025040.a, A007504, A007504.P14310834286015847203.a, A101301, A101301.P12618163721935666644.a, A014284, A014284.P18183547548072881472.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A109723

/-!
# A109724: Sum of the first n^2 primes.

The programs for A109724, the canonical program `A109724.P13324119024672289363` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A109724 has offset 0).

The definition of A109724 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A109724.P13324119024672289363

`∑[A109725(n)]-A109725(n)`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A109724

/-- `∑[A109725(n)]-A109725(n)` -/
def P13324119024672289363.Spec : Prop :=
  ∀ n, P13324119024672289363.a n = A109724 n

theorem P13324119024672289363.correct : P13324119024672289363.Spec := by
  intro n
  simp only [A109724]

end A109724

/-! ## A109724.P12866696330037485932

`A007504(n²)`
-/

namespace A109724.P12866696330037485932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (n ^ 2)

end

end A109724.P12866696330037485932

namespace A109724

/-- `A007504(n²)` -/
def P12866696330037485932.Spec : Prop :=
  ∀ n, P12866696330037485932.a n = A109724 n

end A109724

/-! ## A109724.P12944360003091088259

`and(-1, A007504(A000290(n)))`
-/

namespace A109724.P12944360003091088259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A007504 (A000290 n).toNat)

end

end A109724.P12944360003091088259

namespace A109724

/-- `and(-1, A007504(A000290(n)))` -/
def P12944360003091088259.Spec : Prop :=
  ∀ n, P12944360003091088259.a n = A109724 n

end A109724

/-! ## A109724.P272428658853246628

`record[A007504(A289506(n+1))]`
-/

namespace A109724.P272428658853246628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (A289506 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A109724.P272428658853246628

namespace A109724

/-- `record[A007504(A289506(n+1))]` -/
def P272428658853246628.Spec : Prop :=
  ∀ n, P272428658853246628.a n = A109724 n

end A109724

/-! ## A109724.P5871857293609625480

`A007504(n*n)%A098562(n+1)`
-/

namespace A109724.P5871857293609625480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007504 (n * n)) (A098562 (n + 1))

end

end A109724.P5871857293609625480

namespace A109724

/-- `A007504(n*n)%A098562(n+1)` -/
def P5871857293609625480.Spec : Prop :=
  ∀ n, P5871857293609625480.a n = A109724 n

end A109724

/-! ## A109724.P13928259535042506994

`A007504(A000290(n))%A011245(n)`
-/

namespace A109724.P13928259535042506994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007504 (A000290 n).toNat) (A011245 n)

end

end A109724.P13928259535042506994

namespace A109724

/-- `A007504(A000290(n))%A011245(n)` -/
def P13928259535042506994.Spec : Prop :=
  ∀ n, P13928259535042506994.a n = A109724 n

end A109724

/-! ## A109724.P6438048616155348249

`lcm(A007504(A000290(n)), A020985(n))`
-/

namespace A109724.P6438048616155348249
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A007504 (A000290 n).toNat) (A020985 n)

end

end A109724.P6438048616155348249

namespace A109724

/-- `lcm(A007504(A000290(n)), A020985(n))` -/
def P6438048616155348249.Spec : Prop :=
  ∀ n, (P6438048616155348249.a n : ℤ) = A109724 n

end A109724

/-! ## A109724.P17187365189236447170

`A007504(A000290(n))+A000007(n+2)`
-/

namespace A109724.P17187365189236447170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (A000290 n).toNat + A000007 (n + 2)

end

end A109724.P17187365189236447170

namespace A109724

/-- `A007504(A000290(n))+A000007(n+2)` -/
def P17187365189236447170.Spec : Prop :=
  ∀ n, P17187365189236447170.a n = A109724 n

end A109724

/-! ## A109724.P15814179679469846744

`A007504(A000290(n))+A002378(n)%2`
-/

namespace A109724.P15814179679469846744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (A000290 n).toNat + Int.tmod (A002378 n) 2

end

end A109724.P15814179679469846744

namespace A109724

/-- `A007504(A000290(n))+A002378(n)%2` -/
def P15814179679469846744.Spec : Prop :=
  ∀ n, P15814179679469846744.a n = A109724 n

end A109724

/-! ## A109724.P7317881412245192287

`A015073(2*n+1)+A007504(A000290(n))`
-/

namespace A109724.P7317881412245192287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015073 (2 * n + 1) + A007504 (A000290 n).toNat

end

end A109724.P7317881412245192287

namespace A109724

/-- `A015073(2*n+1)+A007504(A000290(n))` -/
def P7317881412245192287.Spec : Prop :=
  ∀ n, P7317881412245192287.a n = A109724 n

end A109724

/-! ## A109724.P2984780608578367319

`A262392(n²)-A010693(n)`
-/

namespace A109724.P2984780608578367319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262392 (n ^ 2) - A010693 n

end

end A109724.P2984780608578367319

namespace A109724

/-- `A262392(n²)-A010693(n)` -/
def P2984780608578367319.Spec : Prop :=
  ∀ n, P2984780608578367319.a n = A109724 n

end A109724

/-! ## A109724.P7488574869462055598

`record[char[A000290(n)]*A007504(n)]`
-/

namespace A109724.P7488574869462055598
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A109724.P7488574869462055598

namespace A109724

/-- `record[char[A000290(n)]*A007504(n)]` -/
def P7488574869462055598.Spec : Prop :=
  ∀ n, P7488574869462055598.a n = A109724 n

end A109724

/-!
# A109725: Divide primes in groups with 2n+1 elements and add together.

The programs for A109725, the canonical program `A109725.P13056055185361958747` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A109725 has offset 0).

The definition of A109725 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A109725.P2508196061197873226

`A109724(n+1)-A109724(n)`
-/

namespace A109725.P2508196061197873226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109724 (n + 1) - A109724 n

end

end A109725.P2508196061197873226

namespace A109725

/-- `A109724(n+1)-A109724(n)` -/
def P2508196061197873226.Spec : Prop :=
  ∀ n, P2508196061197873226.a n = A109725 n

end A109725

/-! ## A109725.P13056055185361958747

`A007504((n+1)²)-A007504(n²)`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A109725

/-- `A007504((n+1)²)-A007504(n²)` -/
def P13056055185361958747.Spec : Prop :=
  ∀ n, P13056055185361958747.a n = A109725 n

theorem P13056055185361958747.correct : P13056055185361958747.Spec := by
  intro n
  simp only [A109725]

end A109725

/-! ## A109725.P1299846061905013882

`Δ[A109724(n)]`
-/

namespace A109725.P1299846061905013882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109724 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A109725.P1299846061905013882

namespace A109725

/-- `Δ[A109724(n)]` -/
def P1299846061905013882.Spec : Prop :=
  ∀ n, P1299846061905013882.a n = A109725 n

end A109725

/-! ## A109725.P17177427083440758810

`Δ[A007504(n²)]`
-/

namespace A109725.P17177427083440758810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A109725.P17177427083440758810

namespace A109725

/-- `Δ[A007504(n²)]` -/
def P17177427083440758810.Spec : Prop :=
  ∀ n, P17177427083440758810.a n = A109725 n

theorem P17177427083440758810.correct : P17177427083440758810.Spec := by
  intro n
  simp only [A109725, Nat.add_sub_cancel, A109725.P17177427083440758810.f1, A109725.P17177427083440758810.a, A109725.P13056055185361958747.a, SequenceMachineLib.memo_apply]

end A109725

/-! ## A109725.P5901101163429816699

`abs(Δ[A007504(A000290(n))])`
-/

namespace A109725.P5901101163429816699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (A000290 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A109725.P5901101163429816699

namespace A109725

/-- `abs(Δ[A007504(A000290(n))])` -/
def P5901101163429816699.Spec : Prop :=
  ∀ n, P5901101163429816699.a n = A109725 n

end A109725

/-! ## A109725.P17382325697071073765

`Δ[A014284(n²+1)]`
-/

namespace A109725.P17382325697071073765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014284 (n ^ 2 + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A109725.P17382325697071073765

namespace A109725

/-- `Δ[A014284(n²+1)]` -/
def P17382325697071073765.Spec : Prop :=
  ∀ n, P17382325697071073765.a n = A109725 n

theorem P17382325697071073765.correct : P17382325697071073765.Spec := by
  intro n
  simp only [A109725, Nat.add_sub_cancel, A109725.P17382325697071073765.f1, A109725.P17382325697071073765.a, A109725.P13056055185361958747.a, A007504, A007504.P14310834286015847203.a, A014284, A014284.P18183547548072881472.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A109725

/-! ## A109725.P942056776407868324

`Δ[A036439(n²+1)]`
-/

namespace A109725.P942056776407868324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036439 (n ^ 2 + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A109725.P942056776407868324

namespace A109725

/-- `Δ[A036439(n²+1)]` -/
def P942056776407868324.Spec : Prop :=
  ∀ n, P942056776407868324.a n = A109725 n

end A109725

/-! ## A109725.P10804195108789840507

`Δ[A227547(n²+1)]`
-/

namespace A109725.P10804195108789840507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227547 (n ^ 2 + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A109725.P10804195108789840507

namespace A109725

/-- `Δ[A227547(n²+1)]` -/
def P10804195108789840507.Spec : Prop :=
  ∀ n, P10804195108789840507.a n = A109725 n

end A109725

/-! ## A109725.P14887077850417966763

`Δ[A175965(n²+2)]`
-/

namespace A109725.P14887077850417966763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175965 (n ^ 2 + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A109725.P14887077850417966763

namespace A109725

/-- `Δ[A175965(n²+2)]` -/
def P14887077850417966763.Spec : Prop :=
  ∀ n, P14887077850417966763.a n = A109725 n

end A109725

/-!
# A109726: Divide primes in groups with 2n elements and add together.

The programs for A109726, the canonical program `A109726.P14787538916744219353` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A109726 has offset 0).

The definition of A109726 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A109726.P14787538916744219353

`A007504(n*(n+1))-A007504(n*(n-1))`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A109726

/-- `A007504(n*(n+1))-A007504(n*(n-1))` -/
def P14787538916744219353.Spec : Prop :=
  ∀ n, P14787538916744219353.a n = A109726 n

theorem P14787538916744219353.correct : P14787538916744219353.Spec := by
  intro n
  simp only [A109726]

end A109726

/-! ## A109726.P5195291388789849625

`A322420(n)-A322420(A289207(n+1))`
-/

namespace A109726.P5195291388789849625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322420 n - A322420 (A289207 (n + 1)).toNat

end

end A109726.P5195291388789849625

namespace A109726

/-- `A322420(n)-A322420(A289207(n+1))` -/
def P5195291388789849625.Spec : Prop :=
  ∀ n, P5195291388789849625.a n = A109726 n

end A109726

/-! ## A109726.P247706789786124002

`Δ[A322420(A289207(n+1))]`
-/

namespace A109726.P247706789786124002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322420 (A289207 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A109726.P247706789786124002

namespace A109726

/-- `Δ[A322420(A289207(n+1))]` -/
def P247706789786124002.Spec : Prop :=
  ∀ n, P247706789786124002.a n = A109726 n

end A109726

/-! ## A109726.P16091606105054795257

`Δ[A322420(A289207(2*n)/2)]`
-/

namespace A109726.P16091606105054795257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322420 (SequenceMachineLib.roundAway ((A289207 (2 * n) : ℚ) / 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A109726.P16091606105054795257

namespace A109726

/-- `Δ[A322420(A289207(2*n)/2)]` -/
def P16091606105054795257.Spec : Prop :=
  ∀ n, P16091606105054795257.a n = A109726 n

end A109726

/-! ## A109726.P10703615467538959629

`A322420(n)-A007504(n²-n)`
-/

namespace A109726.P10703615467538959629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322420 n - A007504 (n ^ 2 - n)

end

end A109726.P10703615467538959629

namespace A109726

/-- `A322420(n)-A007504(n²-n)` -/
def P10703615467538959629.Spec : Prop :=
  ∀ n, P10703615467538959629.a n = A109726 n

end A109726

/-! ## A109726.P7959838838933902668

`Δ[A007504(n²-n)]`
-/

namespace A109726.P7959838838933902668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (n ^ 2 - n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A109726.P7959838838933902668

namespace A109726

/-- `Δ[A007504(n²-n)]` -/
def P7959838838933902668.Spec : Prop :=
  ∀ n, P7959838838933902668.a n = A109726 n

end A109726

/-! ## A109726.P10402762359839829695

`abs(Δ[A007504(2*C(n, 2))])`
-/

namespace A109726.P10402762359839829695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (2 * Nat.choose n 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A109726.P10402762359839829695

namespace A109726

/-- `abs(Δ[A007504(2*C(n, 2))])` -/
def P10402762359839829695.Spec : Prop :=
  ∀ n, P10402762359839829695.a n = A109726 n

end A109726

/-! ## A109726.P15502281031000026446

`abs(Δ[A007504(n*(n-1))])`
-/

namespace A109726.P15502281031000026446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 ((n : ℤ) * ((n : ℤ) - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A109726.P15502281031000026446

namespace A109726

/-- `abs(Δ[A007504(n*(n-1))])` -/
def P15502281031000026446.Spec : Prop :=
  ∀ n, P15502281031000026446.a n = A109726 n

end A109726

/-! ## A109726.P7751561414496149081

`A322420(n)-A109722(C(n, 2))`
-/

namespace A109726.P7751561414496149081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322420 n - A109722 (Nat.choose n 2)

end

end A109726.P7751561414496149081

namespace A109726

/-- `A322420(n)-A109722(C(n, 2))` -/
def P7751561414496149081.Spec : Prop :=
  ∀ n, P7751561414496149081.a n = A109726 n

end A109726

/-! ## A109726.P3530013013638856586

`A322420(n)-A109722(A161680(n))`
-/

namespace A109726.P3530013013638856586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322420 n - A109722 (A161680 n).toNat

end

end A109726.P3530013013638856586

namespace A109726

/-- `A322420(n)-A109722(A161680(n))` -/
def P3530013013638856586.Spec : Prop :=
  ∀ n, P3530013013638856586.a n = A109726 n

end A109726

/-! ## A109726.P17477636733973854698

`Δ[A109722(C(n, 2))]`
-/

namespace A109726.P17477636733973854698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109722 (Nat.choose n 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A109726.P17477636733973854698

namespace A109726

/-- `Δ[A109722(C(n, 2))]` -/
def P17477636733973854698.Spec : Prop :=
  ∀ n, P17477636733973854698.a n = A109726 n

end A109726

/-! ## A109726.P6602988663645254861

`Δ[A109722(∑[n]-n)]`
-/

namespace A109726.P6602988663645254861
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109722 (∑ j ∈ Finset.range (n + 1), f2 j - n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A109726.P6602988663645254861

namespace A109726

/-- `Δ[A109722(∑[n]-n)]` -/
def P6602988663645254861.Spec : Prop :=
  ∀ n, P6602988663645254861.a n = A109726 n

end A109726

/-! ## A109726.P12023769627776910314

`Δ[A262392(n²-n)]`
-/

namespace A109726.P12023769627776910314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262392 (n ^ 2 - n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A109726.P12023769627776910314

namespace A109726

/-- `Δ[A262392(n²-n)]` -/
def P12023769627776910314.Spec : Prop :=
  ∀ n, P12023769627776910314.a n = A109726 n

end A109726

/-! ## A109726.P2411016189356441502

`Δ[A014284((1-n)²+n)]`
-/

namespace A109726.P2411016189356441502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014284 ((1 - (n : ℤ)) ^ 2 + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A109726.P2411016189356441502

namespace A109726

/-- `Δ[A014284((1-n)²+n)]` -/
def P2411016189356441502.Spec : Prop :=
  ∀ n, P2411016189356441502.a n = A109726 n

end A109726

/-! ## A109726.P7627631534055616680

`Δ[A036439((1-n)²+n)]`
-/

namespace A109726.P7627631534055616680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036439 ((1 - (n : ℤ)) ^ 2 + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A109726.P7627631534055616680

namespace A109726

/-- `Δ[A036439((1-n)²+n)]` -/
def P7627631534055616680.Spec : Prop :=
  ∀ n, P7627631534055616680.a n = A109726 n

end A109726

/-! ## A109726.P14651397924360876178

`Δ[A175965(n²+2-n)]`
-/

namespace A109726.P14651397924360876178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175965 ((n ^ 2 : ℤ) + (2 - (n : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A109726.P14651397924360876178

namespace A109726

/-- `Δ[A175965(n²+2-n)]` -/
def P14651397924360876178.Spec : Prop :=
  ∀ n, P14651397924360876178.a n = A109726 n

end A109726

/-!
# A109728: A self-describing sequence.

The programs for A109728, there is no canonical definition to state claims against.
-/

/-! ## A109728.P460277015849865009

`A008728(ceil(n/2)%A028771(n+1))`
-/

namespace A109728.P460277015849865009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008728 (Int.tmod ⌈(n : ℚ) / 2⌉ (A028771 (n + 1))).toNat

end

end A109728.P460277015849865009

/-! ## A109728.P13563496502061125124

`A008728(∑[A100910(A077957(n))])`
-/

namespace A109728.P13563496502061125124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100910 (A077957 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008728 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A109728.P13563496502061125124

/-! ## A109728.P3091061792567529026

`A122618(∑[A010054(A077957(n))])`
-/

namespace A109728.P3091061792567529026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (A077957 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122618 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A109728.P3091061792567529026

/-! ## A109728.P1187304251672194173

`A122667(A060546(n))`
-/

namespace A109728.P1187304251672194173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122667 (A060546 n).toNat

end

end A109728.P1187304251672194173

/-! ## A109728.P851761983089698439

`A122667(A016116(n+1))`
-/

namespace A109728.P851761983089698439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122667 (A016116 (n + 1)).toNat

end

end A109728.P851761983089698439

/-!
# A109730: Lesser of twin admirable numbers: k such that k and k+2 are both admirable numbers.

The programs for A109730, there is no canonical definition to state claims against.
-/

/-! ## A109730.P15537180932792472409

`∩[A111592(n+1)-2, A111592(n+1)]`
-/

namespace A109730.P15537180932792472409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111592 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111592 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A109730.P15537180932792472409

/-! ## A109730.P12505267389616866319

`A111592(eq[2, A111592(n+2)-A111592(n+1)]+1)`
-/

namespace A109730.P12505267389616866319
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111592 (n + 2) - A111592 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111592 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A109730.P12505267389616866319

/-! ## A109730.P6356460883642605315

`∩[A111592(n+1), A289207(A111592(n+1))]`
-/

namespace A109730.P6356460883642605315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111592 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A111592 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A109730.P6356460883642605315

/-!
# A109731: a(n) = - 4*a(n-2) - a(n-4), a(0) = 1, a(1) = -4, a(2) = -6, a(3) = 15.

The programs for A109731, the canonical program `A109731.P3693605616516768134` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A109731 has offset 0).

The definition of A109731 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `-4*a(n-2)-a(n-4)` (program `A109731.P3693605616516768134`, by `A109731.P3693605616516768134.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A109731.P3693605616516768134

`-4*a(n-2)-a(n-4)` with `a(0)=1, a(1)=-4, a(2)=-6, a(3)=15`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A109731

/-- `-4*a(n-2)-a(n-4)` -/
def P3693605616516768134.Spec : Prop :=
  ∀ n, P3693605616516768134.a n = A109731 n

theorem P3693605616516768134.correct : P3693605616516768134.Spec := by
  intro n
  simp only [A109731]

end A109731

/-! ## A109731.P2643718847474170271

`ogf((1-4x-2x^2-x^3)/(1+4x^2+x^4))`
-/

namespace A109731.P2643718847474170271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -4, -2, -1] [1, 0, 4, 0, 1] n

end

end A109731.P2643718847474170271

namespace A109731

/-- `ogf((1-4x-2x^2-x^3)/(1+4x^2+x^4))` -/
def P2643718847474170271.Spec : Prop :=
  ∀ n, P2643718847474170271.a n = A109731 n

end A109731

/-! ## A109731.P14207539080526333160

`A181983(A143643(n+1)+A002530(n))`
-/

namespace A109731.P14207539080526333160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181983 (A143643 (n + 1) + A002530 n).toNat

end

end A109731.P14207539080526333160

namespace A109731

/-- `A181983(A143643(n+1)+A002530(n))` -/
def P14207539080526333160.Spec : Prop :=
  ∀ n, P14207539080526333160.a n = A109731 n

end A109731

/-!
# A109733: Sequence is its own base-10 ASCII representation.

The programs for A109733, there is no canonical definition to state claims against.
-/

/-! ## A109733.P12326022022210534271

`A109648(A000695(n))`
-/

namespace A109733.P12326022022210534271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109648 (A000695 n).toNat

end

end A109733.P12326022022210534271

/-! ## A109733.P12582120884383865938

`A109648(A054238(∑[n]))`
-/

namespace A109733.P12582120884383865938
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109648 (A054238 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A109733.P12582120884383865938

/-!
# A109735: Partial sums of A109890.

The programs for A109735, there is no canonical definition to state claims against.
-/

/-! ## A109735.P3822745255602597892

`∑[A109890(n+1)]`
-/

namespace A109735.P3822745255602597892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109890 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109735.P3822745255602597892

/-! ## A109735.P12737493031990057457

`A094339(n+1)+a(n-1)` with `a(0)=1, a(1)=3`
-/

namespace A109735.P12737493031990057457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  A094339 (n + 1) + a (n - 1)

end

end A109735.P12737493031990057457

/-! ## A109735.P14884705533061727382

`∑[A094339(A181440(n+1))]`
-/

namespace A109735.P14884705533061727382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094339 (A181440 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109735.P14884705533061727382

/-! ## A109735.P10199989221635648304

`∑[A094339(n+1)]-A164272(n)%2`
-/

namespace A109735.P10199989221635648304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094339 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - Int.tmod (A164272 n) 2

end

end A109735.P10199989221635648304

/-! ## A109735.P5526241663247777060

`∑[A094339(n+1)]-A285349(n)%2`
-/

namespace A109735.P5526241663247777060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094339 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - Int.tmod (A285349 n) 2

end

end A109735.P5526241663247777060

/-! ## A109735.P7309023477183939009

`∑[A094339(n+1)]^(A000040(n+1)%2)`
-/

namespace A109735.P7309023477183939009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094339 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) ^ (Int.tmod (A000040 (n + 1)) 2 : ℤ)

end

end A109735.P7309023477183939009

/-! ## A109735.P6314559253061058259

`∑[A094339(n+1)+A109736(n+1)-A094341(n+1)]`
-/

namespace A109735.P6314559253061058259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094339 (n + 1) + (A109736 (n + 1) - A094341 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109735.P6314559253061058259

/-! ## A109735.P15971034832414881008

`∑[A109736(A094339(A094339(n+1)))]`
-/

namespace A109735.P15971034832414881008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109736 (A094339 (A094339 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109735.P15971034832414881008

/-!
# A109736: Where n appears in A109890.

The programs for A109736, there is no canonical definition to state claims against.
-/

/-! ## A109736.P10812286739258199631

`A094341(round(cos(4)^n)+n+1)`
-/

namespace A109736.P10812286739258199631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094341 (SequenceMachineLib.roundAway (Real.cos (4 : ℝ) ^ n) + (n + 1 : ℤ)).toNat

end

end A109736.P10812286739258199631

/-! ## A109736.P10633933771069167054

`A181440(A094341(n+1))`
-/

namespace A109736.P10633933771069167054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181440 (A094341 (n + 1)).toNat

end

end A109736.P10633933771069167054

/-! ## A109736.P983372228218953709

`A094341(A240354(n)+1+n)`
-/

namespace A109736.P983372228218953709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094341 (A240354 n + 1 + (n : ℤ)).toNat

end

end A109736.P983372228218953709

/-! ## A109736.P14815138641376721404

`A094341(A240356(n)+1+n)`
-/

namespace A109736.P14815138641376721404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094341 (A240356 n + 1 + (n : ℤ)).toNat

end

end A109736.P14815138641376721404

/-! ## A109736.P8057231421828037198

`A094341(A181440(n-log2(1/2)))`
-/

namespace A109736.P8057231421828037198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094341 (A181440 (SequenceMachineLib.roundAway ((n : ℝ) - Real.logb 2 ((1 : ℚ) / 2 : ℝ))).toNat).toNat

end

end A109736.P8057231421828037198

/-! ## A109736.P11998948122183354104

`abs(A094341(n+1)-A169585(n))`
-/

namespace A109736.P11998948122183354104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A094341 (n + 1) - A169585 n|

end

end A109736.P11998948122183354104

/-! ## A109736.P1767988544945075841

`A094341(n+1)-A154955(n+1)`
-/

namespace A109736.P1767988544945075841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094341 (n + 1) - A154955 (n + 1)

end

end A109736.P1767988544945075841

/-! ## A109736.P10285377350111316182

`A094341(n+1)-A008683(A004166(n))`
-/

namespace A109736.P10285377350111316182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094341 (n + 1) - A008683 (A004166 n).toNat

end

end A109736.P10285377350111316182

/-! ## A109736.P18023654457715488164

`A094341(n+1)-A008683(A006501(n))`
-/

namespace A109736.P18023654457715488164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094341 (n + 1) - A008683 (A006501 n).toNat

end

end A109736.P18023654457715488164

/-! ## A109736.P10705807556490977440

`A094341(n+1)-A008683(A062383(n))`
-/

namespace A109736.P10705807556490977440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094341 (n + 1) - A008683 (A062383 n).toNat

end

end A109736.P10705807556490977440

/-!
# A109738: a(0)=1; for n>0, a(n) = a(n-1) S prime(n), where S is + if n is odd and a(n-1) is even, x if n is odd and a(n-1) is odd, - if n is even and a(n-1) is even, + if n is even and a(n-1) is odd.

The programs for A109738, there is no canonical definition to state claims against.
-/

/-! ## A109738.P10575475744428763503

`∑[A000040(n-and(2, a(n-1)²))]` with `a(0)=1, a(1)=1, a(2)=-3, a(3)=-4`
-/

namespace A109738.P10575475744428763503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1, -3, -4] fun n f1 =>
  A000040 ((n : ℤ) - Int.land 2 (f1 (n - 1) ^ 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109738.P10575475744428763503

/-! ## A109738.P9203148739141131734

`A014284(n+1)-16%A323362(n)`
-/

namespace A109738.P9203148739141131734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014284 (n + 1) - Int.tmod 16 (A323362 n)

end

end A109738.P9203148739141131734

/-!
# A109739: Records in A109734.

The programs for A109739, there is no canonical definition to state claims against.
-/

/-! ## A109739.P7149006446790747920

`record[A109734(n)]`
-/

namespace A109739.P7149006446790747920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109734 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A109739.P7149006446790747920

/-! ## A109739.P884484271785329661

`A109734(A109740(n+1)-1)`
-/

namespace A109739.P884484271785329661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109734 (A109740 (n + 1) - 1).toNat

end

end A109739.P884484271785329661

/-! ## A109739.P15969775898949952535

`A109734(lt[A333224(n), 2])`
-/

namespace A109739.P15969775898949952535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333224 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109734 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A109739.P15969775898949952535

/-! ## A109739.P4884161150487100391

`A109734(lt[A333627(n), 2])`
-/

namespace A109739.P4884161150487100391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333627 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109734 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A109739.P4884161150487100391

/-!
# A109740: Where records appear in A109734.

The programs for A109740, there is no canonical definition to state claims against.
-/

/-! ## A109740.P8982688799025937568

`ceil(A109732(A109739(n+1))/2)`
-/

namespace A109740.P8982688799025937568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A109732 (A109739 (n + 1)).toNat : ℚ) / 2⌉

end

end A109740.P8982688799025937568

/-! ## A109740.P4517363769454136811

`eq[and(8, A245186(n)), A000007(n)]`
-/

namespace A109740.P4517363769454136811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 8 (A245186 n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A109740.P4517363769454136811

/-! ## A109740.P12206862498024771160

`record[A346872(n+1)%A052413(2*(n+2))]`
-/

namespace A109740.P12206862498024771160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A346872 (n + 1)) (A052413 (2 * (n + 2)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A109740.P12206862498024771160

/-! ## A109740.P16000778743537369835

`eq[A007305(n), A070914(A051168(n))]`
-/

namespace A109740.P16000778743537369835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007305 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070914 (A051168 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A109740.P16000778743537369835

/-! ## A109740.P7711026297288435086

`eq[A179868(n), A218580(A245186(n))]`
-/

namespace A109740.P7711026297288435086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179868 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218580 (A245186 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A109740.P7711026297288435086

/-!
# A109742: a(n) = d(n-1) + d(n-2) + (n-1)[d(n-2) + 2d(n-3) + d(n-4)], where d(n), the derangement numbers, are given in A000166. (Let d(n) = 0 if n < 0.)

The programs for A109742, there is no canonical definition to state claims against.
-/

/-! ## A109742.P12652979593143089879

`A130773(A020097(n))-A000007(n)`
-/

namespace A109742.P12652979593143089879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130773 (A020097 n).toNat - A000007 n

end

end A109742.P12652979593143089879

/-! ## A109742.P14776180385500937921

`A130773(A020097(n))-A091536(n)`
-/

namespace A109742.P14776180385500937921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130773 (A020097 n).toNat - A091536 n

end

end A109742.P14776180385500937921

/-! ## A109742.P11441455248057821067

`A130773(A020097(n))^A178334(n)`
-/

namespace A109742.P11441455248057821067
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A130773 (A020097 n).toNat : ℚ) ^ (A178334 n : ℤ)

end

end A109742.P11441455248057821067

/-! ## A109742.P553960002246553983

`A004280(A069903(n+1)+A020097(n))`
-/

namespace A109742.P553960002246553983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004280 (A069903 (n + 1) + A020097 n).toNat

end

end A109742.P553960002246553983

/-!
# A109743: a(2)=1; for n>2, a(n) = A109742(n)/3.

The programs for A109743, there is no canonical definition to state claims against.
-/

/-! ## A109743.P4190755659371200020

`floor(A109742(n+3)/3)`
-/

namespace A109743.P4190755659371200020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A109742 (n + 3) : ℚ) / 3⌋

end

end A109743.P4190755659371200020

/-! ## A109743.P266170353583142216

`A004396(record[A020052(n)+1])`
-/

namespace A109743.P266170353583142216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020052 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A109743.P266170353583142216

/-!
# A109745: Admirable numbers that set a new record for largest subtracted divisor.

The programs for A109745, there is no canonical definition to state claims against.
-/

/-! ## A109745.P1848090685872680816

`A071407(xor(11, C(n+2, 2)*C(n+7, 7)))`
-/

namespace A109745.P1848090685872680816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071407 (Nat.xor 11 (Nat.choose (n + 2) 2 * Nat.choose (n + 7) 7))

end

end A109745.P1848090685872680816

/-!
# A109746: Number of distinct sequences of the type m^k mod n for n fixed, k>=1.

The programs for A109746, there is no canonical definition to state claims against.
-/

/-! ## A109746.P5806337066113189463

`A134198(n+2)-1`
-/

namespace A109746.P5806337066113189463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134198 (n + 2) - 1

end

end A109746.P5806337066113189463

/-! ## A109746.P11389678027331792919

`A023443(A134198(n+2))`
-/

namespace A109746.P11389678027331792919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A134198 (n + 2)).toNat

end

end A109746.P11389678027331792919

/-! ## A109746.P15927009157785137673

`A066301(n+2)+A002322(n+2)`
-/

namespace A109746.P15927009157785137673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066301 (n + 2) + A002322 (n + 2)

end

end A109746.P15927009157785137673

/-! ## A109746.P4328060510861639461

`∑[Δ[A134198(n+1)]%A017221(n)]`
-/

namespace A109746.P4328060510861639461
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134198 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (n + 1) - f2 n) (A017221 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109746.P4328060510861639461

/-! ## A109746.P914464931987809889

`A002322(n+2)+A051903(n+2)-1`
-/

namespace A109746.P914464931987809889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002322 (n + 2) + (A051903 (n + 2) - 1)

end

end A109746.P914464931987809889

/-! ## A109746.P6834600256089449724

`A002322(n+2)+A067132(n+2)-2`
-/

namespace A109746.P6834600256089449724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002322 (n + 2) + (A067132 (n + 2) - 2)

end

end A109746.P6834600256089449724

/-! ## A109746.P10157982041191978325

`A051903(A003557(n+2))+A002322(n+2)`
-/

namespace A109746.P10157982041191978325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A003557 (n + 2)).toNat + A002322 (n + 2)

end

end A109746.P10157982041191978325

/-!
# A109747: E.g.f.: exp(-exp(-x)+1+x).

The programs for A109747, there is no canonical definition to state claims against.
-/

/-! ## A109747.P1321732056016975660

`A014182(n-2)+a(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A109747.P1321732056016975660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A014182 (n - 2) + a (n - 1)

end

end A109747.P1321732056016975660

/-! ## A109747.P9145517103407610149

`∑[A014182(A289207(n))]`
-/

namespace A109747.P9145517103407610149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014182 (A289207 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109747.P9145517103407610149

/-! ## A109747.P18224951213619057502

`Δ[A153732(n)]-A153732(n)`
-/

namespace A109747.P18224951213619057502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153732 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A153732 n

end

end A109747.P18224951213619057502

/-! ## A109747.P8856152876667382855

`A153732(n+1)-2*A153732(n)`
-/

namespace A109747.P8856152876667382855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153732 (n + 1) - 2 * A153732 n

end

end A109747.P8856152876667382855

/-! ## A109747.P15842245787874668819

`∑[A014182(A145153(A133263(n)))]`
-/

namespace A109747.P15842245787874668819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014182 (A145153 (A133263 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109747.P15842245787874668819

/-! ## A109747.P10927843776358774120

`∑[A309386(A034856(A028310(n)))]`
-/

namespace A109747.P10927843776358774120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309386 (A034856 (A028310 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109747.P10927843776358774120

/-!
# A109748: Integers n such that n is prime and x is prime, where (x,y) is the smallest solution to the Pell equation with D = n.

The programs for A109748, there is no canonical definition to state claims against.
-/

/-! ## A109748.P14341729884468820075

`record[p?[A243573(A233576(n+1))]]`
-/

namespace A109748.P14341729884468820075
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243573 (A233576 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A109748.P14341729884468820075

/-!
# A109751: A self-describing sequence: there are a(n) even digits and a(n) odd digits in the interval ]0;a(n)+1[.

The programs for A109751, there is no canonical definition to state claims against.
-/

/-! ## A109751.P11841976778435903133

`A180157(∑[A180160(n)]+1)`
-/

namespace A109751.P11841976778435903133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180160 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180157 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A109751.P11841976778435903133

/-! ## A109751.P1911404820176947662

`A227870(∑[A180160(n)]+1)`
-/

namespace A109751.P1911404820176947662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180160 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227870 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A109751.P1911404820176947662

/-! ## A109751.P1815120095892476760

`A180157(∑[A180160(n)^n])`
-/

namespace A109751.P1815120095892476760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180160 n ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180157 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A109751.P1815120095892476760

/-! ## A109751.P8796518030878377536

`A227870(∑[A180160(n)^n])`
-/

namespace A109751.P8796518030878377536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180160 n ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227870 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A109751.P8796518030878377536

/-! ## A109751.P9970895497975761731

`A180157(∑[char[A180157(n+1)]]+1)`
-/

namespace A109751.P9970895497975761731
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180157 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180157 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A109751.P9970895497975761731

/-! ## A109751.P18048357827776688024

`A227870(∑[char[A227870(n+1)]]+1)`
-/

namespace A109751.P18048357827776688024
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227870 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227870 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A109751.P18048357827776688024

/-! ## A109751.P11539280958198030239

`A180157(∑[A004427(n)-A004426(n)]+1)`
-/

namespace A109751.P11539280958198030239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004427 n - A004426 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180157 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A109751.P11539280958198030239

/-!
# A109752: Using the lunar product (see A087062 for definition), numbers n such that if n divides a*b, then n must divide either a or b. The multiplicative identity, 9, is excluded by convention.

The programs for A109752, there is no canonical definition to state claims against.
-/

/-! ## A109752.P8190402844560616727

`gcd(82, C(7, n))+n`
-/

namespace A109752.P8190402844560616727
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 82 (Nat.choose 7 n) + n

end

end A109752.P8190402844560616727

/-! ## A109752.P1139946457119514487

`lcm(n+1, comp[9*n])`
-/

namespace A109752.P1139946457119514487
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (n + 1) (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A109752.P1139946457119514487

/-! ## A109752.P1199507814112276271

`comp[9*n]!/n!`
-/

namespace A109752.P1199507814112276271
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9 * n

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) : ℚ) / (Nat.factorial n : ℚ)

end

end A109752.P1199507814112276271

/-! ## A109752.P7513461202554767300

`(n+1)*10^C(n, 8)`
-/

namespace A109752.P7513461202554767300
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * 10 ^ Nat.choose n 8

end

end A109752.P7513461202554767300

/-! ## A109752.P6665583901801888337

`(n+1)*C(10, C(n, 8))`
-/

namespace A109752.P6665583901801888337
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * Nat.choose 10 (Nat.choose n 8)

end

end A109752.P6665583901801888337

/-!
# A109753: n^3 mod 8; the periodic sequence {0,1,0,3,0,5,0,7}.

The programs for A109753, the canonical program `A109753.P9858240629842598785` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A109753 has offset 0).

The definition of A109753 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n^3)%8` (program `A109753.P9858240629842598785`, by `A109753.P9858240629842598785.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A109753.P9858240629842598785

`(n^3)%8`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A109753

/-- `(n^3)%8` -/
def P9858240629842598785.Spec : Prop :=
  ∀ n, (P9858240629842598785.a n : ℤ) = A109753 n

theorem P9858240629842598785.correct : P9858240629842598785.Spec := by
  intro n
  simp only [A109753]

end A109753

/-!
# A109754: Matrix defined by: a(i,0) = 0, a(i,j) = i*Fibonacci(j-1) + Fibonacci(j), for j > 0; read by ascending antidiagonals.

The programs for A109754, there is no canonical definition to state claims against.
-/

/-! ## A109754.P2944416506743974876

`A353595(n*A123110(n))`
-/

namespace A109754.P2944416506743974876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353595 ((n : ℤ) * A123110 n).toNat

end

end A109754.P2944416506743974876

/-! ## A109754.P851755987309704822

`A353595(n)%A008949(n)`
-/

namespace A109754.P851755987309704822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A353595 n) (A008949 n)

end

end A109754.P851755987309704822

/-! ## A109754.P5849627844647995904

`A017125(A061579(n*A123110(n)))`
-/

namespace A109754.P5849627844647995904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017125 (A061579 ((n : ℤ) * A123110 n).toNat).toNat

end

end A109754.P5849627844647995904

/-! ## A109754.P15983643385030809218

`A017125(A061579(n))%A008949(n)`
-/

namespace A109754.P15983643385030809218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A017125 (A061579 n).toNat) (A008949 n)

end

end A109754.P15983643385030809218

/-! ## A109754.P4186026399104638190

`A017125(A061579(n%A176080(n)))`
-/

namespace A109754.P4186026399104638190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017125 (A061579 (Int.tmod (n : ℤ) (A176080 n)).toNat).toNat

end

end A109754.P4186026399104638190

/-! ## A109754.P399907788395261880

`A017125(A061579(n)%A089072(n+1))`
-/

namespace A109754.P399907788395261880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017125 (Int.tmod (A061579 n) (A089072 (n + 1))).toNat

end

end A109754.P399907788395261880

/-! ## A109754.P3286902206173822999

`A017125(char[A014132(n+1)]*A061579(n))`
-/

namespace A109754.P3286902206173822999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014132 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017125 (((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A061579 n).toNat

end

end A109754.P3286902206173822999

/-! ## A109754.P7271218186593811715

`A017125((A114327(n)+n)%A060538(n+1))`
-/

namespace A109754.P7271218186593811715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017125 (Int.tmod (A114327 n + (n : ℤ)) (A060538 (n + 1))).toNat

end

end A109754.P7271218186593811715

/-! ## A109754.P5049874265175853773

`A210880(A014132(n+1))%A020651(A099627(n))`
-/

namespace A109754.P5049874265175853773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A210880 (A014132 (n + 1)).toNat) (A020651 (A099627 n).toNat)

end

end A109754.P5049874265175853773

/-!
# A109755: Row and column sums of A001223 ( Differences between consecutive primes - see example ).

The programs for A109755, there is no canonical definition to state claims against.
-/

/-! ## A109755.P12952990595355108223

`or(1, A331535(A123347(n)))`
-/

namespace A109755.P12952990595355108223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A331535 (A123347 n).toNat)

end

end A109755.P12952990595355108223

/-!
# A109756: If you sum 3 consecutive odd prime numbers p,q,r, you get a number s which is either prime or not: p+q+r=s. If s is prime, you call it p and repeat the game. If s is not prime, you call the largest prime factor p and repeat the game. Finally, you get into an infinite cycle, which is one of the above 3 sequences, no matter what initial prime numbers you choose.

The programs for A109756, there is no canonical definition to state claims against.
-/

/-! ## A109756.P16458504997564363086

`A179002(A233203(n)+A009900(n))`
-/

namespace A109756.P16458504997564363086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179002 (A233203 n + A009900 n).toNat

end

end A109756.P16458504997564363086

/-!
# A109757: Numbers n such that (10's complement factorial of n) + 1 is semiprime.

The programs for A109757, there is no canonical definition to state claims against.
-/

/-! ## A109757.P10343713473568127598

`A002081(n)-A112505(A052330(3*n+4))`
-/

namespace A109757.P10343713473568127598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002081 n - A112505 (A052330 (3 * n + 4)).toNat

end

end A109757.P10343713473568127598

/-!
# A109759: Palindromic admirable numbers.

The programs for A109759, there is no canonical definition to state claims against.
-/

/-! ## A109759.P1810029902629167251

`∩[A002113(n+1), A111592(n+1)]`
-/

namespace A109759.P1810029902629167251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111592 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A109759.P1810029902629167251

/-! ## A109759.P9388904639415925789

`∩[A029951(n+1), A111592(n+1)]`
-/

namespace A109759.P9388904639415925789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029951 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111592 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A109759.P9388904639415925789

/-! ## A109759.P12665945073093675460

`∩[A032350(n+1), A111592(n+1)]`
-/

namespace A109759.P12665945073093675460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032350 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111592 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A109759.P12665945073093675460

/-! ## A109759.P12267581714612762863

`∩[A062697(n+1), A111592(n+1)]`
-/

namespace A109759.P12267581714612762863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062697 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111592 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A109759.P12267581714612762863

/-! ## A109759.P11323157416360004220

`∩[A083158(n+1), A111592(n+1)]`
-/

namespace A109759.P11323157416360004220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083158 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111592 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A109759.P11323157416360004220

/-!
# A109761: Rare pseudoperfect (or semiperfect) numbers, that is, pseudoperfect numbers k such that k == 2 or 10 (mod 12).

The programs for A109761, there is no canonical definition to state claims against.
-/

/-! ## A109761.P2670010109019895836

`∩[A035480(n+1), A063221(n+1)]`
-/

namespace A109761.P2670010109019895836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035480 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063221 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A109761.P2670010109019895836

/-! ## A109761.P15503617504849583533

`∩[A035480(n+1), A091999(n+1)]`
-/

namespace A109761.P15503617504849583533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035480 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091999 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A109761.P15503617504849583533

/-! ## A109761.P4852084102591047675

`A109762(∑[(n-∑{digits}[n, #])!])`
-/

namespace A109761.P4852084102591047675
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial ((n : ℤ) - ((((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x).sum : ℕ) : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109762 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A109761.P4852084102591047675

/-! ## A109761.P14959770397453612695

`A109762(A062399(n+1))`
-/

namespace A109761.P14959770397453612695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109762 (A062399 (n + 1)).toNat

end

end A109761.P14959770397453612695

/-!
# A109762: Rare primitive pseudoperfect numbers: primitive pseudoperfect numbers k such that k == 2 or 10 (mod 12).

The programs for A109762, there is no canonical definition to state claims against.
-/

/-! ## A109762.P9041310247153065940

`∩[A006036(n+1), A109761(n+1)]`
-/

namespace A109762.P9041310247153065940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006036 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109761 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A109762.P9041310247153065940

/-! ## A109762.P11323298075609053858

`filter[A006036(n+2), A359374(#)]`
-/

namespace A109762.P11323298075609053858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006036 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359374 (f1 j).toNat = 1) n)

end

end A109762.P11323298075609053858

/-! ## A109762.P12773225771462183961

`∩[A006036(n+1), A063221(n+1)]`
-/

namespace A109762.P12773225771462183961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006036 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063221 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A109762.P12773225771462183961

/-! ## A109762.P9968175625852493579

`∩[A006036(n+1), A091999(n+1)]`
-/

namespace A109762.P9968175625852493579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006036 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091999 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A109762.P9968175625852493579

/-! ## A109762.P561014016539242513

`∩[A006036(n+1), A350059(n+1)]`
-/

namespace A109762.P561014016539242513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006036 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350059 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A109762.P561014016539242513

/-! ## A109762.P9239630375493930294

`filter[A390873(n+1), A359374(#)]`
-/

namespace A109762.P9239630375493930294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390873 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359374 (f1 j).toNat = 1) n)

end

end A109762.P9239630375493930294

/-! ## A109762.P14233164927802021317

`filter[A390873(n+1), A391844(#)]`
-/

namespace A109762.P14233164927802021317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390873 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A391844 (f1 j).toNat = 1) n)

end

end A109762.P14233164927802021317

/-! ## A109762.P7497670467796511286

`∩[A063221(n+1), A390873(n+1)]`
-/

namespace A109762.P7497670467796511286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063221 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390873 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A109762.P7497670467796511286

/-! ## A109762.P9520622920160238233

`∩[A091999(n+1), A390873(n+1)]`
-/

namespace A109762.P9520622920160238233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091999 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390873 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A109762.P9520622920160238233

/-! ## A109762.P3127598568626201811

`∩[A109761(n+1), A390873(n+1)]`
-/

namespace A109762.P3127598568626201811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109761 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390873 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A109762.P3127598568626201811

/-!
# A109763: Primes repeated.

The programs for A109763, the canonical program `A109763.P2938367627261034310` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A109763 has offset 1).

The definition of A109763 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A109763.P2938367627261034310

`A000040(ceil((n+1)/2))`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A109763

/-- `A000040(ceil((n+1)/2))` -/
def P2938367627261034310.Spec : Prop :=
  ∀ n, P2938367627261034310.a n = A109763 (n + 1)

theorem P2938367627261034310.correct : P2938367627261034310.Spec := by
  intro n
  simp only [A109763, Nat.add_sub_cancel]

end A109763

/-! ## A109763.P2532371506289220373

`p?[floor(n/2)]`
-/

namespace A109763.P2532371506289220373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A109763.P2532371506289220373

namespace A109763

/-- `p?[floor(n/2)]` -/
def P2532371506289220373.Spec : Prop :=
  ∀ n, P2532371506289220373.a n = A109763 (n + 1)

end A109763

/-! ## A109763.P4410903266177632127

`A067747(or(1, n))`
-/

namespace A109763.P4410903266177632127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067747 (Nat.lor 1 n)

end

end A109763.P4410903266177632127

namespace A109763

/-- `A067747(or(1, n))` -/
def P4410903266177632127.Spec : Prop :=
  ∀ n, P4410903266177632127.a n = A109763 (n + 1)

end A109763

/-! ## A109763.P7558553945142174642

`A129767(or(1, n))`
-/

namespace A109763.P7558553945142174642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129767 (Nat.lor 1 n)

end

end A109763.P7558553945142174642

namespace A109763

/-- `A129767(or(1, n))` -/
def P7558553945142174642.Spec : Prop :=
  ∀ n, P7558553945142174642.a n = A109763 (n + 1)

end A109763

/-! ## A109763.P6877933989288752257

`A134735(or(1, n))`
-/

namespace A109763.P6877933989288752257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134735 (Nat.lor 1 n)

end

end A109763.P6877933989288752257

namespace A109763

/-- `A134735(or(1, n))` -/
def P6877933989288752257.Spec : Prop :=
  ∀ n, P6877933989288752257.a n = A109763 (n + 1)

end A109763

/-! ## A109763.P4336573639286318795

`A209259(or(1, n))`
-/

namespace A109763.P4336573639286318795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209259 (Nat.lor 1 n)

end

end A109763.P4336573639286318795

namespace A109763

/-- `A209259(or(1, n))` -/
def P4336573639286318795.Spec : Prop :=
  ∀ n, P4336573639286318795.a n = A109763 (n + 1)

end A109763

/-! ## A109763.P8770729564659334779

`A073846(or(1, n)+1)`
-/

namespace A109763.P8770729564659334779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073846 (Nat.lor 1 n + 1)

end

end A109763.P8770729564659334779

namespace A109763

/-- `A073846(or(1, n)+1)` -/
def P8770729564659334779.Spec : Prop :=
  ∀ n, P8770729564659334779.a n = A109763 (n + 1)

end A109763

/-! ## A109763.P5567605139508509441

`A082500(or(1, n)+1)`
-/

namespace A109763.P5567605139508509441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082500 (Nat.lor 1 n + 1)

end

end A109763.P5567605139508509441

namespace A109763

/-- `A082500(or(1, n)+1)` -/
def P5567605139508509441.Spec : Prop :=
  ∀ n, P5567605139508509441.a n = A109763 (n + 1)

end A109763

/-! ## A109763.P16580698828379889401

`A067747(A109613(n))`
-/

namespace A109763.P16580698828379889401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067747 (A109613 n).toNat

end

end A109763.P16580698828379889401

namespace A109763

/-- `A067747(A109613(n))` -/
def P16580698828379889401.Spec : Prop :=
  ∀ n, P16580698828379889401.a n = A109763 (n + 1)

end A109763

/-! ## A109763.P4146929088355054586

`A129543(A292600(n))`
-/

namespace A109763.P4146929088355054586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129543 (A292600 n).toNat

end

end A109763.P4146929088355054586

namespace A109763

/-- `A129543(A292600(n))` -/
def P4146929088355054586.Spec : Prop :=
  ∀ n, P4146929088355054586.a n = A109763 (n + 1)

end A109763

/-! ## A109763.P14800755719683055081

`A008578(A008619(n)+1)`
-/

namespace A109763.P14800755719683055081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A008619 n + 1).toNat

end

end A109763.P14800755719683055081

namespace A109763

/-- `A008578(A008619(n)+1)` -/
def P14800755719683055081.Spec : Prop :=
  ∀ n, P14800755719683055081.a n = A109763 (n + 1)

end A109763

/-! ## A109763.P16642098226991167962

`A067747(A059841(n)+n)`
-/

namespace A109763.P16642098226991167962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067747 (A059841 n + (n : ℤ)).toNat

end

end A109763.P16642098226991167962

namespace A109763

/-- `A067747(A059841(n)+n)` -/
def P16642098226991167962.Spec : Prop :=
  ∀ n, P16642098226991167962.a n = A109763 (n + 1)

end A109763

/-! ## A109763.P363960792035841596

`A073846(A059841(n)+1+n)`
-/

namespace A109763.P363960792035841596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073846 (A059841 n + 1 + (n : ℤ)).toNat

end

end A109763.P363960792035841596

namespace A109763

/-- `A073846(A059841(n)+1+n)` -/
def P363960792035841596.Spec : Prop :=
  ∀ n, P363960792035841596.a n = A109763 (n + 1)

end A109763

/-! ## A109763.P12499442208611680620

`A073846(2-A000035(n)+n)`
-/

namespace A109763.P12499442208611680620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073846 (2 - A000035 n + (n : ℤ)).toNat

end

end A109763.P12499442208611680620

namespace A109763

/-- `A073846(2-A000035(n)+n)` -/
def P12499442208611680620.Spec : Prop :=
  ∀ n, P12499442208611680620.a n = A109763 (n + 1)

end A109763

/-! ## A109763.P13405733959139928923

`A067747(A121262(2*n)+n)`
-/

namespace A109763.P13405733959139928923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067747 (A121262 (2 * n) + (n : ℤ)).toNat

end

end A109763.P13405733959139928923

namespace A109763

/-- `A067747(A121262(2*n)+n)` -/
def P13405733959139928923.Spec : Prop :=
  ∀ n, P13405733959139928923.a n = A109763 (n + 1)

end A109763

/-! ## A109763.P7350634228449312109

`gcd(A033476(n), A057602(n+1))`
-/

namespace A109763.P7350634228449312109
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A033476 n) (A057602 (n + 1))

end

end A109763.P7350634228449312109

namespace A109763

/-- `gcd(A033476(n), A057602(n+1))` -/
def P7350634228449312109.Spec : Prop :=
  ∀ n, (P7350634228449312109.a n : ℤ) = A109763 (n + 1)

end A109763

/-!
# A109764: Sum of the first n^2 squares.

The programs for A109764, the canonical program `A109764.P3128823559559336000` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A109764 has offset 1).

The definition of A109764 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A109764.P3128823559559336000

`(n+1)²*((n+1)²-1)*(2*(n+1)²-1)/6`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A109764

/-- `(n+1)²*((n+1)²-1)*(2*(n+1)²-1)/6` -/
def P3128823559559336000.Spec : Prop :=
  ∀ n, P3128823559559336000.a n = (A109764 (n + 1) : ℚ)

end A109764

/-! ## A109764.P5886840135064318506

`round(C(2*∑[2*n+1], 3)/4)`
-/

namespace A109764.P5886840135064318506
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.choose (2 * (∑ j ∈ Finset.range (n + 1), f1 j)) 3 : ℚ) / 4)

end

end A109764.P5886840135064318506

namespace A109764

/-- `round(C(2*∑[2*n+1], 3)/4)` -/
def P5886840135064318506.Spec : Prop :=
  ∀ n, P5886840135064318506.a n = A109764 (n + 1)

end A109764

/-! ## A109764.P8701642760993123430

`floor(C(2*(n+1)*(n+1), 3)/4)`
-/

namespace A109764.P8701642760993123430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.choose (2 * (n + 1) * (n + 1)) 3 : ℚ) / 4⌋

end

end A109764.P8701642760993123430

namespace A109764

/-- `floor(C(2*(n+1)*(n+1), 3)/4)` -/
def P8701642760993123430.Spec : Prop :=
  ∀ n, P8701642760993123430.a n = A109764 (n + 1)

end A109764

/-! ## A109764.P16825292597032223497

`A113754(n+1)-(n+1)²²`
-/

namespace A109764.P16825292597032223497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113754 (n + 1) - (((n + 1) ^ 2) ^ 2 : ℤ)

end

end A109764.P16825292597032223497

namespace A109764

/-- `A113754(n+1)-(n+1)²²` -/
def P16825292597032223497.Spec : Prop :=
  ∀ n, P16825292597032223497.a n = A109764 (n + 1)

end A109764

/-! ## A109764.P10109859773536312377

`(n+1)*(A071902(n+1)+n+1)`
-/

namespace A109764.P10109859773536312377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A071902 (n + 1) + (n + 1 : ℤ))

end

end A109764.P10109859773536312377

namespace A109764

/-- `(n+1)*(A071902(n+1)+n+1)` -/
def P10109859773536312377.Spec : Prop :=
  ∀ n, P10109859773536312377.a n = A109764 (n + 1)

end A109764

/-! ## A109764.P5550807758046766345

`A288959(n+1)-A178208(n+1)`
-/

namespace A109764.P5550807758046766345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288959 (n + 1) - A178208 (n + 1)

end

end A109764.P5550807758046766345

namespace A109764

/-- `A288959(n+1)-A178208(n+1)` -/
def P5550807758046766345.Spec : Prop :=
  ∀ n, P5550807758046766345.a n = A109764 (n + 1)

end A109764

/-! ## A109764.P14415897241565771622

`A083374(n+1)+2*A178208(n+1)`
-/

namespace A109764.P14415897241565771622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083374 (n + 1) + 2 * A178208 (n + 1)

end

end A109764.P14415897241565771622

namespace A109764

/-- `A083374(n+1)+2*A178208(n+1)` -/
def P14415897241565771622.Spec : Prop :=
  ∀ n, P14415897241565771622.a n = A109764 (n + 1)

end A109764

/-! ## A109764.P2448374988131112377

`A008911(n+1)+A027480(n)*A210440(n)`
-/

namespace A109764.P2448374988131112377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008911 (n + 1) + A027480 n * A210440 n

end

end A109764.P2448374988131112377

namespace A109764

/-- `A008911(n+1)+A027480(n)*A210440(n)` -/
def P2448374988131112377.Spec : Prop :=
  ∀ n, P2448374988131112377.a n = A109764 (n + 1)

end A109764

/-! ## A109764.P17899526697193445559

`A000330(n*(n+2))`
-/

namespace A109764.P17899526697193445559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 (n * (n + 2))

end

end A109764.P17899526697193445559

namespace A109764

/-- `A000330(n*(n+2))` -/
def P17899526697193445559.Spec : Prop :=
  ∀ n, P17899526697193445559.a n = A109764 (n + 1)

end A109764

/-! ## A109764.P5250738218820661716

`A115391(n*(n+2))`
-/

namespace A109764.P5250738218820661716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115391 (n * (n + 2))

end

end A109764.P5250738218820661716

namespace A109764

/-- `A115391(n*(n+2))` -/
def P5250738218820661716.Spec : Prop :=
  ∀ n, P5250738218820661716.a n = A109764 (n + 1)

end A109764

/-! ## A109764.P2082190035889523894

`sqrt(A271535(n*(n+2)))`
-/

namespace A109764.P2082190035889523894
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A271535 (n * (n + 2)) : ℝ)

end

end A109764.P2082190035889523894

namespace A109764

/-- `sqrt(A271535(n*(n+2)))` -/
def P2082190035889523894.Spec : Prop :=
  ∀ n, P2082190035889523894.a n = (A109764 (n + 1) : ℝ)

end A109764

/-! ## A109764.P18005608193879165172

`A056520(n*(n+2))-1`
-/

namespace A109764.P18005608193879165172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056520 (n * (n + 2)) - 1

end

end A109764.P18005608193879165172

namespace A109764

/-- `A056520(n*(n+2))-1` -/
def P18005608193879165172.Spec : Prop :=
  ∀ n, P18005608193879165172.a n = A109764 (n + 1)

end A109764

/-! ## A109764.P8194230681566312748

`A153056(n*(n+2))-2`
-/

namespace A109764.P8194230681566312748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153056 (n * (n + 2)) - 2

end

end A109764.P8194230681566312748

namespace A109764

/-- `A153056(n*(n+2))-2` -/
def P8194230681566312748.Spec : Prop :=
  ∀ n, P8194230681566312748.a n = A109764 (n + 1)

end A109764

/-! ## A109764.P15491054699820353810

`A081489((n+1)²)-(n+1)²`
-/

namespace A109764.P15491054699820353810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081489 ((n + 1) ^ 2) - ((n + 1) ^ 2 : ℤ)

end

end A109764.P15491054699820353810

namespace A109764

/-- `A081489((n+1)²)-(n+1)²` -/
def P15491054699820353810.Spec : Prop :=
  ∀ n, P15491054699820353810.a n = A109764 (n + 1)

end A109764

/-!
# A109765: Expansion of x/((4*x-1)*(2*x-1)*(x+1)).

The programs for A109765, the canonical program `A109765.P8514161902399201487` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A109765 has offset 0).

The definition of A109765 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(x/(1-5x+2x^2+8x^3))` (program `A109765.P8514161902399201487`, by `A109765.P8514161902399201487.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A109765.P8514161902399201487

`ogf(x/(1-5x+2x^2+8x^3))`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A109765

/-- `ogf(x/(1-5x+2x^2+8x^3))` -/
def P8514161902399201487.Spec : Prop :=
  ∀ n, P8514161902399201487.a n = A109765 n

theorem P8514161902399201487.correct : P8514161902399201487.Spec := by
  intro n
  simp only [A109765]

end A109765

/-! ## A109765.P14877866260649919374

`5*a(n-1)-2*a(n-2)-8*a(n-3)` with `a(0)=0, a(1)=1, a(2)=5`
-/

namespace A109765.P14877866260649919374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 5] fun n a =>
  5 * a (n - 1) - 2 * a (n - 2) - 8 * a (n - 3)

end

end A109765.P14877866260649919374

namespace A109765

/-- `5*a(n-1)-2*a(n-2)-8*a(n-3)` -/
def P14877866260649919374.Spec : Prop :=
  ∀ n, P14877866260649919374.a n = A109765 n

end A109765

/-! ## A109765.P17593999720604678268

`1/15*(6*4^n-5*2^n-(-1)^n)`
-/

namespace A109765.P17593999720604678268
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 15 * ((6 * 4 ^ n : ℤ) - (5 * 2 ^ n : ℤ) - (-1) ^ n : ℚ)

end

end A109765.P17593999720604678268

namespace A109765

/-- `1/15*(6*4^n-5*2^n-(-1)^n)` -/
def P17593999720604678268.Spec : Prop :=
  ∀ n, P17593999720604678268.a n = (A109765 n : ℚ)

end A109765

/-! ## A109765.P16560563934990575608

`round(4^n/5)+2*a(n-1)` with `a(0)=0`
-/

namespace A109765.P16560563934990575608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  SequenceMachineLib.roundAway ((4 ^ n : ℚ) / 5) + 2 * a (n - 1)

end

end A109765.P16560563934990575608

namespace A109765

/-- `round(4^n/5)+2*a(n-1)` -/
def P16560563934990575608.Spec : Prop :=
  ∀ n, P16560563934990575608.a n = A109765 n

end A109765

/-! ## A109765.P12563973577227507590

`(4^n-2^n)/2-a(n-1)` with `a(0)=0`
-/

namespace A109765.P12563973577227507590
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  ((4 ^ n : ℤ) - (2 ^ n : ℤ) : ℚ) / 2 - a (n - 1)

end

end A109765.P12563973577227507590

namespace A109765

/-- `(4^n-2^n)/2-a(n-1)` -/
def P12563973577227507590.Spec : Prop :=
  ∀ n, P12563973577227507590.a n = (A109765 n : ℚ)

end A109765

/-! ## A109765.P13955458531659600964

`A167030(n)+or(1, 4*a(n-1))` with `a(0)=0`
-/

namespace A109765.P13955458531659600964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A167030 n + Int.lor 1 (4 * a (n - 1))

end

end A109765.P13955458531659600964

namespace A109765

/-- `A167030(n)+or(1, 4*a(n-1))` -/
def P13955458531659600964.Spec : Prop :=
  ∀ n, P13955458531659600964.a n = A109765 n

end A109765

/-! ## A109765.P8467742409159537639

`a(n-1)+A015521(n)+a(n-1)` with `a(0)=0`
-/

namespace A109765.P8467742409159537639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (A015521 n + a (n - 1))

end

end A109765.P8467742409159537639

namespace A109765

/-- `a(n-1)+A015521(n)+a(n-1)` -/
def P8467742409159537639.Spec : Prop :=
  ∀ n, P8467742409159537639.a n = A109765 n

end A109765

/-! ## A109765.P14935956504401740153

`round(A153972(n)/3)+4*a(n-1)-2` with `a(0)=0`
-/

namespace A109765.P14935956504401740153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  SequenceMachineLib.roundAway ((A153972 n : ℚ) / 3) + (4 * a (n - 1) - 2)

end

end A109765.P14935956504401740153

namespace A109765

/-- `round(A153972(n)/3)+4*a(n-1)-2` -/
def P14935956504401740153.Spec : Prop :=
  ∀ n, P14935956504401740153.a n = A109765 n

end A109765

/-! ## A109765.P5567701592227170482

`floor((A000079(n)+7)/3)+4*a(n-1)-2` with `a(0)=0`
-/

namespace A109765.P5567701592227170482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ⌊(A000079 n + 7 : ℚ) / 3⌋ + (4 * a (n - 1) - 2)

end

end A109765.P5567701592227170482

namespace A109765

/-- `floor((A000079(n)+7)/3)+4*a(n-1)-2` -/
def P5567701592227170482.Spec : Prop :=
  ∀ n, P5567701592227170482.a n = A109765 n

end A109765

/-! ## A109765.P17792689378715095099

`A102900(n)-A078008(n)`
-/

namespace A109765.P17792689378715095099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102900 n - A078008 n

end

end A109765.P17792689378715095099

namespace A109765

/-- `A102900(n)-A078008(n)` -/
def P17792689378715095099.Spec : Prop :=
  ∀ n, P17792689378715095099.a n = A109765 n

end A109765

/-! ## A109765.P11545250939937738022

`A363773(n)-A005578(n)`
-/

namespace A109765.P11545250939937738022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363773 n - A005578 n

end

end A109765.P11545250939937738022

namespace A109765

/-- `A363773(n)-A005578(n)` -/
def P11545250939937738022.Spec : Prop :=
  ∀ n, P11545250939937738022.a n = A109765 n

end A109765

/-! ## A109765.P5778144073529469393

`A102900(n)-Δ[A001045(n)]`
-/

namespace A109765.P5778144073529469393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102900 n - (f1 (n + 1) - f1 n)

end

end A109765.P5778144073529469393

namespace A109765

/-- `A102900(n)-Δ[A001045(n)]` -/
def P5778144073529469393.Spec : Prop :=
  ∀ n, P5778144073529469393.a n = A109765 n

end A109765

/-! ## A109765.P5559067954655845166

`A037481(n)+1-A005578(n)`
-/

namespace A109765.P5559067954655845166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037481 n + (1 - A005578 n)

end

end A109765.P5559067954655845166

namespace A109765

/-- `A037481(n)+1-A005578(n)` -/
def P5559067954655845166.Spec : Prop :=
  ∀ n, P5559067954655845166.a n = A109765 n

end A109765

/-! ## A109765.P1643935214647314920

`2*A015521(n)-A001045(n)`
-/

namespace A109765.P1643935214647314920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A015521 n - A001045 n

end

end A109765.P1643935214647314920

namespace A109765

/-- `2*A015521(n)-A001045(n)` -/
def P1643935214647314920.Spec : Prop :=
  ∀ n, P1643935214647314920.a n = A109765 n

end A109765

/-! ## A109765.P7775187596514597296

`(A099621(n)+A094705(n))/2`
-/

namespace A109765.P7775187596514597296
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A099621 n + A094705 n : ℚ) / 2

end

end A109765.P7775187596514597296

namespace A109765

/-- `(A099621(n)+A094705(n))/2` -/
def P7775187596514597296.Spec : Prop :=
  ∀ n, P7775187596514597296.a n = (A109765 n : ℚ)

end A109765

/-! ## A109765.P13385921617193355978

`A007909(2*n)-Δ[A001045(n)]`
-/

namespace A109765.P13385921617193355978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007909 (2 * n) - (f1 (n + 1) - f1 n)

end

end A109765.P13385921617193355978

namespace A109765

/-- `A007909(2*n)-Δ[A001045(n)]` -/
def P13385921617193355978.Spec : Prop :=
  ∀ n, P13385921617193355978.a n = A109765 n

end A109765

/-! ## A109765.P2176840487302385958

`A109499(n+1)-A110613(n+1)`
-/

namespace A109765.P2176840487302385958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109499 (n + 1) - A110613 (n + 1)

end

end A109765.P2176840487302385958

namespace A109765

/-- `A109499(n+1)-A110613(n+1)` -/
def P2176840487302385958.Spec : Prop :=
  ∀ n, P2176840487302385958.a n = A109765 n

end A109765

/-! ## A109765.P8103732935561670021

`A033114(n+1)-A192467(n+1)`
-/

namespace A109765.P8103732935561670021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033114 (n + 1) - A192467 (n + 1)

end

end A109765.P8103732935561670021

namespace A109765

/-- `A033114(n+1)-A192467(n+1)` -/
def P8103732935561670021.Spec : Prop :=
  ∀ n, P8103732935561670021.a n = A109765 n

end A109765

/-! ## A109765.P15034279787393005742

`A110613(n+1)-2*A001045(n)`
-/

namespace A109765.P15034279787393005742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110613 (n + 1) - 2 * A001045 n

end

end A109765.P15034279787393005742

namespace A109765

/-- `A110613(n+1)-2*A001045(n)` -/
def P15034279787393005742.Spec : Prop :=
  ∀ n, P15034279787393005742.a n = A109765 n

end A109765

/-! ## A109765.P11265514713775528029

`(A015521(n+1)-A001045(n+1))/2`
-/

namespace A109765.P11265514713775528029
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A015521 (n + 1) - A001045 (n + 1) : ℚ) / 2

end

end A109765.P11265514713775528029

namespace A109765

/-- `(A015521(n+1)-A001045(n+1))/2` -/
def P11265514713775528029.Spec : Prop :=
  ∀ n, P11265514713775528029.a n = (A109765 n : ℚ)

end A109765

/-!
# A109766: Admirable numbers such that the subtracted divisor is prime.

The programs for A109766, there is no canonical definition to state claims against.
-/

/-! ## A109766.P13889841347823524371

`∩[A175583(n+1), A282754(n+1)]`
-/

namespace A109766.P13889841347823524371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175583 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282754 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A109766.P13889841347823524371

/-! ## A109766.P993876374514562917

`∩[A111592(n+1), A175583(n+1)]`
-/

namespace A109766.P993876374514562917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111592 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175583 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A109766.P993876374514562917

/-!
# A109767: Triangle T(n,k), 0 <= k <= n, defined by T(n,k) = 2^k*A001497(n,k).

The programs for A109767, the canonical program `A109767.P15146390807305993974` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A109767 has offset 0).

The definition of A109767 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A109767.P15146390807305993974

`(2*row(n)-col(n))!*2^col(n)/(col(n)!*(row(n)-col(n))!)`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A109767

/-- `(2*row(n)-col(n))!*2^col(n)/(col(n)!*(row(n)-col(n))!)` -/
def P15146390807305993974.Spec : Prop :=
  ∀ n, P15146390807305993974.a n = (A109767 n : ℚ)

end A109767

/-! ## A109767.P169827329479698764

`A001497(n)*A137688(n)`
-/

namespace A109767.P169827329479698764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001497 n * A137688 n

end

end A109767.P169827329479698764

namespace A109767

/-- `A001497(n)*A137688(n)` -/
def P169827329479698764.Spec : Prop :=
  ∀ n, P169827329479698764.a n = A109767 n

end A109767

/-! ## A109767.P11460601714225900139

`A059268(n)*A119274(n)`
-/

namespace A109767.P11460601714225900139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n * A119274 n

end

end A109767.P11460601714225900139

namespace A109767

/-- `A059268(n)*A119274(n)` -/
def P11460601714225900139.Spec : Prop :=
  ∀ n, P11460601714225900139.a n = A109767 n

end A109767

/-! ## A109767.P16161550477551271587

`A092392(n)*A126064(n)`
-/

namespace A109767.P16161550477551271587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092392 n * A126064 n

end

end A109767.P16161550477551271587

namespace A109767

/-- `A092392(n)*A126064(n)` -/
def P16161550477551271587.Spec : Prop :=
  ∀ n, P16161550477551271587.a n = A109767 n

end A109767

/-! ## A109767.P5632445865387187184

`A112336(n)*A155856(n)`
-/

namespace A109767.P5632445865387187184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112336 n * A155856 n

end

end A109767.P5632445865387187184

namespace A109767

/-- `A112336(n)*A155856(n)` -/
def P5632445865387187184.Spec : Prop :=
  ∀ n, P5632445865387187184.a n = A109767 n

end A109767

/-! ## A109767.P17010127679202306427

`2^A003056(n)*A001497(n)`
-/

namespace A109767.P17010127679202306427
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A003056 n : ℤ) * (A001497 n : ℚ)

end

end A109767.P17010127679202306427

namespace A109767

/-- `2^A003056(n)*A001497(n)` -/
def P17010127679202306427.Spec : Prop :=
  ∀ n, P17010127679202306427.a n = (A109767 n : ℚ)

end A109767

/-! ## A109767.P10052160921263246441

`A113025(n)/A001498(n)*A119274(n)`
-/

namespace A109767.P10052160921263246441
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A113025 n : ℚ) / (A001498 n : ℚ) * (A119274 n : ℚ)

end

end A109767.P10052160921263246441

namespace A109767

/-- `A113025(n)/A001498(n)*A119274(n)` -/
def P10052160921263246441.Spec : Prop :=
  ∀ n, P10052160921263246441.a n = (A109767 n : ℚ)

end A109767

/-! ## A109767.P5405227343453316337

`A094587(n)*A276418(n)`
-/

namespace A109767.P5405227343453316337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094587 n * A276418 n

end

end A109767.P5405227343453316337

namespace A109767

/-- `A094587(n)*A276418(n)` -/
def P5405227343453316337.Spec : Prop :=
  ∀ n, P5405227343453316337.a n = A109767 n

end A109767

/-! ## A109767.P10002129026844280986

`A008279(A061579(n))*A276418(n)`
-/

namespace A109767.P10002129026844280986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008279 (A061579 n).toNat * A276418 n

end

end A109767.P10002129026844280986

namespace A109767

/-- `A008279(A061579(n))*A276418(n)` -/
def P10002129026844280986.Spec : Prop :=
  ∀ n, P10002129026844280986.a n = A109767 n

end A109767

/-!
# A109768: a(n) = gcd(3^n-2,2^n-3).

The programs for A109768, the canonical program `A109768.P4735096467306262115` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A109768 has offset 1).

The definition of A109768 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `gcd(3^(n+1)-2, 2^(n+1)-3)` (program `A109768.P4735096467306262115`, by `A109768.P4735096467306262115.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A109768.P4735096467306262115

`gcd(3^(n+1)-2, 2^(n+1)-3)`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A109768

/-- `gcd(3^(n+1)-2, 2^(n+1)-3)` -/
def P4735096467306262115.Spec : Prop :=
  ∀ n, (P4735096467306262115.a n : ℤ) = A109768 (n + 1)

theorem P4735096467306262115.correct : P4735096467306262115.Spec := by
  intro n
  simp only [A109768, Nat.add_sub_cancel]

end A109768

/-! ## A109768.P2649727777907042333

`A176260(A106108(n+2)+A027656(n))`
-/

namespace A109768.P2649727777907042333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176260 (A106108 (n + 2) + A027656 n).toNat

end

end A109768.P2649727777907042333

namespace A109768

/-- `A176260(A106108(n+2)+A027656(n))` -/
def P2649727777907042333.Spec : Prop :=
  ∀ n, P2649727777907042333.a n = A109768 (n + 1)

end A109768

/-! ## A109768.P3159499427419107824

`or(A010121(n+2), A054977(A003997(2*(n+1))))`
-/

namespace A109768.P3159499427419107824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A010121 (n + 2)) (A054977 (A003997 (2 * (n + 1))).toNat)

end

end A109768.P3159499427419107824

namespace A109768

/-- `or(A010121(n+2), A054977(A003997(2*(n+1))))` -/
def P3159499427419107824.Spec : Prop :=
  ∀ n, P3159499427419107824.a n = A109768 (n + 1)

end A109768

/-! ## A109768.P11381926986696372186

`A040748(A040748(n+2)+A001615(n+5))`
-/

namespace A109768.P11381926986696372186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040748 (A040748 (n + 2) + A001615 (n + 5)).toNat

end

end A109768.P11381926986696372186

namespace A109768

/-- `A040748(A040748(n+2)+A001615(n+5))` -/
def P11381926986696372186.Spec : Prop :=
  ∀ n, P11381926986696372186.a n = A109768 (n + 1)

end A109768

/-! ## A109768.P9118766056269432496

`A127106(gcd(A126972(n), A188377(n+4)))`
-/

namespace A109768.P9118766056269432496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127106 (Int.gcd (A126972 n) (A188377 (n + 4)))

end

end A109768.P9118766056269432496

namespace A109768

/-- `A127106(gcd(A126972(n), A188377(n+4)))` -/
def P9118766056269432496.Spec : Prop :=
  ∀ n, P9118766056269432496.a n = A109768 (n + 1)

end A109768

/-! ## A109768.P12029620659931492879

`A010686(and(A016777(n), A074377(n)))`
-/

namespace A109768.P12029620659931492879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010686 (Int.land (A016777 n) (A074377 n)).toNat

end

end A109768.P12029620659931492879

namespace A109768

/-- `A010686(and(A016777(n), A074377(n)))` -/
def P12029620659931492879.Spec : Prop :=
  ∀ n, P12029620659931492879.a n = A109768 (n + 1)

end A109768

/-! ## A109768.P12122715606464159631

`or(A010121(n+2), A054977(A000010(3*n+1)))`
-/

namespace A109768.P12122715606464159631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A010121 (n + 2)) (A054977 (A000010 (3 * n + 1)).toNat)

end

end A109768.P12122715606464159631

namespace A109768

/-- `or(A010121(n+2), A054977(A000010(3*n+1)))` -/
def P12122715606464159631.Spec : Prop :=
  ∀ n, P12122715606464159631.a n = A109768 (n + 1)

end A109768

/-! ## A109768.P5968941377299326462

`A287765(or(5, ∑[6-a(n-2)]))` with `a(0)=0, a(1)=0, a(2)=3`
-/

namespace A109768.P5968941377299326462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 3] fun n f1 =>
  6 - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287765 (Int.lor 5 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A109768.P5968941377299326462

namespace A109768

/-- `A287765(or(5, ∑[6-a(n-2)]))` -/
def P5968941377299326462.Spec : Prop :=
  ∀ n, P5968941377299326462.a n = A109768 (n + 1)

end A109768

/-! ## A109768.P4345028205580982981

`A010686(A001281(n))`
-/

namespace A109768.P4345028205580982981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010686 (A001281 n).toNat

end

end A109768.P4345028205580982981

namespace A109768

/-- `A010686(A001281(n))` -/
def P4345028205580982981.Spec : Prop :=
  ∀ n, P4345028205580982981.a n = A109768 (n + 1)

end A109768

/-! ## A109768.P17785208845901889157

`A007530(n+1)%A010696(A001281(n))`
-/

namespace A109768.P17785208845901889157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007530 (n + 1)) (A010696 (A001281 n).toNat)

end

end A109768.P17785208845901889157

namespace A109768

/-- `A007530(n+1)%A010696(A001281(n))` -/
def P17785208845901889157.Spec : Prop :=
  ∀ n, P17785208845901889157.a n = A109768 (n + 1)

end A109768

/-! ## A109768.P14178389877135103554

`and(A166873(n+1), A286254(A020639(3*n+4)))`
-/

namespace A109768.P14178389877135103554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A166873 (n + 1)) (A286254 (A020639 (3 * n + 4)).toNat)

end

end A109768.P14178389877135103554

namespace A109768

/-- `and(A166873(n+1), A286254(A020639(3*n+4)))` -/
def P14178389877135103554.Spec : Prop :=
  ∀ n, P14178389877135103554.a n = A109768 (n + 1)

end A109768

/-! ## A109768.P971744085119795434

`and(Δ[n²], A176260(3*n))`
-/

namespace A109768.P971744085119795434
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) (A176260 (3 * n))

end

end A109768.P971744085119795434

namespace A109768

/-- `and(Δ[n²], A176260(3*n))` -/
def P971744085119795434.Spec : Prop :=
  ∀ n, P971744085119795434.a n = A109768 (n + 1)

end A109768

/-! ## A109768.P10404116258488739855

`5%A164356(∑[6-a(n-2)])` with `a(0)=3, a(1)=0, a(2)=3`
-/

namespace A109768.P10404116258488739855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3, 0, 3] fun n f1 =>
  6 - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 5 (A164356 (∑ j ∈ Finset.range (n + 1), f1 j).toNat)

end

end A109768.P10404116258488739855

namespace A109768

/-- `5%A164356(∑[6-a(n-2)])` -/
def P10404116258488739855.Spec : Prop :=
  ∀ n, P10404116258488739855.a n = A109768 (n + 1)

end A109768

/-! ## A109768.P6425730956833640850

`and(5, A287765(∑[6-a(n-2)]))` with `a(0)=4, a(1)=0, a(2)=3`
-/

namespace A109768.P6425730956833640850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [4, 0, 3] fun n f1 =>
  6 - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 5 (A287765 (∑ j ∈ Finset.range (n + 1), f1 j).toNat)

end

end A109768.P6425730956833640850

namespace A109768

/-- `and(5, A287765(∑[6-a(n-2)]))` -/
def P6425730956833640850.Spec : Prop :=
  ∀ n, P6425730956833640850.a n = A109768 (n + 1)

end A109768

/-! ## A109768.P3665421247362970264

`A000330(gcd(n, A008619(3*n)))`
-/

namespace A109768.P3665421247362970264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 (Int.gcd (n : ℤ) (A008619 (3 * n)))

end

end A109768.P3665421247362970264

namespace A109768

/-- `A000330(gcd(n, A008619(3*n)))` -/
def P3665421247362970264.Spec : Prop :=
  ∀ n, P3665421247362970264.a n = A109768 (n + 1)

end A109768

/-! ## A109768.P13007925913499320493

`A143007(gcd(n², A212965(3*n)))`
-/

namespace A109768.P13007925913499320493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143007 (Int.gcd (n ^ 2 : ℤ) (A212965 (3 * n)))

end

end A109768.P13007925913499320493

namespace A109768

/-- `A143007(gcd(n², A212965(3*n)))` -/
def P13007925913499320493.Spec : Prop :=
  ∀ n, P13007925913499320493.a n = A109768 (n + 1)

end A109768

/-! ## A109768.P9215471697435831961

`A199898(A000035(3*n)+Δ[or(2, 3*n)])`
-/

namespace A109768.P9215471697435831961
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199898 (A000035 (3 * n) + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))).toNat

end

end A109768.P9215471697435831961

namespace A109768

/-- `A199898(A000035(3*n)+Δ[or(2, 3*n)])` -/
def P9215471697435831961.Spec : Prop :=
  ∀ n, P9215471697435831961.a n = A109768 (n + 1)

end A109768

/-! ## A109768.P9723623652764056092

`A007310(A001651(n+1)-A004524(3*n))`
-/

namespace A109768.P9723623652764056092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007310 (A001651 (n + 1) - A004524 (3 * n)).toNat

end

end A109768.P9723623652764056092

namespace A109768

/-- `A007310(A001651(n+1)-A004524(3*n))` -/
def P9723623652764056092.Spec : Prop :=
  ∀ n, P9723623652764056092.a n = A109768 (n + 1)

end A109768

/-!
# A109770: Partial sums of A011757.

The programs for A109770, the canonical program `A109770.P18199790595787796081` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A109770 has offset 1).

The definition of A109770 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A109770.P18199790595787796081

`∑[A011757(n+1)]`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A109770

/-- `∑[A011757(n+1)]` -/
def P18199790595787796081.Spec : Prop :=
  ∀ n, P18199790595787796081.a n = A109770 (n + 1)

theorem P18199790595787796081.correct : P18199790595787796081.Spec := by
  intro n
  simp only [A109770, Nat.add_sub_cancel]

end A109770

/-! ## A109770.P8685060304221168822

`∑[A001248(n+1)-A123914(n+1)]`
-/

namespace A109770.P8685060304221168822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 1) - A123914 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109770.P8685060304221168822

namespace A109770

/-- `∑[A001248(n+1)-A123914(n+1)]` -/
def P8685060304221168822.Spec : Prop :=
  ∀ n, P8685060304221168822.a n = A109770 (n + 1)

theorem P8685060304221168822.correct : P8685060304221168822.Spec := by
  intro n
  simp only [A109770, Nat.add_sub_cancel, A109770.P8685060304221168822.f1, A109770.P8685060304221168822.a, A109770.P18199790595787796081.f1, A109770.P18199790595787796081.a, A001248, A001248.P16278241061688229202.a, A011757, A011757.P9513370563335708444.a, A123914, A123914.P8916338796586414767.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A109770

/-! ## A109770.P1479725384632924051

`∑[A213926(n+1)+A000040(n+1)]`
-/

namespace A109770.P1479725384632924051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213926 (n + 1) + A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109770.P1479725384632924051

namespace A109770

/-- `∑[A213926(n+1)+A000040(n+1)]` -/
def P1479725384632924051.Spec : Prop :=
  ∀ n, P1479725384632924051.a n = A109770 (n + 1)

theorem P1479725384632924051.correct : P1479725384632924051.Spec := by
  intro n
  simp only [A109770, Nat.add_sub_cancel, A109770.P1479725384632924051.f1, A109770.P1479725384632924051.a, A109770.P18199790595787796081.f1, A109770.P18199790595787796081.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A011757, A011757.P9513370563335708444.a, A213926, A213926.P7531459219814302167.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A109770

/-! ## A109770.P13934373448253187453

`∑[record[A011757(A133310(n))]]`
-/

namespace A109770.P13934373448253187453
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011757 (A133310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109770.P13934373448253187453

namespace A109770

/-- `∑[record[A011757(A133310(n))]]` -/
def P13934373448253187453.Spec : Prop :=
  ∀ n, P13934373448253187453.a n = A109770 (n + 1)

end A109770

/-! ## A109770.P12732767627998445158

`∑[A092504(n+1)-A000040(n+1)]`
-/

namespace A109770.P12732767627998445158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092504 (n + 1) - A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109770.P12732767627998445158

namespace A109770

/-- `∑[A092504(n+1)-A000040(n+1)]` -/
def P12732767627998445158.Spec : Prop :=
  ∀ n, P12732767627998445158.a n = A109770 (n + 1)

theorem P12732767627998445158.correct : P12732767627998445158.Spec := by
  intro n
  simp only [A109770, Nat.add_sub_cancel, A109770.P12732767627998445158.f1, A109770.P12732767627998445158.a, A109770.P18199790595787796081.f1, A109770.P18199790595787796081.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A011757, A011757.P9513370563335708444.a, A092504, A092504.P5803117585915799915.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A109770

/-! ## A109770.P5241554291326157258

`∑[record[A011757(A126759(n))]]`
-/

namespace A109770.P5241554291326157258
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011757 (A126759 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109770.P5241554291326157258

namespace A109770

/-- `∑[record[A011757(A126759(n))]]` -/
def P5241554291326157258.Spec : Prop :=
  ∀ n, P5241554291326157258.a n = A109770 (n + 1)

end A109770

/-! ## A109770.P5288477645432372351

`∑[A063076(n)+a(n-1)]` with `a(0)=2`
-/

namespace A109770.P5288477645432372351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  A063076 n + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109770.P5288477645432372351

namespace A109770

/-- `∑[A063076(n)+a(n-1)]` -/
def P5288477645432372351.Spec : Prop :=
  ∀ n, P5288477645432372351.a n = A109770 (n + 1)

end A109770

/-! ## A109770.P14047652676292019570

`∑[A323526(n+2)]`
-/

namespace A109770.P14047652676292019570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323526 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109770.P14047652676292019570

namespace A109770

/-- `∑[A323526(n+2)]` -/
def P14047652676292019570.Spec : Prop :=
  ∀ n, P14047652676292019570.a n = A109770 (n + 1)

end A109770

/-! ## A109770.P12589364106501244229

`∑[A296857(A000040(n+1))]`
-/

namespace A109770.P12589364106501244229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296857 (A000040 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109770.P12589364106501244229

namespace A109770

/-- `∑[A296857(A000040(n+1))]` -/
def P12589364106501244229.Spec : Prop :=
  ∀ n, P12589364106501244229.a n = A109770 (n + 1)

end A109770

/-! ## A109770.P16859947747938033638

`∑[p?[A064517(n+1)]]`
-/

namespace A109770.P16859947747938033638
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064517 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109770.P16859947747938033638

namespace A109770

/-- `∑[p?[A064517(n+1)]]` -/
def P16859947747938033638.Spec : Prop :=
  ∀ n, P16859947747938033638.a n = A109770 (n + 1)

end A109770

/-! ## A109770.P15622431022118330327

`∑[p?[A323528(n+1)]]`
-/

namespace A109770.P15622431022118330327
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323528 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109770.P15622431022118330327

namespace A109770

/-- `∑[p?[A323528(n+1)]]` -/
def P15622431022118330327.Spec : Prop :=
  ∀ n, P15622431022118330327.a n = A109770 (n + 1)

end A109770

/-! ## A109770.P4058085621528352639

`∑[A001748(n*(n+2)+1)/3]`
-/

namespace A109770.P4058085621528352639
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001748 (n * (n + 2) + 1) : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109770.P4058085621528352639

namespace A109770

/-- `∑[A001748(n*(n+2)+1)/3]` -/
def P4058085621528352639.Spec : Prop :=
  ∀ n, P4058085621528352639.a n = (A109770 (n + 1) : ℚ)

end A109770

/-! ## A109770.P15253532244659378543

`∑[A156037((n+1)²)+1]`
-/

namespace A109770.P15253532244659378543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156037 ((n + 1) ^ 2) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109770.P15253532244659378543

namespace A109770

/-- `∑[A156037((n+1)²)+1]` -/
def P15253532244659378543.Spec : Prop :=
  ∀ n, P15253532244659378543.a n = A109770 (n + 1)

end A109770

/-! ## A109770.P1882093034442227779

`∑[A000040((n+1)²)]`
-/

namespace A109770.P1882093034442227779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 ((n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109770.P1882093034442227779

namespace A109770

/-- `∑[A000040((n+1)²)]` -/
def P1882093034442227779.Spec : Prop :=
  ∀ n, P1882093034442227779.a n = A109770 (n + 1)

end A109770

/-! ## A109770.P18256253804539583435

`∑[A068519((n+1)²)]`
-/

namespace A109770.P18256253804539583435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068519 ((n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109770.P18256253804539583435

namespace A109770

/-- `∑[A068519((n+1)²)]` -/
def P18256253804539583435.Spec : Prop :=
  ∀ n, P18256253804539583435.a n = A109770 (n + 1)

end A109770

/-! ## A109770.P3131539532541773746

`∑[A161847((n+1)²)]`
-/

namespace A109770.P3131539532541773746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161847 ((n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109770.P3131539532541773746

namespace A109770

/-- `∑[A161847((n+1)²)]` -/
def P3131539532541773746.Spec : Prop :=
  ∀ n, P3131539532541773746.a n = A109770 (n + 1)

end A109770

/-! ## A109770.P15001488169440278456

`∑[A346180((n+1)²)]`
-/

namespace A109770.P15001488169440278456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346180 ((n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109770.P15001488169440278456

namespace A109770

/-- `∑[A346180((n+1)²)]` -/
def P15001488169440278456.Spec : Prop :=
  ∀ n, P15001488169440278456.a n = A109770 (n + 1)

end A109770

/-! ## A109770.P9721980370445207079

`∑[A383578((n+1)²)]`
-/

namespace A109770.P9721980370445207079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383578 ((n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109770.P9721980370445207079

namespace A109770

/-- `∑[A383578((n+1)²)]` -/
def P9721980370445207079.Spec : Prop :=
  ∀ n, P9721980370445207079.a n = A109770 (n + 1)

end A109770

/-! ## A109770.P15847278602394419753

`∑[A006005((n+1)²)]+1`
-/

namespace A109770.P15847278602394419753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 ((n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A109770.P15847278602394419753

namespace A109770

/-- `∑[A006005((n+1)²)]+1` -/
def P15847278602394419753.Spec : Prop :=
  ∀ n, P15847278602394419753.a n = A109770 (n + 1)

end A109770

/-! ## A109770.P5935485181391386983

`∑[A006093((n+1)²)+1]`
-/

namespace A109770.P5935485181391386983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 ((n + 1) ^ 2) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109770.P5935485181391386983

namespace A109770

/-- `∑[A006093((n+1)²)+1]` -/
def P5935485181391386983.Spec : Prop :=
  ∀ n, P5935485181391386983.a n = A109770 (n + 1)

theorem P5935485181391386983.correct : P5935485181391386983.Spec := by
  intro n
  simp only [A109770, Nat.add_sub_cancel, A109770.P5935485181391386983.f1, A109770.P5935485181391386983.a, A109770.P18199790595787796081.f1, A109770.P18199790595787796081.a, A006093, A006093.P2906174024863549003.a, A011757, A011757.P9513370563335708444.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A109770

/-!
# A109771: Expansion of g.f.: sqrt(1+6*x+x^2).

The programs for A109771, the canonical program `A109771.P3414303503878766770` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A109771 has offset 0).

The definition of A109771 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 136 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A109771.P3414303503878766770

`A112478(A028310(n))-A103137(n)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A109771

/-- `A112478(A028310(n))-A103137(n)` -/
def P3414303503878766770.Spec : Prop :=
  ∀ n, P3414303503878766770.a n = A109771 n

theorem P3414303503878766770.correct : P3414303503878766770.Spec := by
  intro n
  simp only [A109771]

end A109771

/-! ## A109771.P15294642401569502681

`A112478(A000007(n)+n)-A103137(n)`
-/

namespace A109771.P15294642401569502681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112478 (A000007 n + (n : ℤ)).toNat - A103137 n

end

end A109771.P15294642401569502681

namespace A109771

/-- `A112478(A000007(n)+n)-A103137(n)` -/
def P15294642401569502681.Spec : Prop :=
  ∀ n, P15294642401569502681.a n = A109771 n

end A109771

/-! ## A109771.P3113901211755620261

`A000007(n)-(A103137(n)-A112478(n))`
-/

namespace A109771.P3113901211755620261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n - (A103137 n - A112478 n)

end

end A109771.P3113901211755620261

namespace A109771

/-- `A000007(n)-(A103137(n)-A112478(n))` -/
def P3113901211755620261.Spec : Prop :=
  ∀ n, P3113901211755620261.a n = A109771 n

end A109771

/-! ## A109771.P13734993440047683715

`(A112478(n)-A103137(n))^A001222(A069932(2*n+1))`
-/

namespace A109771.P13734993440047683715
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112478 n - A103137 n : ℚ) ^ (A001222 (A069932 (2 * n + 1)).toNat : ℤ)

end

end A109771.P13734993440047683715

namespace A109771

/-- `(A112478(n)-A103137(n))^A001222(A069932(2*n+1))` -/
def P13734993440047683715.Spec : Prop :=
  ∀ n, P13734993440047683715.a n = (A109771 n : ℚ)

end A109771

/-! ## A109771.P8846867881123403229

`A112478(n)-A103137(n)%A006318(n)`
-/

namespace A109771.P8846867881123403229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112478 n - Int.tmod (A103137 n) (A006318 n)

end

end A109771.P8846867881123403229

namespace A109771

/-- `A112478(n)-A103137(n)%A006318(n)` -/
def P8846867881123403229.Spec : Prop :=
  ∀ n, P8846867881123403229.a n = A109771 n

end A109771

/-! ## A109771.P4965942204362226759

`A008683(6*(n+1)²)+A112478(n)-A103137(n)`
-/

namespace A109771.P4965942204362226759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (6 * (n + 1) ^ 2) + (A112478 n - A103137 n)

end

end A109771.P4965942204362226759

namespace A109771

/-- `A008683(6*(n+1)²)+A112478(n)-A103137(n)` -/
def P4965942204362226759.Spec : Prop :=
  ∀ n, P4965942204362226759.a n = A109771 n

end A109771

/-!
# A109774: a(n) = (3^(n-1) - 1) * (3^n - 1)/2.

The programs for A109774, the canonical program `A109774.P9157479695294772489` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A109774 has offset 1).

The definition of A109774 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A109774.P9157479695294772489

`(3^n-1)*(3^(n+1)-1)/2`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A109774

/-- `(3^n-1)*(3^(n+1)-1)/2` -/
def P9157479695294772489.Spec : Prop :=
  ∀ n, P9157479695294772489.a n = (A109774 (n + 1) : ℚ)

end A109774

/-! ## A109774.P1773141779667575007

`3*a(n-1)+9^n-1` with `a(0)=0`
-/

namespace A109774.P1773141779667575007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  3 * a (n - 1) + ((9 ^ n : ℤ) - 1)

end

end A109774.P1773141779667575007

namespace A109774

/-- `3*a(n-1)+9^n-1` -/
def P1773141779667575007.Spec : Prop :=
  ∀ n, P1773141779667575007.a n = A109774 (n + 1)

end A109774

/-! ## A109774.P652177445703818865

`∑[12*a(n-1)-27*a(n-2)]` with `a(0)=0, a(1)=8`
-/

namespace A109774.P652177445703818865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 8] fun n f1 =>
  12 * f1 (n - 1) - 27 * f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109774.P652177445703818865

namespace A109774

/-- `∑[12*a(n-1)-27*a(n-2)]` -/
def P652177445703818865.Spec : Prop :=
  ∀ n, P652177445703818865.a n = A109774 (n + 1)

end A109774

/-! ## A109774.P15695063187330490855

`∑[4*A219205(n)]`
-/

namespace A109774.P15695063187330490855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A219205 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109774.P15695063187330490855

namespace A109774

/-- `∑[4*A219205(n)]` -/
def P15695063187330490855.Spec : Prop :=
  ∀ n, P15695063187330490855.a n = A109774 (n + 1)

end A109774

/-! ## A109774.P10788464719504878568

`2*A107767(Δ[n²])`
-/

namespace A109774.P10788464719504878568
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A107767 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A109774.P10788464719504878568

namespace A109774

/-- `2*A107767(Δ[n²])` -/
def P10788464719504878568.Spec : Prop :=
  ∀ n, P10788464719504878568.a n = A109774 (n + 1)

end A109774

/-! ## A109774.P16075232891509430074

`2*A221276(Δ[n²])`
-/

namespace A109774.P16075232891509430074
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A221276 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A109774.P16075232891509430074

namespace A109774

/-- `2*A221276(Δ[n²])` -/
def P16075232891509430074.Spec : Prop :=
  ∀ n, P16075232891509430074.a n = A109774 (n + 1)

end A109774

/-! ## A109774.P15480261821232615790

`∑[8*A167993(2*n)]`
-/

namespace A109774.P15480261821232615790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A167993 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109774.P15480261821232615790

namespace A109774

/-- `∑[8*A167993(2*n)]` -/
def P15480261821232615790.Spec : Prop :=
  ∀ n, P15480261821232615790.a n = A109774 (n + 1)

end A109774

/-! ## A109774.P14208968344206057562

`A016142(n)-∑[3^n]`
-/

namespace A109774.P14208968344206057562
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016142 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A109774.P14208968344206057562

namespace A109774

/-- `A016142(n)-∑[3^n]` -/
def P14208968344206057562.Spec : Prop :=
  ∀ n, P14208968344206057562.a n = A109774 (n + 1)

end A109774

/-! ## A109774.P3646520468333386608

`4*A099583(2*n+1)`
-/

namespace A109774.P3646520468333386608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A099583 (2 * n + 1)

end

end A109774.P3646520468333386608

namespace A109774

/-- `4*A099583(2*n+1)` -/
def P3646520468333386608.Spec : Prop :=
  ∀ n, P3646520468333386608.a n = A109774 (n + 1)

end A109774

/-! ## A109774.P4262796463325778258

`∑[4*A122007(2*n+1)]`
-/

namespace A109774.P4262796463325778258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A122007 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109774.P4262796463325778258

namespace A109774

/-- `∑[4*A122007(2*n+1)]` -/
def P4262796463325778258.Spec : Prop :=
  ∀ n, P4262796463325778258.a n = A109774 (n + 1)

end A109774

/-! ## A109774.P8530982849914396519

`lcm(3^n-1, ∑[A008776(n)])`
-/

namespace A109774.P8530982849914396519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008776 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((3 ^ n : ℤ) - 1) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A109774.P8530982849914396519

namespace A109774

/-- `lcm(3^n-1, ∑[A008776(n)])` -/
def P8530982849914396519.Spec : Prop :=
  ∀ n, (P8530982849914396519.a n : ℤ) = A109774 (n + 1)

end A109774

/-! ## A109774.P16173842087973375989

`A034472(2*n)+xor(3, 3*(a(n-1)-1))` with `a(0)=0`
-/

namespace A109774.P16173842087973375989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A034472 (2 * n) + Int.xor 3 (3 * (a (n - 1) - 1))

end

end A109774.P16173842087973375989

namespace A109774

/-- `A034472(2*n)+xor(3, 3*(a(n-1)-1))` -/
def P16173842087973375989.Spec : Prop :=
  ∀ n, P16173842087973375989.a n = A109774 (n + 1)

end A109774

/-! ## A109774.P1859963540952838868

`lcm(∑[A008776(n)], A024023(n))`
-/

namespace A109774.P1859963540952838868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008776 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (∑ j ∈ Finset.range (n + 1), f1 j) (A024023 n)

end

end A109774.P1859963540952838868

namespace A109774

/-- `lcm(∑[A008776(n)], A024023(n))` -/
def P1859963540952838868.Spec : Prop :=
  ∀ n, (P1859963540952838868.a n : ℤ) = A109774 (n + 1)

end A109774

/-! ## A109774.P7164012178574014772

`A096053(n)+1-A008776(n)`
-/

namespace A109774.P7164012178574014772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096053 n + (1 - A008776 n)

end

end A109774.P7164012178574014772

namespace A109774

/-- `A096053(n)+1-A008776(n)` -/
def P7164012178574014772.Spec : Prop :=
  ∀ n, P7164012178574014772.a n = A109774 (n + 1)

end A109774

/-! ## A109774.P6537557392400798150

`A003462(n+1)*A024023(n)`
-/

namespace A109774.P6537557392400798150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003462 (n + 1) * A024023 n

end

end A109774.P6537557392400798150

namespace A109774

/-- `A003462(n+1)*A024023(n)` -/
def P6537557392400798150.Spec : Prop :=
  ∀ n, P6537557392400798150.a n = A109774 (n + 1)

end A109774

/-! ## A109774.P9015670749806686476

`A003462(n)*A103453(n+1)`
-/

namespace A109774.P9015670749806686476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003462 n * A103453 (n + 1)

end

end A109774.P9015670749806686476

namespace A109774

/-- `A003462(n)*A103453(n+1)` -/
def P9015670749806686476.Spec : Prop :=
  ∀ n, P9015670749806686476.a n = A109774 (n + 1)

end A109774

/-! ## A109774.P4122334061734410808

`A191681(n)+(2*A003462(n))²`
-/

namespace A109774.P4122334061734410808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191681 n + (2 * A003462 n) ^ 2

end

end A109774.P4122334061734410808

namespace A109774

/-- `A191681(n)+(2*A003462(n))²` -/
def P4122334061734410808.Spec : Prop :=
  ∀ n, P4122334061734410808.a n = A109774 (n + 1)

end A109774

/-! ## A109774.P350704196534951829

`A024023(n)²+A024101(n)/2`
-/

namespace A109774.P350704196534951829
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024023 n ^ 2 : ℚ) + (A024101 n : ℚ) / 2

end

end A109774.P350704196534951829

namespace A109774

/-- `A024023(n)²+A024101(n)/2` -/
def P350704196534951829.Spec : Prop :=
  ∀ n, P350704196534951829.a n = (A109774 (n + 1) : ℚ)

end A109774

/-! ## A109774.P3327578412605109700

`A059410(n)+A024023(n)²/2`
-/

namespace A109774.P3327578412605109700
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059410 n : ℚ) + (A024023 n ^ 2 : ℚ) / 2

end

end A109774.P3327578412605109700

namespace A109774

/-- `A059410(n)+A024023(n)²/2` -/
def P3327578412605109700.Spec : Prop :=
  ∀ n, P3327578412605109700.a n = (A109774 (n + 1) : ℚ)

end A109774

/-! ## A109774.P6139710421643321745

`∑[A003946(2*n)-A003946(n)]`
-/

namespace A109774.P6139710421643321745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003946 (2 * n) - A003946 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109774.P6139710421643321745

namespace A109774

/-- `∑[A003946(2*n)-A003946(n)]` -/
def P6139710421643321745.Spec : Prop :=
  ∀ n, P6139710421643321745.a n = A109774 (n + 1)

end A109774

/-!
# A109775: Primes in A059504.

The programs for A109775, there is no canonical definition to state claims against.
-/

/-! ## A109775.P16590313356314919078

`p?[A059504(n+1)]`
-/

namespace A109775.P16590313356314919078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059504 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A109775.P16590313356314919078

/-! ## A109775.P8213469301675624444

`p?[record[A059504(A291769(n))]]`
-/

namespace A109775.P8213469301675624444
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059504 (A291769 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A109775.P8213469301675624444

/-! ## A109775.P9895561316512208969

`p?[record[A059504(A292266(n))]]`
-/

namespace A109775.P9895561316512208969
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059504 (A292266 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A109775.P9895561316512208969

/-! ## A109775.P4469135617633950053

`∩[A015919(n+1), A059504(n+1)]`
-/

namespace A109775.P4469135617633950053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015919 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059504 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A109775.P4469135617633950053

/-!
# A109777: G.f. = f(x), where f(x)^2 = o.g.f. for A088313 (with offset 0).

The programs for A109777, there is no canonical definition to state claims against.
-/

/-! ## A109777.P16253358043037462981

`A302042(A212627(n+1)+A004213(n))`
-/

namespace A109777.P16253358043037462981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302042 (A212627 (n + 1) + A004213 n).toNat

end

end A109777.P16253358043037462981

/-! ## A109777.P13118754922597740520

`A233583(a(n-1)+(2*n-1)*a(n-1)-(n-1)*(n-2)*a(n-2))` with `a(0)=1, a(1)=1`
-/

namespace A109777.P13118754922597740520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A233583 (a (n - 1) + (((2 * n : ℤ) - 1) * a (n - 1) - ((n : ℤ) - 1) * (((n : ℤ) - 2) * a (n - 2)))).toNat

end

end A109777.P13118754922597740520

/-!
# A109778: G.f. = 18th root of Hamming weight enumerator of [18,9,8]_4 self-dual code S_18 over GF(4) (cf. A014487).

The programs for A109778, there is no canonical definition to state claims against.
-/

/-! ## A109778.P5783923076272523299

`A109142(gcd(2*n, floor(n/2)))`
-/

namespace A109778.P5783923076272523299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109142 (Int.gcd (2 * n : ℤ) ⌊(n : ℚ) / 2⌋)

end

end A109778.P5783923076272523299

/-! ## A109778.P16209608681857757948

`A109142(A057979(n+1))`
-/

namespace A109778.P16209608681857757948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109142 (A057979 (n + 1)).toNat

end

end A109778.P16209608681857757948

/-! ## A109778.P4024889492876441010

`A109142(n-A029578(n))`
-/

namespace A109778.P4024889492876441010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109142 ((n : ℤ) - A029578 n).toNat

end

end A109778.P4024889492876441010

/-! ## A109778.P14073389978445948316

`A109142(1-A029579(n)+n)`
-/

namespace A109778.P14073389978445948316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109142 (1 - A029579 n + (n : ℤ)).toNat

end

end A109778.P14073389978445948316

/-! ## A109778.P7428096342067720931

`A109142(1-(A029579(n)-n))`
-/

namespace A109778.P7428096342067720931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109142 (1 - (A029579 n - (n : ℤ))).toNat

end

end A109778.P7428096342067720931

/-! ## A109778.P16572662561971446280

`A059841(n)*A109142(A078898(n))`
-/

namespace A109778.P16572662561971446280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 n * A109142 (A078898 n).toNat

end

end A109778.P16572662561971446280

/-!
# A109781: Expansion of (-1+x+2*x^2-6*x^3+x^4+x^5) / ((x-1)*(x^2-x+1)*(x^2-2*x-1)*(x+1)^2).

The programs for A109781, the canonical program `A109781.P2705966192617693305` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A109781 has offset 0).

The definition of A109781 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((-1+x+2x^2-6x^3+x^4+x^5)/(1+2x-2x^2-x^3+3x^4-2x^5-2x^6+x^7))` (program `A109781.P2705966192617693305`, by `A109781.P2705966192617693305.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A109781.P2705966192617693305

`ogf((-1+x+2x^2-6x^3+x^4+x^5)/(1+2x-2x^2-x^3+3x^4-2x^5-2x^6+x^7))`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A109781

/-- `ogf((-1+x+2x^2-6x^3+x^4+x^5)/(1+2x-2x^2-x^3+3x^4-2x^5-2x^6+x^7))` -/
def P2705966192617693305.Spec : Prop :=
  ∀ n, P2705966192617693305.a n = A109781 n

theorem P2705966192617693305.correct : P2705966192617693305.Spec := by
  intro n
  simp only [A109781]

end A109781

/-!
# A109782: Expansion of x*(1+2*x^2-2*x^3+x^4) / ((x-1)*(x^2-2*x-1)*(x^2-x+1)*(x+1)^2).

The programs for A109782, the canonical program `A109782.P11985667593220938033` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A109782 has offset 0).

The definition of A109782 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((x+2x^3-2x^4+x^5)/(1+2x-2x^2-x^3+3x^4-2x^5-2x^6+x^7))` (program `A109782.P11985667593220938033`, by `A109782.P11985667593220938033.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A109782.P11985667593220938033

`ogf((x+2x^3-2x^4+x^5)/(1+2x-2x^2-x^3+3x^4-2x^5-2x^6+x^7))`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A109782

/-- `ogf((x+2x^3-2x^4+x^5)/(1+2x-2x^2-x^3+3x^4-2x^5-2x^6+x^7))` -/
def P11985667593220938033.Spec : Prop :=
  ∀ n, P11985667593220938033.a n = A109782 n

theorem P11985667593220938033.correct : P11985667593220938033.Spec := by
  intro n
  simp only [A109782]

end A109782

/-! ## A109782.P16046424297871527016

`A038219(A038172(n+1))-A038200(n+2)`
-/

namespace A109782.P16046424297871527016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038219 (A038172 (n + 1)).toNat - A038200 (n + 2)

end

end A109782.P16046424297871527016

namespace A109782

/-- `A038219(A038172(n+1))-A038200(n+2)` -/
def P16046424297871527016.Spec : Prop :=
  ∀ n, P16046424297871527016.a n = A109782 n

end A109782

/-! ## A109782.P301870516459695187

`A298859(A154130(n+2))-A038200(n+2)`
-/

namespace A109782.P301870516459695187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298859 (A154130 (n + 2)).toNat - A038200 (n + 2)

end

end A109782.P301870516459695187

namespace A109782

/-- `A298859(A154130(n+2))-A038200(n+2)` -/
def P301870516459695187.Spec : Prop :=
  ∀ n, P301870516459695187.a n = A109782 n

end A109782

/-!
# A109784: Expansion of (x^2-x-1)*(x^3-x^2+x-2) / ((x-1)*(2*x-1)*(x^2+x+1)*(x^2+1)).

The programs for A109784, the canonical program `A109784.P9141357625325975936` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A109784 has offset 0).

The definition of A109784 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((2+x-2x^2+x^3-2x^4+x^5)/(1-2x+x^2-3x^3+2x^4-x^5+2x^6))` (program `A109784.P9141357625325975936`, by `A109784.P9141357625325975936.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A109784.P9141357625325975936

`ogf((2+x-2x^2+x^3-2x^4+x^5)/(1-2x+x^2-3x^3+2x^4-x^5+2x^6))`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A109784

/-- `ogf((2+x-2x^2+x^3-2x^4+x^5)/(1-2x+x^2-3x^3+2x^4-x^5+2x^6))` -/
def P9141357625325975936.Spec : Prop :=
  ∀ n, P9141357625325975936.a n = A109784 n

theorem P9141357625325975936.correct : P9141357625325975936.Spec := by
  intro n
  simp only [A109784]

end A109784

/-! ## A109784.P14098114956757658124

`Δ[A267210(n)-A112689(n+1)]`
-/

namespace A109784.P14098114956757658124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267210 n - A112689 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A109784.P14098114956757658124

namespace A109784

/-- `Δ[A267210(n)-A112689(n+1)]` -/
def P14098114956757658124.Spec : Prop :=
  ∀ n, P14098114956757658124.a n = A109784 n

end A109784

/-! ## A109784.P2554554699381224318

`or(A020986(A067912(n+1)), A163478(n))`
-/

namespace A109784.P2554554699381224318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A020986 (A067912 (n + 1)).toNat) (A163478 n)

end

end A109784.P2554554699381224318

namespace A109784

/-- `or(A020986(A067912(n+1)), A163478(n))` -/
def P2554554699381224318.Spec : Prop :=
  ∀ n, P2554554699381224318.a n = A109784 n

end A109784

/-!
# A109785: Expansion of (1+x+x^2+x^7+x^8-2*x^10-x^12) / ((x+1)*(x^2+1)*(x^2+x+1)*(x^2-x+1)*(x^4-x^2+1)*(x-1)^2).

The programs for A109785, the canonical program `A109785.P14798399789900851680` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A109785 has offset 0).

The definition of A109785 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+x+x^2+x^7+x^8-2x^10-x^12)/(1-x-x^12+x^13))` (program `A109785.P14798399789900851680`, by `A109785.P14798399789900851680.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A109785.P14798399789900851680

`ogf((1+x+x^2+x^7+x^8-2x^10-x^12)/(1-x-x^12+x^13))`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A109785

/-- `ogf((1+x+x^2+x^7+x^8-2x^10-x^12)/(1-x-x^12+x^13))` -/
def P14798399789900851680.Spec : Prop :=
  ∀ n, P14798399789900851680.a n = A109785 n

theorem P14798399789900851680.correct : P14798399789900851680.Spec := by
  intro n
  simp only [A109785]

end A109785

/-!
# A109786: Expansion of -(x+2*x^2+3*x^3-1+5*x^4)/((x+1)*(x^2-3*x+1)*(1+x^2)).

The programs for A109786, the canonical program `A109786.P705998335195508390` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A109786 has offset 0).

The definition of A109786 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-x-2x^2-3x^3-5x^4)/(1-2x-x^2-x^3-2x^4+x^5))` (program `A109786.P705998335195508390`, by `A109786.P705998335195508390.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A109786.P705998335195508390

`ogf((1-x-2x^2-3x^3-5x^4)/(1-2x-x^2-x^3-2x^4+x^5))`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A109786

/-- `ogf((1-x-2x^2-3x^3-5x^4)/(1-2x-x^2-x^3-2x^4+x^5))` -/
def P705998335195508390.Spec : Prop :=
  ∀ n, P705998335195508390.a n = A109786 n

theorem P705998335195508390.correct : P705998335195508390.Spec := by
  intro n
  simp only [A109786]

end A109786

/-! ## A109786.P12815168692915127902

`2*a(n-1)+a(n-2)+a(n-3)+2*a(n-4)-a(n-5)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1, a(4)=1`
-/

namespace A109786.P12815168692915127902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 1, 1] fun n a =>
  2 * a (n - 1) + a (n - 2) + a (n - 3) + 2 * a (n - 4) - a (n - 5)

end

end A109786.P12815168692915127902

namespace A109786

/-- `2*a(n-1)+a(n-2)+a(n-3)+2*a(n-4)-a(n-5)` -/
def P12815168692915127902.Spec : Prop :=
  ∀ n, P12815168692915127902.a n = A109786 n

end A109786

/-! ## A109786.P1776209134650273882

`A111666(n)+1-A111665(n+1)`
-/

namespace A109786.P1776209134650273882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111666 n + (1 - A111665 (n + 1))

end

end A109786.P1776209134650273882

namespace A109786

/-- `A111666(n)+1-A111665(n+1)` -/
def P1776209134650273882.Spec : Prop :=
  ∀ n, P1776209134650273882.a n = A109786 n

end A109786

/-! ## A109786.P12251261872948120841

`A168056(A152163(n)²)`
-/

namespace A109786.P12251261872948120841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168056 (A152163 n ^ 2).toNat

end

end A109786.P12251261872948120841

namespace A109786

/-- `A168056(A152163(n)²)` -/
def P12251261872948120841.Spec : Prop :=
  ∀ n, P12251261872948120841.a n = A109786 n

end A109786

/-! ## A109786.P7060871531380755947

`A168056(Δ[A212804(n)]²)`
-/

namespace A109786.P7060871531380755947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168056 ((f1 (n + 1) - f1 n) ^ 2).toNat

end

end A109786.P7060871531380755947

namespace A109786

/-- `A168056(Δ[A212804(n)]²)` -/
def P7060871531380755947.Spec : Prop :=
  ∀ n, P7060871531380755947.a n = A109786 n

end A109786

/-!
# A109787: Expansion of -(1-x-2*x^2+11*x^4-3*x^3) / ((x-1)*(x+1)*(x^2-3*x+1)*(1+x^2)).

The programs for A109787, the canonical program `A109787.P9232840228922939038` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A109787 has offset 0).

The definition of A109787 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-x-2x^2-3x^3+11x^4)/(1-3x+x^2-x^4+3x^5-x^6))` (program `A109787.P9232840228922939038`, by `A109787.P9232840228922939038.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A109787.P9232840228922939038

`ogf((1-x-2x^2-3x^3+11x^4)/(1-3x+x^2-x^4+3x^5-x^6))`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A109787

/-- `ogf((1-x-2x^2-3x^3+11x^4)/(1-3x+x^2-x^4+3x^5-x^6))` -/
def P9232840228922939038.Spec : Prop :=
  ∀ n, P9232840228922939038.a n = A109787 n

theorem P9232840228922939038.correct : P9232840228922939038.Spec := by
  intro n
  simp only [A109787]

end A109787

/-! ## A109787.P4906718907467084397

`3*a(n-1)-a(n-2)+a(n-4)-3*a(n-5)+a(n-6)` with `a(0)=1, a(1)=2, a(2)=3, a(3)=4, a(4)=21, a(5)=58`
-/

namespace A109787.P4906718907467084397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 3, 4, 21, 58] fun n a =>
  3 * a (n - 1) - a (n - 2) + a (n - 4) - 3 * a (n - 5) + a (n - 6)

end

end A109787.P4906718907467084397

namespace A109787

/-- `3*a(n-1)-a(n-2)+a(n-4)-3*a(n-5)+a(n-6)` -/
def P4906718907467084397.Spec : Prop :=
  ∀ n, P4906718907467084397.a n = A109787 n

end A109787

/-! ## A109787.P5774026872581612123

`A216319(A152360(n+1))+n`
-/

namespace A109787.P5774026872581612123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216319 (A152360 (n + 1)).toNat + (n : ℤ)

end

end A109787.P5774026872581612123

namespace A109787

/-- `A216319(A152360(n+1))+n` -/
def P5774026872581612123.Spec : Prop :=
  ∀ n, P5774026872581612123.a n = A109787 n

end A109787

/-!
# A109788: Admirable numbers whose abundance is < 10.

The programs for A109788, there is no canonical definition to state claims against.
-/

/-! ## A109788.P6734953779685329818

`filter[A259174(n+1), A262683(#)]`
-/

namespace A109788.P6734953779685329818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259174 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A262683 (f1 j).toNat = 1) n)

end

end A109788.P6734953779685329818

/-! ## A109788.P2568171571875240306

`∩[A036456(n+1), A259174(n+1)]`
-/

namespace A109788.P2568171571875240306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036456 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259174 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A109788.P2568171571875240306

/-! ## A109788.P478683794053491463

`∩[A164563(n+1), A259174(n+1)]`
-/

namespace A109788.P478683794053491463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164563 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259174 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A109788.P478683794053491463

/-! ## A109788.P316667001255928344

`∩[A182859(n+1), A259174(n+1)]`
-/

namespace A109788.P316667001255928344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182859 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259174 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A109788.P316667001255928344

/-!
# A109789: a(n) = prime(1^3) + prime(2^3) + prime(3^3) + ... + prime(n^3).

The programs for A109789, there is no canonical definition to state claims against.
-/

/-! ## A109789.P16314924933302131955

`∑[A055875(n+1)]`
-/

namespace A109789.P16314924933302131955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055875 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109789.P16314924933302131955

/-! ## A109789.P5175100867777203616

`∑[record[A055875(A008611(n))]]`
-/

namespace A109789.P5175100867777203616
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055875 (A008611 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109789.P5175100867777203616

/-! ## A109789.P12969550486569083773

`∑[record[A055875(A028242(n))]]`
-/

namespace A109789.P12969550486569083773
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055875 (A028242 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109789.P12969550486569083773

/-! ## A109789.P15447102528793096817

`∑[record[A055875(A133310(n))]]`
-/

namespace A109789.P15447102528793096817
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055875 (A133310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109789.P15447102528793096817

/-! ## A109789.P11223014274213239154

`∑[record[A055875(A246694(n))]]`
-/

namespace A109789.P11223014274213239154
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055875 (A246694 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109789.P11223014274213239154

/-! ## A109789.P862732244998094017

`A055875(A008585(n+1)/3)+a(n-1)` with `a(0)=2`
-/

namespace A109789.P862732244998094017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A055875 (SequenceMachineLib.roundAway ((A008585 (n + 1) : ℚ) / 3)).toNat + a (n - 1)

end

end A109789.P862732244998094017

/-! ## A109789.P13583864627866989550

`∑[A030078(n+1)-A262199(n+1)]`
-/

namespace A109789.P13583864627866989550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030078 (n + 1) - A262199 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109789.P13583864627866989550

/-! ## A109789.P13322646482476563701

`∑[A000040(n+1)^3-A262199(n+1)]`
-/

namespace A109789.P13322646482476563701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) ^ 3 - A262199 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109789.P13322646482476563701

/-!
# A109790: Numbers k such that A083186(k) is prime.

The programs for A109790, there is no canonical definition to state claims against.
-/

/-! ## A109790.P16528296701937476964

`A000720(A000720(A261148(n+1)))`
-/

namespace A109790.P16528296701937476964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A000720 (A261148 (n + 1)).toNat).toNat

end

end A109790.P16528296701937476964

/-! ## A109790.P2389488122018345424

`A049084(∑{d}[A261148(n+1), A061395(#)])`
-/

namespace A109790.P2389488122018345424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261148 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (∑ d ∈ Nat.divisors (f1 n).natAbs, A061395 d).toNat

end

end A109790.P2389488122018345424

/-! ## A109790.P14077407963465832076

`A056239(∑{d}[A261148(n+1), A061395(#)])`
-/

namespace A109790.P14077407963465832076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261148 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (∑ d ∈ Nat.divisors (f1 n).natAbs, A061395 d).toNat

end

end A109790.P14077407963465832076

/-! ## A109790.P17110839005892015603

`A061395(∑{d}[A261148(n+1), A061395(#)])`
-/

namespace A109790.P17110839005892015603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261148 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (∑ d ∈ Nat.divisors (f1 n).natAbs, A061395 d).toNat

end

end A109790.P17110839005892015603

/-!
# A109791: a(n) = prime(n^4).

The programs for A109791, the canonical program `A109791.P6113470772709236306` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A109791 has offset 1).

The definition of A109791 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040((n+1)^4)` (program `A109791.P6113470772709236306`, by `A109791.P6113470772709236306.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A109791.P6113470772709236306

`A000040((n+1)^4)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A109791

/-- `A000040((n+1)^4)` -/
def P6113470772709236306.Spec : Prop :=
  ∀ n, P6113470772709236306.a n = A109791 (n + 1)

theorem P6113470772709236306.correct : P6113470772709236306.Spec := by
  intro n
  simp only [A109791, Nat.add_sub_cancel]

end A109791

/-! ## A109791.P12828034897355994056

`A011757((n+1)²)`
-/

namespace A109791.P12828034897355994056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011757 ((n + 1) ^ 2)

end

end A109791.P12828034897355994056

namespace A109791

/-- `A011757((n+1)²)` -/
def P12828034897355994056.Spec : Prop :=
  ∀ n, P12828034897355994056.a n = A109791 (n + 1)

end A109791

/-! ## A109791.P8266837565802445253

`root(A011757(record[(1-n)²]), 2)²`
-/

namespace A109791.P8266837565802445253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (n : ℤ)) ^ 2

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((A011757 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat : ℝ) ^ (1 / (2 : ℝ))) ^ 2

end

end A109791.P8266837565802445253

namespace A109791

/-- `root(A011757(record[(1-n)²]), 2)²` -/
def P8266837565802445253.Spec : Prop :=
  ∀ n, P8266837565802445253.a n = (A109791 (n + 1) : ℝ)

end A109791

/-! ## A109791.P958125882925905215

`or(char[3], A011757(record[(n-1)²]))`
-/

namespace A109791.P958125882925905215
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A011757 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat)

end

end A109791.P958125882925905215

namespace A109791

/-- `or(char[3], A011757(record[(n-1)²]))` -/
def P958125882925905215.Spec : Prop :=
  ∀ n, P958125882925905215.a n = A109791 (n + 1)

end A109791

/-! ## A109791.P4046612455395900318

`xor(1, xor(1, A011757((n+1)^2)))`
-/

namespace A109791.P4046612455395900318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (Int.xor 1 (A011757 ((n + 1) ^ 2)))

end

end A109791.P4046612455395900318

namespace A109791

/-- `xor(1, xor(1, A011757((n+1)^2)))` -/
def P4046612455395900318.Spec : Prop :=
  ∀ n, P4046612455395900318.a n = A109791 (n + 1)

end A109791

/-! ## A109791.P17070589053982558733

`record[A011757(A065648(n)²)]`
-/

namespace A109791.P17070589053982558733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011757 (A065648 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A109791.P17070589053982558733

namespace A109791

/-- `record[A011757(A065648(n)²)]` -/
def P17070589053982558733.Spec : Prop :=
  ∀ n, P17070589053982558733.a n = A109791 (n + 1)

end A109791

/-! ## A109791.P12200852442394652228

`record[A011757(A110516(n)²)]`
-/

namespace A109791.P12200852442394652228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011757 (A110516 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A109791.P12200852442394652228

namespace A109791

/-- `record[A011757(A110516(n)²)]` -/
def P12200852442394652228.Spec : Prop :=
  ∀ n, P12200852442394652228.a n = A109791 (n + 1)

end A109791

/-! ## A109791.P2487503115244673496

`record[A011757(A126759(n)²)]`
-/

namespace A109791.P2487503115244673496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011757 (A126759 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A109791.P2487503115244673496

namespace A109791

/-- `record[A011757(A126759(n)²)]` -/
def P2487503115244673496.Spec : Prop :=
  ∀ n, P2487503115244673496.a n = A109791 (n + 1)

end A109791

/-! ## A109791.P369025512503077639

`record[A011757(A133310(n)²)]`
-/

namespace A109791.P369025512503077639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011757 (A133310 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A109791.P369025512503077639

namespace A109791

/-- `record[A011757(A133310(n)²)]` -/
def P369025512503077639.Spec : Prop :=
  ∀ n, P369025512503077639.a n = A109791 (n + 1)

end A109791

/-! ## A109791.P15600036136124277142

`record[A011757(A007891(n+1))]`
-/

namespace A109791.P15600036136124277142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011757 (A007891 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A109791.P15600036136124277142

namespace A109791

/-- `record[A011757(A007891(n+1))]` -/
def P15600036136124277142.Spec : Prop :=
  ∀ n, P15600036136124277142.a n = A109791 (n + 1)

end A109791

/-! ## A109791.P8376375579670373355

`record[A011757(A007892(n+1))]`
-/

namespace A109791.P8376375579670373355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011757 (A007892 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A109791.P8376375579670373355

namespace A109791

/-- `record[A011757(A007892(n+1))]` -/
def P8376375579670373355.Spec : Prop :=
  ∀ n, P8376375579670373355.a n = A109791 (n + 1)

end A109791

/-! ## A109791.P555466173073914908

`record[A011757(A007893(n+1))]`
-/

namespace A109791.P555466173073914908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011757 (A007893 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A109791.P555466173073914908

namespace A109791

/-- `record[A011757(A007893(n+1))]` -/
def P555466173073914908.Spec : Prop :=
  ∀ n, P555466173073914908.a n = A109791 (n + 1)

end A109791

/-! ## A109791.P14419421316161123350

`or(char[1], A011757(A000290(n+1)))`
-/

namespace A109791.P14419421316161123350
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A011757 (A000290 (n + 1)).toNat)

end

end A109791.P14419421316161123350

namespace A109791

/-- `or(char[1], A011757(A000290(n+1)))` -/
def P14419421316161123350.Spec : Prop :=
  ∀ n, P14419421316161123350.a n = A109791 (n + 1)

end A109791

/-! ## A109791.P14543916455607561134

`gcd(A000038(n), A011757(record[(1-n)²]))`
-/

namespace A109791.P14543916455607561134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (n : ℤ)) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A011757 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat)

end

end A109791.P14543916455607561134

namespace A109791

/-- `gcd(A000038(n), A011757(record[(1-n)²]))` -/
def P14543916455607561134.Spec : Prop :=
  ∀ n, (P14543916455607561134.a n : ℤ) = A109791 (n + 1)

end A109791

/-! ## A109791.P8106303180995902498

`A080343(∑[n])+A011757((n+1)^2)`
-/

namespace A109791.P8106303180995902498
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080343 (∑ j ∈ Finset.range (n + 1), f1 j) + A011757 ((n + 1) ^ 2)

end

end A109791.P8106303180995902498

namespace A109791

/-- `A080343(∑[n])+A011757((n+1)^2)` -/
def P8106303180995902498.Spec : Prop :=
  ∀ n, P8106303180995902498.a n = A109791 (n + 1)

end A109791

/-! ## A109791.P15624498951843906628

`A030514(n+1)-2*A143682(n+1)`
-/

namespace A109791.P15624498951843906628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030514 (n + 1) - 2 * A143682 (n + 1)

end

end A109791.P15624498951843906628

namespace A109791

/-- `A030514(n+1)-2*A143682(n+1)` -/
def P15624498951843906628.Spec : Prop :=
  ∀ n, P15624498951843906628.a n = A109791 (n + 1)

end A109791

/-! ## A109791.P2019948206600404077

`A000034(2*n)*A011757(record[(1-n)²])`
-/

namespace A109791.P2019948206600404077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (n : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (2 * n) * A011757 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A109791.P2019948206600404077

namespace A109791

/-- `A000034(2*n)*A011757(record[(1-n)²])` -/
def P2019948206600404077.Spec : Prop :=
  ∀ n, P2019948206600404077.a n = A109791 (n + 1)

end A109791

/-! ## A109791.P14855091376158790238

`A007318(C(2, n))*A011757(record[(1-n)²])`
-/

namespace A109791.P14855091376158790238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (n : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A011757 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A109791.P14855091376158790238

namespace A109791

/-- `A007318(C(2, n))*A011757(record[(1-n)²])` -/
def P14855091376158790238.Spec : Prop :=
  ∀ n, P14855091376158790238.a n = A109791 (n + 1)

end A109791

/-! ## A109791.P4516678338766417411

`(A007318(n)%2)!*A011757((n+1)^2)`
-/

namespace A109791.P4516678338766417411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (Int.tmod (A007318 n) 2).toNat : ℤ) * A011757 ((n + 1) ^ 2)

end

end A109791.P4516678338766417411

namespace A109791

/-- `(A007318(n)%2)!*A011757((n+1)^2)` -/
def P4516678338766417411.Spec : Prop :=
  ∀ n, P4516678338766417411.a n = A109791 (n + 1)

end A109791

/-! ## A109791.P6170662395408636561

`A007318(and(3, -n))*A011757(record[(1-n)²])`
-/

namespace A109791.P6170662395408636561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (n : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Int.land 3 (-(n : ℤ))).toNat * A011757 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A109791.P6170662395408636561

namespace A109791

/-- `A007318(and(3, -n))*A011757(record[(1-n)²])` -/
def P6170662395408636561.Spec : Prop :=
  ∀ n, P6170662395408636561.a n = A109791 (n + 1)

end A109791

/-!
# A109792: Expansion of e.g.f. log(1+x)/(1-x)^2.

The programs for A109792, there is no canonical definition to state claims against.
-/

/-! ## A109792.P6856141481493161306

`A024167(n+1)+A087301(n+2)-A080958(n+1)`
-/

namespace A109792.P6856141481493161306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024167 (n + 1) + (A087301 (n + 2) - A080958 (n + 1))

end

end A109792.P6856141481493161306

/-! ## A109792.P15299520778498378564

`A190782(∑[n+1]+1)+A087301(n+2)-A080958(n+1)`
-/

namespace A109792.P15299520778498378564
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190782 (∑ j ∈ Finset.range (n + 1), f1 j + 1) + (A087301 (n + 2) - A080958 (n + 1))

end

end A109792.P15299520778498378564

/-! ## A109792.P8949932988644580323

`A054651(∑[n+2]-1)+A087301(n+2)-A080958(n+1)`
-/

namespace A109792.P8949932988644580323
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054651 (∑ j ∈ Finset.range (n + 1), f1 j - 1) + (A087301 (n + 2) - A080958 (n + 1))

end

end A109792.P8949932988644580323

/-! ## A109792.P16522380117869492999

`∏[n+1]-A024168(n+1)+A087301(n+2)-A080958(n+1)`
-/

namespace A109792.P16522380117869492999
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A024168 (n + 1) + (A087301 (n + 2) - A080958 (n + 1))

end

end A109792.P16522380117869492999

/-! ## A109792.P10042775108010460472

`A081358(n+1)-A092691(n+1)+A087301(n+2)-A080958(n+1)`
-/

namespace A109792.P10042775108010460472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081358 (n + 1) - A092691 (n + 1) + (A087301 (n + 2) - A080958 (n + 1))

end

end A109792.P10042775108010460472

/-! ## A109792.P14245603125752452125

`A025527(n+1)*A025530(n+1)+A087301(n+2)-A080958(n+1)`
-/

namespace A109792.P14245603125752452125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025527 (n + 1) * A025530 (n + 1) + (A087301 (n + 2) - A080958 (n + 1))

end

end A109792.P14245603125752452125

/-!
# A109793: a(n) = - a(n-1) - a(n-2) - a(n-3) + 50*(n-4) + 50*a(n-5) + 50*a(n-6) + 50*a(n-7), n >= 8.

The programs for A109793, there is no canonical definition to state claims against.
-/

/-! ## A109793.P8454656508289805070

`A033182(n!+10)`
-/

namespace A109793.P8454656508289805070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033182 (Nat.factorial n + 10)

end

end A109793.P8454656508289805070

/-! ## A109793.P1839012522467366971

`A008651(n!+20)`
-/

namespace A109793.P1839012522467366971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008651 (Nat.factorial n + 20)

end

end A109793.P1839012522467366971

/-! ## A109793.P7035858216009979896

`or(1, A008651(n!))`
-/

namespace A109793.P7035858216009979896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A008651 (Nat.factorial n))

end

end A109793.P7035858216009979896

/-! ## A109793.P13360671577491701217

`A008651(lcm(6, n!))`
-/

namespace A109793.P13360671577491701217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008651 (Nat.lcm 6 (Nat.factorial n))

end

end A109793.P13360671577491701217

/-!
# A109794: a(2n) = A001906(n+1), a(2n+1) = A002878(n).

The programs for A109794, the canonical program `A109794.P17973997916341309881` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A109794 has offset 0).

The definition of A109794 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A109794.P17973997916341309881

`3*a(n-2)-a(n-4)` with `a(0)=1, a(1)=1, a(2)=3, a(3)=4`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A109794

/-- `3*a(n-2)-a(n-4)` -/
def P17973997916341309881.Spec : Prop :=
  ∀ n, P17973997916341309881.a n = A109794 n

theorem P17973997916341309881.correct : P17973997916341309881.Spec := by
  intro n
  simp only [A109794]

end A109794

/-! ## A109794.P7907534482590810057

`ogf((1+x+x^3)/(1-3x^2+x^4))`
-/

namespace A109794.P7907534482590810057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, 0, 1] [1, 0, -3, 0, 1] n

end

end A109794.P7907534482590810057

namespace A109794

/-- `ogf((1+x+x^3)/(1-3x^2+x^4))` -/
def P7907534482590810057.Spec : Prop :=
  ∀ n, P7907534482590810057.a n = A109794 n

end A109794

/-! ## A109794.P5978843879819171556

`A115339(or(1, n)+n)`
-/

namespace A109794.P5978843879819171556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115339 (Nat.lor 1 n + n)

end

end A109794.P5978843879819171556

namespace A109794

/-- `A115339(or(1, n)+n)` -/
def P5978843879819171556.Spec : Prop :=
  ∀ n, P5978843879819171556.a n = A109794 n

end A109794

/-! ## A109794.P352816655249468642

`A178766(n)+a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A109794.P352816655249468642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A178766 n + a (n - 2)

end

end A109794.P352816655249468642

namespace A109794

/-- `A178766(n)+a(n-2)` -/
def P352816655249468642.Spec : Prop :=
  ∀ n, P352816655249468642.a n = A109794 n

end A109794

/-! ## A109794.P14998567785486171720

`A115339(A042948(n)+1)`
-/

namespace A109794.P14998567785486171720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115339 (A042948 n + 1).toNat

end

end A109794.P14998567785486171720

namespace A109794

/-- `A115339(A042948(n)+1)` -/
def P14998567785486171720.Spec : Prop :=
  ∀ n, P14998567785486171720.a n = A109794 n

end A109794

/-! ## A109794.P15641474247079513096

`A115339(A042963(n+1))`
-/

namespace A109794.P15641474247079513096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115339 (A042963 (n + 1)).toNat

end

end A109794.P15641474247079513096

namespace A109794

/-- `A115339(A042963(n+1))` -/
def P15641474247079513096.Spec : Prop :=
  ∀ n, P15641474247079513096.a n = A109794 n

end A109794

/-! ## A109794.P5011425563617357366

`A108362(n)+A094966(n)`
-/

namespace A109794.P5011425563617357366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108362 n + A094966 n

end

end A109794.P5011425563617357366

namespace A109794

/-- `A108362(n)+A094966(n)` -/
def P5011425563617357366.Spec : Prop :=
  ∀ n, P5011425563617357366.a n = A109794 n

end A109794

/-! ## A109794.P1418912957804543446

`A115339(A053438(n+1)-1)`
-/

namespace A109794.P1418912957804543446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115339 (A053438 (n + 1) - 1).toNat

end

end A109794.P1418912957804543446

namespace A109794

/-- `A115339(A053438(n+1)-1)` -/
def P1418912957804543446.Spec : Prop :=
  ∀ n, P1418912957804543446.a n = A109794 n

end A109794

/-! ## A109794.P18370731284741806156

`A339572(A052928(n)+n)+1`
-/

namespace A109794.P18370731284741806156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339572 (A052928 n + (n : ℤ)).toNat + 1

end

end A109794.P18370731284741806156

namespace A109794

/-- `A339572(A052928(n)+n)+1` -/
def P18370731284741806156.Spec : Prop :=
  ∀ n, P18370731284741806156.a n = A109794 n

end A109794

/-! ## A109794.P11892589253325804199

`∑[A006355(n)/(A000035(n)+1)]`
-/

namespace A109794.P11892589253325804199
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006355 n : ℚ) / (A000035 n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109794.P11892589253325804199

namespace A109794

/-- `∑[A006355(n)/(A000035(n)+1)]` -/
def P11892589253325804199.Spec : Prop :=
  ∀ n, P11892589253325804199.a n = (A109794 n : ℚ)

end A109794

/-! ## A109794.P17463408144006148139

`∑[A040001(n)/2*A118658(n)]`
-/

namespace A109794.P17463408144006148139
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A040001 n : ℚ) / 2 * (A118658 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109794.P17463408144006148139

namespace A109794

/-- `∑[A040001(n)/2*A118658(n)]` -/
def P17463408144006148139.Spec : Prop :=
  ∀ n, P17463408144006148139.a n = (A109794 n : ℚ)

end A109794

/-! ## A109794.P12972764993232972107

`A115339(A047235(n+1)-(n+1))`
-/

namespace A109794.P12972764993232972107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115339 (A047235 (n + 1) - (n + 1 : ℤ)).toNat

end

end A109794.P12972764993232972107

namespace A109794

/-- `A115339(A047235(n+1)-(n+1))` -/
def P12972764993232972107.Spec : Prop :=
  ∀ n, P12972764993232972107.a n = A109794 n

end A109794

/-! ## A109794.P12690043659853179159

`A000045(n-and(1, n))+A000045(n+1)`
-/

namespace A109794.P12690043659853179159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n - Nat.land 1 n) + A000045 (n + 1)

end

end A109794.P12690043659853179159

namespace A109794

/-- `A000045(n-and(1, n))+A000045(n+1)` -/
def P12690043659853179159.Spec : Prop :=
  ∀ n, P12690043659853179159.a n = A109794 n

end A109794

/-! ## A109794.P16048278403692644863

`A000045(gcd(2, n)+n-2)+A000045(n+1)`
-/

namespace A109794.P16048278403692644863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 ((Nat.gcd 2 n : ℤ) + ((n : ℤ) - 2)).toNat + A000045 (n + 1)

end

end A109794.P16048278403692644863

namespace A109794

/-- `A000045(gcd(2, n)+n-2)+A000045(n+1)` -/
def P16048278403692644863.Spec : Prop :=
  ∀ n, P16048278403692644863.a n = A109794 n

end A109794

/-! ## A109794.P12019147135573119264

`A000045(n+1)+A000045(A052928(n))`
-/

namespace A109794.P12019147135573119264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) + A000045 (A052928 n).toNat

end

end A109794.P12019147135573119264

namespace A109794

/-- `A000045(n+1)+A000045(A052928(n))` -/
def P12019147135573119264.Spec : Prop :=
  ∀ n, P12019147135573119264.a n = A109794 n

end A109794

/-! ## A109794.P10371181462271926344

`A212804(n+2)+A212804(A109613(n))`
-/

namespace A109794.P10371181462271926344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (n + 2) + A212804 (A109613 n).toNat

end

end A109794.P10371181462271926344

namespace A109794

/-- `A212804(n+2)+A212804(A109613(n))` -/
def P10371181462271926344.Spec : Prop :=
  ∀ n, P10371181462271926344.a n = A109794 n

end A109794

/-! ## A109794.P14690197192724410412

`A000045(A004524(2*n))+A000045(n+1)`
-/

namespace A109794.P14690197192724410412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A004524 (2 * n)).toNat + A000045 (n + 1)

end

end A109794.P14690197192724410412

namespace A109794

/-- `A000045(A004524(2*n))+A000045(n+1)` -/
def P14690197192724410412.Spec : Prop :=
  ∀ n, P14690197192724410412.a n = A109794 n

end A109794

/-! ## A109794.P18238622107662140091

`A094966(n+1)+A094966(n)-A000045(n)`
-/

namespace A109794.P18238622107662140091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094966 (n + 1) + (A094966 n - A000045 n)

end

end A109794.P18238622107662140091

namespace A109794

/-- `A094966(n+1)+A094966(n)-A000045(n)` -/
def P18238622107662140091.Spec : Prop :=
  ∀ n, P18238622107662140091.a n = A109794 n

end A109794

/-! ## A109794.P2665895459306355694

`A000045(n+1)+A302126(n)*A303427(n)`
-/

namespace A109794.P2665895459306355694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) + A302126 n * A303427 n

end

end A109794.P2665895459306355694

namespace A109794

/-- `A000045(n+1)+A302126(n)*A303427(n)` -/
def P2665895459306355694.Spec : Prop :=
  ∀ n, P2665895459306355694.a n = A109794 n

end A109794

/-!
# A109795: a(n)= n*(1+floor(n/10)).

The programs for A109795, the canonical program `A109795.P12206067023053987311` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A109795 has offset 1).

The definition of A109795 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)*(1+floor((n+1)/10))` (program `A109795.P12206067023053987311`, by `A109795.P12206067023053987311.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A109795.P12206067023053987311

`(n+1)*(1+floor((n+1)/10))`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A109795

/-- `(n+1)*(1+floor((n+1)/10))` -/
def P12206067023053987311.Spec : Prop :=
  ∀ n, P12206067023053987311.a n = A109795 (n + 1)

theorem P12206067023053987311.correct : P12206067023053987311.Spec := by
  intro n
  simp only [A109795, Nat.add_sub_cancel]

end A109795

/-! ## A109795.P14750531440056715033

`(n+1)*A059995(n+1)+n+1`
-/

namespace A109795.P14750531440056715033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A059995 (n + 1) + (n + 1 : ℤ)

end

end A109795.P14750531440056715033

namespace A109795

/-- `(n+1)*A059995(n+1)+n+1` -/
def P14750531440056715033.Spec : Prop :=
  ∀ n, P14750531440056715033.a n = A109795 (n + 1)

theorem P14750531440056715033.correct : P14750531440056715033.Spec := by
  intro n
  simp only [A109795, Nat.add_sub_cancel, A109795.P14750531440056715033.a, A109795.P12206067023053987311.a, A059995, A059995.P135539884652528526.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A109795

/-! ## A109795.P13574158446486266928

`(n+1)*A004526(A002266(n+1))+n+1`
-/

namespace A109795.P13574158446486266928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A004526 (A002266 (n + 1)).toNat + (n + 1 : ℤ)

end

end A109795.P13574158446486266928

namespace A109795

/-- `(n+1)*A004526(A002266(n+1))+n+1` -/
def P13574158446486266928.Spec : Prop :=
  ∀ n, P13574158446486266928.a n = A109795 (n + 1)

end A109795

/-! ## A109795.P7988331712295977078

`record[A083292(A028310(n))-n]`
-/

namespace A109795.P7988331712295977078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083292 (A028310 n).toNat - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A109795.P7988331712295977078

namespace A109795

/-- `record[A083292(A028310(n))-n]` -/
def P7988331712295977078.Spec : Prop :=
  ∀ n, P7988331712295977078.a n = A109795 (n + 1)

end A109795

/-! ## A109795.P12685271287394233725

`record[A000007(n)+(n-10)*A059995(n)]`
-/

namespace A109795.P12685271287394233725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + ((n : ℤ) - 10) * A059995 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A109795.P12685271287394233725

namespace A109795

/-- `record[A000007(n)+(n-10)*A059995(n)]` -/
def P12685271287394233725.Spec : Prop :=
  ∀ n, P12685271287394233725.a n = A109795 (n + 1)

end A109795

/-! ## A109795.P2017087559496330972

`A122619(n+1)+n+1-A122618(n+1)`
-/

namespace A109795.P2017087559496330972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122619 (n + 1) + ((n + 1 : ℤ) - A122618 (n + 1))

end

end A109795.P2017087559496330972

namespace A109795

/-- `A122619(n+1)+n+1-A122618(n+1)` -/
def P2017087559496330972.Spec : Prop :=
  ∀ n, P2017087559496330972.a n = A109795 (n + 1)

end A109795

/-!
# A109796: a(n) = prime(1^4) + prime(2^4) + ... + prime(n^4).

The programs for A109796, the canonical program `A109796.P12640784627107827928` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A109796 has offset 1).

The definition of A109796 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A109796.P12640784627107827928

`∑[A109791(n+1)]`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A109796

/-- `∑[A109791(n+1)]` -/
def P12640784627107827928.Spec : Prop :=
  ∀ n, P12640784627107827928.a n = A109796 (n + 1)

theorem P12640784627107827928.correct : P12640784627107827928.Spec := by
  intro n
  simp only [A109796, Nat.add_sub_cancel]

end A109796

/-! ## A109796.P1542179392252728702

`∑[A011757((n+1)²)]`
-/

namespace A109796.P1542179392252728702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011757 ((n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109796.P1542179392252728702

namespace A109796

/-- `∑[A011757((n+1)²)]` -/
def P1542179392252728702.Spec : Prop :=
  ∀ n, P1542179392252728702.a n = A109796 (n + 1)

end A109796

/-! ## A109796.P13462201199608662589

`∑[root(A011757(record[(1-n)²]), 2)²]`
-/

namespace A109796.P13462201199608662589
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (n : ℤ)) ^ 2

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((A011757 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat : ℝ) ^ (1 / (2 : ℝ))) ^ 2

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109796.P13462201199608662589

namespace A109796

/-- `∑[root(A011757(record[(1-n)²]), 2)²]` -/
def P13462201199608662589.Spec : Prop :=
  ∀ n, P13462201199608662589.a n = (A109796 (n + 1) : ℝ)

end A109796

/-! ## A109796.P16749098989496043227

`∑[xor(1, xor(1, A011757((n+1)^2)))]`
-/

namespace A109796.P16749098989496043227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (Int.xor 1 (A011757 ((n + 1) ^ 2)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109796.P16749098989496043227

namespace A109796

/-- `∑[xor(1, xor(1, A011757((n+1)^2)))]` -/
def P16749098989496043227.Spec : Prop :=
  ∀ n, P16749098989496043227.a n = A109796 (n + 1)

end A109796

/-! ## A109796.P3648113251853368079

`A011757(record[(n-1)²])+a(n-1)` with `a(0)=2`
-/

namespace A109796.P3648113251853368079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A011757 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat + a (n - 1)

end

end A109796.P3648113251853368079

namespace A109796

/-- `A011757(record[(n-1)²])+a(n-1)` -/
def P3648113251853368079.Spec : Prop :=
  ∀ n, P3648113251853368079.a n = A109796 (n + 1)

end A109796

/-! ## A109796.P18041008561677145356

`∑[record[A109791(A109785(n))]]`
-/

namespace A109796.P18041008561677145356
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109791 (A109785 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109796.P18041008561677145356

namespace A109796

/-- `∑[record[A109791(A109785(n))]]` -/
def P18041008561677145356.Spec : Prop :=
  ∀ n, P18041008561677145356.a n = A109796 (n + 1)

end A109796

/-! ## A109796.P6956099713435402297

`∑[record[A109791(A329048(n))]]`
-/

namespace A109796.P6956099713435402297
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109791 (A329048 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109796.P6956099713435402297

namespace A109796

/-- `∑[record[A109791(A329048(n))]]` -/
def P6956099713435402297.Spec : Prop :=
  ∀ n, P6956099713435402297.a n = A109796 (n + 1)

end A109796

/-! ## A109796.P10629877499675379835

`∑[record[A011757(A110516(n)²)]]`
-/

namespace A109796.P10629877499675379835
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011757 (A110516 n ^ 2).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109796.P10629877499675379835

namespace A109796

/-- `∑[record[A011757(A110516(n)²)]]` -/
def P10629877499675379835.Spec : Prop :=
  ∀ n, P10629877499675379835.a n = A109796 (n + 1)

end A109796

/-! ## A109796.P13778779935989987488

`∑[record[A011757(A126759(n)²)]]`
-/

namespace A109796.P13778779935989987488
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011757 (A126759 n ^ 2).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109796.P13778779935989987488

namespace A109796

/-- `∑[record[A011757(A126759(n)²)]]` -/
def P13778779935989987488.Spec : Prop :=
  ∀ n, P13778779935989987488.a n = A109796 (n + 1)

end A109796

/-! ## A109796.P15223006841349166556

`∑[record[A011757(A133310(n)²)]]`
-/

namespace A109796.P15223006841349166556
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011757 (A133310 n ^ 2).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109796.P15223006841349166556

namespace A109796

/-- `∑[record[A011757(A133310(n)²)]]` -/
def P15223006841349166556.Spec : Prop :=
  ∀ n, P15223006841349166556.a n = A109796 (n + 1)

end A109796

/-! ## A109796.P14580231322294809852

`∑[record[A011757(A007891(n+1))]]`
-/

namespace A109796.P14580231322294809852
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011757 (A007891 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109796.P14580231322294809852

namespace A109796

/-- `∑[record[A011757(A007891(n+1))]]` -/
def P14580231322294809852.Spec : Prop :=
  ∀ n, P14580231322294809852.a n = A109796 (n + 1)

end A109796

/-! ## A109796.P1894085905700872615

`∑[record[A011757(A007892(n+1))]]`
-/

namespace A109796.P1894085905700872615
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011757 (A007892 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109796.P1894085905700872615

namespace A109796

/-- `∑[record[A011757(A007892(n+1))]]` -/
def P1894085905700872615.Spec : Prop :=
  ∀ n, P1894085905700872615.a n = A109796 (n + 1)

end A109796

/-! ## A109796.P1951748476136986095

`∑[record[A011757(A007893(n+1))]]`
-/

namespace A109796.P1951748476136986095
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011757 (A007893 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109796.P1951748476136986095

namespace A109796

/-- `∑[record[A011757(A007893(n+1))]]` -/
def P1951748476136986095.Spec : Prop :=
  ∀ n, P1951748476136986095.a n = A109796 (n + 1)

end A109796

/-! ## A109796.P9448107871174601017

`∑[A011757((n+1)^2)%A017152(n)]`
-/

namespace A109796.P9448107871174601017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A011757 ((n + 1) ^ 2)) (A017152 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109796.P9448107871174601017

namespace A109796

/-- `∑[A011757((n+1)^2)%A017152(n)]` -/
def P9448107871174601017.Spec : Prop :=
  ∀ n, P9448107871174601017.a n = A109796 (n + 1)

end A109796

/-! ## A109796.P17671588758960527406

`∑[A011757(A000290(n+1))+(2*n)%2]`
-/

namespace A109796.P17671588758960527406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011757 (A000290 (n + 1)).toNat + ((2 * n % 2 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109796.P17671588758960527406

namespace A109796

/-- `∑[A011757(A000290(n+1))+(2*n)%2]` -/
def P17671588758960527406.Spec : Prop :=
  ∀ n, P17671588758960527406.a n = A109796 (n + 1)

end A109796

/-! ## A109796.P16476766441551692655

`∑[(A007318(n)%2)!*A011757((n+1)^2)]`
-/

namespace A109796.P16476766441551692655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (Int.tmod (A007318 n) 2).toNat : ℤ) * A011757 ((n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109796.P16476766441551692655

namespace A109796

/-- `∑[(A007318(n)%2)!*A011757((n+1)^2)]` -/
def P16476766441551692655.Spec : Prop :=
  ∀ n, P16476766441551692655.a n = A109796 (n + 1)

end A109796

/-! ## A109796.P16738683028166402909

`∑[A014963(42*(n+1))*A011757((n+1)^2)]`
-/

namespace A109796.P16738683028166402909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (42 * (n + 1)) * A011757 ((n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109796.P16738683028166402909

namespace A109796

/-- `∑[A014963(42*(n+1))*A011757((n+1)^2)]` -/
def P16738683028166402909.Spec : Prop :=
  ∀ n, P16738683028166402909.a n = A109796 (n + 1)

end A109796

/-! ## A109796.P2835390412301700218

`∑[A000203(((-1)^n)²)*A011757(record[(1-n)²])]`
-/

namespace A109796.P2835390412301700218
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (n : ℤ)) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (((-1) ^ n) ^ 2).toNat * A011757 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109796.P2835390412301700218

namespace A109796

/-- `∑[A000203(((-1)^n)²)*A011757(record[(1-n)²])]` -/
def P2835390412301700218.Spec : Prop :=
  ∀ n, P2835390412301700218.a n = A109796 (n + 1)

end A109796

/-! ## A109796.P14416102692762990457

`a(n-1)+A007318(C(2, n+2))*A109791(n+1)` with `a(0)=2`
-/

namespace A109796.P14416102692762990457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) + A007318 (Nat.choose 2 (n + 2)) * A109791 (n + 1)

end

end A109796.P14416102692762990457

namespace A109796

/-- `a(n-1)+A007318(C(2, n+2))*A109791(n+1)` -/
def P14416102692762990457.Spec : Prop :=
  ∀ n, P14416102692762990457.a n = A109796 (n + 1)

end A109796

/-!
# A109799: Primes p such that 2^p - 1 is a Chen prime.

The programs for A109799, there is no canonical definition to state claims against.
-/

/-! ## A109799.P8760571104537735112

`A152961(n+1)+char[10]`
-/

namespace A109799.P8760571104537735112
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152961 (n + 1) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A109799.P8760571104537735112

/-! ## A109799.P518773240760436106

`p?[lt[A046800(2*n), 4]]`
-/

namespace A109799.P518773240760436106
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046800 (2 * n)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A109799.P518773240760436106

/-! ## A109799.P9881443192509326630

`eq[3, A057957(xor(1, n)+1)]`
-/

namespace A109799.P9881443192509326630
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057957 (Nat.xor 1 n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A109799.P9881443192509326630

/-! ## A109799.P18169073241720356963

`A107360(n%a(n-1))` with `a(0)=2`
-/

namespace A109799.P18169073241720356963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A107360 (Int.tmod (n : ℤ) (a (n - 1))).toNat

end

end A109799.P18169073241720356963

/-! ## A109799.P16622131057716325527

`p?[record[or(n, A103977(n+1))]]`
-/

namespace A109799.P16622131057716325527
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (A103977 (n + 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A109799.P16622131057716325527

