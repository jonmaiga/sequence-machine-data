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
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C032
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C006
import Seq.B001.C007
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B010.C000
import Seq.B012.C000
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
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C024
import Seq.Opaque.C025

/-!
# A034200: Number of binary codes (not necessarily linear) of length n with 5 words.

The programs for A034200, there is no canonical definition to state claims against.
-/

/-! ## A034200.P15024301362592731516

`∑[A059995(A330297(n)+A000584(n))]`
-/

namespace A034200.P15024301362592731516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 (A330297 n + A000584 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A034200.P15024301362592731516

/-!
# A034201: Number of binary codes (not necessarily linear) of length n with 6 words.

The programs for A034201, there is no canonical definition to state claims against.
-/

/-! ## A034201.P12897698766625162461

`floor(A174407(n^n+1)/γ)`
-/

namespace A034201.P12897698766625162461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A174407 (n ^ n + 1) : ℝ) / Real.eulerMascheroniConstant⌋

end

end A034201.P12897698766625162461

/-!
# A034202: Number of binary codes (not necessarily linear) of length n with 7 words.

The programs for A034202, there is no canonical definition to state claims against.
-/

/-! ## A034202.P11383077357417317742

`A154951(n*A081139(n))`
-/

namespace A034202.P11383077357417317742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154951 ((n : ℤ) * A081139 n).toNat

end

end A034202.P11383077357417317742

/-!
# A034203: Number of binary codes (not necessarily linear) of length n with 8 words.

The programs for A034203, there is no canonical definition to state claims against.
-/

/-! ## A034203.P2588452966743842391

`A047207(A008279(C(∑[n], 2)+n))`
-/

namespace A034203.P2588452966743842391
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047207 (A008279 (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 + n)).toNat

end

end A034203.P2588452966743842391

/-!
# A034204: Number of binary codes (not necessarily linear) of length n with 9 words.

The programs for A034204, there is no canonical definition to state claims against.
-/

/-! ## A034204.P569461495380064179

`A171876(A347445(2*n+3))+A008683(A084192(2*n+1))`
-/

namespace A034204.P569461495380064179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171876 (A347445 (2 * n + 3)).toNat + A008683 (A084192 (2 * n + 1)).toNat

end

end A034204.P569461495380064179

/-! ## A034204.P7133662739605466292

`A171876(A347445(2*n+3))-A233427(A117174(2*n+1))`
-/

namespace A034204.P7133662739605466292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171876 (A347445 (2 * n + 3)).toNat - A233427 (A117174 (2 * n + 1)).toNat

end

end A034204.P7133662739605466292

/-!
# A034205: Number of binary codes (not necessarily linear) of length n with 10 words.

The programs for A034205, there is no canonical definition to state claims against.
-/

/-! ## A034205.P13737714494597905293

`A171872(A383035(n+1))`
-/

namespace A034205.P13737714494597905293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171872 (A383035 (n + 1)).toNat

end

end A034205.P13737714494597905293

/-!
# A034206: Number of binary codes (not necessarily linear) of length n with 11 words.

The programs for A034206, there is no canonical definition to state claims against.
-/

/-! ## A034206.P5701604546378160406

`A171872(A042371(n))`
-/

namespace A034206.P5701604546378160406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171872 (A042371 n).toNat

end

end A034206.P5701604546378160406

/-!
# A034207: Number of binary codes (not necessarily linear) of length n with 12 words.

The programs for A034207, there is no canonical definition to state claims against.
-/

/-! ## A034207.P363853087554447834

`A171872(A386227(n+1))`
-/

namespace A034207.P363853087554447834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171872 (A386227 (n + 1)).toNat

end

end A034207.P363853087554447834

/-!
# A034208: Number of binary codes (not necessarily linear) of length n with 13 words.

The programs for A034208, there is no canonical definition to state claims against.
-/

/-! ## A034208.P2580653448306203007

`A171872(A087503(n+1))`
-/

namespace A034208.P2580653448306203007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171872 (A087503 (n + 1)).toNat

end

end A034208.P2580653448306203007

/-!
# A034209: Number of binary codes (not necessarily linear) of length n with 14 words.

The programs for A034209, there is no canonical definition to state claims against.
-/

/-! ## A034209.P8294205115213573989

`A171872(A081056(n+1))`
-/

namespace A034209.P8294205115213573989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171872 (A081056 (n + 1)).toNat

end

end A034209.P8294205115213573989

/-!
# A034210: Number of binary codes (not necessarily linear) of length n with 15 words.

The programs for A034210, there is no canonical definition to state claims against.
-/

/-! ## A034210.P8947576128063942436

`A171872(∑[ceil(3^(n-1))]-n)`
-/

namespace A034210.P8947576128063942436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171872 (∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)).toNat

end

end A034210.P8947576128063942436

/-!
# A034211: Number of binary codes (not necessarily linear) of length n with 16 words.

The programs for A034211, there is no canonical definition to state claims against.
-/

/-! ## A034211.P2825366033258425270

`∑{p}[A000719(n), A000721(A000702(#))]`
-/

namespace A034211.P2825366033258425270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000719 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A000721 (A000702 p).toNat

end

end A034211.P2825366033258425270

/-!
# A034214: Number of ternary codes of length 2 with n words.

The programs for A034214, there is no canonical definition to state claims against.
-/

/-! ## A034214.P6160393934432323969

`A034136(A215244(n)+A004273(n))`
-/

namespace A034214.P6160393934432323969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034136 (A215244 n + A004273 n).toNat

end

end A034214.P6160393934432323969

/-!
# A034215: Number of ternary codes of length 3 with n words.

The programs for A034215, there is no canonical definition to state claims against.
-/

/-! ## A034215.P6748364171945536206

`ceil(4*3^(n-2))-A001222(A036432(n))`
-/

namespace A034215.P6748364171945536206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈4 * (3 : ℚ) ^ ((n : ℤ) - 2 : ℤ)⌉ - A001222 (A036432 n).toNat

end

end A034215.P6748364171945536206

/-! ## A034215.P17960837287418132529

`A052156(n)-A001221(A060005(n))`
-/

namespace A034215.P17960837287418132529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052156 n - A001221 (A060005 n).toNat

end

end A034215.P17960837287418132529

/-! ## A034215.P17722412408191860688

`A025579(n+1)-A001221(A049858(3*n+1))`
-/

namespace A034215.P17722412408191860688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025579 (n + 1) - A001221 (A049858 (3 * n + 1)).toNat

end

end A034215.P17722412408191860688

/-!
# A034216: Number of ternary codes of length 4 with n words.

The programs for A034216, there is no canonical definition to state claims against.
-/

/-! ## A034216.P10705686437239007433

`A008619(Δ[A161881(n)])`
-/

namespace A034216.P10705686437239007433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161881 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (f1 (n + 1) - f1 n).toNat

end

end A034216.P10705686437239007433

/-! ## A034216.P12251939167226639123

`A110656(A306857(n+1))`
-/

namespace A034216.P12251939167226639123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110656 (A306857 (n + 1)).toNat

end

end A034216.P12251939167226639123

/-!
# A034217: Number of ternary codes of length 5 with n words.

The programs for A034217, there is no canonical definition to state claims against.
-/

/-! ## A034217.P1062519015927478497

`∏[∏{e}[3*n^(n+3), #]]`
-/

namespace A034217.P1062519015927478497
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n ^ (n + 3)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A034217.P1062519015927478497

/-!
# A034218: Number of ternary codes of length 6 with n words.

The programs for A034218, there is no canonical definition to state claims against.
-/

/-! ## A034218.P2726284363706665330

`A282840(A179156(n)+1)`
-/

namespace A034218.P2726284363706665330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282840 (A179156 n + 1).toNat

end

end A034218.P2726284363706665330

/-!
# A034219: Number of ternary codes of length 7 with n words.

The programs for A034219, there is no canonical definition to state claims against.
-/

/-! ## A034219.P2973417901267499692

`A201804(A355081(n)+A050932(n))`
-/

namespace A034219.P2973417901267499692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201804 (A355081 n + A050932 n).toNat

end

end A034219.P2973417901267499692

/-!
# A034220: Number of ternary codes of length 8 with n words.

The programs for A034220, there is no canonical definition to state claims against.
-/

/-! ## A034220.P2952822728230931409

`A245499(A113109(n)-A056278(n+1))`
-/

namespace A034220.P2952822728230931409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245499 (A113109 n - A056278 (n + 1)).toNat

end

end A034220.P2952822728230931409

/-!
# A034223: Number of ternary codes (not necessarily linear) of length n with 3 words.

The programs for A034223, there is no canonical definition to state claims against.
-/

/-! ## A034223.P6858119112928414030

`∑[∑[round((n+4)²/12)]]`
-/

namespace A034223.P6858119112928414030
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((n + 4) ^ 2 : ℚ) / 12)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A034223.P6858119112928414030

/-! ## A034223.P2063745943591579726

`A057524(n+1)-(n+2)`
-/

namespace A034223.P2063745943591579726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057524 (n + 1) - (n + 2 : ℤ)

end

end A034223.P2063745943591579726

/-! ## A034223.P10645605807545557335

`abs(∑[A000601(n+1)-1])`
-/

namespace A034223.P10645605807545557335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000601 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A034223.P10645605807545557335

/-! ## A034223.P3714334054550263313

`∑[A181120(n+4)]-(n+1)`
-/

namespace A034223.P3714334054550263313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181120 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n + 1 : ℤ)

end

end A034223.P3714334054550263313

/-! ## A034223.P4724153338980294777

`char[17]+∑[∑[A069905(n+4)]]`
-/

namespace A034223.P4724153338980294777
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069905 (n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A034223.P4724153338980294777

/-!
# A034224: Number of ternary codes (not necessarily linear) of length n with 4 words.

The programs for A034224, there is no canonical definition to state claims against.
-/

/-! ## A034224.P8096238116739005457

`A301692(4*C(4*n+2, n)/(n+1))%(4*C(4*n+2, n)/(n+1))`
-/

namespace A034224.P8096238116739005457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A301692 (SequenceMachineLib.roundAway (4 * ((Nat.choose (4 * n + 2) n : ℚ) / (n + 1 : ℚ)))).toNat) (SequenceMachineLib.roundAway (4 * ((Nat.choose (4 * n + 2) n : ℚ) / (n + 1 : ℚ))))

end

end A034224.P8096238116739005457

/-!
# A034233: Number of quaternary codes of length 2 with n words.

The programs for A034233, there is no canonical definition to state claims against.
-/

/-! ## A034233.P3558532341226295762

`A106498(A077168(n)+17)`
-/

namespace A034233.P3558532341226295762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106498 (A077168 n + 17).toNat

end

end A034233.P3558532341226295762

/-!
# A034234: Number of quaternary codes of length 3 with n words.

The programs for A034234, there is no canonical definition to state claims against.
-/

/-! ## A034234.P15099645727325063134

`A117351(abs(∑[(4-6/n)*a(n-1)]))` with `a(0)=1`
-/

namespace A034234.P15099645727325063134
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  (4 - 6 / (n : ℚ)) * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117351 (SequenceMachineLib.roundAway |∑ j ∈ Finset.range (n + 1), f1 j|).toNat

end

end A034234.P15099645727325063134

/-! ## A034234.P15614043609165973064

`A117351(A087953(n))`
-/

namespace A034234.P15614043609165973064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117351 (A087953 n).toNat

end

end A034234.P15614043609165973064

/-!
# A034235: Number of quaternary codes of length 4 with n words.

The programs for A034235, there is no canonical definition to state claims against.
-/

/-! ## A034235.P12323085289831181830

`A239072(n!+1)-1`
-/

namespace A034235.P12323085289831181830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239072 (Nat.factorial n + 1) - 1

end

end A034235.P12323085289831181830

/-!
# A034236: Number of quaternary codes of length 5 with n words.

The programs for A034236, there is no canonical definition to state claims against.
-/

/-! ## A034236.P5230740215738080769

`A054429(A120973(n))`
-/

namespace A034236.P5230740215738080769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054429 (A120973 n).toNat

end

end A034236.P5230740215738080769

/-!
# A034237: Number of quaternary codes of length 6 with n words.

The programs for A034237, there is no canonical definition to state claims against.
-/

/-! ## A034237.P2597112111791540081

`A209877(A054347(n!))`
-/

namespace A034237.P2597112111791540081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209877 (A054347 (Nat.factorial n)).toNat

end

end A034237.P2597112111791540081

/-!
# A034241: Number of quaternary codes (not necessarily linear) of length n with 4 words.

The programs for A034241, there is no canonical definition to state claims against.
-/

/-! ## A034241.P933292588270461236

`∑[∑[A247983(A203245(n+1))]]`
-/

namespace A034241.P933292588270461236
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247983 (A203245 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A034241.P933292588270461236

/-!
# A034253: Triangle read by rows: T(n,k) = number of inequivalent linear [n,k] binary codes without 0 columns (n >= 1, 1 <= k <= n).

The programs for A034253, there is no canonical definition to state claims against.
-/

/-! ## A034253.P8494252965626710350

`A028310(A034356(n+1)-A076831(n+1))`
-/

namespace A034253.P8494252965626710350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A034356 (n + 1) - A076831 (n + 1)).toNat

end

end A034253.P8494252965626710350

/-! ## A034253.P304206974965149577

`A260552(A227655(n))+A034328(n)`
-/

namespace A034253.P304206974965149577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260552 (A227655 n).toNat + A034328 n

end

end A034253.P304206974965149577

/-! ## A034253.P3404248714918831441

`or(A025466(A308292(n)), A034328(n))`
-/

namespace A034253.P3404248714918831441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A025466 (A308292 n).toNat) (A034328 n)

end

end A034253.P3404248714918831441

/-! ## A034253.P18133387260938754771

`or(A034328(n), A209229(A184174(n)))`
-/

namespace A034253.P18133387260938754771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A034328 n) (A209229 (A184174 n).toNat)

end

end A034253.P18133387260938754771

/-! ## A034253.P11818379893081865842

`A125005(A034371(n+1))+A034328(n)`
-/

namespace A034253.P11818379893081865842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125005 (A034371 (n + 1)).toNat + A034328 n

end

end A034253.P11818379893081865842

/-!
# A034254: Triangle read by rows giving T(n,k) = number of inequivalent indecomposable linear [ n,k ] binary codes without 0 columns (n >= 2, 1 <= k <= n).

