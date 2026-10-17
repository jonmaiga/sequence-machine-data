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
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
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
# A359700: a(n) = Sum_{d|n} d^(d + n/d - 1).

The programs for A359700, there is no canonical definition to state claims against.
-/

/-! ## A359700.P2737738595642757331

`A343573(n+1)+A007814(A276097(n+1))`
-/

namespace A359700.P2737738595642757331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343573 (n + 1) + A007814 (A276097 (n + 1)).toNat

end

end A359700.P2737738595642757331

/-! ## A359700.P14792608442142932409

`A343573(n+1)+A033715(A054856(n+3))`
-/

namespace A359700.P14792608442142932409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343573 (n + 1) + A033715 (A054856 (n + 3)).toNat

end

end A359700.P14792608442142932409

/-!
# A359701: a(n) = Sum_{d|n} d^(d + n/d - 2).

The programs for A359701, there is no canonical definition to state claims against.
-/

/-! ## A359701.P16039393884890720298

`A129363(A154244(n+1))+A000169(n+1)`
-/

namespace A359701.P16039393884890720298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129363 (A154244 (n + 1)).toNat + A000169 (n + 1)

end

end A359701.P16039393884890720298

/-! ## A359701.P1793837686616330704

`A007947(A308814(n+1))-A270032(n+1)`
-/

namespace A359701.P1793837686616330704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A308814 (n + 1)).toNat - A270032 (n + 1)

end

end A359701.P1793837686616330704

/-!
# A359703: Number of fillomino dissections of a 2 X n rectangle.

The programs for A359703, there is no canonical definition to state claims against.
-/

/-! ## A359703.P5727395904982332325

`∏{p}[A000700((2*n)²)², #]`
-/

namespace A359703.P5727395904982332325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000700 ((2 * n) ^ 2) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A359703.P5727395904982332325

/-!
# A359704: Minimum number of spanning trees in a 3-connected graph on n nodes.

The programs for A359704, there is no canonical definition to state claims against.
-/

/-! ## A359704.P5488520396512024070

`A330940(2*n+3)+A156061(A378076(2*n+9))`
-/

namespace A359704.P5488520396512024070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330940 (2 * n + 3) + A156061 (A378076 (2 * n + 9)).toNat

end

end A359704.P5488520396512024070

/-!
# A359708: a(n) is the greatest divisor d of 2*n such that the binary expansions of d and 2*n have no common 1-bit.

The programs for A359708, there is no canonical definition to state claims against.
-/

/-! ## A359708.P17659316071823197674

`A359627(∑[A307314(n+1)])`
-/

namespace A359708.P17659316071823197674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307314 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359627 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A359708.P17659316071823197674

/-! ## A359708.P4153523759296795929

`A359627(A325123(2*(n+1)))`
-/

namespace A359708.P4153523759296795929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359627 (A325123 (2 * (n + 1))).toNat

end

end A359708.P4153523759296795929

/-! ## A359708.P4412966789420654971

`gcd(A091732(A007088(2*n+1)), A319626(n+1))`
-/

namespace A359708.P4412966789420654971
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A091732 (A007088 (2 * n + 1)).toNat) (A319626 (n + 1))

end

end A359708.P4412966789420654971

/-! ## A359708.P905455538335936566

`gcd(A000132(A007755(n+1)), A319626(n+1))`
-/

namespace A359708.P905455538335936566
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000132 (A007755 (n + 1)).toNat) (A319626 (n + 1))

end

end A359708.P905455538335936566

/-!
# A359711: a(n) = coefficient of x^n in A(x) such that 1 = Sum_{n=-oo..+oo} (-x)^n * (A(x) + x^(n-1))^(n+1).

The programs for A359711, there is no canonical definition to state claims against.
-/

/-! ## A359711.P14197749858342162766

`A349909(A000351(n)+A000110(n))`
-/

namespace A359711.P14197749858342162766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349909 (A000351 n + A000110 n).toNat

end

end A359711.P14197749858342162766

/-!
# A359712: a(n) = coefficient of x^n in A(x) such that 2 = Sum_{n=-oo..+oo} (-x)^n * (2*A(x) + x^(n-1))^(n+1).

The programs for A359712, there is no canonical definition to state claims against.
-/

/-! ## A359712.P43998483980160516

`A057354(A276600(3*n+1))+A000009(3*n)`
-/

namespace A359712.P43998483980160516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057354 (A276600 (3 * n + 1)).toNat + A000009 (3 * n)

end

end A359712.P43998483980160516

/-!
# A359713: a(n) = coefficient of x^n in A(x) such that 3 = Sum_{n=-oo..+oo} (-x)^n * (3*A(x) + x^(n-1))^(n+1).

The programs for A359713, there is no canonical definition to state claims against.
-/

/-! ## A359713.P4493409939294585820

`A049615(A002293(n+2))+1`
-/

namespace A359713.P4493409939294585820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049615 (A002293 (n + 2)).toNat + 1

end

end A359713.P4493409939294585820

/-!
# A359714: Central terms of triangle A359670; a(n) = A359670(2*n,n) for n >= 0.

The programs for A359714, there is no canonical definition to state claims against.
-/

/-! ## A359714.P14560433234159241487

`A359670(∑[4*n])`
-/

namespace A359714.P14560433234159241487
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359670 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A359714.P14560433234159241487

/-! ## A359714.P15550343149073413443

`A359670(A046092(n))+A000007(n+4)`
-/

namespace A359714.P15550343149073413443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359670 (A046092 n).toNat + A000007 (n + 4)

end

end A359714.P15550343149073413443

/-! ## A359714.P18383771691874274231

`A359670(A046092(n))+A010054(3*n+2)`
-/

namespace A359714.P18383771691874274231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359670 (A046092 n).toNat + A010054 (3 * n + 2)

end

end A359714.P18383771691874274231

/-! ## A359714.P4505479796131386213

`A057427(3*n+2)*A359670(A046092(n))`
-/

namespace A359714.P4505479796131386213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (3 * n + 2) * A359670 (A046092 n).toNat

end

end A359714.P4505479796131386213

/-! ## A359714.P17039656613801489078

`record[A359670(n)/A145118(2*n+1)]`
-/

namespace A359714.P17039656613801489078
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A359670 n : ℚ) / (A145118 (2 * n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A359714.P17039656613801489078

/-!
# A359715: Column 2 of triangle A359670; a(n) = A359670(n+2,2) for n >= 0.

The programs for A359715, there is no canonical definition to state claims against.
-/

/-! ## A359715.P146562262799028475

`A359670(∑[n+2]+3)`
-/

namespace A359715.P146562262799028475
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359670 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A359715.P146562262799028475

/-!
# A359716: Central terms of triangle A236961: a(n) = A236961(2*n,n) for n >= 0.

The programs for A359716, there is no canonical definition to state claims against.
-/

/-! ## A359716.P15455716027947444175

`A236961(∑[4*n])`
-/

namespace A359716.P15455716027947444175
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236961 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A359716.P15455716027947444175

/-! ## A359716.P15065002061159002620

`record[A236961(A057979(n²))]`
-/

namespace A359716.P15065002061159002620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236961 (A057979 (n ^ 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A359716.P15065002061159002620

/-! ## A359716.P16729378655141340245

`record[A003982(n)*A236961(n)]`
-/

namespace A359716.P16729378655141340245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A236961 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A359716.P16729378655141340245

/-! ## A359716.P17086769719414681343

`A260502(n+1)+A236961(A046092(n))`
-/

namespace A359716.P17086769719414681343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260502 (n + 1) + A236961 (A046092 n).toNat

end

end A359716.P17086769719414681343

/-!
# A359717: Row sums of triangle A236961.

The programs for A359717, there is no canonical definition to state claims against.
-/

/-! ## A359717.P4568000794399844172

`A038052(∏{p}[n+1, #]^∑{p}[n+1, ceil(n/#)])`
-/

namespace A359717.P4568000794399844172
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038052 (SequenceMachineLib.roundAway (((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) ^ (∑ p ∈ Nat.primeFactors (f2 n), ⌈(n : ℚ) / (p : ℚ)⌉ : ℤ))).toNat

end

end A359717.P4568000794399844172

/-!
# A359718: Column 3 of triangle A359670; a(n) = A359670(n+3,3) for n >= 0.

The programs for A359718, there is no canonical definition to state claims against.
-/

/-! ## A359718.P18205799381506320505

`A359670(A167614(n+2))`
-/

namespace A359718.P18205799381506320505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359670 (A167614 (n + 2)).toNat

end

end A359718.P18205799381506320505

/-! ## A359718.P7065441729080286804

`A359670(A055999(n)+9)`
-/

namespace A359718.P7065441729080286804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359670 (A055999 n + 9).toNat

end

end A359718.P7065441729080286804

/-! ## A359718.P13725723269593288539

`A359670(A000124(n+3)+2)`
-/

namespace A359718.P13725723269593288539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359670 (A000124 (n + 3) + 2).toNat

end

end A359718.P13725723269593288539

/-! ## A359718.P10807051898324715329

`A359670(A034856(n+3)-(n-1))`
-/

namespace A359718.P10807051898324715329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359670 (A034856 (n + 3) - ((n : ℤ) - 1)).toNat

end

end A359718.P10807051898324715329

/-! ## A359718.P13777065061411237709

`A359670(eq[A010054(n), A300453(n)])`
-/

namespace A359718.P13777065061411237709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300453 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359670 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A359718.P13777065061411237709

/-!
# A359721: a(n) = coefficient of x^n in the power series A(x) such that: x = Sum_{n=-oo..+oo} (-1)^n * x^n * (1 + x^n)^n * A(x)^n.

The programs for A359721, there is no canonical definition to state claims against.
-/

/-! ## A359721.P15674398706052290760

`A083382(A061883(2*n+3))`
-/

namespace A359721.P15674398706052290760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083382 (A061883 (2 * n + 3)).toNat

end

end A359721.P15674398706052290760

/-! ## A359721.P16548273205026449951

`A255072(A150772(n)-A351079(n))`
-/

namespace A359721.P16548273205026449951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255072 (A150772 n - A351079 n).toNat

end

end A359721.P16548273205026449951

/-!
# A359722: a(n) = A359720(3*n+1,2*n) for n >= 0.

The programs for A359722, there is no canonical definition to state claims against.
-/

/-! ## A359722.P1553972350553611896

`A359720(A144390(n+1))`
-/

namespace A359722.P1553972350553611896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359720 (A144390 (n + 1)).toNat

end

end A359722.P1553972350553611896

/-! ## A359722.P7843445711332563957

`A359720(A049450(n+1)-1)`
-/

namespace A359722.P7843445711332563957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359720 (A049450 (n + 1) - 1).toNat

end

end A359722.P7843445711332563957

/-! ## A359722.P14292829619619118518

`A359720(A152749(2*n+1)-1)`
-/

namespace A359722.P14292829619619118518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359720 (A152749 (2 * n + 1) - 1).toNat

end

end A359722.P14292829619619118518

/-! ## A359722.P9631964681975942699

`A359720(A005843(n)+A003215(n))`
-/

namespace A359722.P9631964681975942699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359720 (A005843 n + A003215 n).toNat

end

end A359722.P9631964681975942699

/-! ## A359722.P16621017541184846017

`A359720(A161680(2*(n+1))+A005563(n))`
-/

namespace A359722.P16621017541184846017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359720 (A161680 (2 * (n + 1)) + A005563 n).toNat

end

end A359722.P16621017541184846017

/-!
# A359723: a(n) = coefficient of x^n in the power series A(x) such that: x = Sum_{n=-oo..+oo} (-1)^n * x^n * (3 + x^n)^n * A(x)^n.

The programs for A359723, there is no canonical definition to state claims against.
-/

/-! ## A359723.P8861705097866964672

`A004525(A000032(n)*A137553(n+1))`
-/

namespace A359723.P8861705097866964672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A000032 n * A137553 (n + 1)).toNat

end

end A359723.P8861705097866964672

/-!
# A359724: a(n) = coefficient of x^n in the power series A(x) such that: x = Sum_{n=-oo..+oo} (-1)^n * x^n * (4 + x^n)^n * A(x)^n.

The programs for A359724, there is no canonical definition to state claims against.
-/

/-! ## A359724.P8089473791057800468

`A182850(A137341(n))+A025012(n)`
-/

namespace A359724.P8089473791057800468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182850 (A137341 n).toNat + A025012 n

end

end A359724.P8089473791057800468

/-!
# A359725: a(n) = A359720(n+2,1), for n >= 0.

The programs for A359725, there is no canonical definition to state claims against.
-/

/-! ## A359725.P7715132579744946334

`A359720(A143975(n+1)+2)`
-/

namespace A359725.P7715132579744946334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359720 (A143975 (n + 1) + 2).toNat

end

end A359725.P7715132579744946334

/-!
# A359726: a(n) = A359720(n+3,2), for n >= 0.

The programs for A359726, there is no canonical definition to state claims against.
-/

/-! ## A359726.P13713341811595791705

`A359720(A143975(n+2)+3)`
-/

namespace A359726.P13713341811595791705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359720 (A143975 (n + 2) + 3).toNat

end

end A359726.P13713341811595791705

/-!
# A359728: a(1) = 1; a(n) is the smallest positive number not among the first k terms where k is the number of times a(n-1) has occurred.

The programs for A359728, there is no canonical definition to state claims against.
-/

/-! ## A359728.P13230778604878313150

`A069010(A007318(3*n+2)+A005338(n+8))`
-/

namespace A359728.P13230778604878313150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069010 (A007318 (3 * n + 2) + A005338 (n + 8)).toNat

end

end A359728.P13230778604878313150

/-! ## A359728.P12866467081975740844

`A043563(A118413(2*(n+2))+A078441(n+1))`
-/

namespace A359728.P12866467081975740844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043563 (A118413 (2 * (n + 2)) + A078441 (n + 1)).toNat

end

end A359728.P12866467081975740844

/-! ## A359728.P16731036466622443394

`A297770(A265809(n+1)+A000700(3*n+1))`
-/

namespace A359728.P16731036466622443394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297770 (A265809 (n + 1) + A000700 (3 * n + 1)).toNat

end

end A359728.P16731036466622443394

/-! ## A359728.P18406962412882134608

`A043537((A297770(n+1)+2*(n+1))*(n+1)²)`
-/

namespace A359728.P18406962412882134608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043537 ((A297770 (n + 1) + (2 * (n + 1) : ℤ)) * ((n + 1) ^ 2 : ℤ)).toNat

end

end A359728.P18406962412882134608

/-! ## A359728.P662234667027788358

`A001221(A066872(n+1)*A078812(n))`
-/

namespace A359728.P662234667027788358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A066872 (n + 1) * A078812 n).toNat

end

end A359728.P662234667027788358

/-!
# A359730: a(n) = Sum_{d|n} 2^(d-1) * d^(n/d).

The programs for A359730, there is no canonical definition to state claims against.
-/

/-! ## A359730.P15301421728307327697

`A360797(n+1)+A195829(A001263(3*n+4))`
-/

namespace A359730.P15301421728307327697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360797 (n + 1) + A195829 (A001263 (3 * n + 4)).toNat

end

end A359730.P15301421728307327697

/-! ## A359730.P17704357259246495574

`or(1, A003963(A075198(2*n+3)))`
-/

namespace A359730.P17704357259246495574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A003963 (A075198 (2 * n + 3)).toNat)

end

end A359730.P17704357259246495574

/-!
# A359731: a(n) = (1/2) * Sum_{d|n} (2*d)^d.

The programs for A359731, there is no canonical definition to state claims against.
-/

/-! ## A359731.P16741628048204465752

`∑{d}[n+1, A193678(#)]`
-/

namespace A359731.P16741628048204465752
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A193678 d

end

end A359731.P16741628048204465752

/-! ## A359731.P4143493681296713550

`∑{d}[n+1, A005843(#)^#]/2`
-/

namespace A359731.P4143493681296713550
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), A005843 d ^ d : ℤ) : ℚ) / 2

end

end A359731.P4143493681296713550

/-!
# A359732: a(n) = Sum_{d|n} d^(2*d-1).

The programs for A359732, there is no canonical definition to state claims against.
-/

/-! ## A359732.P936639580478212714

`record[∑{d}[A110659(n), A085524(#)]]`
-/

namespace A359732.P936639580478212714
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110659 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n).natAbs, A085524 d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A359732.P936639580478212714

/-! ## A359732.P9951758758841800374

`∑{d}[n+1, (#^#)²/#]`
-/

namespace A359732.P9951758758841800374
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), ((d ^ d) ^ 2 : ℚ) / (d : ℚ)

end

end A359732.P9951758758841800374

/-!
# A359738: a(n) = [x^n] (2*x^4 + 2*x^3 + 2*x^2 + x + 1)/(x^2 + 1).

The programs for A359738, the canonical program `A359738.P12656972963528422077` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A359738 has offset 0).

The definition of A359738 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A359738.P12656972963528422077

`or(1, ∑[2-n]%2)`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A359738

/-- `or(1, ∑[2-n]%2)` -/
def P12656972963528422077.Spec : Prop :=
  ∀ n, P12656972963528422077.a n = A359738 n

theorem P12656972963528422077.correct : P12656972963528422077.Spec := by
  intro n
  simp only [A359738]

end A359738

/-!
# A359739: a(n) = Sum_{j=0..n, j even} binomial(n, j) * oddfactorial(j/2) * n^j, where oddfactorial(n) = (2*n)! / (2^n*n!).

The programs for A359739, there is no canonical definition to state claims against.
-/

/-! ## A359739.P13960474426765555460

`A000217(A307844(n))/A307844(n)`
-/

namespace A359739.P13960474426765555460
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000217 (A307844 n).toNat : ℚ) / (A307844 n : ℚ)

end

end A359739.P13960474426765555460

/-!
# A359740: Maximal number of moves needed by a knight to reach every cell from a fixed position on an n X n X n chessboard, or -1 if it is not possible to reach every square.

The programs for A359740, there is no canonical definition to state claims against.
-/

/-! ## A359740.P11676164790843025655

`n-a(2%n)` with `a(0)=0, a(1)=-1, a(2)=-1`
-/

namespace A359740.P11676164790843025655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, -1, -1] fun n a =>
  (n : ℤ) - a (2 % n)

end

end A359740.P11676164790843025655

/-!
# A359741: Number of n-step self-avoiding walks on a 3D cubic lattice whose end-to-end distance is an integer.

The programs for A359741, there is no canonical definition to state claims against.
-/

/-! ## A359741.P3097972812813712631

`A301682(A167865((n+1)^n))`
-/

namespace A359741.P3097972812813712631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301682 (A167865 ((n + 1) ^ n)).toNat

end