The programs for A034254, there is no canonical definition to state claims against.
-/

/-! ## A034254.P5551842928512247179

`A121900(A056940(n))`
-/

namespace A034254.P5551842928512247179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121900 (A056940 n).toNat

end

end A034254.P5551842928512247179

/-! ## A034254.P6098123716095312751

`A094222(A132044(n))%Δ[A125003(n)]`
-/

namespace A034254.P6098123716095312751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125003 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A094222 (A132044 n).toNat) (f1 (n + 1) - f1 n)

end

end A034254.P6098123716095312751

/-! ## A034254.P9176318406001820

`A094222(A132044(n)%A125003(n+4))`
-/

namespace A034254.P9176318406001820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094222 (Int.tmod (A132044 n) (A125003 (n + 4))).toNat

end

end A034254.P9176318406001820

/-! ## A034254.P12995896470707353904

`A024898(A132044(n))%A092767(n+1)`
-/

namespace A034254.P12995896470707353904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A024898 (A132044 n).toNat) (A092767 (n + 1))

end

end A034254.P12995896470707353904

/-! ## A034254.P3440138342028356080

`A024898(A014473(n)+2-A154325(n))%A092767(n+1)`
-/

namespace A034254.P3440138342028356080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A024898 (A014473 n + (2 - A154325 n)).toNat) (A092767 (n + 1))

end

end A034254.P3440138342028356080

/-!
# A034255: Related to quartic factorial numbers A007696.

The programs for A034255, there is no canonical definition to state claims against.
-/

/-! ## A034255.P10312299396191758073

`(4-3/(n+1))*4*a(n-1)` with `a(0)=1`
-/

namespace A034255.P10312299396191758073
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (4 - 3 / (n + 1 : ℚ)) * (4 * a (n - 1))

end

end A034255.P10312299396191758073

/-! ## A034255.P17408348672339549998

`A048882(∑[n])`
-/

namespace A034255.P17408348672339549998
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048882 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A034255.P17408348672339549998

/-! ## A034255.P6989612911881588312

`A016116(2*n)/2*A004981(n+1)`
-/

namespace A034255.P6989612911881588312
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016116 (2 * n) : ℚ) / 2 * (A004981 (n + 1) : ℚ)

end

end A034255.P6989612911881588312

/-! ## A034255.P8507372471602033423

`A000079(n)²/A000079(n+1)*A004981(n+1)`
-/

namespace A034255.P8507372471602033423
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000079 n ^ 2 : ℚ) / (A000079 (n + 1) : ℚ) * (A004981 (n + 1) : ℚ)

end

end A034255.P8507372471602033423

/-! ## A034255.P12247005501929838595

`A000079(2*n)/A000079(n+1)*A004981(n+1)`
-/

namespace A034255.P12247005501929838595
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000079 (2 * n) : ℚ) / (A000079 (n + 1) : ℚ) * (A004981 (n + 1) : ℚ)

end

end A034255.P12247005501929838595

/-! ## A034255.P15687839587282923541

`A034385(n+1)/4`
-/

namespace A034255.P15687839587282923541
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034385 (n + 1) : ℚ) / 4

end

end A034255.P15687839587282923541

/-! ## A034255.P13661783418511653016

`Δ[∑[A034385(n)]/4]`
-/

namespace A034255.P13661783418511653016
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034385 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A034255.P13661783418511653016

/-! ## A034255.P1125484810269647357

`A248325(∑[n+1])/4`
-/

namespace A034255.P1125484810269647357
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A248325 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / 4

end

end A034255.P1125484810269647357

/-! ## A034255.P6640674488623604682

`A007696(n+1)/A000142(n+1)*A000302(n)`
-/

namespace A034255.P6640674488623604682
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007696 (n + 1) : ℚ) / (A000142 (n + 1) : ℚ) * (A000302 n : ℚ)

end

end A034255.P6640674488623604682

/-! ## A034255.P3818361904639474705

`(2*A000302(n))²/A047053(n+1)*A007696(n+1)`
-/

namespace A034255.P3818361904639474705
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 * A000302 n) ^ 2 : ℚ) / (A047053 (n + 1) : ℚ) * (A007696 (n + 1) : ℚ)

end

end A034255.P3818361904639474705

/-!
# A034256: Expansion of 2 - (1 - 16*x)^(1/4), related to quartic factorial numbers A034176.

The programs for A034256, there is no canonical definition to state claims against.
-/

/-! ## A034256.P11548125175335006289

`2*(8-10/n)*a(n-1)` with `a(0)=1, a(1)=4`
-/

namespace A034256.P11548125175335006289
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 4] fun n a =>
  2 * ((8 - 10 / (n : ℚ)) * a (n - 1))

end

end A034256.P11548125175335006289

/-! ## A034256.P7396861359914705570

`abs(A000079(n)*A004984(n))`
-/

namespace A034256.P7396861359914705570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000079 n * A004984 n|

end

end A034256.P7396861359914705570

/-! ## A034256.P9370286841818946635

`(A057427(n)+1)²*A025749(n)`
-/

namespace A034256.P9370286841818946635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A057427 n + 1) ^ 2 * A025749 n

end

end A034256.P9370286841818946635

/-! ## A034256.P624347697339856167

`(A178334(n)+1)²*A025749(n)`
-/

namespace A034256.P624347697339856167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A178334 n + 1) ^ 2 * A025749 n

end

end A034256.P624347697339856167

/-! ## A034256.P1565472526551987299

`A008546(A178334(n))*A025749(n)`
-/

namespace A034256.P1565472526551987299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008546 (A178334 n).toNat * A025749 n

end

end A034256.P1565472526551987299

/-! ## A034256.P9567604256545880411

`A025749(n)*A131844(A178334(n)²)`
-/

namespace A034256.P9567604256545880411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025749 n * A131844 (A178334 n ^ 2).toNat

end

end A034256.P9567604256545880411

/-! ## A034256.P3606202843632394420

`gcd(4, A002897(n))*A025749(n)`
-/

namespace A034256.P3606202843632394420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 4 (A002897 n) : ℤ) * A025749 n

end

end A034256.P3606202843632394420

/-!
# A034258: Write n! as a product of n numbers, n! = k(1)*k(2)*...*k(n) with k(1) <= k(2) <= ..., in all possible ways; a(n) = max value of k(1).

The programs for A034258, there is no canonical definition to state claims against.
-/

/-! ## A034258.P5104554451986520640

`A339276(A339277(∑[2^∑{e}[n+1, #-1]]))`
-/

namespace A034258.P5104554451986520640
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (∑ p ∈ Nat.primeFactors (f2 n), ((Nat.factorization (f2 n) p : ℤ) - 1) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339276 (A339277 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat).toNat

end

end A034258.P5104554451986520640

/-! ## A034258.P1995355813553103171

`A000196(record[A329200(n)+A329198(n)])`
-/

namespace A034258.P1995355813553103171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329200 n + A329198 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A034258.P1995355813553103171

/-!
# A034259: Smallest m such that A034258(m) >= n.

The programs for A034259, there is no canonical definition to state claims against.
-/

/-! ## A034259.P4551010194520661293

`A034260(n)+a(floor(acot(n)))` with `a(0)=1`
-/

namespace A034259.P4551010194520661293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A034260 n + a ⌊SequenceMachineLib.acot (n : ℝ)⌋.toNat

end

end A034259.P4551010194520661293

/-! ## A034259.P11395329456633063493

`A034260(n)+a(A112316(n))` with `a(0)=1`
-/

namespace A034259.P11395329456633063493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A034260 n + a (A112316 n).toNat

end

end A034259.P11395329456633063493

/-! ## A034259.P11672401196678307208

`A034260(n)+a(A057428(n)+1)` with `a(0)=1`
-/

namespace A034259.P11672401196678307208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A034260 n + a (A057428 n + 1).toNat

end

end A034259.P11672401196678307208

/-! ## A034259.P8364511446465608897

`A034260(n)+a(A057427(n)-1)` with `a(0)=1`
-/

namespace A034259.P8364511446465608897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A034260 n + a (A057427 n - 1).toNat

end

end A034259.P8364511446465608897

/-! ## A034259.P2174378963133805148

`A034260(n)+a(n-A028310(n))` with `a(0)=1`
-/

namespace A034259.P2174378963133805148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A034260 n + a ((n : ℤ) - A028310 n).toNat

end

end A034259.P2174378963133805148

/-! ## A034259.P7924544028866918893

`A034260(n)+A000007(a(n-1))+1` with `a(0)=1`
-/

namespace A034259.P7924544028866918893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A034260 n + A000007 (a (n - 1)).toNat + 1

end

end A034259.P7924544028866918893

/-! ## A034259.P3418454777787205596

`A034260(n)+a(A040971(n)%2-1)` with `a(0)=1`
-/

namespace A034259.P3418454777787205596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A034260 n + a (Int.tmod (A040971 n) 2 - 1).toNat

end

end A034259.P3418454777787205596

/-! ## A034259.P16826930800189715678

`A034260(n)+A000010(val(a(n-1), 32)+1)` with `a(0)=1`
-/

namespace A034259.P16826930800189715678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A034260 n + A000010 (SequenceMachineLib.valuation (a (n - 1)).toNat 32 + 1)

end

end A034259.P16826930800189715678

/-! ## A034259.P14730238898188746921

`A034260(n)-(a(A000040(n+1)%2-1)-2)` with `a(0)=1`
-/

namespace A034259.P14730238898188746921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A034260 n - (a (Int.tmod (A000040 (n + 1)) 2 - 1).toNat - 2)

end

end A034259.P14730238898188746921

/-! ## A034259.P3655192912597507633

`A034260(n)+a(A000122(A040971(n)))` with `a(0)=1`
-/

namespace A034259.P3655192912597507633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A034260 n + a (A000122 (A040971 n).toNat).toNat

end

end A034259.P3655192912597507633

/-!
# A034260: Largest m such that A034258(m) <= n.

The programs for A034260, there is no canonical definition to state claims against.
-/

/-! ## A034260.P1754744378306445883

`A034259(n+2)-1`
-/

namespace A034260.P1754744378306445883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034259 (n + 2) - 1

end

end A034260.P1754744378306445883

/-! ## A034260.P17206446579771110652

`∑[abs(Δ[A034259(n+1)])]`
-/

namespace A034260.P17206446579771110652
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034259 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A034260.P17206446579771110652

/-! ## A034260.P5539154026923660725

`A023443(A034259(n+2))`
-/

namespace A034260.P5539154026923660725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A034259 (n + 2)).toNat

end

end A034260.P5539154026923660725

/-! ## A034260.P17971942112096014293

`∑[A000030(Δ[A034259(n+1)])]`
-/

namespace A034260.P17971942112096014293
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034259 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A034260.P17971942112096014293

/-! ## A034260.P2286729855751731445

`∑[A002998(Δ[A034259(n+1)])]`
-/

namespace A034260.P2286729855751731445
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034259 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002998 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A034260.P2286729855751731445

/-! ## A034260.P8913778707825582421

`∑[A004086(Δ[A034259(n+1)])]`
-/

namespace A034260.P8913778707825582421
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034259 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A034260.P8913778707825582421

/-! ## A034260.P18047307006788211136

`∑[A004186(Δ[A034259(n+1)])]`
-/

namespace A034260.P18047307006788211136
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034259 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004186 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A034260.P18047307006788211136

/-! ## A034260.P11405290315640506963

`∑[Δ[A034259(n+1)]%comp[A000045(n)]]`
-/

namespace A034260.P11405290315640506963
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034259 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (n + 1) - f2 n) (SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A034260.P11405290315640506963

/-! ## A034260.P12522645980281380194

`∑[Δ[A034259(n+1)]+A008683(4*(n+1))]`
-/

namespace A034260.P12522645980281380194
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034259 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + A008683 (4 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A034260.P12522645980281380194

/-! ## A034260.P2650616724908280586

`∑[A014963(6*(n+1))*Δ[A034259(n+1)]]`
-/

namespace A034260.P2650616724908280586
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034259 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (6 * (n + 1)) * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A034260.P2650616724908280586

/-!
# A034261: Infinite square array f(a,b) = C(a+b,b+1)*(a*b+a+1)/(b+2), a, b >= 0, read by antidiagonals. Equivalently, triangular array T(n,k) = f(k,n-k), 0 <= k <= n, read by rows.

The programs for A034261, there is no canonical definition to state claims against.
-/

/-! ## A034261.P7210719931551698399

`A145033(abs(1-n))-char[∑[n]]`
-/

namespace A034261.P7210719931551698399
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145033 |1 - (n : ℤ)|.toNat - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A034261.P7210719931551698399

/-! ## A034261.P11211205652849223674

`A145033(abs(1-n))%A202006(n+1)`
-/

namespace A034261.P11211205652849223674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A145033 |1 - (n : ℤ)|.toNat) (A202006 (n + 1))

end

end A034261.P11211205652849223674

/-! ## A034261.P1728480920729090292

`A145033(abs(1-n))%A002895(A002262(n))`
-/

namespace A034261.P1728480920729090292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A145033 |1 - (n : ℤ)|.toNat) (A002895 (A002262 n).toNat)

end

end A034261.P1728480920729090292

/-! ## A034261.P8823076511161685271

`A327618(comp[∑[n-1]]%A144672(n+1))`
-/

namespace A034261.P8823076511161685271
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327618 (Int.tmod (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) (A144672 (n + 1))).toNat

end

end A034261.P8823076511161685271

/-! ## A034261.P16772358183233319985

`A327618(comp[∑[n-1]])%A144673(n+1)`
-/

namespace A034261.P16772358183233319985
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A327618 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)) (A144673 (n + 1))

end

end A034261.P16772358183233319985

/-!
# A034262: a(n) = n^3 + n.

The programs for A034262, the canonical program `A034262.P1986901683698587680` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A034262 has offset 0).

The definition of A034262 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^3+n` (program `A034262.P1986901683698587680`, by `A034262.P1986901683698587680.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A034262.P1986901683698587680

`n^3+n`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A034262

/-- `n^3+n` -/
def P1986901683698587680.Spec : Prop :=
  ∀ n, (P1986901683698587680.a n : ℤ) = A034262 n

theorem P1986901683698587680.correct : P1986901683698587680.Spec := by
  intro n
  simp only [A034262]

end A034262

/-!
# A034263: a(n) = binomial(n+4,4)*(4*n+5)/5.