end A359741.P3097972812813712631

/-! ## A359741.P15858251960779063216

`A002329(A320429(n+1)+A001348(n+1))`
-/

namespace A359741.P15858251960779063216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002329 (A320429 (n + 1) + A001348 (n + 1)).toNat

end

end A359741.P15858251960779063216

/-!
# A359742: Viggo Brun's ternary continued fraction algorithm applied to { log 2, log 3/2, log 5/4 } produces a list of triples (p,q,r); sequence gives p values.

The programs for A359742, there is no canonical definition to state claims against.
-/

/-! ## A359742.P4458239042037882195

`A175948(A117537(n))-A122840(n+1)`
-/

namespace A359742.P4458239042037882195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175948 (A117537 n).toNat - A122840 (n + 1)

end

end A359742.P4458239042037882195

/-! ## A359742.P9198841185110651666

`A054540(C(comp[10*n], n))`
-/

namespace A359742.P9198841185110651666
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054540 (Nat.choose (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) n)

end

end A359742.P9198841185110651666

/-! ## A359742.P14796821822000420185

`A054540(lcm((n+1)/2^val(n+1, 2), comp[10*n]))`
-/

namespace A359742.P14796821822000420185
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054540 (Int.lcm (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))) (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ))

end

end A359742.P14796821822000420185

/-! ## A359742.P5977900584041057683

`A054540(A082743(n))`
-/

namespace A359742.P5977900584041057683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054540 (A082743 n).toNat

end

end A359742.P5977900584041057683

/-! ## A359742.P17388191229330511637

`A054540(A381225(n))`
-/

namespace A359742.P17388191229330511637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054540 (A381225 n).toNat

end

end A359742.P17388191229330511637

/-!
# A359743: Viggo Brun's ternary continued fraction algorithm applied to { log 2, log 3/2, log 5/4 } produces a list of triples (p,q,r); sequence gives q values.

The programs for A359743, there is no canonical definition to state claims against.
-/

/-! ## A359743.P5474386465000462171

`A366701(A359742(n))`
-/

namespace A359743.P5474386465000462171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366701 (A359742 n).toNat

end

end A359743.P5474386465000462171

/-! ## A359743.P17796285479048120229

`eq[A109703(A339059(n+3)), A116543(n)]`
-/

namespace A359743.P17796285479048120229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109703 (A339059 (n + 3)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116543 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A359743.P17796285479048120229

/-! ## A359743.P9655671205425651523

`record[Δ[A276555(A266124(n))]]`
-/

namespace A359743.P9655671205425651523
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276555 (A266124 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A359743.P9655671205425651523

/-! ## A359743.P3422228333312385696

`∑[A304486(A340215(n+1))]`
-/

namespace A359743.P3422228333312385696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304486 (A340215 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A359743.P3422228333312385696

/-! ## A359743.P16826809338565359242

`eq[1, A327396(A257009(n+3))]`
-/

namespace A359743.P16826809338565359242
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327396 (A257009 (n + 3)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A359743.P16826809338565359242

/-!
# A359744: Viggo Brun's ternary continued fraction algorithm applied to { log 2, log 3/2, log 5/4 } produces a list of triples (p,q,r); sequence gives r values.

The programs for A359744, there is no canonical definition to state claims against.
-/

/-! ## A359744.P15623837728077335712

`A100679(A359743(n))`
-/

namespace A359744.P15623837728077335712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100679 (A359743 n).toNat

end

end A359744.P15623837728077335712

/-! ## A359744.P2233591615948908326

`A023028(n+8)-A344174(A198723(n+1))`
-/

namespace A359744.P2233591615948908326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023028 (n + 8) - A344174 (A198723 (n + 1)).toNat

end

end A359744.P2233591615948908326

/-!
# A359745: Numbers k such that k and k+1 have the same ordered prime signature.

The programs for A359745, there is no canonical definition to state claims against.
-/

/-! ## A359745.P8360138010824244336

`eq[A077462(n+1), A077462(n)]`
-/

namespace A359745.P8360138010824244336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077462 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077462 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A359745.P8360138010824244336

/-! ## A359745.P1764713463386245322

`eq[A071364(n+1), A071364(n+2)]+1`
-/

namespace A359745.P1764713463386245322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071364 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071364 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A359745.P1764713463386245322

/-! ## A359745.P10096111562749103360

`eq[A079616(n+1), A079616(n+2)]+1`
-/

namespace A359745.P10096111562749103360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079616 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079616 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A359745.P10096111562749103360

/-! ## A359745.P15324554389359421599

`eq[A329600(n+1), A329600(n+2)]+1`
-/

namespace A359745.P15324554389359421599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329600 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329600 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A359745.P15324554389359421599

/-! ## A359745.P17112096648860767251

`A052213(lt[A098755(n), A246306(n+1)])`
-/

namespace A359745.P17112096648860767251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098755 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246306 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052213 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A359745.P17112096648860767251

/-!
# A359746: Numbers k such that k, k+1 and k+2 have the same ordered prime signature.

The programs for A359746, there is no canonical definition to state claims against.
-/

/-! ## A359746.P1761984171617378271

`A086337(n+1)-2`
-/

namespace A359746.P1761984171617378271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086337 (n + 1) - 2

end

end A359746.P1761984171617378271

/-! ## A359746.P2142989009235654712

`∩[A359745(n+1)-1, A359745(n+1)]`
-/

namespace A359746.P2142989009235654712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359745 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359745 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A359746.P2142989009235654712

/-!
# A359747: Numbers k such that k*(k+1) has in its canonical prime factorization mutually distinct exponents.

The programs for A359747, there is no canonical definition to state claims against.
-/

/-! ## A359747.P10173174178104555711

`∩[A342028(n+1), A359749(n+1)]`
-/

namespace A359747.P10173174178104555711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342028 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359749 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A359747.P10173174178104555711

/-! ## A359747.P11938349357210072723

`lt[A327500(A002378(n+1)), 2]+1`
-/

namespace A359747.P11938349357210072723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327500 (A002378 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A359747.P11938349357210072723

/-! ## A359747.P16122820924247456068

`record[A325705(n)-A308994(A308994(n))]`
-/

namespace A359747.P16122820924247456068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325705 n - A308994 (A308994 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A359747.P16122820924247456068

/-!
# A359748: Numbers k such that k and k+1 are both in A359747.

The programs for A359748, there is no canonical definition to state claims against.
-/

/-! ## A359748.P10532330585201110759

`∩[A359747(n+1)-1, A359747(n+1)]`
-/

namespace A359748.P10532330585201110759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359747 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359747 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A359748.P10532330585201110759

/-! ## A359748.P3807308500872647859

`∩[A342029(n+1), A387530(n+1)]`
-/

namespace A359748.P3807308500872647859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342029 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387530 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A359748.P3807308500872647859

/-! ## A359748.P3877637015555880465

`∩[A359747(n+1), A023443(A359747(n+1))]`
-/

namespace A359748.P3877637015555880465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359747 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A359747 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A359748.P3877637015555880465

/-!
# A359749: Numbers k such that k and k+1 do not share a common exponent in their prime factorizations.

The programs for A359749, there is no canonical definition to state claims against.
-/

/-! ## A359749.P8803817415361095516

`∪[A387528(n+1), A387530(n+1)]`
-/

namespace A359749.P8803817415361095516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387528 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387530 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A359749.P8803817415361095516

/-! ## A359749.P8156304392151710152

`∪[A140104(n+1)-1, A387528(n+1)]`
-/

namespace A359749.P8156304392151710152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140104 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387528 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A359749.P8156304392151710152

/-! ## A359749.P1591159940305874140

`lt[∑{d}[A196413(A069584(n+1)), #], n+1]`
-/

namespace A359749.P1591159940305874140
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196413 (A069584 (n + 1)).toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n).natAbs, d

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A359749.P1591159940305874140

/-!
# A359750: Numbers that are a product of one or more factorials j!, j >= 2, in at least two ways.

The programs for A359750, there is no canonical definition to state claims against.
-/

/-! ## A359750.P13815545194882943905

`A004277(12*A279537(n+1))`
-/

namespace A359750.P13815545194882943905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (12 * A279537 (n + 1)).toNat

end

end A359750.P13815545194882943905

/-! ## A359750.P11682812470386033254

`A005843(∩[6*n, A133813(n+1)])`
-/

namespace A359750.P11682812470386033254
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133813 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A359750.P11682812470386033254

/-! ## A359750.P6080650982475612078

`A005843(∩[A066312(n+1), A087980(n+1)])`
-/

namespace A359750.P6080650982475612078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066312 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087980 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A359750.P6080650982475612078

/-! ## A359750.P7039078826807324852

`A301688(6*A279537(n+1))`
-/

namespace A359750.P7039078826807324852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301688 (6 * A279537 (n + 1)).toNat

end

end A359750.P7039078826807324852

/-! ## A359750.P9412130648565753673

`A028310(24*A279537(n+1))`
-/

namespace A359750.P9412130648565753673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (24 * A279537 (n + 1)).toNat

end

end A359750.P9412130648565753673

/-!
# A359754: Positions of first appearances in the sequence of weighted sums of reversed prime indices (A318283).

The programs for A359754, there is no canonical definition to state claims against.
-/

/-! ## A359754.P7731092353297224866

`record[A359679(A318283(n+1))]`
-/

namespace A359754.P7731092353297224866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359679 (A318283 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A359754.P7731092353297224866

/-!
# A359755: Positions of first appearances in the sequence of weighted sums of prime indices (A304818).

The programs for A359755, there is no canonical definition to state claims against.
-/

/-! ## A359755.P11335460005846424322

`ceil(A359675(n+1)/2)`
-/

namespace A359755.P11335460005846424322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A359675 (n + 1) : ℚ) / 2⌉

end

end A359755.P11335460005846424322

/-! ## A359755.P10874529779586746371

`A004525(A359675(n+1))`
-/

namespace A359755.P10874529779586746371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A359675 (n + 1)).toNat

end

end A359755.P10874529779586746371

/-! ## A359755.P1174271966241346514

`A004526(A359675(n+1)+1)`
-/

namespace A359755.P1174271966241346514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A359675 (n + 1) + 1).toNat

end

end A359755.P1174271966241346514

/-! ## A359755.P15607674498566924429

`A116921(A359675(n+1)+1)`
-/

namespace A359755.P15607674498566924429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116921 (A359675 (n + 1) + 1).toNat

end

end A359755.P15607674498566924429

/-! ## A359755.P2990253715100907266

`A123108(A359675(n+1)+1)`
-/

namespace A359755.P2990253715100907266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A359675 (n + 1) + 1).toNat

end

end A359755.P2990253715100907266

/-! ## A359755.P16517348201934249742

`A008619(A359675(n+1)-1)`
-/

namespace A359755.P16517348201934249742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A359675 (n + 1) - 1).toNat

end

end A359755.P16517348201934249742

/-! ## A359755.P5423664287773463746

`A065033(A359675(n+1)-1)`
-/

namespace A359755.P5423664287773463746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A359675 (n + 1) - 1).toNat

end

end A359755.P5423664287773463746

/-! ## A359755.P11627411949369249664

`A106619(9*A359675(n+1))`
-/

namespace A359755.P11627411949369249664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106619 (9 * A359675 (n + 1)).toNat

end

end A359755.P11627411949369249664

/-! ## A359755.P15026148445103101479

`A025480(lcm(2, A359675(n+1)))`
-/

namespace A359755.P15026148445103101479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (Int.lcm 2 (A359675 (n + 1)))

end

end A359755.P15026148445103101479

/-!
# A359756: First position of n in the sequence of zero-based weighted sums of standard compositions (A124757), if we start with position 0.

The programs for A359756, there is no canonical definition to state claims against.
-/

/-! ## A359756.P4057063631973638971

`lt[xor(n, 2*n), 2*a(and(n, n-1))]` with `a(0)=3, a(1)=0`
-/

namespace A359756.P4057063631973638971
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

def f2 : ℕ → ℕ := SequenceMachineLib.rec [3, 0] fun n f2 =>
  2 * f2 (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A359756.P4057063631973638971

/-! ## A359756.P6203873290372261810

`record[or(n, A267447(n))]`
-/

namespace A359756.P6203873290372261810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (A267447 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A359756.P6203873290372261810

/-! ## A359756.P11224239795680237027

`A089633(comp[∑[n]+1])`
-/

namespace A359756.P11224239795680237027
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089633 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A359756.P11224239795680237027

/-! ## A359756.P16542429233743523727

`lt[xor(n, floor(n/2)), A362248(n+1)]`
-/

namespace A359756.P16542429233743523727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) ⌊(n : ℚ) / 2⌋

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362248 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A359756.P16542429233743523727

/-! ## A359756.P9628369654791562512

`or(a(n-1)+1, A191448(n+1))` with `a(0)=0`
-/

namespace A359756.P9628369654791562512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  Int.lor (a (n - 1) + 1) (A191448 (n + 1))

end

end A359756.P9628369654791562512

/-!
# A359758: Expansion of 1/sqrt(1 - 4*x/(1-x)^5).

The programs for A359758, there is no canonical definition to state claims against.
-/

/-! ## A359758.P11359154077290465713

`A316628(A156361(n))-n`
-/

namespace A359758.P11359154077290465713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316628 (A156361 n).toNat - (n : ℤ)

end

end A359758.P11359154077290465713

/-!
# A359760: Triangle read by rows. The Kummer triangle, the coefficients of the Kummer polynomials. K(n, k) = binomial(n, k) * oddfactorial(k/2) if k is even, otherwise 0, where oddfactorial(z) := (2*z)!/(2^z*z!).

The programs for A359760, the canonical program `A359760.P9277813428666487352` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A359760 has offset 0).

The definition of A359760 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7021 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A359760.P9277813428666487352

`A099174(∑[2*n]%comp[∑[n]])`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A359760

/-- `A099174(∑[2*n]%comp[∑[n]])` -/
def P9277813428666487352.Spec : Prop :=
  ∀ n, P9277813428666487352.a n = A359760 n

theorem P9277813428666487352.correct : P9277813428666487352.Spec := by
  intro n
  simp only [A359760]

end A359760

/-! ## A359760.P11482771213815134560

`A099174(∑[char[∑[n]]]²-n-1)`
-/

namespace A359760.P11482771213815134560
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099174 ((((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) - (n : ℤ) - 1).toNat

end

end A359760.P11482771213815134560

namespace A359760

/-- `A099174(∑[char[∑[n]]]²-n-1)` -/
def P11482771213815134560.Spec : Prop :=
  ∀ n, P11482771213815134560.a n = A359760 n

end A359760

/-! ## A359760.P10092010411278502959

`abs(A073278(n))`
-/

namespace A359760.P10092010411278502959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A073278 n|

end

end A359760.P10092010411278502959

namespace A359760

/-- `abs(A073278(n))` -/
def P10092010411278502959.Spec : Prop :=
  ∀ n, P10092010411278502959.a n = A359760 n

end A359760

/-! ## A359760.P10666522387363024686

`gcd(A000038(n), A073278(n))`
-/

namespace A359760.P10666522387363024686
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A073278 n)

end

end A359760.P10666522387363024686

namespace A359760

/-- `gcd(A000038(n), A073278(n))` -/
def P10666522387363024686.Spec : Prop :=
  ∀ n, (P10666522387363024686.a n : ℤ) = A359760 n

end A359760

/-! ## A359760.P513555202722362616

`lcm(A007318(n), A073278(n))`
-/

namespace A359760.P513555202722362616
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A007318 n) (A073278 n)

end

end A359760.P513555202722362616

namespace A359760

/-- `lcm(A007318(n), A073278(n))` -/
def P513555202722362616.Spec : Prop :=
  ∀ n, (P513555202722362616.a n : ℤ) = A359760 n

end A359760

/-! ## A359760.P2200535103944362757

`∑{d}[A073278(n), A000010(#)]`
-/

namespace A359760.P2200535103944362757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073278 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A359760.P2200535103944362757

namespace A359760

/-- `∑{d}[A073278(n), A000010(#)]` -/
def P2200535103944362757.Spec : Prop :=
  ∀ n, P2200535103944362757.a n = A359760 n

end A359760

/-!
# A359761: a(n) = binomial(4*n, 2*n)*(2*n)!/(2^n*n!).

The programs for A359761, the canonical program `A359761.P4485789682696231522` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A359761 has offset 0).

The definition of A359761 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A359761.P4485789682696231522

`A001448(n)*A001147(n)`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A359761

/-- `A001448(n)*A001147(n)` -/
def P4485789682696231522.Spec : Prop :=
  ∀ n, P4485789682696231522.a n = A359761 n

theorem P4485789682696231522.correct : P4485789682696231522.Spec := by
  intro n
  simp only [A359761]

end A359761

/-! ## A359761.P327472449426942718

`A264152(2*n)`
-/

namespace A359761.P327472449426942718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264152 (2 * n)

end

end A359761.P327472449426942718

namespace A359761

/-- `A264152(2*n)` -/
def P327472449426942718.Spec : Prop :=
  ∀ n, P327472449426942718.a n = A359761 n

end A359761

/-! ## A359761.P9573152274634317924

`A004981(n)*A008545(n)`
-/

namespace A359761.P9573152274634317924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004981 n * A008545 n

end

end A359761.P9573152274634317924

namespace A359761

/-- `A004981(n)*A008545(n)` -/
def P9573152274634317924.Spec : Prop :=
  ∀ n, P9573152274634317924.a n = A359761 n

end A359761

/-! ## A359761.P17973202803194938662

`A000984(2*n)*A001147(n)`
-/

namespace A359761.P17973202803194938662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 (2 * n) * A001147 n

end

end A359761.P17973202803194938662

namespace A359761

/-- `A000984(2*n)*A001147(n)` -/
def P17973202803194938662.Spec : Prop :=
  ∀ n, P17973202803194938662.a n = A359761 n

end A359761

/-! ## A359761.P11829042774346668788

`A000108(2*n)*A001147(n+1)`
-/

namespace A359761.P11829042774346668788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (2 * n) * A001147 (n + 1)

end

end A359761.P11829042774346668788

namespace A359761

/-- `A000108(2*n)*A001147(n+1)` -/
def P11829042774346668788.Spec : Prop :=
  ∀ n, P11829042774346668788.a n = A359761 n

end A359761

/-!
# A359762: Array read by ascending antidiagonals. T(n, k) = n!*[x^n] exp(x + (k/2) * x^2). A generalization of the number of involutions (or of 'telephone numbers').

The programs for A359762, there is no canonical definition to state claims against.
-/

/-! ## A359762.P3990690269828046103

`A059953(A110180(n))`
-/

namespace A359762.P3990690269828046103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059953 (A110180 n).toNat

end

end A359762.P3990690269828046103

/-! ## A359762.P17387624164542059575

`round(A110180(n)/A000034(A061195(n+1)))`
-/

namespace A359762.P17387624164542059575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A110180 n : ℚ) / (A000034 (A061195 (n + 1)).toNat : ℚ))

end

end A359762.P17387624164542059575

/-! ## A359762.P8953736125300499779

`A001057(A110180(n))%A246454(2*(n+2))`
-/

namespace A359762.P8953736125300499779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001057 (A110180 n).toNat) (A246454 (2 * (n + 2)))

end

end A359762.P8953736125300499779

/-! ## A359762.P3400045614856595310

`A158946(A000384(3*n+2)-A110180(n))`
-/

namespace A359762.P3400045614856595310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158946 (A000384 (3 * n + 2) - A110180 n).toNat

end

end A359762.P3400045614856595310

/-! ## A359762.P721114166841995998

`A059953(A328718(n))`
-/

namespace A359762.P721114166841995998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059953 (A328718 n).toNat

end

end A359762.P721114166841995998

/-!
# A359763: Dirichlet inverse of A065043, where A065043 is the characteristic function of the numbers with an even number of prime factors (counted with multiplicity).

The programs for A359763, there is no canonical definition to state claims against.
-/

/-! ## A359763.P9116653301881330217

`∑{d}[n+1, A369453(#)]`
-/

namespace A359763.P9116653301881330217
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A369453 d

end

end A359763.P9116653301881330217

/-! ## A359763.P10774149178361831550

`∑{d}[n+1, #*A378525((n+1)/#)]`
-/

namespace A359763.P10774149178361831550
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A378525 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A359763.P10774149178361831550

/-! ## A359763.P10068161845581053201

`2*A008683(n+1)-A378453(n+1)`
-/

namespace A359763.P10068161845581053201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008683 (n + 1) - A378453 (n + 1)

end

end A359763.P10068161845581053201

/-! ## A359763.P188247157773005074

`∑{d}[n+1, A000005(#)*A378213((n+1)/#)]`
-/

namespace A359763.P188247157773005074
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000005 d * A378213 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A359763.P188247157773005074

/-! ## A359763.P18145408103239554237

`∑{d}[n+1, A000010(#)*A378536((n+1)/#)]`
-/

namespace A359763.P18145408103239554237
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d * A378536 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A359763.P18145408103239554237

/-! ## A359763.P10147512409611865519

`∑{d}[n+1, A008966(#)*A378452((n+1)/#)]`
-/

namespace A359763.P10147512409611865519
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008966 d * A378452 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A359763.P10147512409611865519

/-! ## A359763.P15884118244149791416

`∑{d}[n+1, A034444(#)*A378453((n+1)/#)]`
-/

namespace A359763.P15884118244149791416
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A034444 d * A378453 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A359763.P15884118244149791416

/-! ## A359763.P7866743250154786430

`∑{d}[n+1, A174725(#)*A378532((n+1)/#)]`
-/

namespace A359763.P7866743250154786430
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A174725 d * A378532 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A359763.P7866743250154786430

/-! ## A359763.P12388724619885166764

`∑{d}[n+1, A002033(#-1)*A378534((n+1)/#)]`
-/

namespace A359763.P12388724619885166764
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A002033 (d - 1) * A378534 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A359763.P12388724619885166764

/-! ## A359763.P5730877053736460649

`A358777(A003961(n+1))`
-/

namespace A359763.P5730877053736460649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358777 (A003961 (n + 1)).toNat

end

end A359763.P5730877053736460649

/-! ## A359763.P5651274567591627518

`A358777(A332818(n+1))`
-/

namespace A359763.P5651274567591627518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358777 (A332818 (n + 1)).toNat

end

end A359763.P5651274567591627518

/-! ## A359763.P17639783272677417498

`A358777(A359600(n+1))`
-/

namespace A359763.P17639783272677417498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358777 (A359600 (n + 1)).toNat

end

end A359763.P17639783272677417498

/-! ## A359763.P1534430086649042319

`A353418(A319525(n+1))`
-/

namespace A359763.P1534430086649042319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353418 (A319525 (n + 1)).toNat

end

end A359763.P1534430086649042319

/-! ## A359763.P15570296928227900186

`A358777(A064988(n+1))`
-/

namespace A359763.P15570296928227900186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358777 (A064988 (n + 1)).toNat

end

end A359763.P15570296928227900186

/-! ## A359763.P6126717821097736124

`A359780(A003961(n+1)%A045468(3*n+2))`
-/

namespace A359763.P6126717821097736124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359780 (Int.tmod (A003961 (n + 1)) (A045468 (3 * n + 2))).toNat

end

end A359763.P6126717821097736124

/-! ## A359763.P16279444479222447966

`A358777(A348746(n+1))`
-/

namespace A359763.P16279444479222447966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358777 (A348746 (n + 1)).toNat

end

end A359763.P16279444479222447966

/-! ## A359763.P11777994626892808906

`A359773(A003961(2*n+1-n))`
-/

namespace A359763.P11777994626892808906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359773 (A003961 (2 * n + 1 - n)).toNat

end

end A359763.P11777994626892808906

/-! ## A359763.P14494272683761664473

`A359815(A359600(2*n+1-n))`
-/

namespace A359763.P14494272683761664473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359815 (A359600 (2 * n + 1 - n)).toNat

end

end A359763.P14494272683761664473

/-! ## A359763.P6235865474495914310

`A008836(n+1)*A359773(A003961(n+1))`
-/

namespace A359763.P6235865474495914310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (n + 1) * A359773 (A003961 (n + 1)).toNat

end

end A359763.P6235865474495914310

/-! ## A359763.P16068130289269384142

`A065043(n+1)*A359773(A003961(n+1))`
-/

namespace A359763.P16068130289269384142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065043 (n + 1) * A359773 (A003961 (n + 1)).toNat

end

end A359763.P16068130289269384142

/-!
# A359764: Parity of A359763, where A359763 is the Dirichlet inverse of characteristic function of the numbers with an even number of prime factors (counted with multiplicity).

The programs for A359764, there is no canonical definition to state claims against.
-/

/-! ## A359764.P6310547738345779147

`A357374(n+1)%2`
-/

namespace A359764.P6310547738345779147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A357374 (n + 1)) 2

end

end A359764.P6310547738345779147

/-! ## A359764.P14020626516224595199

`and(1, A359763(n+1))`
-/

namespace A359764.P14020626516224595199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A359763 (n + 1))

end

end A359764.P14020626516224595199

/-! ## A359764.P14159643680430551510

`and(1, A359791(n+1))`
-/

namespace A359764.P14159643680430551510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A359791 (n + 1))

end

end A359764.P14159643680430551510

/-! ## A359764.P8201883442351154815

`and(1, A378453(n+1))`
-/

namespace A359764.P8201883442351154815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A378453 (n + 1))

end

end A359764.P8201883442351154815

/-! ## A359764.P4056139908235212398

`A000035(A359763(n+1)²)`
-/

namespace A359764.P4056139908235212398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A359763 (n + 1) ^ 2).toNat

end

end A359764.P4056139908235212398

/-! ## A359764.P18179768442953908193

`A359820(A359763(n+1)²)`
-/

namespace A359764.P18179768442953908193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359820 (A359763 (n + 1) ^ 2).toNat

end

end A359764.P18179768442953908193

/-! ## A359764.P9497176805304571416

`A000035(lcm(3, A359763(n+1)))`
-/

namespace A359764.P9497176805304571416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (Int.lcm 3 (A359763 (n + 1)))

end

end A359764.P9497176805304571416

/-! ## A359764.P15668557295748221960

`A359820(A359763(n+1)*A359763(n+1))`
-/

namespace A359764.P15668557295748221960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359820 (A359763 (n + 1) * A359763 (n + 1)).toNat

end

end A359764.P15668557295748221960

/-! ## A359764.P3998371520490215055

`A359774(A003961(n+1))`
-/

namespace A359764.P3998371520490215055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359774 (A003961 (n + 1)).toNat

end

end A359764.P3998371520490215055

/-! ## A359764.P10675877096443852416

`A359595(A359600(n+1))`
-/

namespace A359764.P10675877096443852416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359595 (A359600 (n + 1)).toNat

end

end A359764.P10675877096443852416

/-! ## A359764.P10881155419735024881

`A359781(A003961(2*n+1-n))`
-/

namespace A359764.P10881155419735024881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359781 (A003961 (2 * n + 1 - n)).toNat

end

end A359764.P10881155419735024881

/-! ## A359764.P13529290146806376863

`A359824(A003961(n+1))*A359824(n+1)`
-/

namespace A359764.P13529290146806376863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359824 (A003961 (n + 1)).toNat * A359824 (n + 1)

end

end A359764.P13529290146806376863

/-! ## A359764.P16504247486921778468

`A000035(A359780(A003961(n+1))²)`
-/

namespace A359764.P16504247486921778468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A359780 (A003961 (n + 1)).toNat ^ 2).toNat

end

end A359764.P16504247486921778468

/-! ## A359764.P4788625889761950675

`A000035(A359823(A003961(n+1))²)`
-/

namespace A359764.P4788625889761950675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A359823 (A003961 (n + 1)).toNat ^ 2).toNat

end

end A359764.P4788625889761950675

/-! ## A359764.P14803874540525765516

`A359820(A359780(A003961(n+1))²)`
-/

namespace A359764.P14803874540525765516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359820 (A359780 (A003961 (n + 1)).toNat ^ 2).toNat

end

end A359764.P14803874540525765516

/-! ## A359764.P13060057937416511362

`A359820(A359823(A003961(n+1))²)`
-/

namespace A359764.P13060057937416511362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359820 (A359823 (A003961 (n + 1)).toNat ^ 2).toNat

end

end A359764.P13060057937416511362

/-! ## A359764.P8109870848118258349

`A359816(2*A003961(n+1))`
-/

namespace A359764.P8109870848118258349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359816 (2 * A003961 (n + 1)).toNat

end

end A359764.P8109870848118258349

/-! ## A359764.P3837463379749566969

`A359816(A003961(n+1)+A003961(n+1))`
-/

namespace A359764.P3837463379749566969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359816 (A003961 (n + 1) + A003961 (n + 1)).toNat

end

end A359764.P3837463379749566969

/-! ## A359764.P3740560551025600257

`and(A174692(n), A357374(n+1))`
-/

namespace A359764.P3740560551025600257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A174692 n) (A357374 (n + 1))

end

end A359764.P3740560551025600257

/-! ## A359764.P12485765125261802931

`and(A004119(n), A357374(n+1))`
-/

namespace A359764.P12485765125261802931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A004119 n) (A357374 (n + 1))

end

end A359764.P12485765125261802931

/-!
# A359765: Positions of odd terms in A359763, where A359763 is the Dirichlet inverse of characteristic function of the numbers with an even number of prime factors (counted with multiplicity).

The programs for A359765, there is no canonical definition to state claims against.
-/

/-! ## A359765.P13562244133235015465

`lt[0, A359764(n+1)]+1`
-/

namespace A359765.P13562244133235015465
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359764 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A359765.P13562244133235015465

/-! ## A359765.P15498958104172309591

`eq[1, A359764(A000027(n+1))]+1`
-/

namespace A359765.P15498958104172309591
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359764 (A000027 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A359765.P15498958104172309591

/-! ## A359765.P8543103892096186360

`record[A000027(n+1)*A359764(n+1)]`
-/

namespace A359765.P8543103892096186360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1) * A359764 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A359765.P8543103892096186360

/-! ## A359765.P12990102530894334892

`filter[A028260(n+1), A359764(#)]`
-/

namespace A359765.P12990102530894334892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359764 (f1 j).toNat = 1) n)

end

end A359765.P12990102530894334892

/-! ## A359765.P12691381484667346243

`filter[A347450(n+1), A359764(#)]`
-/

namespace A359765.P12691381484667346243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347450 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359764 (f1 j).toNat = 1) n)

end

end A359765.P12691381484667346243

/-! ## A359765.P7097422506665311400

`eq[1, and(1, A359791(n+1))]+1`
-/

namespace A359765.P7097422506665311400
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A359791 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A359765.P7097422506665311400

/-! ## A359765.P17894867776604666567

`filter[A174891(n+1), A359764(#)]`
-/

namespace A359765.P17894867776604666567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174891 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359764 (f1 j).toNat = 1) n)

end

end A359765.P17894867776604666567

/-! ## A359765.P11947999989201099917

`filter[A239289(n+1), A359764(#)]`
-/

namespace A359765.P11947999989201099917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239289 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359764 (f1 j).toNat = 1) n)

end

end A359765.P11947999989201099917

/-! ## A359765.P8027351391993197043

`filter[A233182(n+1), A359764(#)]`
-/

namespace A359765.P8027351391993197043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233182 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359764 (f1 j).toNat = 1) n)

end

end A359765.P8027351391993197043

/-! ## A359765.P6738451936033514064

`filter[A018252(n+1), A359764(#)]`
-/

namespace A359765.P6738451936033514064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359764 (f1 j).toNat = 1) n)

end

end A359765.P6738451936033514064

/-! ## A359765.P13944314193082038466

`filter[A065090(n+1), A359764(#)]`
-/

namespace A359765.P13944314193082038466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065090 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359764 (f1 j).toNat = 1) n)

end

end A359765.P13944314193082038466

/-! ## A359765.P5528480922671805853

`filter[A171581(n+1), A359764(#)]`
-/

namespace A359765.P5528480922671805853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171581 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359764 (f1 j).toNat = 1) n)

end

end A359765.P5528480922671805853

/-! ## A359765.P15333299493052265241

`filter[A141468(n+2), A359764(#)]`
-/

namespace A359765.P15333299493052265241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359764 (f1 j).toNat = 1) n)

end

end A359765.P15333299493052265241

/-! ## A359765.P2184329313620147500

`filter[A222307(2*n+1), A359764(#)]`
-/

namespace A359765.P2184329313620147500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222307 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359764 (f1 j).toNat = 1) n)

end

end A359765.P2184329313620147500

/-! ## A359765.P11678406670236632348

`filter[A173905(n+2), A359764(#)]`
-/

namespace A359765.P11678406670236632348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173905 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359764 (f1 j).toNat = 1) n)

end

end A359765.P11678406670236632348

/-! ## A359765.P14253708685226651727

`filter[A338924(n+1), A359764(#)]`
-/

namespace A359765.P14253708685226651727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338924 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359764 (f1 j).toNat = 1) n)

end

end A359765.P14253708685226651727

/-! ## A359765.P6809706041243704526

`filter[A073900(n+1), A359764(#)]`
-/

namespace A359765.P6809706041243704526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073900 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359764 (f1 j).toNat = 1) n)

end

end A359765.P6809706041243704526

/-! ## A359765.P8008360648402846324

`filter[A073899(n+1), A359764(#)]`
-/

namespace A359765.P8008360648402846324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073899 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359764 (f1 j).toNat = 1) n)

end

end A359765.P8008360648402846324

/-! ## A359765.P3310051839141359900

`filter[A171085(n+1), A359764(#)]`
-/

namespace A359765.P3310051839141359900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171085 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359764 (f1 j).toNat = 1) n)

end

end A359765.P3310051839141359900

/-! ## A359765.P1480468659189625725

`filter[A121543(n+1), A359764(#)]`
-/

namespace A359765.P1480468659189625725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121543 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359764 (f1 j).toNat = 1) n)

end

end A359765.P1480468659189625725

/-!
# A359766: Positions of even terms in A359763, where A359763 is the Dirichlet inverse of characteristic function of the numbers with an even number of prime factors (counted with multiplicity).

The programs for A359766, there is no canonical definition to state claims against.
-/

/-! ## A359766.P16047062175099363427

`eq[0, A359764(n+1)]+1`
-/

namespace A359766.P16047062175099363427
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359764 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A359766.P16047062175099363427

/-! ## A359766.P12042774911785157050

`comp[A359765(n+1)-1]+1`
-/

namespace A359766.P12042774911785157050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359765 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A359766.P12042774911785157050

/-! ## A359766.P14369717445670886319

`∪[A026424(n+1), A359767(n+1)]`
-/

namespace A359766.P14369717445670886319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026424 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359767 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A359766.P14369717445670886319

/-! ## A359766.P7429005571238062297

`eq[0, and(1, A359791(n+1))]+1`
-/

namespace A359766.P7429005571238062297
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A359791 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A359766.P7429005571238062297

/-! ## A359766.P5913467589042511025

`eq[0, A359764(A028310(n))]`
-/

namespace A359766.P5913467589042511025
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359764 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A359766.P5913467589042511025

/-! ## A359766.P8473484824489597198

`A020725(lt[A359764(n+1), 1])`
-/

namespace A359766.P8473484824489597198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359764 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A359766.P8473484824489597198

/-!
# A359767: Numbers k such that A065043(k) = 1 but A359764(k) = 0, where A359764 is the parity of Dirichlet inverse of the former (which is the characteristic function of the numbers with an even number of prime factors).

The programs for A359767, there is no canonical definition to state claims against.
-/

/-! ## A359767.P8655476639159856685

`∩[A028260(n+1), A359766(n+1)]`
-/

namespace A359767.P8655476639159856685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028260 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359766 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A359767.P8655476639159856685

/-!
# A359768: a(n) = 1 if the parity of n and that of sopfr(n) differ, otherwise 0. Here sopfr is the sum of prime factors (with repetition).

The programs for A359768, the canonical program `A359768.P14447887237205191764` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A359768 has offset 1).

The definition of A359768 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A075255, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A359768.P14447887237205191764

`A000035(A075255(n+1))`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A359768

/-- `A000035(A075255(n+1))` -/
def P14447887237205191764.Spec : Prop :=
  ∀ n, P14447887237205191764.a n = A359768 (n + 1)

theorem P14447887237205191764.correct : P14447887237205191764.Spec := by
  intro n
  simp only [A359768, Nat.add_sub_cancel]

end A359768

/-! ## A359768.P12855940475934134219

`A000035(A075254(n+1))`
-/

namespace A359768.P12855940475934134219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A075254 (n + 1)).toNat

end

end A359768.P12855940475934134219

namespace A359768

/-- `A000035(A075254(n+1))` -/
def P12855940475934134219.Spec : Prop :=
  ∀ n, P12855940475934134219.a n = A359768 (n + 1)

end A359768

/-! ## A359768.P9075078419550235932

`and(1, val(lcm(2, n+1), 2)-∑{e}[n+1, #])`
-/