The programs for A034263, the canonical program `A034263.P6125889168153481410` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A034263 has offset 0).

The definition of A034263 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A034263.P6125889168153481410

`(1+n)*(2+n)*(3+n)*(4+n)*(4*n+5)/120`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A034263

/-- `(1+n)*(2+n)*(3+n)*(4+n)*(4*n+5)/120` -/
def P6125889168153481410.Spec : Prop :=
  ∀ n, P6125889168153481410.a n = (A034263 n : ℚ)

end A034263

/-! ## A034263.P1782091328350160947

`∑[(n+1)*C(n+3, 3)]`
-/

namespace A034263.P1782091328350160947
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * Nat.choose (n + 3) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A034263.P1782091328350160947

namespace A034263

/-- `∑[(n+1)*C(n+3, 3)]` -/
def P1782091328350160947.Spec : Prop :=
  ∀ n, (P1782091328350160947.a n : ℤ) = A034263 n

end A034263

/-! ## A034263.P14079723710839186769

`∑[∑[∑[∑[a(n-1)+4]]]]` with `a(0)=1`
-/

namespace A034263.P14079723710839186769
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f4 =>
  f4 (n - 1) + 4

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A034263.P14079723710839186769

namespace A034263

/-- `∑[∑[∑[∑[a(n-1)+4]]]]` -/
def P14079723710839186769.Spec : Prop :=
  ∀ n, (P14079723710839186769.a n : ℤ) = A034263 n

end A034263

/-! ## A034263.P3625450074379664448

`floor(∑[(n+1)/acot(∑[∑[n+1]])])`
-/

namespace A034263.P3625450074379664448
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℝ) / SequenceMachineLib.acot ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A034263.P3625450074379664448

namespace A034263

/-- `floor(∑[(n+1)/acot(∑[∑[n+1]])])` -/
def P3625450074379664448.Spec : Prop :=
  ∀ n, P3625450074379664448.a n = A034263 n

end A034263

/-! ## A034263.P8999340195136116155

`a(n-1)+(n+1)*C(n+3, 3)` with `a(0)=1`
-/

namespace A034263.P8999340195136116155
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (n + 1) * Nat.choose (n + 3) 3

end

end A034263.P8999340195136116155

namespace A034263

/-- `a(n-1)+(n+1)*C(n+3, 3)` -/
def P8999340195136116155.Spec : Prop :=
  ∀ n, (P8999340195136116155.a n : ℤ) = A034263 n

end A034263

/-! ## A034263.P10740518514224192674

`∑[A002417(n+1)]`
-/

namespace A034263.P10740518514224192674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002417 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A034263.P10740518514224192674

namespace A034263

/-- `∑[A002417(n+1)]` -/
def P10740518514224192674.Spec : Prop :=
  ∀ n, P10740518514224192674.a n = A034263 n

end A034263

/-! ## A034263.P3160367048744098760

`∑[∑[A002412(n+1)]]`
-/

namespace A034263.P3160367048744098760
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002412 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A034263.P3160367048744098760

namespace A034263

/-- `∑[∑[A002412(n+1)]]` -/
def P3160367048744098760.Spec : Prop :=
  ∀ n, P3160367048744098760.a n = A034263 n

end A034263

/-! ## A034263.P14379033271937041266

`A244864(n)-∑[∑[n]²]`
-/

namespace A034263.P14379033271937041266
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244864 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A034263.P14379033271937041266

namespace A034263

/-- `A244864(n)-∑[∑[n]²]` -/
def P14379033271937041266.Spec : Prop :=
  ∀ n, P14379033271937041266.a n = A034263 n

end A034263

/-! ## A034263.P2938884122554634120

`∑[(n+1)*A000292(n+1)]`
-/

namespace A034263.P2938884122554634120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000292 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A034263.P2938884122554634120

namespace A034263

/-- `∑[(n+1)*A000292(n+1)]` -/
def P2938884122554634120.Spec : Prop :=
  ∀ n, P2938884122554634120.a n = A034263 n

end A034263

/-! ## A034263.P6669541033737345142

`∑[∑[∑[A082108(n)+1]]]/2`
-/

namespace A034263.P6669541033737345142
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082108 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A034263.P6669541033737345142

namespace A034263

/-- `∑[∑[∑[A082108(n)+1]]]/2` -/
def P6669541033737345142.Spec : Prop :=
  ∀ n, P6669541033737345142.a n = (A034263 n : ℚ)

end A034263

/-! ## A034263.P13380698509188494478

`A051879(n)-A174002(n)`
-/

namespace A034263.P13380698509188494478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051879 n - A174002 n

end

end A034263.P13380698509188494478

namespace A034263

/-- `A051879(n)-A174002(n)` -/
def P13380698509188494478.Spec : Prop :=
  ∀ n, P13380698509188494478.a n = A034263 n

end A034263

/-! ## A034263.P7505394546594788935

`A085463(n+1)-A004282(n)`
-/

namespace A034263.P7505394546594788935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085463 (n + 1) - A004282 n

end

end A034263.P7505394546594788935

namespace A034263

/-- `A085463(n+1)-A004282(n)` -/
def P7505394546594788935.Spec : Prop :=
  ∀ n, P7505394546594788935.a n = A034263 n

end A034263

/-! ## A034263.P2679912219665531929

`A060060(n)-A071953(n+3)`
-/

namespace A034263.P2679912219665531929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060060 n - A071953 (n + 3)

end

end A034263.P2679912219665531929

namespace A034263

/-- `A060060(n)-A071953(n+3)` -/
def P2679912219665531929.Spec : Prop :=
  ∀ n, P2679912219665531929.a n = A034263 n

end A034263

/-! ## A034263.P18403635202311577918

`A006542(n+4)-A034264(n)`
-/

namespace A034263.P18403635202311577918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006542 (n + 4) - A034264 n

end

end A034263.P18403635202311577918

namespace A034263

/-- `A006542(n+4)-A034264(n)` -/
def P18403635202311577918.Spec : Prop :=
  ∀ n, P18403635202311577918.a n = A034263 n

end A034263

/-! ## A034263.P16884430547290569181

`2*A051878(n)-A271567(n)`
-/

namespace A034263.P16884430547290569181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A051878 n - A271567 n

end

end A034263.P16884430547290569181

namespace A034263

/-- `2*A051878(n)-A271567(n)` -/
def P16884430547290569181.Spec : Prop :=
  ∀ n, P16884430547290569181.a n = A034263 n

end A034263

/-! ## A034263.P7340607383964585506

`A033455(n+1)+∑[A000292(n)]`
-/

namespace A034263.P7340607383964585506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033455 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A034263.P7340607383964585506

namespace A034263

/-- `A033455(n+1)+∑[A000292(n)]` -/
def P7340607383964585506.Spec : Prop :=
  ∀ n, P7340607383964585506.a n = A034263 n

end A034263

/-! ## A034263.P3168513666151081374

`A051877(n)-∑[A033487(n)/2]`
-/

namespace A034263.P3168513666151081374
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033487 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051877 n : ℚ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A034263.P3168513666151081374

namespace A034263

/-- `A051877(n)-∑[A033487(n)/2]` -/
def P3168513666151081374.Spec : Prop :=
  ∀ n, P3168513666151081374.a n = (A034263 n : ℚ)

end A034263

/-! ## A034263.P17741882473362014787

`A271662(n)-n*∑[A000292(n)]`
-/

namespace A034263.P17741882473362014787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271662 n - (n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A034263.P17741882473362014787

namespace A034263

/-- `A271662(n)-n*∑[A000292(n)]` -/
def P17741882473362014787.Spec : Prop :=
  ∀ n, P17741882473362014787.a n = A034263 n

end A034263

/-! ## A034263.P5117164398200702641

`A277935(n+1)+A005585(n+1)`
-/

namespace A034263.P5117164398200702641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277935 (n + 1) + A005585 (n + 1)

end

end A034263.P5117164398200702641

namespace A034263

/-- `A277935(n+1)+A005585(n+1)` -/
def P5117164398200702641.Spec : Prop :=
  ∀ n, P5117164398200702641.a n = A034263 n

end A034263

/-! ## A034263.P11014623743827986161

`A006411(n+1)-A005583(n+1)`
-/

namespace A034263.P11014623743827986161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006411 (n + 1) - A005583 (n + 1)

end

end A034263.P11014623743827986161

namespace A034263

/-- `A006411(n+1)-A005583(n+1)` -/
def P11014623743827986161.Spec : Prop :=
  ∀ n, P11014623743827986161.a n = A034263 n

end A034263

/-!
# A034264: a(n) = f(n,4) where f is given in A034261.

The programs for A034264, the canonical program `A034264.P3944593298545630423` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A034264 has offset 0).

The definition of A034264 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A034264.P3944593298545630423

`n*(5*n+1)*(n+4)*(n+3)*(n+2)*(n+1)/720`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A034264

/-- `n*(5*n+1)*(n+4)*(n+3)*(n+2)*(n+1)/720` -/
def P3944593298545630423.Spec : Prop :=
  ∀ n, P3944593298545630423.a n = (A034264 n : ℚ)

end A034264

/-! ## A034264.P8085129113056311012

`∑[n*C(n+3, 4)]`
-/

namespace A034264.P8085129113056311012
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.choose (n + 3) 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A034264.P8085129113056311012

namespace A034264

/-- `∑[n*C(n+3, 4)]` -/
def P8085129113056311012.Spec : Prop :=
  ∀ n, (P8085129113056311012.a n : ℤ) = A034264 n

end A034264

/-! ## A034264.P9755280840352432224

`a(n-1)+n*C(n+3, 4)` with `a(0)=0`
-/

namespace A034264.P9755280840352432224
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + n * Nat.choose (n + 3) 4

end

end A034264.P9755280840352432224

namespace A034264

/-- `a(n-1)+n*C(n+3, 4)` -/
def P9755280840352432224.Spec : Prop :=
  ∀ n, (P9755280840352432224.a n : ℤ) = A034264 n

end A034264

/-! ## A034264.P3356720230402665559

`∑[∑[A002418(n)]]`
-/

namespace A034264.P3356720230402665559
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002418 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A034264.P3356720230402665559

namespace A034264

/-- `∑[∑[A002418(n)]]` -/
def P3356720230402665559.Spec : Prop :=
  ∀ n, P3356720230402665559.a n = A034264 n

end A034264

/-! ## A034264.P372544117269722352

`A051946(n)-A027800(n)`
-/

namespace A034264.P372544117269722352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051946 n - A027800 n

end

end A034264.P372544117269722352

namespace A034264

/-- `A051946(n)-A027800(n)` -/
def P372544117269722352.Spec : Prop :=
  ∀ n, P372544117269722352.a n = A034264 n

end A034264

/-! ## A034264.P1077807466284841507

`A006542(n+4)-A034263(n)`
-/

namespace A034264.P1077807466284841507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006542 (n + 4) - A034263 n

end

end A034264.P1077807466284841507

namespace A034264

/-- `A006542(n+4)-A034263(n)` -/
def P1077807466284841507.Spec : Prop :=
  ∀ n, P1077807466284841507.a n = A034264 n

end A034264

/-! ## A034264.P2624748230806454159

`A256860(n+1)-A257200(n+1)`
-/

namespace A034264.P2624748230806454159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256860 (n + 1) - A257200 (n + 1)

end

end A034264.P2624748230806454159

namespace A034264

/-- `A256860(n+1)-A257200(n+1)` -/
def P2624748230806454159.Spec : Prop :=
  ∀ n, P2624748230806454159.a n = A034264 n

end A034264

/-! ## A034264.P2704601801194581391

`A006542(n+4)-∑[A002417(n+1)]`
-/

namespace A034264.P2704601801194581391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002417 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006542 (n + 4) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A034264.P2704601801194581391

namespace A034264

/-- `A006542(n+4)-∑[A002417(n+1)]` -/
def P2704601801194581391.Spec : Prop :=
  ∀ n, P2704601801194581391.a n = A034264 n

end A034264

/-!
# A034265: a(n) = binomial(n+6,6)*(6*n+7)/7.

The programs for A034265, the canonical program `A034265.P13972950744391404901` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A034265 has offset 0).

The definition of A034265 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A034265.P13972950744391404901

`∑[(n+1)*C(n+5, 5)]`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A034265

/-- `∑[(n+1)*C(n+5, 5)]` -/
def P13972950744391404901.Spec : Prop :=
  ∀ n, (P13972950744391404901.a n : ℤ) = A034265 n

theorem P13972950744391404901.correct : P13972950744391404901.Spec := by
  intro n
  simp only [A034265]

end A034265

/-! ## A034265.P14669598235118128218

`∑[(n+1)*∑[∑[∑[∑[n+1]]]]]`
-/

namespace A034265.P14669598235118128218
noncomputable section

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A034265.P14669598235118128218

namespace A034265

/-- `∑[(n+1)*∑[∑[∑[∑[n+1]]]]]` -/
def P14669598235118128218.Spec : Prop :=
  ∀ n, (P14669598235118128218.a n : ℤ) = A034265 n

end A034265

/-! ## A034265.P3245011481783760645

`a(n-1)+(n+1)*C(n+5, 5)` with `a(0)=1`
-/

namespace A034265.P3245011481783760645
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (n + 1) * Nat.choose (n + 5) 5

end

end A034265.P3245011481783760645

namespace A034265

/-- `a(n-1)+(n+1)*C(n+5, 5)` -/
def P3245011481783760645.Spec : Prop :=
  ∀ n, (P3245011481783760645.a n : ℤ) = A034265 n

end A034265

/-! ## A034265.P14589155418180934484

`A027810(n)+a(n-1)` with `a(0)=1`
-/

namespace A034265.P14589155418180934484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A027810 n + a (n - 1)

end

end A034265.P14589155418180934484

namespace A034265

/-- `A027810(n)+a(n-1)` -/
def P14589155418180934484.Spec : Prop :=
  ∀ n, P14589155418180934484.a n = A034265 n

end A034265

/-! ## A034265.P5641640501483413084

`lcm(∑[A027810(n)], A020985(n))`
-/

namespace A034265.P5641640501483413084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027810 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (∑ j ∈ Finset.range (n + 1), f1 j) (A020985 n)

end

end A034265.P5641640501483413084

namespace A034265

/-- `lcm(∑[A027810(n)], A020985(n))` -/
def P5641640501483413084.Spec : Prop :=
  ∀ n, (P5641640501483413084.a n : ℤ) = A034265 n