namespace A359768.P9075078419550235932
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 ((SequenceMachineLib.valuation (Nat.lcm 2 (n + 1)) 2 : ℤ) - ((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℤ))

end

end A359768.P9075078419550235932

namespace A359768

/-- `and(1, val(lcm(2, n+1), 2)-∑{e}[n+1, #])` -/
def P9075078419550235932.Spec : Prop :=
  ∀ n, P9075078419550235932.a n = A359768 (n + 1)

end A359768

/-! ## A359768.P7512171922772782508

`(∑{e}[n+1, #]+val(∑[∑[4*n]+2], 2))%2`
-/

namespace A359768.P7512171922772782508
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p + SequenceMachineLib.valuation (∑ j ∈ Finset.range (n + 1), f2 j) 2) % 2

end

end A359768.P7512171922772782508

namespace A359768

/-- `(∑{e}[n+1, #]+val(∑[∑[4*n]+2], 2))%2` -/
def P7512171922772782508.Spec : Prop :=
  ∀ n, (P7512171922772782508.a n : ℤ) = A359768 (n + 1)

end A359768

/-! ## A359768.P13056529193789739094

`(∑{p}[n+1, #*val(n+1, #)]+1+n)%2`
-/

namespace A359768.P13056529193789739094
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ p ∈ Nat.primeFactors (f1 n), p * SequenceMachineLib.valuation (n + 1) p + 1 + n) % 2

end

end A359768.P13056529193789739094

namespace A359768

/-- `(∑{p}[n+1, #*val(n+1, #)]+1+n)%2` -/
def P13056529193789739094.Spec : Prop :=
  ∀ n, (P13056529193789739094.a n : ℤ) = A359768 (n + 1)

end A359768

/-! ## A359768.P13370491410566488361

`and(1, ∑{p}[n+1, #*val(n+1, #)]+1+n)`
-/

namespace A359768.P13370491410566488361
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (∑ p ∈ Nat.primeFactors (f1 n), p * SequenceMachineLib.valuation (n + 1) p + 1 + n)

end

end A359768.P13370491410566488361

namespace A359768

/-- `and(1, ∑{p}[n+1, #*val(n+1, #)]+1+n)` -/
def P13370491410566488361.Spec : Prop :=
  ∀ n, (P13370491410566488361.a n : ℤ) = A359768 (n + 1)

end A359768

/-! ## A359768.P1323459640712691553

`((val(n+1, 2)+n)%2+∑{e}[n+1, #]+1)%2`
-/

namespace A359768.P1323459640712691553
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.valuation (n + 1) 2 + n) % 2 + (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p + 1)) % 2

end

end A359768.P1323459640712691553

namespace A359768

/-- `((val(n+1, 2)+n)%2+∑{e}[n+1, #]+1)%2` -/
def P1323459640712691553.Spec : Prop :=
  ∀ n, (P1323459640712691553.a n : ℤ) = A359768 (n + 1)

end A359768

/-! ## A359768.P3730149257789192157

`2-gcd(2, ∑{p}[n+1, #*val(n+1, #)]+1+n)`
-/

namespace A359768.P3730149257789192157
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (Nat.gcd 2 (∑ p ∈ Nat.primeFactors (f1 n), p * SequenceMachineLib.valuation (n + 1) p + 1 + n) : ℤ)

end

end A359768.P3730149257789192157

namespace A359768

/-- `2-gcd(2, ∑{p}[n+1, #*val(n+1, #)]+1+n)` -/
def P3730149257789192157.Spec : Prop :=
  ∀ n, P3730149257789192157.a n = A359768 (n + 1)

end A359768

/-! ## A359768.P16269106846382038596

`or(∑{p}[n+1, #*val(n+1, #)]+1+n, -2)+2`
-/

namespace A359768.P16269106846382038596
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((∑ p ∈ Nat.primeFactors (f1 n), p * SequenceMachineLib.valuation (n + 1) p + 1 + n : ℕ) : ℤ) (-2) + 2

end

end A359768.P16269106846382038596

namespace A359768

/-- `or(∑{p}[n+1, #*val(n+1, #)]+1+n, -2)+2` -/
def P16269106846382038596.Spec : Prop :=
  ∀ n, P16269106846382038596.a n = A359768 (n + 1)

end A359768

/-! ## A359768.P4388239550556035200

`and(1, ∑{e}[n+1, #]-val(n+1, 2)-(n+1)²/∏{p}[n+1, #])`
-/

namespace A359768.P4388239550556035200
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (SequenceMachineLib.roundAway ((((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℤ) - (SequenceMachineLib.valuation (n + 1) 2 : ℤ) : ℚ) - ((n + 1) ^ 2 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ)))

end

end A359768.P4388239550556035200

namespace A359768

/-- `and(1, ∑{e}[n+1, #]-val(n+1, 2)-(n+1)²/∏{p}[n+1, #])` -/
def P4388239550556035200.Spec : Prop :=
  ∀ n, P4388239550556035200.a n = A359768 (n + 1)

end A359768

/-! ## A359768.P1155815419094603586

`log2(gcd(2, A349133(n+1)))`
-/

namespace A359768.P1155815419094603586
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Int.gcd 2 (A349133 (n + 1)) : ℝ)

end

end A359768.P1155815419094603586

namespace A359768

/-- `log2(gcd(2, A349133(n+1)))` -/
def P1155815419094603586.Spec : Prop :=
  ∀ n, P1155815419094603586.a n = (A359768 (n + 1) : ℝ)

end A359768

/-! ## A359768.P13790653002920229369

`char[A036347(n+1)-1]`
-/

namespace A359768.P13790653002920229369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036347 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A359768.P13790653002920229369

namespace A359768

/-- `char[A036347(n+1)-1]` -/
def P13790653002920229369.Spec : Prop :=
  ∀ n, (P13790653002920229369.a n : ℤ) = A359768 (n + 1)

end A359768

/-! ## A359768.P6197250888192115135

`(A006022(n+1)+1)%2`
-/

namespace A359768.P6197250888192115135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006022 (n + 1) + 1) 2

end

end A359768.P6197250888192115135

namespace A359768

/-- `(A006022(n+1)+1)%2` -/
def P6197250888192115135.Spec : Prop :=
  ∀ n, P6197250888192115135.a n = A359768 (n + 1)

end A359768

/-! ## A359768.P18364258026732908350

`and(1, A023888(n+1)+n)`
-/

namespace A359768.P18364258026732908350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A023888 (n + 1) + (n : ℤ))

end

end A359768.P18364258026732908350

namespace A359768

/-- `and(1, A023888(n+1)+n)` -/
def P18364258026732908350.Spec : Prop :=
  ∀ n, P18364258026732908350.a n = A359768 (n + 1)

end A359768

/-! ## A359768.P3965031072542733112

`and(1, A036288(n+1)+n)`
-/

namespace A359768.P3965031072542733112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A036288 (n + 1) + (n : ℤ))

end

end A359768.P3965031072542733112

namespace A359768

/-- `and(1, A036288(n+1)+n)` -/
def P3965031072542733112.Spec : Prop :=
  ∀ n, P3965031072542733112.a n = A359768 (n + 1)

end A359768

/-! ## A359768.P7756780304434653375

`and(1, A356163(n+1)+n)`
-/

namespace A359768.P7756780304434653375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A356163 (n + 1) + (n : ℤ))

end

end A359768.P7756780304434653375

namespace A359768

/-- `and(1, A356163(n+1)+n)` -/
def P7756780304434653375.Spec : Prop :=
  ∀ n, P7756780304434653375.a n = A359768 (n + 1)

end A359768

/-! ## A359768.P12226841845186368610

`(A001414(n+1)+n+1)%2`
-/

namespace A359768.P12226841845186368610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001414 (n + 1) + (n + 1 : ℤ)) 2

end

end A359768.P12226841845186368610

namespace A359768

/-- `(A001414(n+1)+n+1)%2` -/
def P12226841845186368610.Spec : Prop :=
  ∀ n, P12226841845186368610.a n = A359768 (n + 1)

end A359768

/-! ## A359768.P3460612544884617150

`A356163(A165998(n))`
-/

namespace A359768.P3460612544884617150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356163 (A165998 n).toNat

end

end A359768.P3460612544884617150

namespace A359768

/-- `A356163(A165998(n))` -/
def P3460612544884617150.Spec : Prop :=
  ∀ n, P3460612544884617150.a n = A359768 (n + 1)

end A359768

/-! ## A359768.P849606494020014138

`A059841(A006022(n+1))`
-/

namespace A359768.P849606494020014138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (A006022 (n + 1)).toNat

end

end A359768.P849606494020014138

namespace A359768

/-- `A059841(A006022(n+1))` -/
def P849606494020014138.Spec : Prop :=
  ∀ n, P849606494020014138.a n = A359768 (n + 1)

end A359768

/-! ## A359768.P16874133826433423249

`A065043(A259445(n+1))`
-/

namespace A359768.P16874133826433423249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065043 (A259445 (n + 1)).toNat

end

end A359768.P16874133826433423249

namespace A359768

/-- `A065043(A259445(n+1))` -/
def P16874133826433423249.Spec : Prop :=
  ∀ n, P16874133826433423249.a n = A359768 (n + 1)

end A359768

/-!
# A359769: a(n) = A353557(n) - A353556(n).

The programs for A359769, the canonical program `A359769.P3510413858819511961` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A359769 has offset 1).

The definition of A359769 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A353556, A353557, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A359769.P3510413858819511961

`A353557(n+1)-A353556(n+1)`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A359769

/-- `A353557(n+1)-A353556(n+1)` -/
def P3510413858819511961.Spec : Prop :=
  ∀ n, P3510413858819511961.a n = A359769 (n + 1)

theorem P3510413858819511961.correct : P3510413858819511961.Spec := by
  intro n
  simp only [A359769, Nat.add_sub_cancel]

end A359769

/-! ## A359769.P2374577222065105612

`log2(gcd(2, n))-∑{e}[n+1, #]%2`
-/

namespace A359769.P2374577222065105612
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Nat.gcd 2 n : ℝ) - (((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p) % 2 : ℕ) : ℝ)

end

end A359769.P2374577222065105612

namespace A359769

/-- `log2(gcd(2, n))-∑{e}[n+1, #]%2` -/
def P2374577222065105612.Spec : Prop :=
  ∀ n, P2374577222065105612.a n = (A359769 (n + 1) : ℝ)

end A359769

/-! ## A359769.P6616526290289720696

`(∑{e}[n+1, #]+1)%2-n%2`
-/

namespace A359769.P6616526290289720696
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p + 1) % 2 : ℕ) : ℤ) - ((n % 2 : ℕ) : ℤ)

end

end A359769.P6616526290289720696

namespace A359769

/-- `(∑{e}[n+1, #]+1)%2-n%2` -/
def P6616526290289720696.Spec : Prop :=
  ∀ n, P6616526290289720696.a n = A359769 (n + 1)

end A359769

/-! ## A359769.P8253085242907415157

`((-1)^∑{e}[n+1, #]+(-1)^n)/2`
-/

namespace A359769.P8253085242907415157
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((-1) ^ (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p) + (-1) ^ n : ℚ) / 2

end

end A359769.P8253085242907415157

namespace A359769

/-- `((-1)^∑{e}[n+1, #]+(-1)^n)/2` -/
def P8253085242907415157.Spec : Prop :=
  ∀ n, P8253085242907415157.a n = (A359769 (n + 1) : ℚ)

end A359769

/-! ## A359769.P12756284254896643966

`round(sin((-1)^∑{e}[n+1, #]+(-1)^n))`
-/

namespace A359769.P12756284254896643966
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sin ((-1) ^ (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p) + (-1) ^ n : ℝ))

end

end A359769.P12756284254896643966

namespace A359769

/-- `round(sin((-1)^∑{e}[n+1, #]+(-1)^n))` -/
def P12756284254896643966.Spec : Prop :=
  ∀ n, P12756284254896643966.a n = A359769 (n + 1)

end A359769

/-! ## A359769.P13498136582428630158

`(∑{e}[n+1, #]+(n+1)*(-1)^∑{e}[n+1, #])%2`
-/

namespace A359769.P13498136582428630158
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℤ) + (n + 1 : ℤ) * (-1) ^ (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p)) 2

end

end A359769.P13498136582428630158

namespace A359769

/-- `(∑{e}[n+1, #]+(n+1)*(-1)^∑{e}[n+1, #])%2` -/
def P13498136582428630158.Spec : Prop :=
  ∀ n, P13498136582428630158.a n = A359769 (n + 1)

end A359769

/-! ## A359769.P5382749983263683946

`A065043(n+1)-n%2`
-/

namespace A359769.P5382749983263683946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065043 (n + 1) - ((n % 2 : ℕ) : ℤ)

end

end A359769.P5382749983263683946

namespace A359769

/-- `A065043(n+1)-n%2` -/
def P5382749983263683946.Spec : Prop :=
  ∀ n, P5382749983263683946.a n = A359769 (n + 1)

end A359769

/-! ## A359769.P9888376101460312978

`xor(n, A359770(n+1))-n`
-/

namespace A359769.P9888376101460312978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A359770 (n + 1)) - (n : ℤ)

end

end A359769.P9888376101460312978

namespace A359769

/-- `xor(n, A359770(n+1))-n` -/
def P9888376101460312978.Spec : Prop :=
  ∀ n, P9888376101460312978.a n = A359769 (n + 1)

end A359769

/-! ## A359769.P7135831451447463907

`or(1, n)-(A066829(n+1)+n)`
-/

namespace A359769.P7135831451447463907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 1 n : ℤ) - (A066829 (n + 1) + (n : ℤ))

end

end A359769.P7135831451447463907

namespace A359769

/-- `or(1, n)-(A066829(n+1)+n)` -/
def P7135831451447463907.Spec : Prop :=
  ∀ n, P7135831451447463907.a n = A359769 (n + 1)

end A359769

/-! ## A359769.P16983248967564261636

`log2(gcd(2, n))-A000035(∑{e}[n+1, #])`
-/

namespace A359769.P16983248967564261636
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Nat.gcd 2 n : ℝ) - (A000035 (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p) : ℝ)

end

end A359769.P16983248967564261636

namespace A359769

/-- `log2(gcd(2, n))-A000035(∑{e}[n+1, #])` -/
def P16983248967564261636.Spec : Prop :=
  ∀ n, P16983248967564261636.a n = (A359769 (n + 1) : ℝ)

end A359769

/-! ## A359769.P2789434170430430135

`∑[(-1)^n]-A065043(3*(n+1))`
-/

namespace A359769.P2789434170430430135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A065043 (3 * (n + 1))

end

end A359769.P2789434170430430135

namespace A359769

/-- `∑[(-1)^n]-A065043(3*(n+1))` -/
def P2789434170430430135.Spec : Prop :=
  ∀ n, P2789434170430430135.a n = A359769 (n + 1)

end A359769

/-! ## A359769.P6020503775981656394

`(n+1)%2-A001222(n+1)%2`
-/

namespace A359769.P6020503775981656394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n + 1) % 2 : ℕ) : ℤ) - Int.tmod (A001222 (n + 1)) 2

end

end A359769.P6020503775981656394

namespace A359769

/-- `(n+1)%2-A001222(n+1)%2` -/
def P6020503775981656394.Spec : Prop :=
  ∀ n, P6020503775981656394.a n = A359769 (n + 1)

end A359769

/-! ## A359769.P598967984021389506

`and((n+1)^4, A001222(2*(n+1)))-and(1, ∑{e}[n+1, n*#])`
-/

namespace A359769.P598967984021389506
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((n + 1) ^ 4 : ℤ) (A001222 (2 * (n + 1))) - (Nat.land 1 (∑ p ∈ Nat.primeFactors (f1 n), n * Nat.factorization (f1 n) p) : ℤ)

end

end A359769.P598967984021389506

namespace A359769

/-- `and((n+1)^4, A001222(2*(n+1)))-and(1, ∑{e}[n+1, n*#])` -/
def P598967984021389506.Spec : Prop :=
  ∀ n, P598967984021389506.a n = A359769 (n + 1)

end A359769

/-! ## A359769.P11047898392826309330

`A219977(A349664(n+1))`
-/

namespace A359769.P11047898392826309330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219977 (A349664 (n + 1)).toNat

end

end A359769.P11047898392826309330

namespace A359769

/-- `A219977(A349664(n+1))` -/
def P11047898392826309330.Spec : Prop :=
  ∀ n, P11047898392826309330.a n = A359769 (n + 1)

end A359769

/-! ## A359769.P6724649194583771838

`A007421(n+1)-A000034(n)`
-/

namespace A359769.P6724649194583771838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007421 (n + 1) - A000034 n

end

end A359769.P6724649194583771838

namespace A359769

/-- `A007421(n+1)-A000034(n)` -/
def P6724649194583771838.Spec : Prop :=
  ∀ n, P6724649194583771838.a n = A359769 (n + 1)

end A359769

/-! ## A359769.P17713126105816788801

`A065043(n+1)-A000035(n)`
-/

namespace A359769.P17713126105816788801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065043 (n + 1) - A000035 n

end

end A359769.P17713126105816788801

namespace A359769

/-- `A065043(n+1)-A000035(n)` -/
def P17713126105816788801.Spec : Prop :=
  ∀ n, P17713126105816788801.a n = A359769 (n + 1)

end A359769

/-! ## A359769.P14890416832704268799

`A059841(n)-A066829(n+1)`
-/

namespace A359769.P14890416832704268799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 n - A066829 (n + 1)

end

end A359769.P14890416832704268799

namespace A359769

/-- `A059841(n)-A066829(n+1)` -/
def P14890416832704268799.Spec : Prop :=
  ∀ n, P14890416832704268799.a n = A359769 (n + 1)

end A359769

/-! ## A359769.P16957369781507773612

`A033999(n)*A359770(n+1)`
-/

namespace A359769.P16957369781507773612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A359770 (n + 1)

end

end A359769.P16957369781507773612

namespace A359769

/-- `A033999(n)*A359770(n+1)` -/
def P16957369781507773612.Spec : Prop :=
  ∀ n, P16957369781507773612.a n = A359769 (n + 1)

end A359769

/-! ## A359769.P6753668912018479244

`1-(A066829(n+1)+A000035(n))`
-/

namespace A359769.P6753668912018479244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A066829 (n + 1) + A000035 n)

end

end A359769.P6753668912018479244

namespace A359769

/-- `1-(A066829(n+1)+A000035(n))` -/
def P6753668912018479244.Spec : Prop :=
  ∀ n, P6753668912018479244.a n = A359769 (n + 1)

end A359769

/-! ## A359769.P6491521388189302843

`A008836(n+1)*A359770(n+1)`
-/

namespace A359769.P6491521388189302843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (n + 1) * A359770 (n + 1)

end

end A359769.P6491521388189302843

namespace A359769

/-- `A008836(n+1)*A359770(n+1)` -/
def P6491521388189302843.Spec : Prop :=
  ∀ n, P6491521388189302843.a n = A359769 (n + 1)

end A359769

/-!
# A359770: a(n) = 1 if n and bigomega(n) are of different parity, otherwise 0. Here bigomega (A001222) gives the number of prime factors of n with multiplicity.

The programs for A359770, the canonical program `A359770.P5016811316029471813` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A359770 has offset 1).

The definition of A359770 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A069345, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A359770.P5016811316029471813

`A000035(A069345(n+1))`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A359770

/-- `A000035(A069345(n+1))` -/
def P5016811316029471813.Spec : Prop :=
  ∀ n, P5016811316029471813.a n = A359770 (n + 1)

theorem P5016811316029471813.correct : P5016811316029471813.Spec := by
  intro n
  simp only [A359770, Nat.add_sub_cancel]

end A359770

/-! ## A359770.P2587686652104290005

`A353556(n+1)+A353557(n+1)`
-/

namespace A359770.P2587686652104290005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353556 (n + 1) + A353557 (n + 1)

end

end A359770.P2587686652104290005

namespace A359770

/-- `A353556(n+1)+A353557(n+1)` -/
def P2587686652104290005.Spec : Prop :=
  ∀ n, P2587686652104290005.a n = A359770 (n + 1)

end A359770

/-! ## A359770.P5243637303664179167

`∑{e}[lcm(2, n+1), #]%2`
-/

namespace A359770.P5243637303664179167
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p) % 2

end

end A359770.P5243637303664179167

namespace A359770

/-- `∑{e}[lcm(2, n+1), #]%2` -/
def P5243637303664179167.Spec : Prop :=
  ∀ n, (P5243637303664179167.a n : ℤ) = A359770 (n + 1)

end A359770

/-! ## A359770.P4519618428151518169

`(∑{e}[n+1, #]+n+1)%2`
-/

namespace A359770.P4519618428151518169
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p + (n + 1)) % 2

end

end A359770.P4519618428151518169

namespace A359770

/-- `(∑{e}[n+1, #]+n+1)%2` -/
def P4519618428151518169.Spec : Prop :=
  ∀ n, (P4519618428151518169.a n : ℤ) = A359770 (n + 1)

end A359770

/-! ## A359770.P14893775040318018921

`and(1, ∑{e}[n+1, #]+n+1)`
-/

namespace A359770.P14893775040318018921
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p + (n + 1))

end

end A359770.P14893775040318018921

namespace A359770

/-- `and(1, ∑{e}[n+1, #]+n+1)` -/
def P14893775040318018921.Spec : Prop :=
  ∀ n, (P14893775040318018921.a n : ℤ) = A359770 (n + 1)

end A359770

/-! ## A359770.P4401755993417434331

`abs(A359769(n+1))`
-/

namespace A359770.P4401755993417434331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A359769 (n + 1)|

end

end A359770.P4401755993417434331

namespace A359770

/-- `abs(A359769(n+1))` -/
def P4401755993417434331.Spec : Prop :=
  ∀ n, P4401755993417434331.a n = A359770 (n + 1)

end A359770

/-! ## A359770.P17774102131248505709

`A064800(n+1)%2`
-/

namespace A359770.P17774102131248505709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A064800 (n + 1)) 2

end

end A359770.P17774102131248505709

namespace A359770

/-- `A064800(n+1)%2` -/
def P17774102131248505709.Spec : Prop :=
  ∀ n, P17774102131248505709.a n = A359770 (n + 1)

end A359770

/-! ## A359770.P9085951755653761737

`A066829(lcm(2, n+1))`
-/

namespace A359770.P9085951755653761737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066829 (Nat.lcm 2 (n + 1))

end

end A359770.P9085951755653761737

namespace A359770

/-- `A066829(lcm(2, n+1))` -/
def P9085951755653761737.Spec : Prop :=
  ∀ n, P9085951755653761737.a n = A359770 (n + 1)

end A359770

/-! ## A359770.P6492421468587453161

`and(1, A091371(n+1))`
-/

namespace A359770.P6492421468587453161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A091371 (n + 1))

end

end A359770.P6492421468587453161

namespace A359770

/-- `and(1, A091371(n+1))` -/
def P6492421468587453161.Spec : Prop :=
  ∀ n, P6492421468587453161.a n = A359770 (n + 1)

end A359770

/-! ## A359770.P16433537938859390424

`gcd(2, A046079(n+1))-1`
-/

namespace A359770.P16433537938859390424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 2 (A046079 (n + 1)) : ℤ) - 1

end

end A359770.P16433537938859390424

namespace A359770

/-- `gcd(2, A046079(n+1))-1` -/
def P16433537938859390424.Spec : Prop :=
  ∀ n, P16433537938859390424.a n = A359770 (n + 1)

end A359770

/-! ## A359770.P9382812880996792153

`and(1, A016003(n+1)+n)`
-/

namespace A359770.P9382812880996792153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A016003 (n + 1) + (n : ℤ))

end

end A359770.P9382812880996792153

namespace A359770

/-- `and(1, A016003(n+1)+n)` -/
def P9382812880996792153.Spec : Prop :=
  ∀ n, P9382812880996792153.a n = A359770 (n + 1)

end A359770

/-! ## A359770.P9876625949274592245

`and(1, A016008(n+1)+n)`
-/

namespace A359770.P9876625949274592245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A016008 (n + 1) + (n : ℤ))

end

end A359770.P9876625949274592245

namespace A359770

/-- `and(1, A016008(n+1)+n)` -/
def P9876625949274592245.Spec : Prop :=
  ∀ n, P9876625949274592245.a n = A359770 (n + 1)

end A359770

/-! ## A359770.P8572057172943329002

`and(1, A065043(n+1)+n)`
-/

namespace A359770.P8572057172943329002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A065043 (n + 1) + (n : ℤ))

end

end A359770.P8572057172943329002

namespace A359770

/-- `and(1, A065043(n+1)+n)` -/
def P8572057172943329002.Spec : Prop :=
  ∀ n, P8572057172943329002.a n = A359770 (n + 1)

end A359770

/-! ## A359770.P5861220490164953986

`and(1, A073093(n+1)+n)`
-/

namespace A359770.P5861220490164953986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A073093 (n + 1) + (n : ℤ))

end

end A359770.P5861220490164953986

namespace A359770

/-- `and(1, A073093(n+1)+n)` -/
def P5861220490164953986.Spec : Prop :=
  ∀ n, P5861220490164953986.a n = A359770 (n + 1)

end A359770

/-! ## A359770.P13075261296756295921

`(A001222(n+1)+1+n)%2`
-/

namespace A359770.P13075261296756295921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001222 (n + 1) + 1 + (n : ℤ)) 2

end

end A359770.P13075261296756295921

namespace A359770

/-- `(A001222(n+1)+1+n)%2` -/
def P13075261296756295921.Spec : Prop :=
  ∀ n, P13075261296756295921.a n = A359770 (n + 1)

end A359770

/-! ## A359770.P8000297012139511032

`and(1, A001222(2*(n+1))+n)`
-/

namespace A359770.P8000297012139511032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A001222 (2 * (n + 1)) + (n : ℤ))

end

end A359770.P8000297012139511032

namespace A359770

/-- `and(1, A001222(2*(n+1))+n)` -/
def P8000297012139511032.Spec : Prop :=
  ∀ n, P8000297012139511032.a n = A359770 (n + 1)

end A359770

/-! ## A359770.P17921169975483995561

`and(1, n-A001222(n+2+n))`
-/

namespace A359770.P17921169975483995561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 ((n : ℤ) - A001222 (n + 2 + n))

end

end A359770.P17921169975483995561

namespace A359770

/-- `and(1, n-A001222(n+2+n))` -/
def P17921169975483995561.Spec : Prop :=
  ∀ n, P17921169975483995561.a n = A359770 (n + 1)

end A359770

/-! ## A359770.P12398258826293515996

`and(1, (A001222(C(n+1, n))+n+1)²)`
-/

namespace A359770.P12398258826293515996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 ((A001222 (Nat.choose (n + 1) n) + (n + 1 : ℤ)) ^ 2)

end

end A359770.P12398258826293515996

namespace A359770

/-- `and(1, (A001222(C(n+1, n))+n+1)²)` -/
def P12398258826293515996.Spec : Prop :=
  ∀ n, P12398258826293515996.a n = A359770 (n + 1)

end A359770

/-! ## A359770.P2475309295668572063

`and(1, (A001222(2*n-(n-1))-(n-1))²)`
-/

namespace A359770.P2475309295668572063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 ((A001222 ((2 * n : ℤ) - ((n : ℤ) - 1)).toNat - ((n : ℤ) - 1)) ^ 2)

end

end A359770.P2475309295668572063

namespace A359770

/-- `and(1, (A001222(2*n-(n-1))-(n-1))²)` -/
def P2475309295668572063.Spec : Prop :=
  ∀ n, P2475309295668572063.a n = A359770 (n + 1)

end A359770

/-! ## A359770.P14884888165059161552

`A066829(A091574(n))`
-/

namespace A359770.P14884888165059161552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066829 (A091574 n).toNat

end

end A359770.P14884888165059161552

namespace A359770

/-- `A066829(A091574(n))` -/
def P14884888165059161552.Spec : Prop :=
  ∀ n, P14884888165059161552.a n = A359770 (n + 1)

end A359770

/-!
# A359771: Union of even numbers with an odd number of prime factors and odd numbers with an even number of prime factors, when the number of prime factors is counted with multiplicity.

The programs for A359771, the canonical program `A359771.P10440541190163119622` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A359771 has offset 1).

The definition of A359771 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A359771.P10440541190163119622

`lt[0, A359770(n+1)]+1`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A359771

/-- `lt[0, A359770(n+1)]+1` -/
def P10440541190163119622.Spec : Prop :=
  ∀ n, (P10440541190163119622.a n : ℤ) = A359771 (n + 1)

theorem P10440541190163119622.correct : P10440541190163119622.Spec := by
  intro n
  simp only [A359771, Nat.add_sub_cancel]

end A359771

/-! ## A359771.P4031652945268312519

`eq[1, (A046079(n+1)+1)%2]+1`
-/

namespace A359771.P4031652945268312519
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A046079 (n + 1) + 1) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A359771.P4031652945268312519

namespace A359771

/-- `eq[1, (A046079(n+1)+1)%2]+1` -/
def P4031652945268312519.Spec : Prop :=
  ∀ n, (P4031652945268312519.a n : ℤ) = A359771 (n + 1)

end A359771

/-! ## A359771.P1652911352191163150

`∪[A046337(n+1), A046470(n+1)]`
-/

namespace A359771.P1652911352191163150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046337 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046470 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A359771.P1652911352191163150

namespace A359771

/-- `∪[A046337(n+1), A046470(n+1)]` -/
def P1652911352191163150.Spec : Prop :=
  ∀ n, (P1652911352191163150.a n : ℤ) = A359771 (n + 1)

end A359771

/-! ## A359771.P4420669421921258188

`record[(-1)^n*A061019(n+1)]`
-/

namespace A359771.P4420669421921258188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A061019 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A359771.P4420669421921258188

namespace A359771

/-- `record[(-1)^n*A061019(n+1)]` -/
def P4420669421921258188.Spec : Prop :=
  ∀ n, P4420669421921258188.a n = A359771 (n + 1)

end A359771

/-! ## A359771.P1670276353961345113

`eq[1, A359769(n+1)²]+1`
-/

namespace A359771.P1670276353961345113
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359769 (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A359771.P1670276353961345113

namespace A359771

/-- `eq[1, A359769(n+1)²]+1` -/
def P1670276353961345113.Spec : Prop :=
  ∀ n, (P1670276353961345113.a n : ℤ) = A359771 (n + 1)

end A359771

/-! ## A359771.P6524447763083465606

`filter[A065090(n+1), A359770(#)]`
-/

namespace A359771.P6524447763083465606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065090 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359770 (f1 j).toNat = 1) n)

end

end A359771.P6524447763083465606

namespace A359771

/-- `filter[A065090(n+1), A359770(#)]` -/
def P6524447763083465606.Spec : Prop :=
  ∀ n, P6524447763083465606.a n = A359771 (n + 1)

end A359771

/-! ## A359771.P3998982224469853656

`filter[A171581(n+1), A359770(#)]`
-/

namespace A359771.P3998982224469853656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171581 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359770 (f1 j).toNat = 1) n)

end

end A359771.P3998982224469853656

namespace A359771

/-- `filter[A171581(n+1), A359770(#)]` -/
def P3998982224469853656.Spec : Prop :=
  ∀ n, P3998982224469853656.a n = A359771 (n + 1)

end A359771

/-! ## A359771.P11511043665050740535

`filter[A338924(n+1), A359770(#)]`
-/

namespace A359771.P11511043665050740535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338924 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359770 (f1 j).toNat = 1) n)

end

end A359771.P11511043665050740535

namespace A359771

/-- `filter[A338924(n+1), A359770(#)]` -/
def P11511043665050740535.Spec : Prop :=
  ∀ n, P11511043665050740535.a n = A359771 (n + 1)

end A359771

/-! ## A359771.P9381022275985662405

`filter[A173905(n+2), A359770(#)]`
-/

namespace A359771.P9381022275985662405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173905 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359770 (f1 j).toNat = 1) n)

end

end A359771.P9381022275985662405

namespace A359771

/-- `filter[A173905(n+2), A359770(#)]` -/
def P9381022275985662405.Spec : Prop :=
  ∀ n, P9381022275985662405.a n = A359771 (n + 1)

end A359771

/-! ## A359771.P4488899921464588482

`filter[A073900(n+1), A359770(#)]`
-/

namespace A359771.P4488899921464588482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073900 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359770 (f1 j).toNat = 1) n)

end

end A359771.P4488899921464588482

namespace A359771

/-- `filter[A073900(n+1), A359770(#)]` -/
def P4488899921464588482.Spec : Prop :=
  ∀ n, P4488899921464588482.a n = A359771 (n + 1)

end A359771

/-! ## A359771.P8795357661350987759

`filter[A073899(n+1), A359770(#)]`
-/

namespace A359771.P8795357661350987759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073899 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359770 (f1 j).toNat = 1) n)

end

end A359771.P8795357661350987759

namespace A359771

/-- `filter[A073899(n+1), A359770(#)]` -/
def P8795357661350987759.Spec : Prop :=
  ∀ n, P8795357661350987759.a n = A359771 (n + 1)

end A359771

/-! ## A359771.P6780435746841715066

`filter[A101513(n+1), A359770(#)]`
-/

namespace A359771.P6780435746841715066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101513 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359770 (f1 j).toNat = 1) n)

end

end A359771.P6780435746841715066

namespace A359771

/-- `filter[A101513(n+1), A359770(#)]` -/
def P6780435746841715066.Spec : Prop :=
  ∀ n, P6780435746841715066.a n = A359771 (n + 1)

end A359771

/-! ## A359771.P16103965628003026265

`filter[A089088(n), A359770(#)]`
-/

namespace A359771.P16103965628003026265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359770 (f1 j).toNat = 1) n)

end

end A359771.P16103965628003026265

namespace A359771

/-- `filter[A089088(n), A359770(#)]` -/
def P16103965628003026265.Spec : Prop :=
  ∀ n, P16103965628003026265.a n = A359771 (n + 1)

end A359771

/-! ## A359771.P7753802830472125373

`filter[A137621(n+1), A359770(#)]`
-/

namespace A359771.P7753802830472125373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137621 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359770 (f1 j).toNat = 1) n)

end

end A359771.P7753802830472125373

namespace A359771

/-- `filter[A137621(n+1), A359770(#)]` -/
def P7753802830472125373.Spec : Prop :=
  ∀ n, P7753802830472125373.a n = A359771 (n + 1)

end A359771

/-! ## A359771.P6988889615817854562

`filter[A376198(n+1), A359770(#)]`
-/

namespace A359771.P6988889615817854562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376198 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359770 (f1 j).toNat = 1) n)

end

end A359771.P6988889615817854562

namespace A359771

/-- `filter[A376198(n+1), A359770(#)]` -/
def P6988889615817854562.Spec : Prop :=
  ∀ n, P6988889615817854562.a n = A359771 (n + 1)

end A359771

/-! ## A359771.P6063049545884638824

`filter[A156657(n+2), A359770(#)]`
-/

namespace A359771.P6063049545884638824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156657 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359770 (f1 j).toNat = 1) n)

end

end A359771.P6063049545884638824

namespace A359771

/-- `filter[A156657(n+2), A359770(#)]` -/
def P6063049545884638824.Spec : Prop :=
  ∀ n, P6063049545884638824.a n = A359771 (n + 1)

end A359771

/-! ## A359771.P13522253815914926090

`filter[A133398(n+1), A359770(#)]`
-/

namespace A359771.P13522253815914926090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133398 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359770 (f1 j).toNat = 1) n)

end

end A359771.P13522253815914926090

namespace A359771

/-- `filter[A133398(n+1), A359770(#)]` -/
def P13522253815914926090.Spec : Prop :=
  ∀ n, P13522253815914926090.a n = A359771 (n + 1)

end A359771

/-! ## A359771.P17049091399460961619

`eq[(-1)^n, (-1)^∑{e}[n+1, #]]+1`
-/

namespace A359771.P17049091399460961619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ (∑ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A359771.P17049091399460961619

namespace A359771

/-- `eq[(-1)^n, (-1)^∑{e}[n+1, #]]+1` -/
def P17049091399460961619.Spec : Prop :=
  ∀ n, (P17049091399460961619.a n : ℤ) = A359771 (n + 1)

end A359771

/-! ## A359771.P2952513506362920332

`record[(n+1)*(-1)^∑{e}[n+1, #]*(-1)^n]`
-/

namespace A359771.P2952513506362920332
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (-1) ^ (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p) * (-1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A359771.P2952513506362920332

namespace A359771

/-- `record[(n+1)*(-1)^∑{e}[n+1, #]*(-1)^n]` -/
def P2952513506362920332.Spec : Prop :=
  ∀ n, P2952513506362920332.a n = A359771 (n + 1)

end A359771

/-! ## A359771.P14504802257616621763

`eq[(-1)^n, A008836(n+1)]+1`
-/

namespace A359771.P14504802257616621763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A359771.P14504802257616621763

namespace A359771

/-- `eq[(-1)^n, A008836(n+1)]+1` -/
def P14504802257616621763.Spec : Prop :=
  ∀ n, (P14504802257616621763.a n : ℤ) = A359771 (n + 1)

end A359771

/-!
# A359772: Union of even numbers with an even number of prime factors and odd numbers with an odd number of prime factors, when the number of prime factors is counted with multiplicity.

The programs for A359772, the canonical program `A359772.P12958415643598891903` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A359772 has offset 1).

The definition of A359772 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A359772.P12958415643598891903

`eq[0, A359770(n+1)]+1`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A359772

/-- `eq[0, A359770(n+1)]+1` -/
def P12958415643598891903.Spec : Prop :=
  ∀ n, (P12958415643598891903.a n : ℤ) = A359772 (n + 1)

theorem P12958415643598891903.correct : P12958415643598891903.Spec := by
  intro n
  simp only [A359772, Nat.add_sub_cancel]

end A359772

/-! ## A359772.P1544354589089106942

`comp[A359771(n+1)-1]+1`
-/

namespace A359772.P1544354589089106942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359771 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A359772.P1544354589089106942

namespace A359772

/-- `comp[A359771(n+1)-1]+1` -/
def P1544354589089106942.Spec : Prop :=
  ∀ n, (P1544354589089106942.a n : ℤ) = A359772 (n + 1)

end A359772

/-! ## A359772.P550386227190065851

`eq[1, A046079(n+1)%2]+1`
-/

namespace A359772.P550386227190065851
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A046079 (n + 1)) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A359772.P550386227190065851