end A034265

/-! ## A034265.P15920115609750405428

`A027766(n+5)-A096945(n)`
-/

namespace A034265.P15920115609750405428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027766 (n + 5) - A096945 n

end

end A034265.P15920115609750405428

namespace A034265

/-- `A027766(n+5)-A096945(n)` -/
def P15920115609750405428.Spec : Prop :=
  ∀ n, P15920115609750405428.a n = A034265 n

end A034265

/-! ## A034265.P5495773843440658624

`A027811(n+1)-∑[A027801(n+1)]`
-/

namespace A034265.P5495773843440658624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027801 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027811 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A034265.P5495773843440658624

namespace A034265

/-- `A027811(n+1)-∑[A027801(n+1)]` -/
def P5495773843440658624.Spec : Prop :=
  ∀ n, P5495773843440658624.a n = A034265 n

end A034265

/-! ## A034265.P7369571992393847784

`A253947(n+6)+A000580(n+7)-A097298(n)`
-/

namespace A034265.P7369571992393847784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253947 (n + 6) + (A000580 (n + 7) - A097298 n)

end

end A034265.P7369571992393847784

namespace A034265

/-- `A253947(n+6)+A000580(n+7)-A097298(n)` -/
def P7369571992393847784.Spec : Prop :=
  ∀ n, P7369571992393847784.a n = A034265 n

end A034265

/-! ## A034265.P2142329320175250764

`A054487(n+1)-(A054487(n)+A027810(n+1))`
-/

namespace A034265.P2142329320175250764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054487 (n + 1) - (A054487 n + A027810 (n + 1))

end

end A034265.P2142329320175250764

namespace A034265

/-- `A054487(n+1)-(A054487(n)+A027810(n+1))` -/
def P2142329320175250764.Spec : Prop :=
  ∀ n, P2142329320175250764.a n = A034265 n

end A034265

/-!
# A034266: Partial sums of A027818.

The programs for A034266, the canonical program `A034266.P11136065735789325836` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A034266 has offset 0).

The definition of A034266 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A034266.P11136065735789325836

`∑[n*∑[∑[∑[∑[∑[n]]]]]]`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A034266

/-- `∑[n*∑[∑[∑[∑[∑[n]]]]]]` -/
def P11136065735789325836.Spec : Prop :=
  ∀ n, (P11136065735789325836.a n : ℤ) = A034266 n

theorem P11136065735789325836.correct : P11136065735789325836.Spec := by
  intro n
  simp only [A034266]

end A034266

/-! ## A034266.P7624459897629981936

`∑[A027818(n)]-A027818(n)`
-/

namespace A034266.P7624459897629981936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027818 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A027818 n

end

end A034266.P7624459897629981936

namespace A034266

/-- `∑[A027818(n)]-A027818(n)` -/
def P7624459897629981936.Spec : Prop :=
  ∀ n, P7624459897629981936.a n = A034266 n

end A034266

/-! ## A034266.P5334280101259849824

`∑[A256861(n+1)]-A000580(n+7)`
-/

namespace A034266.P5334280101259849824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256861 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A000580 (n + 7)

end

end A034266.P5334280101259849824

namespace A034266

/-- `∑[A256861(n+1)]-A000580(n+7)` -/
def P5334280101259849824.Spec : Prop :=
  ∀ n, P5334280101259849824.a n = A034266 n

end A034266

/-! ## A034266.P3199695642541996055

`∑[A256861(n+1)]-(A124090(n+7)+1)`
-/

namespace A034266.P3199695642541996055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256861 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (A124090 (n + 7) + 1)

end

end A034266.P3199695642541996055

namespace A034266

/-- `∑[A256861(n+1)]-(A124090(n+7)+1)` -/
def P3199695642541996055.Spec : Prop :=
  ∀ n, P3199695642541996055.a n = A034266 n

end A034266

/-! ## A034266.P13776047416332684444

`∑[A256861(n+1)]-A253947(n+6)/6`
-/

namespace A034266.P13776047416332684444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256861 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) - (A253947 (n + 6) : ℚ) / 6

end

end A034266.P13776047416332684444

namespace A034266

/-- `∑[A256861(n+1)]-A253947(n+6)/6` -/
def P13776047416332684444.Spec : Prop :=
  ∀ n, P13776047416332684444.a n = (A034266 n : ℚ)

end A034266

/-! ## A034266.P15112240520125908255

`∑[A256861(n+1)]+A005720(n+2)-A064057(n)`
-/

namespace A034266.P15112240520125908255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256861 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (A005720 (n + 2) - A064057 n)

end

end A034266.P15112240520125908255

namespace A034266

/-- `∑[A256861(n+1)]+A005720(n+2)-A064057(n)` -/
def P15112240520125908255.Spec : Prop :=
  ∀ n, P15112240520125908255.a n = A034266 n

end A034266

/-! ## A034266.P17178839444120788065

`∑[A256861(n+1)]-A027767(n+6)/A020719(n)`
-/

namespace A034266.P17178839444120788065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256861 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) - (A027767 (n + 6) : ℚ) / (A020719 n : ℚ)

end

end A034266.P17178839444120788065

namespace A034266

/-- `∑[A256861(n+1)]-A027767(n+6)/A020719(n)` -/
def P17178839444120788065.Spec : Prop :=
  ∀ n, P17178839444120788065.a n = (A034266 n : ℚ)

end A034266

/-! ## A034266.P10683982143765668383

`A034261(eq[7, A004736(n+1)])`
-/

namespace A034266.P10683982143765668383
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034261 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A034266.P10683982143765668383

namespace A034266

/-- `A034261(eq[7, A004736(n+1)])` -/
def P10683982143765668383.Spec : Prop :=
  ∀ n, P10683982143765668383.a n = A034266 n

end A034266

/-! ## A034266.P11014216593598111092

`A034261(A034856(n+5)+n+2)`
-/

namespace A034266.P11014216593598111092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034261 (A034856 (n + 5) + (n + 2 : ℤ)).toNat

end

end A034266.P11014216593598111092

namespace A034266

/-- `A034261(A034856(n+5)+n+2)` -/
def P11014216593598111092.Spec : Prop :=
  ∀ n, P11014216593598111092.a n = A034266 n

end A034266

/-! ## A034266.P1252680665949760634

`A034261(2*n+A161680(n+6)+6)`
-/

namespace A034266.P1252680665949760634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034261 ((2 * n : ℤ) + (A161680 (n + 6) + 6)).toNat

end

end A034266.P1252680665949760634

namespace A034266

/-- `A034261(2*n+A161680(n+6)+6)` -/
def P1252680665949760634.Spec : Prop :=
  ∀ n, P1252680665949760634.a n = A034266 n

end A034266

/-! ## A034266.P10825228373701232299

`A034261(2*n+A055999(n+2)+12)`
-/

namespace A034266.P10825228373701232299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034261 ((2 * n : ℤ) + (A055999 (n + 2) + 12)).toNat

end

end A034266.P10825228373701232299

namespace A034266

/-- `A034261(2*n+A055999(n+2)+12)` -/
def P10825228373701232299.Spec : Prop :=
  ∀ n, P10825228373701232299.a n = A034266 n

end A034266

/-!
# A034267: a(n) = f(n,n) where f is given in A034261.

The programs for A034267, the canonical program `A034267.P8758762277003965209` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A034267 has offset 0).

The definition of A034267 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 165 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A034267.P16298447328659952328

`n/2*A126223(n+1)`
-/

namespace A034267.P16298447328659952328
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 2 * (A126223 (n + 1) : ℚ)

end

end A034267.P16298447328659952328

namespace A034267

/-- `n/2*A126223(n+1)` -/
def P16298447328659952328.Spec : Prop :=
  ∀ n, P16298447328659952328.a n = (A034267 n : ℚ)

end A034267

/-! ## A034267.P3025423763550959415

`n*A034275(n+1)/(n+2)`
-/

namespace A034267.P3025423763550959415
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * ((A034275 (n + 1) : ℚ) / (n + 2 : ℚ))

end

end A034267.P3025423763550959415

namespace A034267

/-- `n*A034275(n+1)/(n+2)` -/
def P3025423763550959415.Spec : Prop :=
  ∀ n, P3025423763550959415.a n = (A034267 n : ℚ)

end A034267

/-! ## A034267.P8758762277003965209