namespace A359772

/-- `eq[1, A046079(n+1)%2]+1` -/
def P550386227190065851.Spec : Prop :=
  ∀ n, (P550386227190065851.a n : ℤ) = A359772 (n + 1)

end A359772

/-! ## A359772.P305835600026157446

`eq[1, (A001222(n+1)+n)%2]+1`
-/

namespace A359772.P305835600026157446
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001222 (n + 1) + (n : ℤ)) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A359772.P305835600026157446

namespace A359772

/-- `eq[1, (A001222(n+1)+n)%2]+1` -/
def P305835600026157446.Spec : Prop :=
  ∀ n, (P305835600026157446.a n : ℤ) = A359772 (n + 1)

end A359772

/-! ## A359772.P1399597966038131618

`∪[A063745(n+1), A067019(n+1)]`
-/

namespace A359772.P1399597966038131618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063745 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067019 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A359772.P1399597966038131618

namespace A359772

/-- `∪[A063745(n+1), A067019(n+1)]` -/
def P1399597966038131618.Spec : Prop :=
  ∀ n, (P1399597966038131618.a n : ℤ) = A359772 (n + 1)

end A359772

/-! ## A359772.P4488038015839172307

`eq[0, A359769(n+1)]+1`
-/

namespace A359772.P4488038015839172307
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359769 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A359772.P4488038015839172307

namespace A359772

/-- `eq[0, A359769(n+1)]+1` -/
def P4488038015839172307.Spec : Prop :=
  ∀ n, (P4488038015839172307.a n : ℤ) = A359772 (n + 1)

end A359772

/-! ## A359772.P1801712638539274984

`eq[1, (n+1-A073093(n+1))%2]+1`
-/

namespace A359772.P1801712638539274984
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n + 1 : ℤ) - A073093 (n + 1)) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A359772.P1801712638539274984

namespace A359772

/-- `eq[1, (n+1-A073093(n+1))%2]+1` -/
def P1801712638539274984.Spec : Prop :=
  ∀ n, (P1801712638539274984.a n : ℤ) = A359772 (n + 1)

end A359772

/-! ## A359772.P17597426824717997678

`eq[1, ∑{e}[n*gcd(2, n), #]%2]`
-/

namespace A359772.P17597426824717997678
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.gcd 2 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p) % 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A359772.P17597426824717997678

namespace A359772

/-- `eq[1, ∑{e}[n*gcd(2, n), #]%2]` -/
def P17597426824717997678.Spec : Prop :=
  ∀ n, (P17597426824717997678.a n : ℤ) = A359772 (n + 1)

end A359772

/-! ## A359772.P9564743000630442210

`eq[char[2*n], char[(n+1)*(-1)^∑{e}[n+1, #]]]`
-/

namespace A359772.P9564743000630442210
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (-1) ^ (∑ p ∈ Nat.primeFactors (f5 n), Nat.factorization (f5 n) p)

open Classical in
def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f4 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f3 j) n

end

end A359772.P9564743000630442210

namespace A359772

/-- `eq[char[2*n], char[(n+1)*(-1)^∑{e}[n+1, #]]]` -/
def P9564743000630442210.Spec : Prop :=
  ∀ n, (P9564743000630442210.a n : ℤ) = A359772 (n + 1)

end A359772

/-! ## A359772.P13446936457441418114

`lt[2, A141310(∑{e}[n, #]+n)]`
-/

namespace A359772.P13446936457441418114
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141310 (∑ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A359772.P13446936457441418114

namespace A359772

/-- `lt[2, A141310(∑{e}[n, #]+n)]` -/
def P13446936457441418114.Spec : Prop :=
  ∀ n, (P13446936457441418114.a n : ℤ) = A359772 (n + 1)

end A359772

/-!
# A359773: Dirichlet inverse of A356163, where A356163 is the characteristic function of the numbers with an even sum of prime factors (counted with multiplicity).

The programs for A359773, there is no canonical definition to state claims against.
-/

/-! ## A359773.P15468878065944539393

`∑[A102560(n)]*A359815(n+1)`
-/

namespace A359773.P15468878065944539393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102560 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A359815 (n + 1)

end

end A359773.P15468878065944539393

/-! ## A359773.P17730997286176919161

`A358839(n+1)*A359814(n+1)`
-/

namespace A359773.P17730997286176919161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358839 (n + 1) * A359814 (n + 1)

end

end A359773.P17730997286176919161

/-! ## A359773.P14199172145668811229

`A359815(n+1)*A359820(n+1)`
-/

namespace A359773.P14199172145668811229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359815 (n + 1) * A359820 (n + 1)

end

end A359773.P14199172145668811229

/-! ## A359773.P9341129529900918162

`A008683((xor(n, n+1)+1)/2)*A359814(n+1)`
-/

namespace A359773.P9341129529900918162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (SequenceMachineLib.roundAway ((Nat.xor n (n + 1) + 1 : ℚ) / 2)).toNat * A359814 (n + 1)

end

end A359773.P9341129529900918162

/-! ## A359773.P14057202449923276611

`∑{d}[n+1, A059841(#-1)*A369454((n+1)/#)]`
-/

namespace A359773.P14057202449923276611
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A059841 (d - 1) * A369454 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A359773.P14057202449923276611

/-! ## A359773.P15577962635796663087

`A000035(A323072(n+1))*A359815(n+1)`
-/

namespace A359773.P15577962635796663087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A323072 (n + 1)).toNat * A359815 (n + 1)

end

end A359773.P15577962635796663087

/-! ## A359773.P8091553111912233744

`A358777(n+1)-A358777(A146307(3*(n+1)))`
-/

namespace A359773.P8091553111912233744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358777 (n + 1) - A358777 (A146307 (3 * (n + 1))).toNat

end

end A359773.P8091553111912233744

/-! ## A359773.P3775704627868412526

`A008966(A054552(n))*A359815(n+1)`
-/

namespace A359773.P3775704627868412526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008966 (A054552 n).toNat * A359815 (n + 1)

end

end A359773.P3775704627868412526

/-!
# A359774: Parity of A359773, where A359773 is the Dirichlet inverse of A356163.

The programs for A359774, there is no canonical definition to state claims against.
-/

/-! ## A359774.P5576803279346929318

`and(1, A359773(n+1))`
-/

namespace A359774.P5576803279346929318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A359773 (n + 1))

end

end A359774.P5576803279346929318

/-! ## A359774.P17344170921112458877

`and(1, A359789(n+1))`
-/

namespace A359774.P17344170921112458877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A359789 (n + 1))

end

end A359774.P17344170921112458877

/-! ## A359774.P15885158781981805075

`and(1, A378523(n+1))`
-/

namespace A359774.P15885158781981805075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A378523 (n + 1))

end

end A359774.P15885158781981805075

/-! ## A359774.P8306870882590799806

`A000035(A359773(n+1)²)`
-/

namespace A359774.P8306870882590799806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A359773 (n + 1) ^ 2).toNat

end

end A359774.P8306870882590799806

/-! ## A359774.P17735899515509344592

`A010873(A359773(n+1)²)`
-/

namespace A359774.P17735899515509344592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010873 (A359773 (n + 1) ^ 2).toNat

end

end A359774.P17735899515509344592

/-! ## A359774.P15022062231677092329

`and(A004657(n), A359816(n+1))`
-/

namespace A359774.P15022062231677092329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A004657 n) (A359816 (n + 1))

end

end A359774.P15022062231677092329

/-! ## A359774.P2024297341673819653

`and(A005920(n), A359816(n+1))`
-/

namespace A359774.P2024297341673819653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A005920 n) (A359816 (n + 1))

end

end A359774.P2024297341673819653

/-! ## A359774.P2698358454002725661

`and(A007879(n), A359816(n+1))`
-/

namespace A359774.P2698358454002725661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A007879 n) (A359816 (n + 1))

end

end A359774.P2698358454002725661

/-! ## A359774.P17283222749752534149

`and(A008778(n), A359816(n+1))`
-/

namespace A359774.P17283222749752534149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A008778 n) (A359816 (n + 1))

end

end A359774.P17283222749752534149

/-! ## A359774.P15313841363126870335

`∑{d}[A359773(n+1), A359773(#)]`
-/

namespace A359774.P15313841363126870335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359773 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A359773 d

end

end A359774.P15313841363126870335

/-! ## A359774.P4368968992697301

`and(A075666(n+1), A359816(n+1))`
-/

namespace A359774.P4368968992697301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A075666 (n + 1)) (A359816 (n + 1))

end

end A359774.P4368968992697301

/-! ## A359774.P17088437179107489800

`and(A160959(n+1), A359816(n+1))`
-/

namespace A359774.P17088437179107489800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A160959 (n + 1)) (A359816 (n + 1))

end

end A359774.P17088437179107489800

/-! ## A359774.P5133190411363452468

`and(A160960(n+1), A359816(n+1))`
-/

namespace A359774.P5133190411363452468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A160960 (n + 1)) (A359816 (n + 1))

end

end A359774.P5133190411363452468

/-! ## A359774.P10322025113263473396

`and(A006921(n), A359816(n+1))`
-/

namespace A359774.P10322025113263473396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A006921 n) (A359816 (n + 1))

end

end A359774.P10322025113263473396

/-! ## A359774.P17683802497665306693

`and(A005246(n), A359816(n+1))`
-/

namespace A359774.P17683802497665306693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A005246 n) (A359816 (n + 1))

end

end A359774.P17683802497665306693

/-! ## A359774.P5268008493426209068

`and(A032159(n), A359816(n+1))`
-/

namespace A359774.P5268008493426209068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A032159 n) (A359816 (n + 1))

end

end A359774.P5268008493426209068

/-! ## A359774.P18225179554242059971

`and(A294806(n), A359816(n+1))`
-/

namespace A359774.P18225179554242059971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A294806 n) (A359816 (n + 1))

end

end A359774.P18225179554242059971

/-! ## A359774.P11620260974138011481

`and(A041021(n), A359816(n+1))`
-/

namespace A359774.P11620260974138011481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A041021 n) (A359816 (n + 1))

end

end A359774.P11620260974138011481

/-! ## A359774.P16851037093067435867

`and(A295337(n), A359816(n+1))`
-/

namespace A359774.P16851037093067435867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A295337 n) (A359816 (n + 1))

end

end A359774.P16851037093067435867

/-! ## A359774.P934894157131373139

`and(A113225(n), A359816(n+1))`
-/

namespace A359774.P934894157131373139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A113225 n) (A359816 (n + 1))

end

end A359774.P934894157131373139

/-!
# A359775: Positions of odd terms in A359773, where A359773 is the Dirichlet inverse of A356163.

The programs for A359775, there is no canonical definition to state claims against.
-/

/-! ## A359775.P201211716309698979

`lt[0, A359774(n+1)]+1`
-/

namespace A359775.P201211716309698979
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359774 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A359775.P201211716309698979

/-! ## A359775.P9417952608235047789

`record[A000027(n+1)*A359774(n+1)]`
-/

namespace A359775.P9417952608235047789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1) * A359774 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A359775.P9417952608235047789

/-! ## A359775.P10899810164911203257

`∪[2*A359596(n+1), A359596(n+1)]`
-/

namespace A359775.P10899810164911203257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A359596 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359596 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A359775.P10899810164911203257

/-! ## A359775.P3857587577297308287

`filter[A036349(n+1), A359774(#)]`
-/

namespace A359775.P3857587577297308287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036349 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359774 (f1 j).toNat = 1) n)

end

end A359775.P3857587577297308287

/-! ## A359775.P8701320145264713248

`filter[A359771(n+1), A359774(#)]`
-/

namespace A359775.P8701320145264713248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359771 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359774 (f1 j).toNat = 1) n)

end

end A359775.P8701320145264713248

/-! ## A359775.P10523775360421845591

`filter[A359821(n+1), A359774(#)]`
-/

namespace A359775.P10523775360421845591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359821 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359774 (f1 j).toNat = 1) n)

end

end A359775.P10523775360421845591

/-! ## A359775.P10028205428176512799

`filter[A359821(n+1), A359816(#)]`
-/

namespace A359775.P10028205428176512799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359821 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359816 (f1 j).toNat = 1) n)

end

end A359775.P10028205428176512799

/-! ## A359775.P5718440371734834652

`filter[A359817(n+1), A166486(#)]`
-/

namespace A359775.P5718440371734834652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359817 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A166486 (f1 j).toNat = 1) n)

end

end A359775.P5718440371734834652

/-! ## A359775.P7049143843118825446

`filter[A359817(n+1), A359774(#)]`
-/

namespace A359775.P7049143843118825446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359817 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359774 (f1 j).toNat = 1) n)

end

end A359775.P7049143843118825446

/-! ## A359775.P6098691807301371288

`filter[A359817(n+1), A359820(#)]`
-/

namespace A359775.P6098691807301371288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359817 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359820 (f1 j).toNat = 1) n)

end

end A359775.P6098691807301371288

/-! ## A359775.P16798234892115811083

`∩[A359817(n+1), A359821(n+1)]`
-/

namespace A359775.P16798234892115811083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359817 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359821 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A359775.P16798234892115811083

/-! ## A359775.P2845084590742397262

`record[lcm(n+1, A359789(n+1)%2)]`
-/

namespace A359775.P2845084590742397262
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 1 : ℤ) (Int.tmod (A359789 (n + 1)) 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A359775.P2845084590742397262

/-! ## A359775.P16388432787801318144

`filter[A359825(n+1), A359774(#)]`
-/

namespace A359775.P16388432787801318144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359825 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359774 (f1 j).toNat = 1) n)

end

end A359775.P16388432787801318144

/-! ## A359775.P8650052248277265991

`filter[A347202(n+1), A359774(#)]`
-/

namespace A359775.P8650052248277265991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347202 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359774 (f1 j).toNat = 1) n)

end

end A359775.P8650052248277265991

/-! ## A359775.P209827118486821867

`filter[A042968(n+1), A359774(#)]`
-/

namespace A359775.P209827118486821867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042968 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359774 (f1 j).toNat = 1) n)

end

end A359775.P209827118486821867

/-! ## A359775.P8263398159730477184

`filter[A042968(n+1), A359816(#)]`
-/

namespace A359775.P8263398159730477184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042968 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359816 (f1 j).toNat = 1) n)

end

end A359775.P8263398159730477184

/-! ## A359775.P16599716141745985545

`∩[A042968(n+1), A359817(n+1)]`
-/

namespace A359775.P16599716141745985545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042968 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359817 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A359775.P16599716141745985545

/-! ## A359775.P6037969726654031083

`filter[A047592(n+1), A359774(#)]`
-/

namespace A359775.P6037969726654031083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047592 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359774 (f1 j).toNat = 1) n)

end

end A359775.P6037969726654031083

/-! ## A359775.P5471916544942495881

`filter[A317468(n+1), A359774(#)]`
-/

namespace A359775.P5471916544942495881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317468 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359774 (f1 j).toNat = 1) n)

end

end A359775.P5471916544942495881

/-! ## A359775.P1906175719377389594

`filter[A065090(n+1), A359774(#)]`
-/

namespace A359775.P1906175719377389594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065090 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359774 (f1 j).toNat = 1) n)

end

end A359775.P1906175719377389594

/-!
# A359776: Positions of even terms in A359773, where A359773 is the Dirichlet inverse of A356163.

The programs for A359776, there is no canonical definition to state claims against.
-/

/-! ## A359776.P15782202441317381253

`lt[A359774(n+1), 1]+1`
-/

namespace A359776.P15782202441317381253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359774 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A359776.P15782202441317381253

/-! ## A359776.P13384182422996637665

`comp[A359775(n+1)-2]+2`
-/

namespace A359776.P13384182422996637665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359775 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 2

end

end A359776.P13384182422996637665

/-! ## A359776.P713145156110517982

`comp[A000027(n+1)*A359774(n+1)]`
-/

namespace A359776.P713145156110517982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1) * A359774 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A359776.P713145156110517982

/-! ## A359776.P14055436395597036626

`eq[A285700(2*(n+1)), A359774(n+1)]+1`
-/

namespace A359776.P14055436395597036626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285700 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359774 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A359776.P14055436395597036626

/-! ## A359776.P3588985383212066969

`eq[A000122(3*n+2), A359774(n+1)]+1`
-/

namespace A359776.P3588985383212066969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (3 * n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359774 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A359776.P3588985383212066969

/-!
# A359777: Numbers k such that A356163(k) = 1 but A359774(k) = 0, where A359774 is the parity of Dirichlet inverse of the former (which is the characteristic function of the numbers with an even sum of prime factors, with repetition).

The programs for A359777, there is no canonical definition to state claims against.
-/

/-! ## A359777.P13128643569796173457

`∩[A036349(n+1), A359776(n+1)]`
-/

namespace A359777.P13128643569796173457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036349 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359776 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A359777.P13128643569796173457

/-! ## A359777.P11710769016612754776

`filter[A130798(n+3), A352824(#)]`
-/

namespace A359777.P11710769016612754776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130798 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A352824 (f1 j).toNat = 1) n)

end

end A359777.P11710769016612754776

/-!
# A359778: Number of factorizations of n into factors not divisible by p^p for any prime p (terms of A048103).

The programs for A359778, there is no canonical definition to state claims against.
-/

/-! ## A359778.P13049413285687347740

`A000009(A359541(n+1)%A273945(n+1))`
-/

namespace A359778.P13049413285687347740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 (Int.tmod (A359541 (n + 1)) (A273945 (n + 1))).toNat

end

end A359778.P13049413285687347740

/-! ## A359778.P1407544739275653387

`A037254(A069733(n+1))%A340661(n+1)`
-/

namespace A359778.P1407544739275653387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A037254 (A069733 (n + 1)).toNat) (A340661 (n + 1))

end

end A359778.P1407544739275653387

/-! ## A359778.P4354760221684041010

`A000120(((and(1, n)+1)*∑{d}[n+1, #%2])!)`
-/

namespace A359778.P4354760221684041010
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (Nat.factorial ((Nat.land 1 n + 1) * (∑ d ∈ Nat.divisors (f1 n), d % 2)))

end

end A359778.P4354760221684041010

/-! ## A359778.P15655218574537389270

`A358947(A280698(n+1))`
-/

namespace A359778.P15655218574537389270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358947 (A280698 (n + 1)).toNat

end

end A359778.P15655218574537389270

/-!
# A359779: Dirichlet inverse of A359778, where A359778 is the number of factorizations of n into factors not divisible by p^p for any prime p (terms of A048103).

The programs for A359779, there is no canonical definition to state claims against.
-/

/-! ## A359779.P10396348082356144337

`A185125(A152188(n+1)%A112566(n+1))`
-/

namespace A359779.P10396348082356144337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185125 (Int.tmod (A152188 (n + 1)) (A112566 (n + 1))).toNat

end

end A359779.P10396348082356144337

/-! ## A359779.P5370615364441730275

`A185125(A152188(n+1)%A112565(n))`
-/

namespace A359779.P5370615364441730275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185125 (Int.tmod (A152188 (n + 1)) (A112565 n)).toNat

end

end A359779.P5370615364441730275

/-! ## A359779.P18205851459292256252

`A000179(A323880(n+1))^A274487(n)`
-/

namespace A359779.P18205851459292256252
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000179 (A323880 (n + 1)).toNat : ℚ) ^ (A274487 n : ℤ)

end

end A359779.P18205851459292256252

/-! ## A359779.P16677098765781430099

`A204021(A076078(n+1))%A177229(n)`
-/

namespace A359779.P16677098765781430099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A204021 (A076078 (n + 1)).toNat) (A177229 n)

end

end A359779.P16677098765781430099

/-! ## A359779.P18187830435956335623

`A008683(A000005(n+1)*A113527(n+1))`
-/

namespace A359779.P18187830435956335623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A000005 (n + 1) * A113527 (n + 1)).toNat

end

end A359779.P18187830435956335623

/-!
# A359780: Dirichlet inverse of A358680, where A358680 is the characteristic function of the numbers with even arithmetic derivative (A003415).

The programs for A359780, there is no canonical definition to state claims against.
-/

/-! ## A359780.P11820561275612066545

`A000122(A096898(n+1))-A359781(n+1)`
-/

namespace A359780.P11820561275612066545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (A096898 (n + 1)).toNat - A359781 (n + 1)

end

end A359780.P11820561275612066545

/-! ## A359780.P8308602811391584874

`A134824(A078255(2*(n+1))*A359781(n+1))`
-/

namespace A359780.P8308602811391584874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134824 (A078255 (2 * (n + 1)) * A359781 (n + 1)).toNat

end

end A359780.P8308602811391584874

/-! ## A359780.P1842700771522440063

`A000122(A225481(n))-A359828(n+1)`
-/

namespace A359780.P1842700771522440063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (A225481 n).toNat - A359828 (n + 1)

end

end A359780.P1842700771522440063

/-! ## A359780.P3229876392933857348

`A000122(A209167(2*n+1))-A359781(n+1)`
-/

namespace A359780.P3229876392933857348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (A209167 (2 * n + 1)).toNat - A359781 (n + 1)

end

end A359780.P3229876392933857348

/-! ## A359780.P8775517106897032387

`A000122(A237686(n))-A359828(n+1)`
-/

namespace A359780.P8775517106897032387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (A237686 n).toNat - A359828 (n + 1)

end

end A359780.P8775517106897032387

/-!
# A359781: Parity of A359780, where A359780 is the Dirichlet inverse of the characteristic function of the numbers with even arithmetic derivative (A003415).

The programs for A359781, there is no canonical definition to state claims against.
-/

/-! ## A359781.P9287708820297828489

`and(1, A359780(n+1))`
-/

namespace A359781.P9287708820297828489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A359780 (n + 1))

end

end A359781.P9287708820297828489

/-! ## A359781.P3968092681749493743

`and(1, A359790(n+1))`
-/

namespace A359781.P3968092681749493743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A359790 (n + 1))

end

end A359781.P3968092681749493743

/-! ## A359781.P12034825858413845070

`A000035(A359780(n+1)²)`
-/

namespace A359781.P12034825858413845070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A359780 (n + 1) ^ 2).toNat

end

end A359781.P12034825858413845070

/-! ## A359781.P4411033431077161640

`A007877(A359780(n+1)²)`
-/

namespace A359781.P4411033431077161640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007877 (A359780 (n + 1) ^ 2).toNat

end

end A359781.P4411033431077161640

/-! ## A359781.P84539169537464827

`A359820(A359780(n+1)²)`
-/

namespace A359781.P84539169537464827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359820 (A359780 (n + 1) ^ 2).toNat

end

end A359781.P84539169537464827

/-! ## A359781.P8693923372611650813

`A359820(A359780(n+1)*A359780(n+1))`
-/

namespace A359781.P8693923372611650813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359820 (A359780 (n + 1) * A359780 (n + 1)).toNat

end

end A359781.P8693923372611650813

/-! ## A359781.P1513497993779576012

`A358680(A216455(n+1))`
-/

namespace A359781.P1513497993779576012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358680 (A216455 (n + 1)).toNat

end

end A359781.P1513497993779576012

/-!
# A359782: Positions of even terms in A359780.

The programs for A359782, there is no canonical definition to state claims against.
-/

/-! ## A359782.P17668201711598433822

`eq[0, A359781(n+1)]+1`
-/

namespace A359782.P17668201711598433822
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359781 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A359782.P17668201711598433822

/-! ## A359782.P10821883358693498595

`comp[A359783(n+1)-1]+1`
-/

namespace A359782.P10821883358693498595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359783 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A359782.P10821883358693498595

/-! ## A359782.P6311276853517411250

`comp[A000027(n+1)*A359781(n+1)]`
-/

namespace A359782.P6311276853517411250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1) * A359781 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A359782.P6311276853517411250

/-! ## A359782.P8886055573175415857

`eq[0, A359781(A028310(n))]`
-/

namespace A359782.P8886055573175415857
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359781 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A359782.P8886055573175415857

/-! ## A359782.P1386385854737175376

`lt[A359781(n+1), A057427(n)]+1`
-/

namespace A359782.P1386385854737175376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359781 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A359782.P1386385854737175376

/-!
# A359783: Positions of odd terms in A359780.

The programs for A359783, there is no canonical definition to state claims against.
-/

/-! ## A359783.P1004676956312111809

`lt[0, A359781(n+1)]+1`
-/

namespace A359783.P1004676956312111809
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359781 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A359783.P1004676956312111809

/-! ## A359783.P3029666075499193209

`record[(n+1)*A359781(n+2)]+1`
-/

namespace A359783.P3029666075499193209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A359781 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1

end

end A359783.P3029666075499193209

/-! ## A359783.P9214132827396795634

`record[A000027(n+1)*A359781(n+1)]`
-/

namespace A359783.P9214132827396795634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1) * A359781 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A359783.P9214132827396795634

/-! ## A359783.P8398659495457444771

`filter[A235992(n+2), A359781(#)]`
-/

namespace A359783.P8398659495457444771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235992 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359781 (f1 j).toNat = 1) n)

end

end A359783.P8398659495457444771

/-! ## A359783.P281027833925983966

`filter[A174891(n+1), A359781(#)]`
-/

namespace A359783.P281027833925983966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174891 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359781 (f1 j).toNat = 1) n)

end

end A359783.P281027833925983966

/-! ## A359783.P235027885031244351

`filter[A107750(n+1), A359781(#)]`
-/

namespace A359783.P235027885031244351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107750 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359781 (f1 j).toNat = 1) n)

end

end A359783.P235027885031244351

/-! ## A359783.P4872609979549163263

`filter[A042965(n+2), A359781(#)]`
-/

namespace A359783.P4872609979549163263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042965 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359781 (f1 j).toNat = 1) n)

end

end A359783.P4872609979549163263

/-! ## A359783.P1556554343013099779

`filter[A079298(n+2), A359781(#)]`
-/

namespace A359783.P1556554343013099779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079298 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359781 (f1 j).toNat = 1) n)

end

end A359783.P1556554343013099779

/-! ## A359783.P13253155161350557454

`filter[A047565(n+2), A359781(#)]`
-/

namespace A359783.P13253155161350557454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047565 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359781 (f1 j).toNat = 1) n)

end

end A359783.P13253155161350557454

/-! ## A359783.P12999356353434078026

`filter[A047595(n+2), A359781(#)]`
-/

namespace A359783.P12999356353434078026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047595 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359781 (f1 j).toNat = 1) n)

end

end A359783.P12999356353434078026

/-! ## A359783.P9891676116497052581

`filter[A018252(n+1), A359781(#)]`
-/

namespace A359783.P9891676116497052581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359781 (f1 j).toNat = 1) n)

end

end A359783.P9891676116497052581

/-! ## A359783.P2382563081094355010

`filter[A065090(n+1), A359781(#)]`
-/

namespace A359783.P2382563081094355010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065090 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359781 (f1 j).toNat = 1) n)

end

end A359783.P2382563081094355010

/-! ## A359783.P17074947476840157574

`filter[A141468(n+2), A359781(#)]`
-/

namespace A359783.P17074947476840157574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359781 (f1 j).toNat = 1) n)

end

end A359783.P17074947476840157574

/-! ## A359783.P14546484644720911205

`filter[A222307(2*n+1), A359781(#)]`
-/

namespace A359783.P14546484644720911205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222307 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359781 (f1 j).toNat = 1) n)

end

end A359783.P14546484644720911205

/-! ## A359783.P9556362827928885030

`filter[A171581(n+1), A359781(#)]`
-/

namespace A359783.P9556362827928885030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171581 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359781 (f1 j).toNat = 1) n)

end

end A359783.P9556362827928885030

/-! ## A359783.P17279728882484556985

`filter[A338924(n+1), A359781(#)]`
-/

namespace A359783.P17279728882484556985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338924 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359781 (f1 j).toNat = 1) n)

end

end A359783.P17279728882484556985

/-! ## A359783.P14842606584086858710

`filter[A173905(n+2), A359781(#)]`
-/

namespace A359783.P14842606584086858710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173905 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359781 (f1 j).toNat = 1) n)

end

end A359783.P14842606584086858710

/-! ## A359783.P9445126085313236530

`filter[A073900(n+1), A359781(#)]`
-/

namespace A359783.P9445126085313236530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073900 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359781 (f1 j).toNat = 1) n)

end

end A359783.P9445126085313236530

/-! ## A359783.P16332051391338206556

`filter[A073899(n+1), A359781(#)]`
-/

namespace A359783.P16332051391338206556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073899 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359781 (f1 j).toNat = 1) n)

end

end A359783.P16332051391338206556

/-! ## A359783.P9358507850928735918

`filter[A171085(n+1), A359781(#)]`
-/

namespace A359783.P9358507850928735918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171085 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359781 (f1 j).toNat = 1) n)

end

end A359783.P9358507850928735918

/-!
# A359784: Numbers k such that A358680(k) = 1 but A359781(k) = 0, where A359781 is the parity of Dirichlet inverse of the former (which is the characteristic function of the numbers with even arithmetic derivative).

The programs for A359784, there is no canonical definition to state claims against.
-/

/-! ## A359784.P11150891105692912233

`∩[A235992(n+1), A359782(n+1)]`
-/

namespace A359784.P11150891105692912233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235992 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359782 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A359784.P11150891105692912233

/-!
# A359785: Dirichlet inverse of A320655, where A320655(n) is the number of factorizations of n into semiprimes.

The programs for A359785, there is no canonical definition to state claims against.
-/

/-! ## A359785.P7309592638627388316

`A011650(A358223(n+1))`
-/

namespace A359785.P7309592638627388316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011650 (A358223 (n + 1)).toNat

end

end A359785.P7309592638627388316

/-! ## A359785.P5140304699457261974

`A011650(A389831(n+1))`
-/

namespace A359785.P5140304699457261974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011650 (A389831 (n + 1)).toNat

end

end A359785.P5140304699457261974

/-! ## A359785.P9529001878856046538

`A359763(n+1)-A160351(A160364(n+1))`
-/

namespace A359785.P9529001878856046538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359763 (n + 1) - A160351 (A160364 (n + 1)).toNat

end

end A359785.P9529001878856046538

/-! ## A359785.P5082397969684061830

`A359763(n+1)/A056832(A006705(3*n+5))`
-/

namespace A359785.P5082397969684061830
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A359763 (n + 1) : ℚ) / (A056832 (A006705 (3 * n + 5)).toNat : ℚ)

end

end A359785.P5082397969684061830

/-!
# A359786: Dirichlet inverse of A322353, where A322353(n) is the number of factorizations of n into distinct semiprimes.

The programs for A359786, there is no canonical definition to state claims against.
-/

/-! ## A359786.P11444376337753730511

`A056594(A001222(n+1))*A320655(n+1)`
-/

namespace A359786.P11444376337753730511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (A001222 (n + 1)).toNat * A320655 (n + 1)

end

end A359786.P11444376337753730511

/-! ## A359786.P5689220919466219240

`A057077(A001222(3*(n+1)))*A320655(n+1)`
-/

namespace A359786.P5689220919466219240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 (A001222 (3 * (n + 1))).toNat * A320655 (n + 1)

end

end A359786.P5689220919466219240

/-! ## A359786.P3275767729175056723

`A090368(A076078(n+1))%3*A015213(A001222(n+1))`
-/

namespace A359786.P3275767729175056723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A090368 (A076078 (n + 1)).toNat) 3 * A015213 (A001222 (n + 1)).toNat

end

end A359786.P3275767729175056723

/-! ## A359786.P3821150042395557301

`A320655(n+1)*A321765(A061142(n+1))`
-/

namespace A359786.P3821150042395557301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320655 (n + 1) * A321765 (A061142 (n + 1)).toNat

end

end A359786.P3821150042395557301

/-! ## A359786.P14540819011863895675

`A359763(n+1)+A010052(A000217(3*n+4))`
-/

namespace A359786.P14540819011863895675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359763 (n + 1) + A010052 (A000217 (3 * n + 4)).toNat

end

end A359786.P14540819011863895675

/-!
# A359787: Parity of Dirichlet inverse of A075255, where A075255(n) = n - sopfr(n), where sopfr is the sum of prime factors (with repetition).

The programs for A359787, there is no canonical definition to state claims against.
-/

/-! ## A359787.P6925740090983310962

`and(1, A359788(n+1))`
-/

namespace A359787.P6925740090983310962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A359788 (n + 1))

end

end A359787.P6925740090983310962

/-! ## A359787.P12590166812589805970

`A359780(gcd(A100484(n+1), A359788(n+1)))`
-/

namespace A359787.P12590166812589805970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359780 (Int.gcd (A100484 (n + 1)) (A359788 (n + 1)))

end

end A359787.P12590166812589805970

/-! ## A359787.P3452645507597741828

`(A359788(n+1)+A340570(n+1))%2`
-/

namespace A359787.P3452645507597741828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A359788 (n + 1) + A340570 (n + 1)) 2

end

end A359787.P3452645507597741828

/-! ## A359787.P8361462518588465004

`A359820(A359788(n+1)²)`
-/

namespace A359787.P8361462518588465004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359820 (A359788 (n + 1) ^ 2).toNat

end

end A359787.P8361462518588465004

/-! ## A359787.P10940790093040607444

`A359820(A359788(n+1)*A359788(n+1))`
-/

namespace A359787.P10940790093040607444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359820 (A359788 (n + 1) * A359788 (n + 1)).toNat

end

end A359787.P10940790093040607444

/-!
# A359788: Dirichlet inverse of A075255, where A075255(n) = n - sopfr(n), where sopfr is the sum of prime factors (with repetition).

The programs for A359788, there is no canonical definition to state claims against.
-/

/-! ## A359788.P12284452447051816147

`A000122(A115908(n+1))-A075255(n+1)`
-/

namespace A359788.P12284452447051816147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (A115908 (n + 1)).toNat - A075255 (n + 1)

end

end A359788.P12284452447051816147

/-! ## A359788.P4293131247554837649

`A130706(A339453(n+1))-A075255(n+1)`
-/

namespace A359788.P4293131247554837649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130706 (A339453 (n + 1)).toNat - A075255 (n + 1)

end

end A359788.P4293131247554837649

/-! ## A359788.P10287851371387989467

`A075255(n+1)/(A057428(A318795(3*n+4))+A000038(n))`
-/

namespace A359788.P10287851371387989467
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075255 (n + 1) : ℚ) / (A057428 (A318795 (3 * n + 4)).toNat + A000038 n : ℚ)

end

end A359788.P10287851371387989467

/-! ## A359788.P12034336445711181636

`A075255(n+1)*A153881(A266883(3*n))`
-/

namespace A359788.P12034336445711181636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075255 (n + 1) * A153881 (A266883 (3 * n)).toNat

end

end A359788.P12034336445711181636

/-! ## A359788.P17836372468729252867

`A000122(A262972(n+1))-A075255(n+1)`
-/

namespace A359788.P17836372468729252867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (A262972 (n + 1)).toNat - A075255 (n + 1)

end

end A359788.P17836372468729252867

/-!
# A359791: Dirichlet inverse of function f(n) = 1 + A349905(n), where A349905(n) is the arithmetic derivative of prime shifted n.

The programs for A359791, there is no canonical definition to state claims against.
-/

/-! ## A359791.P344187102695617684

`A359790(A003961(n+1))`
-/

namespace A359791.P344187102695617684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359790 (A003961 (n + 1)).toNat

end

end A359791.P344187102695617684

/-! ## A359791.P3014327403591858841

`A359790(A336853(n+1)+1+n)`
-/

namespace A359791.P3014327403591858841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359790 (A336853 (n + 1) + 1 + (n : ℤ)).toNat

end

end A359791.P3014327403591858841

/-! ## A359791.P17265509073505717386

`A359790(A045965(n+1)/A054977(n))`
-/

namespace A359791.P17265509073505717386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359790 (SequenceMachineLib.roundAway ((A045965 (n + 1) : ℚ) / (A054977 n : ℚ))).toNat

end

end A359791.P17265509073505717386

/-! ## A359791.P9910828641241409296

`A359790(A348937(n+1)+A003415(n+1))`
-/