`A000245(n)+n*A276666(n)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A034267

/-- `A000245(n)+n*A276666(n)` -/
def P8758762277003965209.Spec : Prop :=
  ∀ n, P8758762277003965209.a n = A034267 n

theorem P8758762277003965209.correct : P8758762277003965209.Spec := by
  intro n
  simp only [A034267]

end A034267

/-! ## A034267.P8024433302876145233

`Δ[A000108(n)]+n*A276666(n)`
-/

namespace A034267.P8024433302876145233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (n : ℤ) * A276666 n

end

end A034267.P8024433302876145233

namespace A034267

/-- `Δ[A000108(n)]+n*A276666(n)` -/
def P8024433302876145233.Spec : Prop :=
  ∀ n, P8024433302876145233.a n = A034267 n

end A034267

/-! ## A034267.P7631336944212285227

`A116385(2*n)+n*A037951(2*n)`
-/

namespace A034267.P7631336944212285227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116385 (2 * n) + (n : ℤ) * A037951 (2 * n)

end

end A034267.P7631336944212285227

namespace A034267

/-- `A116385(2*n)+n*A037951(2*n)` -/
def P7631336944212285227.Spec : Prop :=
  ∀ n, P7631336944212285227.a n = A034267 n

end A034267

/-! ## A034267.P11407284929343577617

`n*A037952(2*n)-A037951(2*n)`
-/

namespace A034267.P11407284929343577617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A037952 (2 * n) - A037951 (2 * n)

end

end A034267.P11407284929343577617

namespace A034267

/-- `n*A037952(2*n)-A037951(2*n)` -/
def P11407284929343577617.Spec : Prop :=
  ∀ n, P11407284929343577617.a n = A034267 n

end A034267

/-! ## A034267.P1873389150212459899

`n*A037952(2*n)-A037956(2*n)`
-/

namespace A034267.P1873389150212459899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A037952 (2 * n) - A037956 (2 * n)

end

end A034267.P1873389150212459899

namespace A034267

/-- `n*A037952(2*n)-A037956(2*n)` -/
def P1873389150212459899.Spec : Prop :=
  ∀ n, P1873389150212459899.a n = A034267 n

end A034267

/-! ## A034267.P14381247446198837989

`n*A037955(2*n)-A037951(2*n)`
-/

namespace A034267.P14381247446198837989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A037955 (2 * n) - A037951 (2 * n)

end

end A034267.P14381247446198837989

namespace A034267

/-- `n*A037955(2*n)-A037951(2*n)` -/
def P14381247446198837989.Spec : Prop :=
  ∀ n, P14381247446198837989.a n = A034267 n

end A034267

/-! ## A034267.P6063630804949937426

`n*A037955(2*n)-A037956(2*n)`
-/

namespace A034267.P6063630804949937426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A037955 (2 * n) - A037956 (2 * n)

end

end A034267.P6063630804949937426

namespace A034267

/-- `n*A037955(2*n)-A037956(2*n)` -/
def P6063630804949937426.Spec : Prop :=
  ∀ n, P6063630804949937426.a n = A034267 n

end A034267

/-! ## A034267.P9053629797027542608

`n*A001405(2*n)-A116385(2*n)`
-/

namespace A034267.P9053629797027542608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A001405 (2 * n) - A116385 (2 * n)

end

end A034267.P9053629797027542608

namespace A034267

/-- `n*A001405(2*n)-A116385(2*n)` -/
def P9053629797027542608.Spec : Prop :=
  ∀ n, P9053629797027542608.a n = A034267 n

end A034267

/-! ## A034267.P14507974224614350354

`n*A126930(2*n)-A116385(2*n)`
-/

namespace A034267.P14507974224614350354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A126930 (2 * n) - A116385 (2 * n)

end

end A034267.P14507974224614350354

namespace A034267

/-- `n*A126930(2*n)-A116385(2*n)` -/
def P14507974224614350354.Spec : Prop :=
  ∀ n, P14507974224614350354.a n = A034267 n

end A034267

/-! ## A034267.P5398258570329580398

`A037951(2*n+1)+n*A037951(2*n)`
-/

namespace A034267.P5398258570329580398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037951 (2 * n + 1) + (n : ℤ) * A037951 (2 * n)

end

end A034267.P5398258570329580398

namespace A034267

/-- `A037951(2*n+1)+n*A037951(2*n)` -/
def P5398258570329580398.Spec : Prop :=
  ∀ n, P5398258570329580398.a n = A034267 n

end A034267

/-! ## A034267.P12728119090973515383

`A037955(2*n+1)+n*A037956(2*n)`
-/

namespace A034267.P12728119090973515383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037955 (2 * n + 1) + (n : ℤ) * A037956 (2 * n)

end

end A034267.P12728119090973515383

namespace A034267

/-- `A037955(2*n+1)+n*A037956(2*n)` -/
def P12728119090973515383.Spec : Prop :=
  ∀ n, P12728119090973515383.a n = A034267 n

end A034267

/-! ## A034267.P3114646318904194343

`n*A001405(2*n)-A037955(2*n+1)`
-/

namespace A034267.P3114646318904194343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A001405 (2 * n) - A037955 (2 * n + 1)

end

end A034267.P3114646318904194343

namespace A034267

/-- `n*A001405(2*n)-A037955(2*n+1)` -/
def P3114646318904194343.Spec : Prop :=
  ∀ n, P3114646318904194343.a n = A034267 n

end A034267

/-! ## A034267.P9014358340673469644

`A000108(n+1)+(n²-(n+1))*A000108(n)`
-/

namespace A034267.P9014358340673469644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (n + 1) + ((n ^ 2 : ℤ) - (n + 1 : ℤ)) * A000108 n

end

end A034267.P9014358340673469644

namespace A034267

/-- `A000108(n+1)+(n²-(n+1))*A000108(n)` -/
def P9014358340673469644.Spec : Prop :=
  ∀ n, P9014358340673469644.a n = A034267 n

end A034267

/-! ## A034267.P4659212825394595193

`A000108(n+1)+A110609(n)-A000984(n)`
-/

namespace A034267.P4659212825394595193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (n + 1) + (A110609 n - A000984 n)

end

end A034267.P4659212825394595193

namespace A034267

/-- `A000108(n+1)+A110609(n)-A000984(n)` -/
def P4659212825394595193.Spec : Prop :=
  ∀ n, P4659212825394595193.a n = A034267 n

end A034267

/-! ## A034267.P5244375184036233214

`A000108(n+1)+A000108(n)*A165900(n)`
-/

namespace A034267.P5244375184036233214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (n + 1) + A000108 n * A165900 n

end

end A034267.P5244375184036233214

namespace A034267

/-- `A000108(n+1)+A000108(n)*A165900(n)` -/
def P5244375184036233214.Spec : Prop :=
  ∀ n, P5244375184036233214.a n = A034267 n

end A034267

/-! ## A034267.P17632674273023017148

`A212303(2*n)+A000108(n+1)-A212303(2*n+1)`
-/

namespace A034267.P17632674273023017148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212303 (2 * n) + (A000108 (n + 1) - A212303 (2 * n + 1))

end

end A034267.P17632674273023017148

namespace A034267

/-- `A212303(2*n)+A000108(n+1)-A212303(2*n+1)` -/
def P17632674273023017148.Spec : Prop :=
  ∀ n, P17632674273023017148.a n = A034267 n

end A034267

/-! ## A034267.P16339945385315674832

`A063549(2*(n+1))+A212303(2*n)-A063549(2*n+1)`
-/

namespace A034267.P16339945385315674832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063549 (2 * (n + 1)) + (A212303 (2 * n) - A063549 (2 * n + 1))

end

end A034267.P16339945385315674832

namespace A034267

/-- `A063549(2*(n+1))+A212303(2*n)-A063549(2*n+1)` -/
def P16339945385315674832.Spec : Prop :=
  ∀ n, P16339945385315674832.a n = A034267 n

end A034267

/-! ## A034267.P3247069851301084489

`Δ[A110609(n)]-A002457(n)`
-/

namespace A034267.P3247069851301084489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110609 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A002457 n

end

end A034267.P3247069851301084489

namespace A034267

/-- `Δ[A110609(n)]-A002457(n)` -/
def P3247069851301084489.Spec : Prop :=
  ∀ n, P3247069851301084489.a n = A034267 n

end A034267

/-!
# A034268: a(n) = LCM_{k=1..n} (2^k - 1).

The programs for A034268, there is no canonical definition to state claims against.
-/

/-! ## A034268.P1813098115435353024

`lcm(a(n-1), ∑[2^n])` with `a(0)=1`
-/

namespace A034268.P1813098115435353024
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.lcm (a (n - 1)) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A034268.P1813098115435353024

/-! ## A034268.P13699974840308866207

`lcm(abs(a(n-1)), ∑[2*a(n-1)])` with `a(0)=1`
-/

namespace A034268.P13699974840308866207
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  2 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.lcm (a (n - 1)) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A034268.P13699974840308866207

/-! ## A034268.P3898688497866756137

`lcm(floor(a(n-1)), ∑[a(n-1)+a(n-1)])` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A034268.P3898688497866756137
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) + f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.lcm (a (n - 1)) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A034268.P3898688497866756137

/-! ## A034268.P15390273314528376243

`∏[A019320(n+1)]`
-/

namespace A034268.P15390273314528376243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019320 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A034268.P15390273314528376243

/-! ## A034268.P7965983853610678158

`lcm(abs(a(n-1)), A126646(n))` with `a(0)=1`
-/

namespace A034268.P7965983853610678158
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Int.lcm (a (n - 1) : ℤ) (A126646 n)

end

end A034268.P7965983853610678158

/-!
# A034269: a(n) = f(n,n+2) where f is given in A034261.

The programs for A034269, the canonical program `A034269.P6772783554879928274` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A034269 has offset 0).

The definition of A034269 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 164 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A034269.P6772783554879928274

`A002055(n+5)-A000108(n+1)*(n+1)²`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A034269

/-- `A002055(n+5)-A000108(n+1)*(n+1)²` -/
def P6772783554879928274.Spec : Prop :=
  ∀ n, P6772783554879928274.a n = A034269 n

theorem P6772783554879928274.correct : P6772783554879928274.Spec := by
  intro n
  simp only [A034269]

end A034269

/-! ## A034269.P11862982984205246393

`A034261(A090288(n)+1)`
-/

namespace A034269.P11862982984205246393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034261 (A090288 n + 1).toNat

end

end A034269.P11862982984205246393

namespace A034269

/-- `A034261(A090288(n)+1)` -/
def P11862982984205246393.Spec : Prop :=
  ∀ n, P11862982984205246393.a n = A034269 n

end A034269

/-! ## A034269.P12204506237786999414

`A034261(A132209(n+1))`
-/

namespace A034269.P12204506237786999414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034261 (A132209 (n + 1)).toNat

end

end A034269.P12204506237786999414

namespace A034269

/-- `A034261(A132209(n+1))` -/
def P12204506237786999414.Spec : Prop :=
  ∀ n, P12204506237786999414.a n = A034269 n

end A034269

/-! ## A034269.P10767632507285523627

`A034261(A142463(n+1))`
-/

namespace A034269.P10767632507285523627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034261 (A142463 (n + 1)).toNat

end

end A034269.P10767632507285523627

namespace A034269

/-- `A034261(A142463(n+1))` -/
def P10767632507285523627.Spec : Prop :=
  ∀ n, P10767632507285523627.a n = A034269 n

end A034269

/-! ## A034269.P9375028884047582700

`A034261(or(1, A090288(n)))`
-/

namespace A034269.P9375028884047582700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034261 (Int.lor 1 (A090288 n)).toNat

end

end A034269.P9375028884047582700

namespace A034269

/-- `A034261(or(1, A090288(n)))` -/
def P9375028884047582700.Spec : Prop :=
  ∀ n, P9375028884047582700.a n = A034269 n

end A034269

/-! ## A034269.P17556324541872474291

`A034261(A046092(n+1)-1)`
-/

namespace A034269.P17556324541872474291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034261 (A046092 (n + 1) - 1).toNat

end

end A034269.P17556324541872474291

namespace A034269

/-- `A034261(A046092(n+1)-1)` -/
def P17556324541872474291.Spec : Prop :=
  ∀ n, P17556324541872474291.a n = A034269 n

end A034269

/-! ## A034269.P4933794790296429677

`A034261(lt[1, A204131(n+2)])`
-/

namespace A034269.P4933794790296429677
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204131 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034261 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A034269.P4933794790296429677

namespace A034269

/-- `A034261(lt[1, A204131(n+2)])` -/
def P4933794790296429677.Spec : Prop :=
  ∀ n, P4933794790296429677.a n = A034269 n

end A034269

/-! ## A034269.P11115958124869372059

`A034261(A014105(n+1)+n)`
-/

namespace A034269.P11115958124869372059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034261 (A014105 (n + 1) + (n : ℤ)).toNat

end

end A034269.P11115958124869372059

namespace A034269

/-- `A034261(A014105(n+1)+n)` -/
def P11115958124869372059.Spec : Prop :=
  ∀ n, P11115958124869372059.a n = A034269 n

end A034269

/-! ## A034269.P10381663582822784743

`A034261(A000384(n+2)-(n+3))`
-/

namespace A034269.P10381663582822784743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034261 (A000384 (n + 2) - (n + 3 : ℤ)).toNat

end

end A034269.P10381663582822784743

namespace A034269

/-- `A034261(A000384(n+2)-(n+3))` -/
def P10381663582822784743.Spec : Prop :=
  ∀ n, P10381663582822784743.a n = A034269 n

end A034269

/-!
# A034270: f(n,n+3) where f is given in A034261.

The programs for A034270, there is no canonical definition to state claims against.
-/

/-! ## A034270.P1159963189048870279

`A034261(2*(n+1)*(n+3))`
-/

namespace A034270.P1159963189048870279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034261 (2 * ((n + 1) * (n + 3)))

end

end A034270.P1159963189048870279

/-!
# A034271: a(n) = f(n,n+4) where f is given in A034261.

The programs for A034271, there is no canonical definition to state claims against.
-/

/-! ## A034271.P3197714237926400624

`A034261(eq[4, round(sqrt(2*(n+1)))²-(2*n+1)])`
-/

namespace A034271.P3197714237926400624
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (2 * (n + 1) : ℝ)) ^ 2 - (2 * n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034261 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A034271.P3197714237926400624

/-! ## A034271.P14708455453354050036

`A034261(A090288(n+1))`
-/

namespace A034271.P14708455453354050036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034261 (A090288 (n + 1)).toNat

end

end A034271.P14708455453354050036

/-! ## A034271.P17748760444690513408

`A034261(A152813(n)+7)`
-/

namespace A034271.P17748760444690513408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034261 (A152813 n + 7).toNat

end

end A034271.P17748760444690513408

/-! ## A034271.P8870988351779240781

`A034261(A000217(2*(n+2))+n)`
-/

namespace A034271.P8870988351779240781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034261 (A000217 (2 * (n + 2)) + (n : ℤ)).toNat

end

end A034271.P8870988351779240781

/-! ## A034271.P5220692232002566335

`A034261(A067728(n+1)-2*n)`
-/

namespace A034271.P5220692232002566335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034261 (A067728 (n + 1) - (2 * n : ℤ)).toNat

end

end A034271.P5220692232002566335

/-! ## A034271.P710108515788893780

`A034261(A067728(n+1)-n-n)`
-/

namespace A034271.P710108515788893780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034261 (A067728 (n + 1) - (n : ℤ) - (n : ℤ)).toNat

end

end A034271.P710108515788893780

/-!
# A034272: a(n) = f(n,n+5) where f is given in A034261.

The programs for A034272, there is no canonical definition to state claims against.
-/

/-! ## A034272.P3228623945828498104

`A034261(eq[5, round(sqrt(2*(n+1)))²-(2*n+1)])`
-/

namespace A034272.P3228623945828498104
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (2 * (n + 1) : ℝ)) ^ 2 - (2 * n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034261 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A034272.P3228623945828498104

/-! ## A034272.P14817526689807170751

`A034261(A268581(n+1))`
-/

namespace A034272.P14817526689807170751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034261 (A268581 (n + 1)).toNat

end

end A034272.P14817526689807170751

/-! ## A034272.P10038042802237099320

`A034261(A004280((n+3)²))`
-/

namespace A034272.P10038042802237099320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034261 (A004280 ((n + 3) ^ 2)).toNat

end

end A034272.P10038042802237099320

/-! ## A034272.P2371022897902651359

`A034261(A067728(n+1)+5)`
-/

namespace A034272.P2371022897902651359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034261 (A067728 (n + 1) + 5).toNat

end

end A034272.P2371022897902651359

/-! ## A034272.P16983913060150922617

`A034261(A000384(n+3)+n)`
-/

namespace A034272.P16983913060150922617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034261 (A000384 (n + 3) + (n : ℤ)).toNat

end

end A034272.P16983913060150922617

/-!
# A034273: a(n) = binomial(2*n+6,n+7)*(n^2+7*n+1)/(n+8) = f(n,n+6) where f is given in A034261.

The programs for A034273, there is no canonical definition to state claims against.
-/

/-! ## A034273.P11993566731187278927

`A034261(eq[6, round(sqrt(2*(n+1)))²-(2*n+1)])`
-/

namespace A034273.P11993566731187278927
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (2 * (n + 1) : ℝ)) ^ 2 - (2 * n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034261 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A034273.P11993566731187278927

/-! ## A034273.P15583285533173334801

`A034261(lt[5, A204131(n+4)])`
-/

namespace A034273.P15583285533173334801
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204131 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034261 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A034273.P15583285533173334801

/-! ## A034273.P16138359124703880605

`A034261(A014105(n+3)+n)`
-/

namespace A034273.P16138359124703880605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034261 (A014105 (n + 3) + (n : ℤ)).toNat

end

end A034273.P16138359124703880605

/-! ## A034273.P12130129916910430040

`A034261(A173960(n+1)-A046092(n))`
-/

namespace A034273.P12130129916910430040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034261 (A173960 (n + 1) - A046092 n).toNat

end

end A034273.P12130129916910430040

/-! ## A034273.P6783117098326820408

`A034261(A261224(2*n+5)+A055998(2*(n+2)))`
-/

namespace A034273.P6783117098326820408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034261 (A261224 (2 * n + 5) + A055998 (2 * (n + 2))).toNat

end

end A034273.P6783117098326820408

/-!
# A034274: a(n)=f(n,n-1) where f is given in A034261.

The programs for A034274, the canonical program `A034274.P10410631480567846932` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A034274 has offset 1).

The definition of A034274 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 165 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A034274.P104209777720033356

`A194460(n+1)+A006419(n)`
-/

namespace A034274.P104209777720033356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194460 (n + 1) + A006419 n

end

end A034274.P104209777720033356

namespace A034274

/-- `A194460(n+1)+A006419(n)` -/
def P104209777720033356.Spec : Prop :=
  ∀ n, P104209777720033356.a n = A034274 (n + 1)

end A034274

/-! ## A034274.P16756421605610479469

`A002740(n+2)+A001700(n)`
-/

namespace A034274.P16756421605610479469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002740 (n + 2) + A001700 n

end

end A034274.P16756421605610479469

namespace A034274

/-- `A002740(n+2)+A001700(n)` -/
def P16756421605610479469.Spec : Prop :=
  ∀ n, P16756421605610479469.a n = A034274 (n + 1)

end A034274

/-! ## A034274.P8350671552826781009

`A088218(n+1)+A002740(n+2)`
-/

namespace A034274.P8350671552826781009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088218 (n + 1) + A002740 (n + 2)

end

end A034274.P8350671552826781009

namespace A034274

/-- `A088218(n+1)+A002740(n+2)` -/
def P8350671552826781009.Spec : Prop :=
  ∀ n, P8350671552826781009.a n = A034274 (n + 1)

end A034274

/-! ## A034274.P13356024820091038193

`A097070(n+2)-A001791(n+1)`
-/

namespace A034274.P13356024820091038193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097070 (n + 2) - A001791 (n + 1)

end

end A034274.P13356024820091038193

namespace A034274

/-- `A097070(n+2)-A001791(n+1)` -/
def P13356024820091038193.Spec : Prop :=
  ∀ n, P13356024820091038193.a n = A034274 (n + 1)

end A034274

/-! ## A034274.P5546870295361083900

`A092443(n+1)-A024482(n+2)`
-/

namespace A034274.P5546870295361083900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092443 (n + 1) - A024482 (n + 2)

end

end A034274.P5546870295361083900

namespace A034274

/-- `A092443(n+1)-A024482(n+2)` -/
def P5546870295361083900.Spec : Prop :=
  ∀ n, P5546870295361083900.a n = A034274 (n + 1)

end A034274

/-! ## A034274.P2253300296770425114

`A394529(n+1)-2*A008549(n)`
-/

namespace A034274.P2253300296770425114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394529 (n + 1) - 2 * A008549 n

end

end A034274.P2253300296770425114

namespace A034274

/-- `A394529(n+1)-2*A008549(n)` -/
def P2253300296770425114.Spec : Prop :=
  ∀ n, P2253300296770425114.a n = A034274 (n + 1)

end A034274

/-! ## A034274.P10410631480567846932

`A000108(n+1)+n*A001700(n)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A034274

/-- `A000108(n+1)+n*A001700(n)` -/
def P10410631480567846932.Spec : Prop :=
  ∀ n, P10410631480567846932.a n = A034274 (n + 1)

theorem P10410631480567846932.correct : P10410631480567846932.Spec := by
  intro n
  simp only [A034274, Nat.add_sub_cancel]

end A034274

/-! ## A034274.P15654892347455799695

`A002740(n+2)+A001405(2*n+1)`
-/

namespace A034274.P15654892347455799695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002740 (n + 2) + A001405 (2 * n + 1)

end

end A034274.P15654892347455799695

namespace A034274

/-- `A002740(n+2)+A001405(2*n+1)` -/
def P15654892347455799695.Spec : Prop :=
  ∀ n, P15654892347455799695.a n = A034274 (n + 1)

end A034274

/-! ## A034274.P14380484210399513914

`A000108(n+1)+A002457(n)-A001700(n)`
-/

namespace A034274.P14380484210399513914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (n + 1) + (A002457 n - A001700 n)

end

end A034274.P14380484210399513914

namespace A034274

/-- `A000108(n+1)+A002457(n)-A001700(n)` -/
def P14380484210399513914.Spec : Prop :=
  ∀ n, P14380484210399513914.a n = A034274 (n + 1)

end A034274

/-! ## A034274.P3652302497731237489

`A000108(n+1)+A000108(n)*A014105(n)`
-/

namespace A034274.P3652302497731237489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (n + 1) + A000108 n * A014105 n

end

end A034274.P3652302497731237489

namespace A034274

/-- `A000108(n+1)+A000108(n)*A014105(n)` -/
def P3652302497731237489.Spec : Prop :=
  ∀ n, P3652302497731237489.a n = A034274 (n + 1)

end A034274

/-! ## A034274.P13586114393012507784

`A000108(n+1)+A002457(n)-A088218(n+1)`
-/

namespace A034274.P13586114393012507784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (n + 1) + (A002457 n - A088218 (n + 1))

end

end A034274.P13586114393012507784

namespace A034274

/-- `A000108(n+1)+A002457(n)-A088218(n+1)` -/
def P13586114393012507784.Spec : Prop :=
  ∀ n, P13586114393012507784.a n = A034274 (n + 1)

end A034274

/-! ## A034274.P14176810568609105387

`A088218(n+1)+A002457(n)-A001791(n+1)`
-/

namespace A034274.P14176810568609105387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088218 (n + 1) + (A002457 n - A001791 (n + 1))

end

end A034274.P14176810568609105387

namespace A034274

/-- `A088218(n+1)+A002457(n)-A001791(n+1)` -/
def P14176810568609105387.Spec : Prop :=
  ∀ n, P14176810568609105387.a n = A034274 (n + 1)

end A034274

/-! ## A034274.P12288362303978714967

`A092443(n+1)+A001700(n)-A001700(n+1)`
-/

namespace A034274.P12288362303978714967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092443 (n + 1) + (A001700 n - A001700 (n + 1))

end

end A034274.P12288362303978714967

namespace A034274

/-- `A092443(n+1)+A001700(n)-A001700(n+1)` -/
def P12288362303978714967.Spec : Prop :=
  ∀ n, P12288362303978714967.a n = A034274 (n + 1)

end A034274

/-! ## A034274.P703912738164177895

`A034275(n+1)+A034275(n+1)-A344191(n)`
-/

namespace A034274.P703912738164177895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034275 (n + 1) + (A034275 (n + 1) - A344191 n)

end

end A034274.P703912738164177895

namespace A034274

/-- `A034275(n+1)+A034275(n+1)-A344191(n)` -/
def P703912738164177895.Spec : Prop :=
  ∀ n, P703912738164177895.a n = A034274 (n + 1)

end A034274

/-! ## A034274.P5458983652337374622

`A000108(n+1)*A000124(n+1)-A088218(n+1)`
-/

namespace A034274.P5458983652337374622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (n + 1) * A000124 (n + 1) - A088218 (n + 1)

end

end A034274.P5458983652337374622

namespace A034274

/-- `A000108(n+1)*A000124(n+1)-A088218(n+1)` -/
def P5458983652337374622.Spec : Prop :=
  ∀ n, P5458983652337374622.a n = A034274 (n + 1)

end A034274

/-! ## A034274.P2253806537077568379

`A180266(n+2)/2`
-/

namespace A034274.P2253806537077568379
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A180266 (n + 2) : ℚ) / 2

end

end A034274.P2253806537077568379

namespace A034274

/-- `A180266(n+2)/2` -/
def P2253806537077568379.Spec : Prop :=
  ∀ n, P2253806537077568379.a n = (A034274 (n + 1) : ℚ)

end A034274

/-! ## A034274.P12020725723107148043

`(2/(n+2)+n)*C(2*n+1, n)`
-/

namespace A034274.P12020725723107148043
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 / (n + 2 : ℚ) + (n : ℚ)) * (Nat.choose (2 * n + 1) n : ℚ)

end

end A034274.P12020725723107148043

namespace A034274

/-- `(2/(n+2)+n)*C(2*n+1, n)` -/
def P12020725723107148043.Spec : Prop :=
  ∀ n, P12020725723107148043.a n = (A034274 (n + 1) : ℚ)

end A034274

/-! ## A034274.P4876288136768921000

`C(2*n+1, n)+(n+1)*C(2*n+1, n+2)`
-/

namespace A034274.P4876288136768921000
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n + 1) n + (n + 1) * Nat.choose (2 * n + 1) (n + 2)

end

end A034274.P4876288136768921000

namespace A034274

/-- `C(2*n+1, n)+(n+1)*C(2*n+1, n+2)` -/
def P4876288136768921000.Spec : Prop :=
  ∀ n, (P4876288136768921000.a n : ℤ) = A034274 (n + 1)

end A034274

/-!
# A034275: a(n) = f(n,n-2) where f is given in A034261.

The programs for A034275, the canonical program `A034275.P13991304222716459800` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A034275 has offset 1).

The definition of A034275 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 165 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A034275.P13991304222716459800