namespace A359791.P9910828641241409296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359790 (A348937 (n + 1) + A003415 (n + 1)).toNat

end

end A359791.P9910828641241409296

/-! ## A359791.P6066667041802760029

`A359790(A344587(n+1)+A336851(n+1))`
-/

namespace A359791.P6066667041802760029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359790 (A344587 (n + 1) + A336851 (n + 1)).toNat

end

end A359791.P6066667041802760029

/-!
# A359792: a(n) = (-1)^A003415(n), where A003415 is the arithmetic derivative of n.

The programs for A359792, the canonical program `A359792.P6485658559254933744` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A359792 has offset 1).

The definition of A359792 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A359792.P10670312010307095280

`(-1)^A003415(n+1)`
-/

namespace A359792.P10670312010307095280
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (A003415 (n + 1) : ℤ)

end

end A359792.P10670312010307095280

namespace A359792

/-- `(-1)^A003415(n+1)` -/
def P10670312010307095280.Spec : Prop :=
  ∀ n, P10670312010307095280.a n = (A359792 (n + 1) : ℚ)

end A359792

/-! ## A359792.P14952551927348841238

`1-2*A165560(n+1)`
-/

namespace A359792.P14952551927348841238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - 2 * A165560 (n + 1)

end

end A359792.P14952551927348841238

namespace A359792

/-- `1-2*A165560(n+1)` -/
def P14952551927348841238.Spec : Prop :=
  ∀ n, P14952551927348841238.a n = A359792 (n + 1)

end A359792

/-! ## A359792.P11222217009913469027

`2*A358680(n+1)-1`
-/

namespace A359792.P11222217009913469027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A358680 (n + 1) - 1

end

end A359792.P11222217009913469027

namespace A359792

/-- `2*A358680(n+1)-1` -/
def P11222217009913469027.Spec : Prop :=
  ∀ n, P11222217009913469027.a n = A359792 (n + 1)

end A359792

/-! ## A359792.P16644857842018282628

`(or(1, -n)%2)^A342413(n+1)`
-/

namespace A359792.P16644857842018282628
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.tmod (Int.lor 1 (-(n : ℤ))) 2 : ℚ) ^ (A342413 (n + 1) : ℤ)

end

end A359792.P16644857842018282628

namespace A359792

/-- `(or(1, -n)%2)^A342413(n+1)` -/
def P16644857842018282628.Spec : Prop :=
  ∀ n, P16644857842018282628.a n = (A359792 (n + 1) : ℚ)

end A359792

/-! ## A359792.P12654094872817380714

`A008836(A086112(n+1))`
-/

namespace A359792.P12654094872817380714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (A086112 (n + 1)).toNat

end

end A359792.P12654094872817380714

namespace A359792

/-- `A008836(A086112(n+1))` -/
def P12654094872817380714.Spec : Prop :=
  ∀ n, P12654094872817380714.a n = A359792 (n + 1)

end A359792

/-! ## A359792.P5814176096656829752

`A057077(A079065(n+1))`
-/

namespace A359792.P5814176096656829752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 (A079065 (n + 1)).toNat

end

end A359792.P5814176096656829752

namespace A359792

/-- `A057077(A079065(n+1))` -/
def P5814176096656829752.Spec : Prop :=
  ∀ n, P5814176096656829752.a n = A359792 (n + 1)

end A359792

/-! ## A359792.P6485658559254933744

`A057077(A092089(n+1))`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A359792

/-- `A057077(A092089(n+1))` -/
def P6485658559254933744.Spec : Prop :=
  ∀ n, P6485658559254933744.a n = A359792 (n + 1)

theorem P6485658559254933744.correct : P6485658559254933744.Spec := by
  intro n
  simp only [A359792, Nat.add_sub_cancel]

end A359792

/-! ## A359792.P1814904510830512911

`A008836(A230089(n+1))`
-/

namespace A359792.P1814904510830512911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (A230089 (n + 1)).toNat

end

end A359792.P1814904510830512911

namespace A359792

/-- `A008836(A230089(n+1))` -/
def P1814904510830512911.Spec : Prop :=
  ∀ n, P1814904510830512911.a n = A359792 (n + 1)

end A359792

/-! ## A359792.P6436945349815796227

`A166698(n+1)-A101455(n)`
-/

namespace A359792.P6436945349815796227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166698 (n + 1) - A101455 n

end

end A359792.P6436945349815796227

namespace A359792

/-- `A166698(n+1)-A101455(n)` -/
def P6436945349815796227.Spec : Prop :=
  ∀ n, P6436945349815796227.a n = A359792 (n + 1)

end A359792

/-! ## A359792.P17336058227737017921

`A358680(n+1)-A165560(n+1)`
-/

namespace A359792.P17336058227737017921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358680 (n + 1) - A165560 (n + 1)

end

end A359792.P17336058227737017921

namespace A359792

/-- `A358680(n+1)-A165560(n+1)` -/
def P17336058227737017921.Spec : Prop :=
  ∀ n, P17336058227737017921.a n = A359792 (n + 1)

end A359792

/-! ## A359792.P17757943212450849091

`∑{d}[n+1, A008683(#)*A353237((n+1)/#)]`
-/

namespace A359792.P17757943212450849091
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A353237 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A359792.P17757943212450849091

namespace A359792

/-- `∑{d}[n+1, A008683(#)*A353237((n+1)/#)]` -/
def P17757943212450849091.Spec : Prop :=
  ∀ n, P17757943212450849091.a n = A359792 (n + 1)

end A359792

/-! ## A359792.P10260626573741347779

`A101455(A092089(n+1))-A101455(n)`
-/

namespace A359792.P10260626573741347779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101455 (A092089 (n + 1)).toNat - A101455 n

end

end A359792.P10260626573741347779

namespace A359792

/-- `A101455(A092089(n+1))-A101455(n)` -/
def P10260626573741347779.Spec : Prop :=
  ∀ n, P10260626573741347779.a n = A359792 (n + 1)

end A359792

/-! ## A359792.P16589015579034726913

`A121262(n+1)+A353557(n+1)-A165560(n+1)`
-/

namespace A359792.P16589015579034726913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121262 (n + 1) + (A353557 (n + 1) - A165560 (n + 1))

end

end A359792.P16589015579034726913

namespace A359792

/-- `A121262(n+1)+A353557(n+1)-A165560(n+1)` -/
def P16589015579034726913.Spec : Prop :=
  ∀ n, P16589015579034726913.a n = A359792 (n + 1)

end A359792

/-! ## A359792.P11951120655244487256

`A353494(n+1)+A353495(n+1)-A165560(n+1)`
-/

namespace A359792.P11951120655244487256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353494 (n + 1) + (A353495 (n + 1) - A165560 (n + 1))

end

end A359792.P11951120655244487256

namespace A359792

/-- `A353494(n+1)+A353495(n+1)-A165560(n+1)` -/
def P11951120655244487256.Spec : Prop :=
  ∀ n, P11951120655244487256.a n = A359792 (n + 1)

end A359792

/-! ## A359792.P594786208881918964

`A358680(n+1)-A358680(A047243(n+2))`
-/

namespace A359792.P594786208881918964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358680 (n + 1) - A358680 (A047243 (n + 2)).toNat

end

end A359792.P594786208881918964

namespace A359792

/-- `A358680(n+1)-A358680(A047243(n+2))` -/
def P594786208881918964.Spec : Prop :=
  ∀ n, P594786208881918964.a n = A359792 (n + 1)

end A359792

/-! ## A359792.P13253690759503863753

`A091337(A079065(2*(n+1))-1)`
-/

namespace A359792.P13253690759503863753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091337 (A079065 (2 * (n + 1)) - 1).toNat

end

end A359792.P13253690759503863753

namespace A359792

/-- `A091337(A079065(2*(n+1))-1)` -/
def P13253690759503863753.Spec : Prop :=
  ∀ n, P13253690759503863753.a n = A359792 (n + 1)

end A359792

/-! ## A359792.P5377011507625742112

`A034947(A309324(n+1)+n)`
-/

namespace A359792.P5377011507625742112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034947 (A309324 (n + 1) + (n : ℤ)).toNat

end

end A359792.P5377011507625742112

namespace A359792

/-- `A034947(A309324(n+1)+n)` -/
def P5377011507625742112.Spec : Prop :=
  ∀ n, P5377011507625742112.a n = A359792 (n + 1)

end A359792

/-! ## A359792.P4559227477521743886

`A033999(A003415(n+1))`
-/

namespace A359792.P4559227477521743886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A003415 (n + 1)).toNat

end

end A359792.P4559227477521743886

namespace A359792

/-- `A033999(A003415(n+1))` -/
def P4559227477521743886.Spec : Prop :=
  ∀ n, P4559227477521743886.a n = A359792 (n + 1)

end A359792

/-! ## A359792.P3140487374171348807

`A062157(A003415(n+1)+1)`
-/

namespace A359792.P3140487374171348807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 (A003415 (n + 1) + 1).toNat

end

end A359792.P3140487374171348807

namespace A359792

/-- `A062157(A003415(n+1)+1)` -/
def P3140487374171348807.Spec : Prop :=
  ∀ n, P3140487374171348807.a n = A359792 (n + 1)

end A359792

/-! ## A359792.P73748222516484912

`A059841(A003415(n+1))-A165560(n+1)`
-/

namespace A359792.P73748222516484912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (A003415 (n + 1)).toNat - A165560 (n + 1)

end

end A359792.P73748222516484912

namespace A359792

/-- `A059841(A003415(n+1))-A165560(n+1)` -/
def P73748222516484912.Spec : Prop :=
  ∀ n, P73748222516484912.a n = A359792 (n + 1)

end A359792

/-!
# A359794: Union of odd numbers and numbers with an odd 2-adic valuation.

The programs for A359794, the canonical program `A359794.P10986045244091442219` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A359794 has offset 1).

The definition of A359794 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A359794.P2385632867381643076

`comp[4*n*and(n, -n)]`
-/

namespace A359794.P2385632867381643076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n : ℤ) * Int.land (n : ℤ) (-(n : ℤ))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A359794.P2385632867381643076

namespace A359794

/-- `comp[4*n*and(n, -n)]` -/
def P2385632867381643076.Spec : Prop :=
  ∀ n, (P2385632867381643076.a n : ℤ) = A359794 (n + 1)

end A359794

/-! ## A359794.P2807232936684136908

`record[abs(xor(n, (-1)^val(n+1, 2)))]`
-/

namespace A359794.P2807232936684136908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (n : ℤ) ((-1) ^ SequenceMachineLib.valuation (n + 1) 2)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A359794.P2807232936684136908

namespace A359794

/-- `record[abs(xor(n, (-1)^val(n+1, 2)))]` -/
def P2807232936684136908.Spec : Prop :=
  ∀ n, P2807232936684136908.a n = A359794 (n + 1)

end A359794

/-! ## A359794.P1798957393747478749

`lt[(-3)^val(n+1, 2), 2]+1`
-/

namespace A359794.P1798957393747478749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-3) ^ SequenceMachineLib.valuation (n + 1) 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A359794.P1798957393747478749

namespace A359794

/-- `lt[(-3)^val(n+1, 2), 2]+1` -/
def P1798957393747478749.Spec : Prop :=
  ∀ n, (P1798957393747478749.a n : ℤ) = A359794 (n + 1)

end A359794

/-! ## A359794.P10133075540800399572

`comp[A131323(n+1)]+1`
-/

namespace A359794.P10133075540800399572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131323 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A359794.P10133075540800399572

namespace A359794

/-- `comp[A131323(n+1)]+1` -/
def P10133075540800399572.Spec : Prop :=
  ∀ n, (P10133075540800399572.a n : ℤ) = A359794 (n + 1)

end A359794

/-! ## A359794.P10986045244091442219

`lt[A191254(n+1), 2]+1`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A359794

/-- `lt[A191254(n+1), 2]+1` -/
def P10986045244091442219.Spec : Prop :=
  ∀ n, (P10986045244091442219.a n : ℤ) = A359794 (n + 1)

theorem P10986045244091442219.correct : P10986045244091442219.Spec := by
  intro n
  simp only [A359794, Nat.add_sub_cancel]

end A359794

/-! ## A359794.P17243709148169425869

`lt[and(2, A254655(n+1)), 1]`
-/

namespace A359794.P17243709148169425869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 2 (A254655 (n + 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A359794.P17243709148169425869

namespace A359794

/-- `lt[and(2, A254655(n+1)), 1]` -/
def P17243709148169425869.Spec : Prop :=
  ∀ n, (P17243709148169425869.a n : ℤ) = A359794 (n + 1)

end A359794

/-! ## A359794.P6977443940713769634

`comp[2*comp[A003159(n+1)]]`
-/

namespace A359794.P6977443940713769634
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003159 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A359794.P6977443940713769634

namespace A359794

/-- `comp[2*comp[A003159(n+1)]]` -/
def P6977443940713769634.Spec : Prop :=
  ∀ n, (P6977443940713769634.a n : ℤ) = A359794 (n + 1)

end A359794

/-! ## A359794.P4119884503498485301

`comp[A081706(2*(n+1))]+1`
-/

namespace A359794.P4119884503498485301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081706 (2 * (n + 1))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A359794.P4119884503498485301

namespace A359794

/-- `comp[A081706(2*(n+1))]+1` -/
def P4119884503498485301.Spec : Prop :=
  ∀ n, (P4119884503498485301.a n : ℤ) = A359794 (n + 1)

end A359794

/-! ## A359794.P7875823502473617605

`comp[A344346(2*n+1)]+1`
-/

namespace A359794.P7875823502473617605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344346 (2 * n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A359794.P7875823502473617605

namespace A359794

/-- `comp[A344346(2*n+1)]+1` -/
def P7875823502473617605.Spec : Prop :=
  ∀ n, (P7875823502473617605.a n : ℤ) = A359794 (n + 1)

end A359794

/-! ## A359794.P5124135601320456445

`∪[2*n+1, A036554(n+1)]`
-/

namespace A359794.P5124135601320456445
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036554 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A359794.P5124135601320456445

namespace A359794

/-- `∪[2*n+1, A036554(n+1)]` -/
def P5124135601320456445.Spec : Prop :=
  ∀ n, (P5124135601320456445.a n : ℤ) = A359794 (n + 1)

end A359794

/-! ## A359794.P3799968046053675168

`∪[2*n+1, A368999(n+1)]`
-/

namespace A359794.P3799968046053675168
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368999 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A359794.P3799968046053675168

namespace A359794

/-- `∪[2*n+1, A368999(n+1)]` -/
def P3799968046053675168.Spec : Prop :=
  ∀ n, (P3799968046053675168.a n : ℤ) = A359794 (n + 1)

end A359794

/-! ## A359794.P14344368667749676108

`filter[A047588(n+2), A359832(#)]`
-/

namespace A359794.P14344368667749676108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047588 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359832 (f1 j).toNat = 1) n)

end

end A359794.P14344368667749676108

namespace A359794

/-- `filter[A047588(n+2), A359832(#)]` -/
def P14344368667749676108.Spec : Prop :=
  ∀ n, P14344368667749676108.a n = A359794 (n + 1)

end A359794

/-! ## A359794.P13725748382130161050

`filter[n+1, A359832(#)]`
-/

namespace A359794.P13725748382130161050
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359832 (f1 j) = 1) n)

end

end A359794.P13725748382130161050

namespace A359794

/-- `filter[n+1, A359832(#)]` -/
def P13725748382130161050.Spec : Prop :=
  ∀ n, (P13725748382130161050.a n : ℤ) = A359794 (n + 1)

end A359794

/-! ## A359794.P8942958296523637806

`eq[A000035(n), A285384(n+1)]`
-/

namespace A359794.P8942958296523637806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285384 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A359794.P8942958296523637806

namespace A359794

/-- `eq[A000035(n), A285384(n+1)]` -/
def P8942958296523637806.Spec : Prop :=
  ∀ n, (P8942958296523637806.a n : ℤ) = A359794 (n + 1)

end A359794

/-! ## A359794.P11616169871774717660

`eq[A059841(n), A328979(n+1)]`
-/

namespace A359794.P11616169871774717660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328979 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A359794.P11616169871774717660

namespace A359794

/-- `eq[A059841(n), A328979(n+1)]` -/
def P11616169871774717660.Spec : Prop :=
  ∀ n, (P11616169871774717660.a n : ℤ) = A359794 (n + 1)

end A359794

/-! ## A359794.P2485374896381230736

`eq[A280237(n), A285384(n+1)]`
-/

namespace A359794.P2485374896381230736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280237 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285384 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A359794.P2485374896381230736

namespace A359794

/-- `eq[A280237(n), A285384(n+1)]` -/
def P2485374896381230736.Spec : Prop :=
  ∀ n, (P2485374896381230736.a n : ℤ) = A359794 (n + 1)

end A359794

/-!
# A359796: a(n) = Sum_{d|n} (2*d)^(d-1).

The programs for A359796, there is no canonical definition to state claims against.
-/

/-! ## A359796.P14079025395636472072

`∑{d}[n+1, A052746(#)]`
-/

namespace A359796.P14079025395636472072
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A052746 d

end

end A359796.P14079025395636472072

/-! ## A359796.P15197230142130648341

`∑{d}[n+1, A038057(#)/2]`
-/

namespace A359796.P15197230142130648341
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (A038057 d : ℚ) / 2

end

end A359796.P15197230142130648341

/-! ## A359796.P15410429199221948593

`∑{d}[n+1, A004277(#)^(#-1)]`
-/

namespace A359796.P15410429199221948593
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (A004277 d : ℚ) ^ ((d : ℤ) - 1 : ℤ)

end

end A359796.P15410429199221948593

/-!
# A359797: Cogrowth sequence of the lamplighter group Z_2 wr Z where wr denotes the wreath product.

The programs for A359797, there is no canonical definition to state claims against.
-/

/-! ## A359797.P18177578089334278373

`A053165(A081085(n)-A002002(n))`
-/

namespace A359797.P18177578089334278373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053165 (A081085 n - A002002 n).toNat

end

end A359797.P18177578089334278373

/-!
# A359798: Cogrowth sequence of the group Z wr Z where wr denotes the wreath product.

The programs for A359798, there is no canonical definition to state claims against.
-/

/-! ## A359798.P14893821122838766514

`A308980(A356752(n))+A229645(n)`
-/

namespace A359798.P14893821122838766514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308980 (A356752 n).toNat + A229645 n

end

end A359798.P14893821122838766514

/-! ## A359798.P4382850787224373648

`A229655(A005176(2*n+1))+A229645(n)`
-/

namespace A359798.P4382850787224373648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229655 (A005176 (2 * n + 1)).toNat + A229645 n

end

end A359798.P4382850787224373648