`(∑[2*n]+1)*A000108(n)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A034275

/-- `(∑[2*n]+1)*A000108(n)` -/
def P13991304222716459800.Spec : Prop :=
  ∀ n, P13991304222716459800.a n = A034275 (n + 1)

theorem P13991304222716459800.correct : P13991304222716459800.Spec := by
  intro n
  simp only [A034275, Nat.add_sub_cancel]

end A034275

/-! ## A034275.P6364440427350825266

`(n+2)/2*A126223(n+1)`
-/

namespace A034275.P6364440427350825266
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) / 2 * (A126223 (n + 1) : ℚ)

end

end A034275.P6364440427350825266

namespace A034275

/-- `(n+2)/2*A126223(n+1)` -/
def P6364440427350825266.Spec : Prop :=
  ∀ n, P6364440427350825266.a n = (A034275 (n + 1) : ℚ)

end A034275

/-! ## A034275.P2030330712629288770

`(A120304(n)+2)*(∑[2*n]+1)`
-/

namespace A034275.P2030330712629288770
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A120304 n + 2) * ((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℕ) : ℤ)

end

end A034275.P2030330712629288770

namespace A034275

/-- `(A120304(n)+2)*(∑[2*n]+1)` -/
def P2030330712629288770.Spec : Prop :=
  ∀ n, P2030330712629288770.a n = A034275 (n + 1)

end A034275

/-! ## A034275.P7148709226894843616

`(n²+1+n)*A120588(n+1)`
-/

namespace A034275.P7148709226894843616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 + 1 + n : ℤ) * A120588 (n + 1)

end

end A034275.P7148709226894843616

namespace A034275

/-- `(n²+1+n)*A120588(n+1)` -/
def P7148709226894843616.Spec : Prop :=
  ∀ n, P7148709226894843616.a n = A034275 (n + 1)

end A034275

/-! ## A034275.P8273009169346517118

`(n²+1+n)*A028304(2*n)`
-/

namespace A034275.P8273009169346517118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 + 1 + n : ℤ) * A028304 (2 * n)

end

end A034275.P8273009169346517118

namespace A034275

/-- `(n²+1+n)*A028304(2*n)` -/
def P8273009169346517118.Spec : Prop :=
  ∀ n, P8273009169346517118.a n = A034275 (n + 1)

end A034275

/-! ## A034275.P9195091672584576210

`A005430(n)+A000108(n)`
-/

namespace A034275.P9195091672584576210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005430 n + A000108 n

end

end A034275.P9195091672584576210

namespace A034275

/-- `A005430(n)+A000108(n)` -/
def P9195091672584576210.Spec : Prop :=
  ∀ n, P9195091672584576210.a n = A034275 (n + 1)

end A034275

/-! ## A034275.P5202515568356408253

`A110609(n)+A000984(n)`
-/

namespace A034275.P5202515568356408253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110609 n + A000984 n

end

end A034275.P5202515568356408253

namespace A034275

/-- `A110609(n)+A000984(n)` -/
def P5202515568356408253.Spec : Prop :=
  ∀ n, P5202515568356408253.a n = A034275 (n + 1)

end A034275

/-! ## A034275.P14786840233302654244

`A237664(n)+A000777(n)`
-/

namespace A034275.P14786840233302654244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237664 n + A000777 n

end

end A034275.P14786840233302654244

namespace A034275

/-- `A237664(n)+A000777(n)` -/
def P14786840233302654244.Spec : Prop :=
  ∀ n, P14786840233302654244.a n = A034275 (n + 1)

end A034275

/-! ## A034275.P11619770013935974825

`A237622(n)+A010763(n)`
-/

namespace A034275.P11619770013935974825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237622 n + A010763 n

end

end A034275.P11619770013935974825

namespace A034275

/-- `A237622(n)+A010763(n)` -/
def P11619770013935974825.Spec : Prop :=
  ∀ n, P11619770013935974825.a n = A034275 (n + 1)

end A034275

/-! ## A034275.P5736614305504263518

`A394529(n)+A116078(n)`
-/

namespace A034275.P5736614305504263518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394529 n + A116078 n

end

end A034275.P5736614305504263518

namespace A034275

/-- `A394529(n)+A116078(n)` -/
def P5736614305504263518.Spec : Prop :=
  ∀ n, P5736614305504263518.a n = A034275 (n + 1)

end A034275

/-! ## A034275.P8972820035402669881

`A141222(n)-A162551(n)`
-/

namespace A034275.P8972820035402669881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141222 n - A162551 n

end

end A034275.P8972820035402669881

namespace A034275

/-- `A141222(n)-A162551(n)` -/
def P8972820035402669881.Spec : Prop :=
  ∀ n, P8972820035402669881.a n = A034275 (n + 1)

end A034275

/-! ## A034275.P18073764898487573951

`A000108(n)*∑[A004277(n)]`
-/

namespace A034275.P18073764898487573951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A034275.P18073764898487573951

namespace A034275

/-- `A000108(n)*∑[A004277(n)]` -/
def P18073764898487573951.Spec : Prop :=
  ∀ n, P18073764898487573951.a n = A034275 (n + 1)

end A034275

/-! ## A034275.P10764248523466459538

`A217213(n+1)+A001700(n)`
-/

namespace A034275.P10764248523466459538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217213 (n + 1) + A001700 n

end

end A034275.P10764248523466459538

namespace A034275

/-- `A217213(n+1)+A001700(n)` -/
def P10764248523466459538.Spec : Prop :=
  ∀ n, P10764248523466459538.a n = A034275 (n + 1)

end A034275

/-! ## A034275.P13939663561039503997

`A000108(n)*A002061(n+1)`
-/

namespace A034275.P13939663561039503997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n * A002061 (n + 1)

end

end A034275.P13939663561039503997

namespace A034275

/-- `A000108(n)*A002061(n+1)` -/
def P13939663561039503997.Spec : Prop :=
  ∀ n, P13939663561039503997.a n = A034275 (n + 1)

end A034275

/-! ## A034275.P13028054639672408752

`A100071(2*n)+A000108(n)`
-/

namespace A034275.P13028054639672408752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100071 (2 * n) + A000108 n

end

end A034275.P13028054639672408752

namespace A034275

/-- `A100071(2*n)+A000108(n)` -/
def P13028054639672408752.Spec : Prop :=
  ∀ n, P13028054639672408752.a n = A034275 (n + 1)

end A034275

/-! ## A034275.P9597851347468309704

`A212303(2*n)+A000108(n)`
-/

namespace A034275.P9597851347468309704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212303 (2 * n) + A000108 n

end

end A034275.P9597851347468309704

namespace A034275

/-- `A212303(2*n)+A000108(n)` -/
def P9597851347468309704.Spec : Prop :=
  ∀ n, P9597851347468309704.a n = A034275 (n + 1)

end A034275

/-! ## A034275.P672960990941871700

`A126930(2*n)+A110609(n)`
-/

namespace A034275.P672960990941871700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126930 (2 * n) + A110609 n

end

end A034275.P672960990941871700

namespace A034275

/-- `A126930(2*n)+A110609(n)` -/
def P672960990941871700.Spec : Prop :=
  ∀ n, P672960990941871700.a n = A034275 (n + 1)

end A034275

/-! ## A034275.P2304964578892229220

`A000108(n)+n*A000984(n)`
-/

namespace A034275.P2304964578892229220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n + (n : ℤ) * A000984 n

end

end A034275.P2304964578892229220

namespace A034275

/-- `A000108(n)+n*A000984(n)` -/
def P2304964578892229220.Spec : Prop :=
  ∀ n, P2304964578892229220.a n = A034275 (n + 1)

end A034275

/-! ## A034275.P4212978161943173768

`A000984(n)+n*A001791(n)`
-/

namespace A034275.P4212978161943173768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n + (n : ℤ) * A001791 n

end

end A034275.P4212978161943173768

namespace A034275

/-- `A000984(n)+n*A001791(n)` -/
def P4212978161943173768.Spec : Prop :=
  ∀ n, P4212978161943173768.a n = A034275 (n + 1)

end A034275

/-! ## A034275.P13199996121246997582

`A001700(n)+n*A276666(n)`
-/

namespace A034275.P13199996121246997582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001700 n + (n : ℤ) * A276666 n

end

end A034275.P13199996121246997582

namespace A034275

/-- `A001700(n)+n*A276666(n)` -/
def P13199996121246997582.Spec : Prop :=
  ∀ n, P13199996121246997582.a n = A034275 (n + 1)

end A034275

/-!
# A034288: Product of proper divisors is larger than for any smaller number.

The programs for A034288, there is no canonical definition to state claims against.
-/

/-! ## A034288.P12218705871482521679

`record[A034287(C(3, n²)+n)]`
-/

namespace A034288.P12218705871482521679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034287 (Nat.choose 3 (n ^ 2) + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A034288.P12218705871482521679

/-! ## A034288.P8108621738776385407

`A034287(3%comp[∑[n]]+n)`
-/

namespace A034288.P8108621738776385407
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034287 (3 % SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + n)

end

end A034288.P8108621738776385407

/-! ## A034288.P9155853932649125438

`A034287(C(3, round(atan(n)))+n)`
-/

namespace A034288.P9155853932649125438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034287 (Nat.choose 3 (SequenceMachineLib.roundAway (Real.arctan (n : ℝ))).toNat + n)

end

end A034288.P9155853932649125438

/-! ## A034288.P4545325635958921880

`A034287(C(3, ceil(sin(n)²))+n)`
-/

namespace A034288.P4545325635958921880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034287 (Nat.choose 3 ⌈Real.sin (n : ℝ) ^ 2⌉.toNat + n)

end

end A034288.P4545325635958921880

/-! ## A034288.P14153202452844643842

`A034287(2*(n+1)-abs(1-n))`
-/

namespace A034288.P14153202452844643842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034287 ((2 * (n + 1) : ℤ) - |1 - (n : ℤ)|).toNat

end

end A034288.P14153202452844643842

/-! ## A034288.P16313110671791891993

`record[A034287(A019303(n))]`
-/

namespace A034288.P16313110671791891993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034287 (A019303 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A034288.P16313110671791891993

/-! ## A034288.P9679721552829482761

`record[A034287(n+1)+A000038(A007599(n))]`
-/

namespace A034288.P9679721552829482761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034287 (n + 1) + A000038 (A007599 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A034288.P9679721552829482761

/-! ## A034288.P17779015839687473996

`record[A034287(n+1)+A000038(n)]-A000038(n)`
-/

namespace A034288.P17779015839687473996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034287 (n + 1) + A000038 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A000038 n

end

end A034288.P17779015839687473996

/-! ## A034288.P11205029491589511604

`A291899(A065475(n+1))`
-/

namespace A034288.P11205029491589511604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291899 (A065475 (n + 1)).toNat

end

end A034288.P11205029491589511604

/-! ## A034288.P17801777718502254957

`A291899(A181440(n+2))`
-/

namespace A034288.P17801777718502254957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291899 (A181440 (n + 2)).toNat

end

end A034288.P17801777718502254957

/-! ## A034288.P5924435324820561467

`A291899(A184985(n+2))`
-/

namespace A034288.P5924435324820561467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291899 (A184985 (n + 2)).toNat

end

end A034288.P5924435324820561467

/-! ## A034288.P16558225473809728199

`A291899(A103517(n)-n)`
-/

namespace A034288.P16558225473809728199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291899 (A103517 n - (n : ℤ)).toNat

end

end A034288.P16558225473809728199

/-!
# A034289: Squares which can be rearranged into squares with the same number of digits.

The programs for A034289, there is no canonical definition to state claims against.
-/

/-! ## A034289.P17522022429878597960

`A045879(n+1)²`
-/

namespace A034289.P17522022429878597960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045879 (n + 1) ^ 2

end

end A034289.P17522022429878597960

/-! ## A034289.P17170019473561039782

`A045879(n+1)^A043529(A061408(n))`
-/

namespace A034289.P17170019473561039782
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045879 (n + 1) : ℚ) ^ (A043529 (A061408 n).toNat : ℤ)

end

end A034289.P17170019473561039782

/-! ## A034289.P15100839282631882603

`A045879(n+1)^(2%A014601(A211100(n)))`
-/

namespace A034289.P15100839282631882603
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045879 (n + 1) : ℚ) ^ (Int.tmod 2 (A014601 (A211100 n).toNat) : ℤ)

end

end A034289.P15100839282631882603

/-! ## A034289.P18317721838667328894

`A045879(n+1)*A045879((n+1)%A045879(n+1))`
-/

namespace A034289.P18317721838667328894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045879 (n + 1) * A045879 (Int.tmod (n + 1 : ℤ) (A045879 (n + 1))).toNat

end

end A034289.P18317721838667328894

/-! ## A034289.P7687736013597689336

`A045879(or(n+1, A036987(n+1)))*A045879(n+1)`
-/

namespace A034289.P7687736013597689336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045879 (Int.lor (n + 1 : ℤ) (A036987 (n + 1))).toNat * A045879 (n + 1)

end

end A034289.P7687736013597689336

/-! ## A034289.P12252598986251477557

`A045879(n+1)^A043529(2*(n+1))`
-/

namespace A034289.P12252598986251477557
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045879 (n + 1) : ℚ) ^ (A043529 (2 * (n + 1)) : ℤ)

end

end A034289.P12252598986251477557

/-! ## A034289.P16971978740584129145

`A005563(A045879(n+1)-1)+1`
-/

namespace A034289.P16971978740584129145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005563 (A045879 (n + 1) - 1).toNat + 1

end

end A034289.P16971978740584129145

/-! ## A034289.P14862832470382153491

`A045879(n+1)^A000034(2*n+1)`
-/

namespace A034289.P14862832470382153491
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045879 (n + 1) : ℚ) ^ (A000034 (2 * n + 1) : ℤ)

end

end A034289.P14862832470382153491

/-! ## A034289.P15260715612299429984

`A045879(n+1)^A000005(A105903(n+1))`
-/

namespace A034289.P15260715612299429984
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045879 (n + 1) : ℚ) ^ (A000005 (A105903 (n + 1)).toNat : ℤ)

end

end A034289.P15260715612299429984

/-! ## A034289.P17665962109330194627

`A045879(n+1)^A001222(A001748(n+1))`
-/

namespace A034289.P17665962109330194627
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045879 (n + 1) : ℚ) ^ (A001222 (A001748 (n + 1)).toNat : ℤ)

end

end A034289.P17665962109330194627

/-! ## A034289.P2671482648806539881

`A000463(2*A045879(n+1))`
-/

namespace A034289.P2671482648806539881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (2 * A045879 (n + 1)).toNat

end

end A034289.P2671482648806539881

/-! ## A034289.P17251902243036846488

`A004652(2*A045879(n+1))`
-/

namespace A034289.P17251902243036846488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004652 (2 * A045879 (n + 1)).toNat

end

end A034289.P17251902243036846488

/-!
# A034290: Cubes that have some nontrivial permutation of digits that is also a cube.

The programs for A034290, there is no canonical definition to state claims against.
-/

/-! ## A034290.P13393176512797678282

`A188065(n+1)^3`
-/

namespace A034290.P13393176512797678282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188065 (n + 1) ^ 3

end

end A034290.P13393176512797678282

/-! ## A034290.P2971918928453105792

`A000578(A188065(n+1))`
-/

namespace A034290.P2971918928453105792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (A188065 (n + 1)).toNat

end

end A034290.P2971918928453105792

/-! ## A034290.P16224424853728755677

`A034828(2*A188065(n+1))`
-/

namespace A034290.P16224424853728755677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034828 (2 * A188065 (n + 1)).toNat

end

end A034290.P16224424853728755677

/-! ## A034290.P9563238909824494449

`A109816(3*A188065(n+1))`
-/

namespace A034290.P9563238909824494449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109816 (3 * A188065 (n + 1)).toNat

end

end A034290.P9563238909824494449

/-!
# A034291: Triangular numbers that have some nontrivial permutation of digits which is also triangular.

The programs for A034291, there is no canonical definition to state claims against.
-/

/-! ## A034291.P17877861836228382499

`A162304(∑[A090872(n)])`
-/

namespace A034291.P17877861836228382499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090872 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162304 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A034291.P17877861836228382499

/-!
# A034292: Fibonacci numbers with exactly 2 different digits (probably finite).

The programs for A034292, there is no canonical definition to state claims against.
-/

/-! ## A034292.P10978183437382185489

`A108035(A364458(n+1))`
-/

namespace A034292.P10978183437382185489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108035 (A364458 (n + 1)).toNat

end

end A034292.P10978183437382185489

/-! ## A034292.P16688389623009642425

`A069041(A047263(n+6)+1)`
-/

namespace A034292.P16688389623009642425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069041 (A047263 (n + 6) + 1).toNat

end

end A034292.P16688389623009642425

/-! ## A034292.P18280188396178448523

`A069041(A366169(n+5)+2)`
-/

namespace A034292.P18280188396178448523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069041 (A366169 (n + 5) + 2).toNat

end

end A034292.P18280188396178448523

/-! ## A034292.P16114944377228530242

`A000045(∑[A061538(n+1)]+6)`
-/

namespace A034292.P16114944377228530242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061538 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (∑ j ∈ Finset.range (n + 1), f1 j + 6).toNat

end

end A034292.P16114944377228530242

/-!
# A034293: Numbers k such that 2^k does not contain the digit 2 (probably finite).

The programs for A034293, there is no canonical definition to state claims against.
-/

/-! ## A034293.P5208963827175441018

`eq[0, A065710(n)]`
-/

namespace A034293.P5208963827175441018
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065710 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A034293.P5208963827175441018

/-! ## A034293.P8181457536190634840

`log2(A378556(n+1))`
-/

namespace A034293.P8181457536190634840
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A378556 (n + 1) : ℝ)

end

end A034293.P8181457536190634840

/-! ## A034293.P7467929686847263367

`record[A136291(n+2)]`
-/

namespace A034293.P7467929686847263367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136291 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A034293.P7467929686847263367

/-! ## A034293.P10593869319433750202

`A136291(A109425(n+1))`
-/

namespace A034293.P10593869319433750202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136291 (A109425 (n + 1)).toNat

end

end A034293.P10593869319433750202

/-! ## A034293.P4245805048566670649

`A136291(A132145(n+1))`
-/

namespace A034293.P4245805048566670649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136291 (A132145 (n + 1)).toNat

end

end A034293.P4245805048566670649

/-!
# A034294: Numbers k not ending in 0 such that for some base b, k_b is the reverse of k_10 (where k_b denotes k written in base b).

The programs for A034294, there is no canonical definition to state claims against.
-/

/-! ## A034294.P1619767316574713082

`A307498(A090110(n+2))`
-/

namespace A034294.P1619767316574713082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307498 (A090110 (n + 2)).toNat

end

end A034294.P1619767316574713082

/-! ## A034294.P1403936735367153012

`A118759(A307498(n+2))`
-/

namespace A034294.P1403936735367153012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (A307498 (n + 2)).toNat

end

end A034294.P1403936735367153012

/-! ## A034294.P9618047587763249757

`A000196(A307498(n+2)²)`
-/

namespace A034294.P9618047587763249757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A307498 (n + 2) ^ 2).toNat

end

end A034294.P9618047587763249757

/-! ## A034294.P12628522471105334344

`A033676(A307498(n+2)²)`
-/

namespace A034294.P12628522471105334344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033676 (A307498 (n + 2) ^ 2).toNat

end

end A034294.P12628522471105334344

/-! ## A034294.P1974267826411557206

`A053615(A307498(n+2)²)`
-/

namespace A034294.P1974267826411557206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053615 (A307498 (n + 2) ^ 2).toNat

end

end A034294.P1974267826411557206

/-!
# A034295: Number of different ways to divide an n X n square into sub-squares, considering only the list of parts.

The programs for A034295, there is no canonical definition to state claims against.
-/

/-! ## A034295.P14898584063448744383

`A037444(n+1)-A092179(n+1)`
-/

namespace A034295.P14898584063448744383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037444 (n + 1) - A092179 (n + 1)

end

end A034295.P14898584063448744383

/-! ## A034295.P17546320087082943846

`A224697(∑[4*(n+1)])`
-/

namespace A034295.P17546320087082943846
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224697 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A034295.P17546320087082943846

/-! ## A034295.P1926012202948225533

`record[A224697(∑[A071045(n)])]`
-/

namespace A034295.P1926012202948225533
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071045 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224697 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A034295.P1926012202948225533

/-! ## A034295.P14910941569764611662

`record[A224697(A088510(n+1))]`
-/

namespace A034295.P14910941569764611662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224697 (A088510 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A034295.P14910941569764611662

/-! ## A034295.P6046742701463232949

`record[A224697(A231100(n+1))]`
-/

namespace A034295.P6046742701463232949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224697 (A231100 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A034295.P6046742701463232949

/-!
# A034296: Number of flat partitions of n: partitions {a_i} with each |a_i - a_{i-1}| <= 1.

The programs for A034296, there is no canonical definition to state claims against.
-/

/-! ## A034296.P7399581839301805541

`A000041(n)-A239955(n)`
-/

namespace A034296.P7399581839301805541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A239955 n

end

end A034296.P7399581839301805541

/-! ## A034296.P2187731456162647513

`A032741(n)+A237665(n)+1`
-/

namespace A034296.P2187731456162647513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n + (A237665 n + 1)

end

end A034296.P2187731456162647513

/-! ## A034296.P16159988698316587608

`A237665(n)+A000005(A028310(n))`
-/

namespace A034296.P16159988698316587608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237665 n + A000005 (A028310 n).toNat

end

end A034296.P16159988698316587608

/-! ## A034296.P13313607969739018319

`A237665(n)+A112329(A008574(n))`
-/

namespace A034296.P13313607969739018319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237665 n + A112329 (A008574 n).toNat

end

end A034296.P13313607969739018319

/-! ## A034296.P4912273321766476667

`A320111(A257088(n))+A237665(n)`
-/

namespace A034296.P4912273321766476667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320111 (A257088 n).toNat + A237665 n

end

end A034296.P4912273321766476667

/-! ## A034296.P7108152705533303293

`A237665(n)+A112329(record[A257088(n)])`
-/

namespace A034296.P7108152705533303293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237665 n + A112329 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A034296.P7108152705533303293

/-! ## A034296.P9522494849544391130

`A237665(n)+A112329(A004277(2*n))`
-/

namespace A034296.P9522494849544391130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237665 n + A112329 (A004277 (2 * n)).toNat

end

end A034296.P9522494849544391130

/-! ## A034296.P10863653836397773587

`A237665(n)+A112329(A257088(2*n))`
-/

namespace A034296.P10863653836397773587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237665 n + A112329 (A257088 (2 * n)).toNat

end

end A034296.P10863653836397773587

/-! ## A034296.P17394906600983262691

`A237665(n)+A000005(A000007(n)+n)`
-/

namespace A034296.P17394906600983262691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237665 n + A000005 (A000007 n + (n : ℤ)).toNat

end

end A034296.P17394906600983262691

/-! ## A034296.P11638380775165821115

`A237665(n)+A112329(A004275(2*n+1))`
-/

namespace A034296.P11638380775165821115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237665 n + A112329 (A004275 (2 * n + 1)).toNat

end

end A034296.P11638380775165821115

/-! ## A034296.P2471521956729686637

`A237665(n)+A000005(A008619(A004275(n)))`
-/

namespace A034296.P2471521956729686637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237665 n + A000005 (A008619 (A004275 n).toNat).toNat

end

end A034296.P2471521956729686637

/-! ## A034296.P6211738616902074274

`A237665(n)+A194621(∑[n])`
-/

namespace A034296.P6211738616902074274
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237665 n + A194621 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A034296.P6211738616902074274

/-! ## A034296.P6501277279994542603

`A238353(∑[n])+A237665(n)`
-/

namespace A034296.P6501277279994542603
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238353 (∑ j ∈ Finset.range (n + 1), f1 j) + A237665 n

end

end A034296.P6501277279994542603

/-! ## A034296.P14967593072671593830

`A237665(n)+A048570(A000124(n))`
-/

namespace A034296.P14967593072671593830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237665 n + A048570 (A000124 n).toNat

end

end A034296.P14967593072671593830

/-!
# A034297: Number of ordered positive integer solutions (m_1, m_2, ..., m_k) (for some k) to Sum_{i=1..k} m_i=n with |m_i-m_{i-1}| <= 1 for i = 2 ... k.

The programs for A034297, there is no canonical definition to state claims against.
-/

/-! ## A034297.P8912171069822990081

`A214246(∑[n+2]-1)`
-/

namespace A034297.P8912171069822990081
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214246 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A034297.P8912171069822990081

/-! ## A034297.P1559359809671261139

`A214248(∑[n+2]-1)`
-/

namespace A034297.P1559359809671261139
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214248 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A034297.P1559359809671261139

/-! ## A034297.P6402687965048337498

`and(-1, A214246(A034856(n+1)))`
-/

namespace A034297.P6402687965048337498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A214246 (A034856 (n + 1)).toNat)

end

end A034297.P6402687965048337498

/-! ## A034297.P5403026938498872598

`A214248(A034856(n+1))%A153893(n)`
-/

namespace A034297.P5403026938498872598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A214248 (A034856 (n + 1)).toNat) (A153893 n)

end

end A034297.P5403026938498872598

/-! ## A034297.P2409039712445178302

`lcm(A214246(A034856(n+1)), A242179(n))`
-/

namespace A034297.P2409039712445178302
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A214246 (A034856 (n + 1)).toNat) (A242179 n)

end

end A034297.P2409039712445178302

/-! ## A034297.P8392314394730789241

`or(A000007(n), A214248(A034856(n+1)))`
-/

namespace A034297.P8392314394730789241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A214248 (A034856 (n + 1)).toNat)

end

end A034297.P8392314394730789241

/-!
# A034298: a(n) = min_S max_i b_i where S={b_i} (1 <= i <= n), b_i > 0, b_i distinct and either b_i|b_{i-1} or b_{i-1}|b_i.

The programs for A034298, there is no canonical definition to state claims against.
-/

/-! ## A034298.P9976638015194088680

`comp[A337125(n+1)+n]-n+1`
-/

namespace A034298.P9976638015194088680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337125 (n + 1) + (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ) + 1

end

end A034298.P9976638015194088680

/-! ## A034298.P5613720459296217342

`Δ[A165190(A008486((2*n)²))]`
-/

namespace A034298.P5613720459296217342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165190 (A008486 ((2 * n) ^ 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A034298.P5613720459296217342

/-! ## A034298.P10064944492509983036

`Δ[A165190(A008574(3*n²))]`
-/

namespace A034298.P10064944492509983036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165190 (A008574 (3 * n ^ 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A034298.P10064944492509983036

/-! ## A034298.P2852480405203207869

`A001414(A227928(n+1))+A000007(n)`
-/

namespace A034298.P2852480405203207869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A227928 (n + 1)).toNat + A000007 n

end

end A034298.P2852480405203207869

/-! ## A034298.P15086297831485770321

`A070939(A111124(n))+A005206(n)`
-/

namespace A034298.P15086297831485770321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (A111124 n).toNat + A005206 n

end

end A034298.P15086297831485770321

/-!
# A034299: Alternating sum transform (PSumSIGN) of A000975.

The programs for A034299, the canonical program `A034299.P5111804517773824309` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A034299 has offset 0).

The definition of A034299 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A034299.P15565720992563387652

`a(n-1)+2*a(n-2)+(1+(-1)^n)/2` with `a(0)=1, a(1)=1`
-/

namespace A034299.P15565720992563387652
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) + 2 * a (n - 2) + (1 + (-1) ^ n : ℚ) / 2

end

end A034299.P15565720992563387652

namespace A034299

/-- `a(n-1)+2*a(n-2)+(1+(-1)^n)/2` -/
def P15565720992563387652.Spec : Prop :=
  ∀ n, P15565720992563387652.a n = (A034299 n : ℚ)

end A034299

/-! ## A034299.P5111804517773824309

`2*a(n-1)+A001057(n+1)` with `a(0)=1`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A034299

/-- `2*a(n-1)+A001057(n+1)` -/
def P5111804517773824309.Spec : Prop :=
  ∀ n, P5111804517773824309.a n = A034299 n

theorem P5111804517773824309.correct : P5111804517773824309.Spec := by
  intro n
  simp only [A034299]

end A034299

/-! ## A034299.P7709182613093785820

`(2^(n+5)+(6*n+13)*(-1)^n-9)/36`
-/

namespace A034299.P7709182613093785820
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 ^ (n + 5) : ℤ) + (6 * n + 13 : ℤ) * (-1) ^ n - 9 : ℚ) / 36

end

end A034299.P7709182613093785820

namespace A034299

/-- `(2^(n+5)+(6*n+13)*(-1)^n-9)/36` -/
def P7709182613093785820.Spec : Prop :=
  ∀ n, P7709182613093785820.a n = (A034299 n : ℚ)

end A034299

/-! ## A034299.P7829000528647022730

`2*a(n-3)+3*a(n-2)+1` with `a(0)=1, a(1)=1, a(2)=4`
-/

namespace A034299.P7829000528647022730
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 4] fun n a =>
  2 * a (n - 3) + 3 * a (n - 2) + 1

end

end A034299.P7829000528647022730

namespace A034299

/-- `2*a(n-3)+3*a(n-2)+1` -/
def P7829000528647022730.Spec : Prop :=
  ∀ n, (P7829000528647022730.a n : ℤ) = A034299 n

end A034299

/-! ## A034299.P11152202348628706391

`∑[A053088(n)]`
-/

namespace A034299.P11152202348628706391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A034299.P11152202348628706391

namespace A034299

/-- `∑[A053088(n)]` -/
def P11152202348628706391.Spec : Prop :=
  ∀ n, P11152202348628706391.a n = A034299 n

end A034299

/-! ## A034299.P5228297289975830068

`∑[abs(A077898(n))]`
-/

namespace A034299.P5228297289975830068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A077898 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A034299.P5228297289975830068

namespace A034299

/-- `∑[abs(A077898(n))]` -/
def P5228297289975830068.Spec : Prop :=
  ∀ n, P5228297289975830068.a n = A034299 n

end A034299

/-! ## A034299.P7744410607963285650

`A051049(n)-a(n-3)` with `a(0)=1, a(1)=1, a(2)=4`
-/

namespace A034299.P7744410607963285650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 4] fun n a =>
  A051049 n - a (n - 3)

end

end A034299.P7744410607963285650

namespace A034299

/-- `A051049(n)-a(n-3)` -/
def P7744410607963285650.Spec : Prop :=
  ∀ n, P7744410607963285650.a n = A034299 n

end A034299

/-! ## A034299.P6459642109088497613

`A130472(n)+A103196(n)`
-/

namespace A034299.P6459642109088497613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130472 n + A103196 n

end

end A034299.P6459642109088497613

namespace A034299

/-- `A130472(n)+A103196(n)` -/
def P6459642109088497613.Spec : Prop :=
  ∀ n, P6459642109088497613.a n = A034299 n

end A034299

/-! ## A034299.P11844804948752494217

`A103196(n)-A001057(n)`
-/

namespace A034299.P11844804948752494217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103196 n - A001057 n

end

end A034299.P11844804948752494217

namespace A034299

/-- `A103196(n)-A001057(n)` -/
def P11844804948752494217.Spec : Prop :=
  ∀ n, P11844804948752494217.a n = A034299 n

end A034299

/-! ## A034299.P14778359443455378434

`A320933(n)-A106157(n)`
-/

namespace A034299.P14778359443455378434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320933 n - A106157 n

end

end A034299.P14778359443455378434

namespace A034299

/-- `A320933(n)-A106157(n)` -/
def P14778359443455378434.Spec : Prop :=
  ∀ n, P14778359443455378434.a n = A034299 n

end A034299

/-! ## A034299.P9745731927943801364

`A130472(n+2)+A053088(n+1)`
-/

namespace A034299.P9745731927943801364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130472 (n + 2) + A053088 (n + 1)

end

end A034299.P9745731927943801364

namespace A034299

/-- `A130472(n+2)+A053088(n+1)` -/
def P9745731927943801364.Spec : Prop :=
  ∀ n, P9745731927943801364.a n = A034299 n

end A034299

/-! ## A034299.P14377691125411494074

`A000079(n)+A053088(n)-A172416(n)`
-/

namespace A034299.P14377691125411494074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n + (A053088 n - A172416 n)

end

end A034299.P14377691125411494074

namespace A034299

/-- `A000079(n)+A053088(n)-A172416(n)` -/
def P14377691125411494074.Spec : Prop :=
  ∀ n, P14377691125411494074.a n = A034299 n

end A034299

/-! ## A034299.P12083725326682095613

`A172285(n+1)+A001045(n)-A172416(n)`
-/

namespace A034299.P12083725326682095613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172285 (n + 1) + (A001045 n - A172416 n)

end

end A034299.P12083725326682095613

namespace A034299

/-- `A172285(n+1)+A001045(n)-A172416(n)` -/
def P12083725326682095613.Spec : Prop :=
  ∀ n, P12083725326682095613.a n = A034299 n

end A034299

/-! ## A034299.P9265092658390615378

`A053088(n+1)+A027656(n)-A027656(n+1)`
-/

namespace A034299.P9265092658390615378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053088 (n + 1) + (A027656 n - A027656 (n + 1))

end

end A034299.P9265092658390615378

namespace A034299

/-- `A053088(n+1)+A027656(n)-A027656(n+1)` -/
def P9265092658390615378.Spec : Prop :=
  ∀ n, P9265092658390615378.a n = A034299 n

end A034299

/-! ## A034299.P3956739199771937333

`A053088(n+1)+A172285(n+1)-A172416(n+1)`
-/

namespace A034299.P3956739199771937333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053088 (n + 1) + (A172285 (n + 1) - A172416 (n + 1))

end

end A034299.P3956739199771937333

namespace A034299

/-- `A053088(n+1)+A172285(n+1)-A172416(n+1)` -/
def P3956739199771937333.Spec : Prop :=
  ∀ n, P3956739199771937333.a n = A034299 n

end A034299

/-! ## A034299.P17505091500294038058

`∑[2^n-a(n-1)]-a(n-1)` with `a(0)=1`
-/

namespace A034299.P17505091500294038058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  (2 ^ n : ℤ) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j - a (n - 1)

end

end A034299.P17505091500294038058

namespace A034299

/-- `∑[2^n-a(n-1)]-a(n-1)` -/
def P17505091500294038058.Spec : Prop :=
  ∀ n, P17505091500294038058.a n = A034299 n

end A034299

/-! ## A034299.P1252533215520870978

`∑[a(n-2)+a(n-1)+a(n-2)]-a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A034299.P1252533215520870978
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  f1 (n - 2) + (f1 (n - 1) + f1 (n - 2))

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - a (n - 1)

end

end A034299.P1252533215520870978

namespace A034299

/-- `∑[a(n-2)+a(n-1)+a(n-2)]-a(n-1)` -/
def P1252533215520870978.Spec : Prop :=
  ∀ n, P1252533215520870978.a n = A034299 n

end A034299

/-! ## A034299.P8668706012719984542

`abs(∑[∑[A225883(n+1)]])`
-/

namespace A034299.P8668706012719984542
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225883 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A034299.P8668706012719984542

namespace A034299

/-- `abs(∑[∑[A225883(n+1)]])` -/
def P8668706012719984542.Spec : Prop :=
  ∀ n, P8668706012719984542.a n = A034299 n

end A034299

/-! ## A034299.P7724345553033662675

`2^(n+1)-A172416(n+1)`
-/

namespace A034299.P7724345553033662675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) : ℤ) - A172416 (n + 1)

end

end A034299.P7724345553033662675

namespace A034299

/-- `2^(n+1)-A172416(n+1)` -/
def P7724345553033662675.Spec : Prop :=
  ∀ n, P7724345553033662675.a n = A034299 n

end A034299

