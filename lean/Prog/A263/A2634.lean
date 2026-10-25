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
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C007
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B003.C000
import Seq.B003.C001
import Seq.B004.C000
import Seq.B004.C001
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A263401: Expansion of Product_{k>=1} (1 + x^k - x^(2*k)).

The programs for A263401, there is no canonical definition to state claims against.
-/

/-! ## A263401.P17368913505026674942

`C(A281013(A245937(n+1)), A040001(n))`
-/

namespace A263401.P17368913505026674942
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A281013 (A245937 (n + 1)).toNat).toNat (A040001 n).toNat

end

end A263401.P17368913505026674942

/-! ## A263401.P17163173927859228708

`A157897(C(A339841(n+3), A034851(n)))`
-/

namespace A263401.P17163173927859228708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157897 (Nat.choose (A339841 (n + 3)).toNat (A034851 n).toNat)

end

end A263401.P17163173927859228708

/-! ## A263401.P15649340092604809116

`A027052(A078446(A053373(n+2))+2*n)`
-/

namespace A263401.P15649340092604809116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027052 (A078446 (A053373 (n + 2)).toNat + (2 * n : ℤ)).toNat

end

end A263401.P15649340092604809116

/-!
# A263402: Define Z(1) = {1}, and Z(n+1) = Z(n) (+) { x+y, with x and y in Z(n) } for any n>0 (where (+) stands for the symmetric difference of two sets). Then a(n) gives the number of elements in Z(n).

The programs for A263402, there is no canonical definition to state claims against.
-/

/-! ## A263402.P2437393630633832669

`A359893(A225470(n))+ceil(2*(2^n-1)/3)`
-/

namespace A263402.P2437393630633832669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359893 (A225470 n).toNat + ⌈2 * (((2 ^ n : ℤ) - 1 : ℚ) / 3)⌉

end

end A263402.P2437393630633832669

/-! ## A263402.P12959251573446069927

`A014113(n)+A010060(A189449(3*n+2))`
-/

namespace A263402.P12959251573446069927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014113 n + A010060 (A189449 (3 * n + 2)).toNat

end

end A263402.P12959251573446069927

/-! ## A263402.P6272869146397127029

`A014113(n)+A010060(A192373(n+1))`
-/

namespace A263402.P6272869146397127029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014113 n + A010060 (A192373 (n + 1)).toNat

end

end A263402.P6272869146397127029

/-! ## A263402.P11153121571001414280

`A078008(n+1)+A031214(A136230(n+1))`
-/

namespace A263402.P11153121571001414280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078008 (n + 1) + A031214 (A136230 (n + 1)).toNat

end

end A263402.P11153121571001414280

/-! ## A263402.P13341125142221316888

`A101264(A333402(2*n+1))+A078008(n+1)`
-/

namespace A263402.P13341125142221316888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101264 (A333402 (2 * n + 1)).toNat + A078008 (n + 1)

end

end A263402.P13341125142221316888

/-!
# A263403: Carmichael numbers k such that the odd part of k-1 is squarefree.

The programs for A263403, there is no canonical definition to state claims against.
-/

/-! ## A263403.P15020044672114296604

`A309235(∑[A242882((n+1)/2^val(n+1, 2))])`
-/

namespace A263403.P15020044672114296604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242882 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309235 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A263403.P15020044672114296604

/-! ## A263403.P7828105442915230398

`A002997(eq[A071809(n+1), A268672(2*n+1)])`
-/

namespace A263403.P7828105442915230398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071809 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268672 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002997 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A263403.P7828105442915230398

/-!
# A263405: Expansion of Product_{k>=1} 1/(1-x^(3*k+1))^k.

The programs for A263405, there is no canonical definition to state claims against.
-/

/-! ## A263405.P7557832549920704363

`(n+1)%A193173(A185231(n+1)+3)`
-/

namespace A263405.P7557832549920704363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A193173 (A185231 (n + 1) + 3).toNat)

end

end A263405.P7557832549920704363

/-! ## A263405.P16486001066838200535

`A029416(eq[A029414(n+3), A029430(n+1)])`
-/

namespace A263405.P16486001066838200535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029414 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029430 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029416 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A263405.P16486001066838200535

/-! ## A263405.P16152732326145716780

`A124765(C(A376730(n), A000120(n)))`
-/

namespace A263405.P16152732326145716780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124765 (Nat.choose (A376730 n).toNat (A000120 n).toNat)

end

end A263405.P16152732326145716780

/-! ## A263405.P6033501278464218582

`and(A029271(A045621(n)), A222656(n))`
-/

namespace A263405.P6033501278464218582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A029271 (A045621 n).toNat) (A222656 n)

end

end A263405.P6033501278464218582

/-! ## A263405.P15993493763042235345

`∑{d}[A010107(n), A267006(A028777(#))]`
-/

namespace A263405.P15993493763042235345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010107 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A267006 (A028777 d).toNat

end

end A263405.P15993493763042235345

/-!
# A263406: Expansion of Product_{k>=1} 1/(1-x^(3*k+2))^k.

The programs for A263406, there is no canonical definition to state claims against.
-/

/-! ## A263406.P11695285333771886928

`and(A052920(n), A113143(A311271(n)))`
-/

namespace A263406.P11695285333771886928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A052920 n) (A113143 (A311271 n).toNat)

end

end A263406.P11695285333771886928

/-! ## A263406.P1141158796672594646

`and(A008624(n), A232784(A044959(n+1)))`
-/

namespace A263406.P1141158796672594646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A008624 n) (A232784 (A044959 (n + 1)).toNat)

end

end A263406.P1141158796672594646

/-! ## A263406.P17441188413458032975

`A124762(A055205(n+3)+A005574(n+5))`
-/

namespace A263406.P17441188413458032975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124762 (A055205 (n + 3) + A005574 (n + 5)).toNat

end

end A263406.P17441188413458032975

/-! ## A263406.P5741094499634309336

`A051064(A227289(2*n+5))-1`
-/

namespace A263406.P5741094499634309336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051064 (A227289 (2 * n + 5)).toNat - 1

end

end A263406.P5741094499634309336

/-! ## A263406.P5284277926059449767

`A086075(A358315(n+1)+A083318(n))`
-/

namespace A263406.P5284277926059449767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086075 (A358315 (n + 1) + A083318 n).toNat

end

end A263406.P5284277926059449767

/-!
# A263410: Triangle read by rows: T(n>=2, k>=0) is the number of standard tableaux of size n whose shape contains k inversions.

The programs for A263410, there is no canonical definition to state claims against.
-/

/-! ## A263410.P18104353714898546008

`A167203(A132033(n+1)+1)`
-/

namespace A263410.P18104353714898546008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167203 (A132033 (n + 1) + 1).toNat

end

end A263410.P18104353714898546008

/-! ## A263410.P2683400494279984832

`A167203(n+2)%A241490(n+5)`
-/

namespace A263410.P2683400494279984832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A167203 (n + 2)) (A241490 (n + 5))

end

end A263410.P2683400494279984832

/-! ## A263410.P9601162092683735776

`A167203(lt[n+1, A347336(n+1)])`
-/

namespace A263410.P9601162092683735776
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347336 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167203 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A263410.P9601162092683735776

/-! ## A263410.P3607289460830150252

`A167203(n+2)+A000007(A232623(n))`
-/

namespace A263410.P3607289460830150252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167203 (n + 2) + A000007 (A232623 n).toNat

end

end A263410.P3607289460830150252

/-! ## A263410.P3440731215738089046

`A167203(n+2)%A167178(A261370(n))`
-/

namespace A263410.P3440731215738089046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A167203 (n + 2)) (A167178 (A261370 n).toNat)

end

end A263410.P3440731215738089046

/-!
# A263411: "Shuffled bisection" of positive even and odd numbers, type 1 (see "Comments" for rules generating the sequence).

The programs for A263411, there is no canonical definition to state claims against.
-/

/-! ## A263411.P2615380341815356443

`A263792(A348553(n)%A242195(2*(n+1)))`
-/

namespace A263411.P2615380341815356443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263792 (Int.tmod (A348553 n) (A242195 (2 * (n + 1)))).toNat

end

end A263411.P2615380341815356443

/-! ## A263411.P4382172014448219369

`A263792(n+1)%A186255(n+1)`
-/

namespace A263411.P4382172014448219369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A263792 (n + 1)) (A186255 (n + 1))

end

end A263411.P4382172014448219369

/-! ## A263411.P13609272262594789914

`A263792(n+1)+∑{p}[A259187(2*n+1), val(#, 3)]`
-/

namespace A263411.P13609272262594789914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259187 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263792 (n + 1) + ((∑ p ∈ Nat.primeFactors (f1 n).natAbs, SequenceMachineLib.valuation p 3 : ℕ) : ℤ)

end

end A263411.P13609272262594789914

/-! ## A263411.P4648657711526372749

`A263792(n+1)+A171386(A005894(n))`
-/

namespace A263411.P4648657711526372749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263792 (n + 1) + A171386 (A005894 n).toNat

end

end A263411.P4648657711526372749

/-! ## A263411.P15194590898631323163

`A263792(n+1)%A006450(A000712(n))`
-/

namespace A263411.P15194590898631323163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A263792 (n + 1)) (A006450 (A000712 n).toNat)

end

end A263411.P15194590898631323163

/-!
# A263413: Largest prime (or noncomposite) factor of the Crandall number A262961(n).

The programs for A263413, there is no canonical definition to state claims against.
-/

/-! ## A263413.P10876683340343460796

`∑[A025881(∑[A298495(n+1)])]`
-/

namespace A263413.P10876683340343460796
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298495 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025881 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A263413.P10876683340343460796

/-! ## A263413.P594173605233556023

`A031930(n+1)%A057509(A088257(n+1))`
-/

namespace A263413.P594173605233556023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A031930 (n + 1)) (A057509 (A088257 (n + 1)).toNat)

end

end A263413.P594173605233556023

/-!
# A263414: Expansion of Product_{k>=1} 1/(1-x^(3*k+4))^k.

The programs for A263414, there is no canonical definition to state claims against.
-/

/-! ## A263414.P16952831250505447437

`A127841(eq[2, A152177(n)])`
-/

namespace A263414.P16952831250505447437
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152177 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127841 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A263414.P16952831250505447437

/-! ## A263414.P4926307485010501556

`A127841(Δ[n²])^A014963(n+2)²`
-/

namespace A263414.P4926307485010501556
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127841 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) ^ (A014963 (n + 2) ^ 2 : ℤ)

end

end A263414.P4926307485010501556

/-! ## A263414.P17924033217105122430

`A127841(2*n+1)%A348885(2*n+5)`
-/

namespace A263414.P17924033217105122430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A127841 (2 * n + 1)) (A348885 (2 * n + 5))

end

end A263414.P17924033217105122430

/-! ## A263414.P16377351963496635763

`A008966(A034386(n))*A127841(2*n+1)`
-/

namespace A263414.P16377351963496635763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008966 (A034386 n).toNat * A127841 (2 * n + 1)

end

end A263414.P16377351963496635763

/-! ## A263414.P11426376481549077759

`A127841(2*n+1)^A287378(A307149(n))`
-/

namespace A263414.P11426376481549077759
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127841 (2 * n + 1) : ℚ) ^ (A287378 (A307149 n).toNat : ℤ)

end

end A263414.P11426376481549077759

/-!
# A263415: Expansion of Product_{k>=1} 1/(1-x^(3*k+5))^k.

The programs for A263415, there is no canonical definition to state claims against.
-/

/-! ## A263415.P18047717804420080343

`A273736(A053830(3*n+1))-A007895(A000045(n))`
-/

namespace A263415.P18047717804420080343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273736 (A053830 (3 * n + 1)).toNat - A007895 (A000045 n).toNat

end

end A263415.P18047717804420080343

/-!
# A263416: a(n) = Product_{k=0..n} (3*k+1)^(n-k).

The programs for A263416, there is no canonical definition to state claims against.
-/

/-! ## A263416.P11970200861638006629

`∏[∏[floor(abs(3*n-ϕ))]]`
-/

namespace A263416.P11970200861638006629
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊|(3 * n : ℝ) - Real.goldenRatio|⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A263416.P11970200861638006629

/-! ## A263416.P7674950481648124583

`floor(∏[(3*n-2)*a(n-1)])` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A263416.P7674950481648124583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  ((3 * n : ℤ) - 2) * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A263416.P7674950481648124583

/-! ## A263416.P1419115561881383397

`round(∏[(3*n-2)*a(n-1)])` with `a(0)=1`

`round` is left out, it is the identity on integers.
-/

namespace A263416.P1419115561881383397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  ((3 * n : ℤ) - 2) * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A263416.P1419115561881383397

/-! ## A263416.P10119799173032455530

`abs(∏[(3*n-2)*a(n-1)])` with `a(0)=1, a(1)=1`
-/

namespace A263416.P10119799173032455530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  ((3 * n : ℤ) - 2) * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∏ j ∈ Finset.range (n + 1), f1 j|

end

end A263416.P10119799173032455530

/-! ## A263416.P14873522822754939229

`∏[a(n-1)+3]*a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A263416.P14873522822754939229
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  f1 (n - 1) + 3

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * a (n - 1)

end

end A263416.P14873522822754939229

/-!
# A263417: a(n) = Product_{k=0..n} (3*k+2)^(n-k).

The programs for A263417, there is no canonical definition to state claims against.
-/

/-! ## A263417.P6872582859439431312

`∏[∏[abs(1-3*n)]]`
-/

namespace A263417.P6872582859439431312
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (3 * n : ℤ)|

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A263417.P6872582859439431312

/-! ## A263417.P11073676268659977496

`floor(∏[(3*n-1)*a(n-1)])` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A263417.P11073676268659977496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  ((3 * n : ℤ) - 1) * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A263417.P11073676268659977496

/-! ## A263417.P6676089665188485531

`∏[sqrt(lcm(3, ∏[1-3*n])/3)]²`
-/

namespace A263417.P6676089665188485531
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (3 * n : ℤ)

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((Int.lcm 3 (∏ j ∈ Finset.range (n + 1), f2 j) : ℚ) / 3 : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A263417.P6676089665188485531

/-! ## A263417.P8862723106313818279

`∏[sqrt(-∏[n-or(1, -(2*n))])]²`
-/

namespace A263417.P8862723106313818279
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - Int.lor 1 (-(2 * n : ℤ))

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((-(∏ j ∈ Finset.range (n + 1), f2 j) : ℤ) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A263417.P8862723106313818279

/-! ## A263417.P13991071346001929557

`a(n-1)*∏[a(n-1)+3]` with `a(0)=1, a(1)=2`
-/

namespace A263417.P13991071346001929557
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  f1 (n - 1) + 3

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 1) * (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A263417.P13991071346001929557

/-!
# A263418: a(n) is the total number of pentagrams in a variant of pentagram fractal after n iterations.

The programs for A263418, the canonical program `A263418.P3906359032708304120` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A263418 has offset 0).

The definition of A263418 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A263418.P3906359032708304120

`a(n-1)+5*A001911(n)` with `a(0)=1`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A263418

/-- `a(n-1)+5*A001911(n)` -/
def P3906359032708304120.Spec : Prop :=
  ∀ n, P3906359032708304120.a n = A263418 n

theorem P3906359032708304120.correct : P3906359032708304120.Spec := by
  intro n
  simp only [A263418]

end A263418

/-! ## A263418.P16488069977168538383

`3*a(n-1)-2*a(n-2)-a(n-3)+a(n-4)` with `a(0)=1, a(1)=6, a(2)=21, a(3)=51`
-/

namespace A263418.P16488069977168538383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 6, 21, 51] fun n a =>
  3 * a (n - 1) - 2 * a (n - 2) - a (n - 3) + a (n - 4)

end

end A263418.P16488069977168538383

namespace A263418

/-- `3*a(n-1)-2*a(n-2)-a(n-3)+a(n-4)` -/
def P16488069977168538383.Spec : Prop :=
  ∀ n, P16488069977168538383.a n = A263418 n

end A263418

/-! ## A263418.P8384422843956093254

`ogf((1+3x+5x^2+x^3)/(1-3x+2x^2+x^3-x^4))`
-/

namespace A263418.P8384422843956093254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 3, 5, 1] [1, -3, 2, 1, -1] n

end

end A263418.P8384422843956093254

namespace A263418

/-- `ogf((1+3x+5x^2+x^3)/(1-3x+2x^2+x^3-x^4))` -/
def P8384422843956093254.Spec : Prop :=
  ∀ n, P8384422843956093254.a n = A263418 n

end A263418

/-! ## A263418.P4310716059691286096

`5*∑[a(n-1)+a(n-2)+2]+1` with `a(0)=0, a(1)=1`
-/

namespace A263418.P4310716059691286096
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  f1 (n - 1) + (f1 (n - 2) + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * (∑ j ∈ Finset.range (n + 1), f1 j) + 1

end

end A263418.P4310716059691286096

namespace A263418

/-- `5*∑[a(n-1)+a(n-2)+2]+1` -/
def P4310716059691286096.Spec : Prop :=
  ∀ n, (P4310716059691286096.a n : ℤ) = A263418 n

end A263418

/-! ## A263418.P3355758088560561964

`5*A001891(n)+1`
-/

namespace A263418.P3355758088560561964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A001891 n + 1

end

end A263418.P3355758088560561964

namespace A263418

/-- `5*A001891(n)+1` -/
def P3355758088560561964.Spec : Prop :=
  ∀ n, P3355758088560561964.a n = A263418 n

end A263418

/-! ## A263418.P1672924960007040941

`∑[5*A001911(n)]+1`
-/

namespace A263418.P1672924960007040941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A001911 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A263418.P1672924960007040941

namespace A263418

/-- `∑[5*A001911(n)]+1` -/
def P1672924960007040941.Spec : Prop :=
  ∀ n, P1672924960007040941.a n = A263418 n

end A263418

/-! ## A263418.P16341413252760845377

`∑[5*(A000045(n+3)-2)]+1`
-/

namespace A263418.P16341413252760845377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * (A000045 (n + 3) - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A263418.P16341413252760845377

namespace A263418

/-- `∑[5*(A000045(n+3)-2)]+1` -/
def P16341413252760845377.Spec : Prop :=
  ∀ n, P16341413252760845377.a n = A263418 n

end A263418

/-! ## A263418.P5028204088610806519

`5*(A192960(n)-A000045(n+2))+1`
-/

namespace A263418.P5028204088610806519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * (A192960 n - A000045 (n + 2)) + 1

end

end A263418.P5028204088610806519

namespace A263418

/-- `5*(A192960(n)-A000045(n+2))+1` -/
def P5028204088610806519.Spec : Prop :=
  ∀ n, P5028204088610806519.a n = A263418 n

end A263418

/-!
# A263419: a(n) is the total number of pentagrams in a variant of pentagram fractal after n iterations.

The programs for A263419, there is no canonical definition to state claims against.
-/

/-! ## A263419.P690368211039709055

`A258349(n+3)-A275308(A275303(n+1))`
-/

namespace A263419.P690368211039709055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258349 (n + 3) - A275308 (A275303 (n + 1)).toNat

end

end A263419.P690368211039709055

/-! ## A263419.P5403826790376214869

`A111706(a(n-1))+5` with `a(0)=1`
-/

namespace A263419.P5403826790376214869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A111706 (a (n - 1)).toNat + 5

end

end A263419.P5403826790376214869

/-!
# A263420: Number of n X 2 arrays of permutations of 0..n*2-1 with each element moved a city block distance of 0 or 2.

The programs for A263420, the canonical program `A263420.P4549048011631068532` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A263420 has offset 1).

The definition of A263420 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 136 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A263420.P3956768356745146245

`A002524(n+1)²`
-/

namespace A263420.P3956768356745146245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002524 (n + 1) ^ 2

end

end A263420.P3956768356745146245

namespace A263420

/-- `A002524(n+1)²` -/
def P3956768356745146245.Spec : Prop :=
  ∀ n, P3956768356745146245.a n = A263420 (n + 1)

end A263420

/-! ## A263420.P7921192321919961740

`∏[ratio[A002524(n)]²]`
-/

namespace A263420.P7921192321919961740
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002524 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((f2 (n + 1) : ℚ) / (f2 n : ℚ)) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A263420.P7921192321919961740

namespace A263420

/-- `∏[ratio[A002524(n)]²]` -/
def P7921192321919961740.Spec : Prop :=
  ∀ n, P7921192321919961740.a n = (A263420 (n + 1) : ℚ)

end A263420

/-! ## A263420.P4549048011631068532

`Δ[A002525(n+1)]²`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A263420

/-- `Δ[A002525(n+1)]²` -/
def P4549048011631068532.Spec : Prop :=
  ∀ n, P4549048011631068532.a n = A263420 (n + 1)

theorem P4549048011631068532.correct : P4549048011631068532.Spec := by
  intro n
  simp only [A263420, Nat.add_sub_cancel]

end A263420

/-! ## A263420.P8106381213318063125

`record[A002524(A002262(n))²]`
-/

namespace A263420.P8106381213318063125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002524 (A002262 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263420.P8106381213318063125

namespace A263420

/-- `record[A002524(A002262(n))²]` -/
def P8106381213318063125.Spec : Prop :=
  ∀ n, P8106381213318063125.a n = A263420 (n + 1)

end A263420

/-! ## A263420.P12393290869652968195

`record[A002524(A008611(n))²]`
-/

namespace A263420.P12393290869652968195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002524 (A008611 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263420.P12393290869652968195

namespace A263420

/-- `record[A002524(A008611(n))²]` -/
def P12393290869652968195.Spec : Prop :=
  ∀ n, P12393290869652968195.a n = A263420 (n + 1)

end A263420

/-! ## A263420.P7464332320546924982

`record[A002524(A008612(n))²]`
-/

namespace A263420.P7464332320546924982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002524 (A008612 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263420.P7464332320546924982

namespace A263420

/-- `record[A002524(A008612(n))²]` -/
def P7464332320546924982.Spec : Prop :=
  ∀ n, P7464332320546924982.a n = A263420 (n + 1)

end A263420

/-! ## A263420.P15090533778366183602

`record[A002524(A028242(n))²]`
-/

namespace A263420.P15090533778366183602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002524 (A028242 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263420.P15090533778366183602

namespace A263420

/-- `record[A002524(A028242(n))²]` -/
def P15090533778366183602.Spec : Prop :=
  ∀ n, P15090533778366183602.a n = A263420 (n + 1)

end A263420

/-! ## A263420.P10450857336339380366

`record[A002524(A028920(n))²]`
-/

namespace A263420.P10450857336339380366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002524 (A028920 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263420.P10450857336339380366

namespace A263420

/-- `record[A002524(A028920(n))²]` -/
def P10450857336339380366.Spec : Prop :=
  ∀ n, P10450857336339380366.a n = A263420 (n + 1)

end A263420

/-! ## A263420.P5729063336218129197

`record[A002524(A106249(n))²]`
-/

namespace A263420.P5729063336218129197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002524 (A106249 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263420.P5729063336218129197

namespace A263420

/-- `record[A002524(A106249(n))²]` -/
def P5729063336218129197.Spec : Prop :=
  ∀ n, P5729063336218129197.a n = A263420 (n + 1)

end A263420

/-! ## A263420.P12313778549057388793

`A002524(n+1)^A036453(n+1)`
-/

namespace A263420.P12313778549057388793
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002524 (n + 1) : ℚ) ^ (A036453 (n + 1) : ℤ)

end

end A263420.P12313778549057388793

namespace A263420

/-- `A002524(n+1)^A036453(n+1)` -/
def P12313778549057388793.Spec : Prop :=
  ∀ n, P12313778549057388793.a n = (A263420 (n + 1) : ℚ)

end A263420

/-! ## A263420.P16612897732148591239

`(A002525(n+1)-A002525(n+2))²`
-/

namespace A263420.P16612897732148591239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002525 (n + 1) - A002525 (n + 2)) ^ 2

end

end A263420.P16612897732148591239

namespace A263420

/-- `(A002525(n+1)-A002525(n+2))²` -/
def P16612897732148591239.Spec : Prop :=
  ∀ n, P16612897732148591239.a n = A263420 (n + 1)

theorem P16612897732148591239.correct : P16612897732148591239.Spec := by
  intro n
  simp only [A263420, Nat.add_sub_cancel, A263420.P16612897732148591239.a, A263420.P4549048011631068532.f1, A263420.P4549048011631068532.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A263420

/-! ## A263420.P12786496374397321307

`A002524(A028242(2*n))*A002524(n+1)`
-/

namespace A263420.P12786496374397321307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002524 (A028242 (2 * n)).toNat * A002524 (n + 1)

end

end A263420.P12786496374397321307

namespace A263420

/-- `A002524(A028242(2*n))*A002524(n+1)` -/
def P12786496374397321307.Spec : Prop :=
  ∀ n, P12786496374397321307.a n = A263420 (n + 1)

end A263420

/-! ## A263420.P709068348143204868

`A002524(A157271(2*n+1))*A002524(n+1)`
-/

namespace A263420.P709068348143204868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002524 (A157271 (2 * n + 1)).toNat * A002524 (n + 1)

end

end A263420.P709068348143204868

namespace A263420

/-- `A002524(A157271(2*n+1))*A002524(n+1)` -/
def P709068348143204868.Spec : Prop :=
  ∀ n, P709068348143204868.a n = A263420 (n + 1)

end A263420

/-!
# A263421: Number of nX3 arrays of permutations of 0..n*3-1 with each element moved a city block distance of 0 or 2.

The programs for A263421, there is no canonical definition to state claims against.
-/

/-! ## A263421.P2751823986510487086

`A263424(∑[n+2]+4)`
-/

namespace A263421.P2751823986510487086
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263424 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A263421.P2751823986510487086

/-! ## A263421.P12012292814189819407

`A263424(A167614(n+1))+A033665(n)`
-/

namespace A263421.P12012292814189819407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263424 (A167614 (n + 1)).toNat + A033665 n

end

end A263421.P12012292814189819407

/-! ## A263421.P7688683369105391837

`A263424(A167614(n+1))+A036633(n)`
-/

namespace A263421.P7688683369105391837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263424 (A167614 (n + 1)).toNat + A036633 n

end

end A263421.P7688683369105391837

/-! ## A263421.P9677461603674840627

`A263424(A167614(n+1))+A045887(n)`
-/

namespace A263421.P9677461603674840627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263424 (A167614 (n + 1)).toNat + A045887 n

end

end A263421.P9677461603674840627

/-! ## A263421.P16592928831292590353

`A263424(A167614(n+1))+A061649(n)`
-/

namespace A263421.P16592928831292590353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263424 (A167614 (n + 1)).toNat + A061649 n

end

end A263421.P16592928831292590353

/-!
# A263422: Number of nX4 arrays of permutations of 0..n*4-1 with each element moved a city block distance of 0 or 2.

The programs for A263422, there is no canonical definition to state claims against.
-/

/-! ## A263422.P9379613677230263815

`A263424(A374004(n+1))`
-/

namespace A263422.P9379613677230263815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263424 (A374004 (n + 1)).toNat

end

end A263422.P9379613677230263815

/-! ## A263422.P14411137157215652026

`A263424(A141214(n)+7)`
-/

namespace A263422.P14411137157215652026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263424 (A141214 n + 7).toNat

end

end A263422.P14411137157215652026

/-! ## A263422.P10310859060539317454

`A263424(A052905(n)+9)`
-/

namespace A263422.P10310859060539317454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263424 (A052905 n + 9).toNat

end

end A263422.P10310859060539317454

/-! ## A263422.P15751506962429987757

`A263424(A055999(n)+10)`
-/

namespace A263422.P15751506962429987757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263424 (A055999 n + 10).toNat

end

end A263422.P15751506962429987757

/-!
# A263423: Number of nX5 arrays of permutations of 0..n*5-1 with each element moved a city block distance of 0 or 2.

The programs for A263423, there is no canonical definition to state claims against.
-/

/-! ## A263423.P11078348508623475145

`A263424(A374005(n+1))`
-/

namespace A263423.P11078348508623475145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263424 (A374005 (n + 1)).toNat

end

end A263423.P11078348508623475145

/-! ## A263423.P5542211090299712697

`A263424(A167499(n+3))`
-/

namespace A263423.P5542211090299712697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263424 (A167499 (n + 3)).toNat

end

end A263423.P5542211090299712697

/-! ## A263423.P18059511773144932768

`A263424(A155212(n)+13)`
-/

namespace A263423.P18059511773144932768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263424 (A155212 n + 13).toNat

end

end A263423.P18059511773144932768

/-!
# A263424: T(n,k)=Number of nXk arrays of permutations of 0..n*k-1 with each element moved a city block distance of 0 or 2.

The programs for A263424, there is no canonical definition to state claims against.
-/

/-! ## A263424.P5662271136364037343

`A071364((6*n)^floor(n/3)+1)^floor(n/3)`
-/

namespace A263424.P5662271136364037343
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A071364 (SequenceMachineLib.roundAway ((6 * n : ℚ) ^ (⌊(n : ℚ) / 3⌋ : ℤ) + 1)).toNat : ℚ) ^ (⌊(n : ℚ) / 3⌋ : ℤ)

end

end A263424.P5662271136364037343

/-! ## A263424.P10992259623733428435

`A323300(A107477(n)+1)`
-/

namespace A263424.P10992259623733428435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323300 (A107477 n + 1).toNat

end

end A263424.P10992259623733428435

/-! ## A263424.P11735011367037668058

`A307139(A339490(n+1))`
-/

namespace A263424.P11735011367037668058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307139 (A339490 (n + 1)).toNat

end

end A263424.P11735011367037668058

/-! ## A263424.P4580191143438583497

`A375603(A038202(n+5))`
-/

namespace A263424.P4580191143438583497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375603 (A038202 (n + 5)).toNat

end

end A263424.P4580191143438583497

/-! ## A263424.P3360816042663986496

`gcd(36, A128581(A055786(n)))`
-/

namespace A263424.P3360816042663986496
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 36 (A128581 (A055786 n).toNat)

end

end A263424.P3360816042663986496

/-!
# A263425: Number of tilings of an 2n X 2n square using tetrominoes of any shape.

The programs for A263425, there is no canonical definition to state claims against.
-/

/-! ## A263425.P17457203908895874270

`A230031(A033586(n))`
-/

namespace A263425.P17457203908895874270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230031 (A033586 n).toNat

end

end A263425.P17457203908895874270

/-!
# A263426: Permutation of the nonnegative integers: [4k+2, 4k+1, 4k, 4k+3, ...].

The programs for A263426, the canonical program `A263426.P8458699658269426220` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A263426 has offset 0).

The definition of A263426 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A263426.P8458699658269426220

`n+(1+(-1)^n)*(-1)^(n*(n+1)/2)`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A263426

/-- `n+(1+(-1)^n)*(-1)^(n*(n+1)/2)` -/
def P8458699658269426220.Spec : Prop :=
  ∀ n, P8458699658269426220.a n = (A263426 n : ℝ)

end A263426

/-! ## A263426.P9587626717197079768

`xor(n, and(2, gcd(2, n)))`
-/

namespace A263426.P9587626717197079768
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (Nat.land 2 (Nat.gcd 2 n))

end

end A263426.P9587626717197079768

namespace A263426

/-- `xor(n, and(2, gcd(2, n)))` -/
def P9587626717197079768.Spec : Prop :=
  ∀ n, (P9587626717197079768.a n : ℤ) = A263426 n

end A263426

/-! ## A263426.P3297631755753913893

`xor(n, (-1)^n+1)`
-/

namespace A263426.P3297631755753913893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) ((-1) ^ n + 1)

end

end A263426.P3297631755753913893

namespace A263426

/-- `xor(n, (-1)^n+1)` -/
def P3297631755753913893.Spec : Prop :=
  ∀ n, P3297631755753913893.a n = A263426 n

end A263426

/-! ## A263426.P12059639308749865439

`Δ[and(2, n+1)+C(n, 2)]`
-/

namespace A263426.P12059639308749865439
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 2 (n + 1) + Nat.choose n 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A263426.P12059639308749865439

namespace A263426

/-- `Δ[and(2, n+1)+C(n, 2)]` -/
def P12059639308749865439.Spec : Prop :=
  ∀ n, P12059639308749865439.a n = A263426 n

end A263426

/-! ## A263426.P6826557079226808275

`Δ[C(n, 2)-and(2, n-1)]`
-/

namespace A263426.P6826557079226808275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose n 2 : ℤ) - Int.land 2 ((n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A263426.P6826557079226808275

namespace A263426

/-- `Δ[C(n, 2)-and(2, n-1)]` -/
def P6826557079226808275.Spec : Prop :=
  ∀ n, P6826557079226808275.a n = A263426 n

end A263426

/-! ## A263426.P3134657279275755258

`∑[2-a(n-2)]` with `a(0)=2, a(1)=-1, a(2)=-1`
-/

namespace A263426.P3134657279275755258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, -1, -1] fun n f1 =>
  2 - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A263426.P3134657279275755258

namespace A263426

/-- `∑[2-a(n-2)]` -/
def P3134657279275755258.Spec : Prop :=
  ∀ n, P3134657279275755258.a n = A263426 n

end A263426

/-! ## A263426.P16441884609959034748

`ogf((2-3x+2x^2+x^3)/(1-2x+2x^2-2x^3+x^4))`
-/

namespace A263426.P16441884609959034748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -3, 2, 1] [1, -2, 2, -2, 1] n

end

end A263426.P16441884609959034748

namespace A263426

/-- `ogf((2-3x+2x^2+x^3)/(1-2x+2x^2-2x^3+x^4))` -/
def P16441884609959034748.Spec : Prop :=
  ∀ n, P16441884609959034748.a n = A263426 n

end A263426

/-! ## A263426.P7572357782504410186

`floor(2*(n-1)-a(n-2))` with `a(0)=2, a(1)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A263426.P7572357782504410186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 1] fun n a =>
  2 * ((n : ℤ) - 1) - a (n - 2)

end

end A263426.P7572357782504410186

namespace A263426

/-- `floor(2*(n-1)-a(n-2))` -/
def P7572357782504410186.Spec : Prop :=
  ∀ n, P7572357782504410186.a n = A263426 n

end A263426

/-! ## A263426.P13685412267355816411

`floor(n-(a(n-2)+2)+n)` with `a(0)=2, a(1)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A263426.P13685412267355816411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 1] fun n a =>
  (n : ℤ) - (a (n - 2) + 2) + (n : ℤ)

end

end A263426.P13685412267355816411

namespace A263426

/-- `floor(n-(a(n-2)+2)+n)` -/
def P13685412267355816411.Spec : Prop :=
  ∀ n, P13685412267355816411.a n = A263426 n

end A263426

/-! ## A263426.P4739707223077227519

`floor(n-(2-(n-a(n-2))))` with `a(0)=2, a(1)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A263426.P4739707223077227519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 1] fun n a =>
  (n : ℤ) - (2 - ((n : ℤ) - a (n - 2)))

end

end A263426.P4739707223077227519

namespace A263426

/-- `floor(n-(2-(n-a(n-2))))` -/
def P4739707223077227519.Spec : Prop :=
  ∀ n, P4739707223077227519.a n = A263426 n

end A263426

/-! ## A263426.P11176264457532606323

`A159966(xor(2, n))`
-/

namespace A263426.P11176264457532606323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159966 (Nat.xor 2 n)

end

end A263426.P11176264457532606323

namespace A263426

/-- `A159966(xor(2, n))` -/
def P11176264457532606323.Spec : Prop :=
  ∀ n, P11176264457532606323.a n = A263426 n

end A263426

/-! ## A263426.P3867152729039434645

`A004443(a(n-1)+1)` with `a(0)=2`
-/

namespace A263426.P3867152729039434645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A004443 (a (n - 1) + 1).toNat

end

end A263426.P3867152729039434645

namespace A263426

/-- `A004443(a(n-1)+1)` -/
def P3867152729039434645.Spec : Prop :=
  ∀ n, P3867152729039434645.a n = A263426 n

end A263426

/-! ## A263426.P17843975462159846430

`A159966(A004443(n))`
-/

namespace A263426.P17843975462159846430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159966 (A004443 n).toNat

end

end A263426.P17843975462159846430

namespace A263426

/-- `A159966(A004443(n))` -/
def P17843975462159846430.Spec : Prop :=
  ∀ n, P17843975462159846430.a n = A263426 n

end A263426

/-! ## A263426.P14305454536325118371

`A263313(A004444(n))`
-/

namespace A263426.P14305454536325118371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263313 (A004444 n).toNat

end

end A263426.P14305454536325118371

namespace A263426

/-- `A263313(A004444(n))` -/
def P14305454536325118371.Spec : Prop :=
  ∀ n, P14305454536325118371.a n = A263426 n

end A263426

/-! ## A263426.P18043133568421235195

`A004442(A263313(n))`
-/

namespace A263426.P18043133568421235195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A263313 n).toNat

end

end A263426.P18043133568421235195

namespace A263426

/-- `A004442(A263313(n))` -/
def P18043133568421235195.Spec : Prop :=
  ∀ n, P18043133568421235195.a n = A263426 n

end A263426

/-! ## A263426.P3983490683739716112

`A004442(A159966(A004442(n)))`
-/

namespace A263426.P3983490683739716112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A159966 (A004442 n).toNat).toNat

end

end A263426.P3983490683739716112

namespace A263426

/-- `A004442(A159966(A004442(n)))` -/
def P3983490683739716112.Spec : Prop :=
  ∀ n, P3983490683739716112.a n = A263426 n

end A263426

/-! ## A263426.P15063832857153779793

`Δ[n²-xor(1, ∑[n])]`
-/

namespace A263426.P15063832857153779793
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - (Nat.xor 1 (∑ j ∈ Finset.range (n + 1), f2 j) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A263426.P15063832857153779793

namespace A263426

/-- `Δ[n²-xor(1, ∑[n])]` -/
def P15063832857153779793.Spec : Prop :=
  ∀ n, P15063832857153779793.a n = A263426 n

end A263426

/-! ## A263426.P6241174726840435386

`Δ[∑[n]-or(2, n+1)]`
-/

namespace A263426.P6241174726840435386
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - (Nat.lor 2 (n + 1) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A263426.P6241174726840435386

namespace A263426

/-- `Δ[∑[n]-or(2, n+1)]` -/
def P6241174726840435386.Spec : Prop :=
  ∀ n, P6241174726840435386.a n = A263426 n

end A263426

/-! ## A263426.P6784557495734270678

`Δ[∑[n-1]+and(2, n+1)]`
-/

namespace A263426.P6784557495734270678
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (Nat.land 2 (n + 1) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A263426.P6784557495734270678

namespace A263426

/-- `Δ[∑[n-1]+and(2, n+1)]` -/
def P6784557495734270678.Spec : Prop :=
  ∀ n, P6784557495734270678.a n = A263426 n

end A263426

/-! ## A263426.P4905415813841384422

`∑[A084100(n+1)+1]`
-/

namespace A263426.P4905415813841384422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084100 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A263426.P4905415813841384422

namespace A263426

/-- `∑[A084100(n+1)+1]` -/
def P4905415813841384422.Spec : Prop :=
  ∀ n, P4905415813841384422.a n = A263426 n

end A263426

/-!
# A263428: Triangle read by rows giving successive states of cellular automaton generated by "Rule 3" initiated with a single ON (black) cell.

The programs for A263428, the canonical program `A263428.P6407784587852814303` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A263428 has offset 0).

The definition of A263428 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A263428.P6407784587852814303

`A266459(n)*A266605(n)`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A263428

/-- `A266459(n)*A266605(n)` -/
def P6407784587852814303.Spec : Prop :=
  ∀ n, P6407784587852814303.a n = A263428 n

theorem P6407784587852814303.correct : P6407784587852814303.Spec := by
  intro n
  simp only [A263428]

end A263428

/-! ## A263428.P16949111099267768607

`A266605(n)*A266716(n)`
-/

namespace A263428.P16949111099267768607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266605 n * A266716 n

end

end A263428.P16949111099267768607

namespace A263428

/-- `A266605(n)*A266716(n)` -/
def P16949111099267768607.Spec : Prop :=
  ∀ n, P16949111099267768607.a n = A263428 n

end A263428

/-! ## A263428.P10769707500258603797

`A260552(A020703(n+1)-1)`
-/

namespace A263428.P10769707500258603797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260552 (A020703 (n + 1) - 1).toNat

end

end A263428.P10769707500258603797

namespace A263428

/-- `A260552(A020703(n+1)-1)` -/
def P10769707500258603797.Spec : Prop :=
  ∀ n, P10769707500258603797.a n = A263428 n

end A263428

/-! ## A263428.P5353779945233429572

`A266174(A170949(n+1)-1)`
-/

namespace A263428.P5353779945233429572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266174 (A170949 (n + 1) - 1).toNat

end

end A263428.P5353779945233429572

namespace A263428

/-- `A266174(A170949(n+1)-1)` -/
def P5353779945233429572.Spec : Prop :=
  ∀ n, P5353779945233429572.a n = A263428 n

end A263428

/-! ## A263428.P16055787571303202890

`and(A266459(n)+A005843(n), A266605(n))`
-/

namespace A263428.P16055787571303202890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A266459 n + A005843 n) (A266605 n)

end

end A263428.P16055787571303202890

namespace A263428

/-- `and(A266459(n)+A005843(n), A266605(n))` -/
def P16055787571303202890.Spec : Prop :=
  ∀ n, P16055787571303202890.a n = A263428 n

end A263428

/-! ## A263428.P8917553299168514949

`and(A266605(n)+A266073(n), A266716(n))`
-/

namespace A263428.P8917553299168514949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A266605 n + A266073 n) (A266716 n)

end

end A263428.P8917553299168514949

namespace A263428

/-- `and(A266605(n)+A266073(n), A266716(n))` -/
def P8917553299168514949.Spec : Prop :=
  ∀ n, P8917553299168514949.a n = A263428 n

end A263428

/-! ## A263428.P15481272496188678636

`and(A266459(n), A266605(n))^A007088(n)`
-/

namespace A263428.P15481272496188678636
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land (A266459 n) (A266605 n) : ℚ) ^ (A007088 n : ℤ)

end

end A263428.P15481272496188678636

namespace A263428

/-- `and(A266459(n), A266605(n))^A007088(n)` -/
def P15481272496188678636.Spec : Prop :=
  ∀ n, P15481272496188678636.a n = (A263428 n : ℚ)

end A263428

/-! ## A263428.P5074688423474757635

`and(A266605(n), A266716(n))^A007088(n)`
-/

namespace A263428.P5074688423474757635
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land (A266605 n) (A266716 n) : ℚ) ^ (A007088 n : ℤ)

end

end A263428.P5074688423474757635

namespace A263428

/-- `and(A266605(n), A266716(n))^A007088(n)` -/
def P5074688423474757635.Spec : Prop :=
  ∀ n, P5074688423474757635.a n = (A263428 n : ℚ)

end A263428

/-! ## A263428.P13084267556944228469

`and(A266459(n), A266605(n))^A014417(n)`
-/

namespace A263428.P13084267556944228469
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land (A266459 n) (A266605 n) : ℚ) ^ (A014417 n : ℤ)

end

end A263428.P13084267556944228469

namespace A263428

/-- `and(A266459(n), A266605(n))^A014417(n)` -/
def P13084267556944228469.Spec : Prop :=
  ∀ n, P13084267556944228469.a n = (A263428 n : ℚ)

end A263428

/-! ## A263428.P2107962297208438131

`1-A266605(A049068(n+1)*A266605(n))`
-/

namespace A263428.P2107962297208438131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A266605 (A049068 (n + 1) * A266605 n).toNat

end

end A263428.P2107962297208438131

namespace A263428

/-- `1-A266605(A049068(n+1)*A266605(n))` -/
def P2107962297208438131.Spec : Prop :=
  ∀ n, P2107962297208438131.a n = A263428 n

end A263428

/-! ## A263428.P3642260635558207277

`and(A266459(n), A266605(n))^A170949(n+1)`
-/

namespace A263428.P3642260635558207277
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land (A266459 n) (A266605 n) : ℚ) ^ (A170949 (n + 1) : ℤ)

end

end A263428.P3642260635558207277

namespace A263428

/-- `and(A266459(n), A266605(n))^A170949(n+1)` -/
def P3642260635558207277.Spec : Prop :=
  ∀ n, P3642260635558207277.a n = (A263428 n : ℚ)

end A263428

/-! ## A263428.P16270262300829966249

`and(A266459(n), A267264(2*(n+1)))`
-/

namespace A263428.P16270262300829966249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A266459 n) (A267264 (2 * (n + 1)))

end

end A263428.P16270262300829966249

namespace A263428

/-- `and(A266459(n), A267264(2*(n+1)))` -/
def P16270262300829966249.Spec : Prop :=
  ∀ n, P16270262300829966249.a n = A263428 n

end A263428

/-!
# A263430: a(n) = Product_{k=0..n} (4*k+1)^(n-k).

The programs for A263430, there is no canonical definition to state claims against.
-/

/-! ## A263430.P5076939324932939478

`∏[∏[a(n-1)+4]]` with `a(0)=1, a(1)=1`
-/

namespace A263430.P5076939324932939478
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f2 =>
  f2 (n - 1) + 4

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A263430.P5076939324932939478

/-! ## A263430.P5548444999184650953

`∏[(4*n-3)*a(n-1)]` with `a(0)=1`
-/

namespace A263430.P5548444999184650953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  ((4 * n : ℤ) - 3) * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A263430.P5548444999184650953

/-! ## A263430.P18174361838260858547

`∏[∏[abs(2*n+n-2)+n-1]]`
-/

namespace A263430.P18174361838260858547
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(2 * n : ℤ) + ((n : ℤ) - 2)| + ((n : ℤ) - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A263430.P18174361838260858547

/-! ## A263430.P15147999810829009077

`abs(∏[-A007696(n)])`
-/

namespace A263430.P15147999810829009077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A007696 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∏ j ∈ Finset.range (n + 1), f1 j|

end

end A263430.P15147999810829009077

/-! ## A263430.P17573478996483285994

`a(n-1)*A290319(∑[n])` with `a(0)=1`
-/

namespace A263430.P17573478996483285994
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A290319 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A263430.P17573478996483285994

/-!
# A263431: Near-repdigit primes with only digits 9 and a single 8 in decimal expansion.

The programs for A263431, there is no canonical definition to state claims against.
-/

/-! ## A263431.P693760080164537132

`p?[A136874(n+1)-1]`
-/

namespace A263431.P693760080164537132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136874 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A263431.P693760080164537132

/-!
# A263432: Number of partitions of n into divisors of n with at most one 1.

The programs for A263432, there is no canonical definition to state claims against.
-/

/-! ## A263432.P4145131056155027465

`A240572(A007425(n+1)%A179860(n+1))`
-/

namespace A263432.P4145131056155027465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240572 (Int.tmod (A007425 (n + 1)) (A179860 (n + 1))).toNat

end

end A263432.P4145131056155027465

/-! ## A263432.P8118885564731677458

`A375625(∏{e}[n+1, #+1])%A325338(3*n+4)`
-/

namespace A263432.P8118885564731677458
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A375625 (∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1))) (A325338 (3 * n + 4))

end

end A263432.P8118885564731677458

/-! ## A263432.P13687592388658425816

`A188495(A070824(n+1)+1)%A144222(n+5)`
-/

namespace A263432.P13687592388658425816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A188495 (A070824 (n + 1) + 1).toNat) (A144222 (n + 5))

end

end A263432.P13687592388658425816

/-! ## A263432.P15898838499576302606

`A059973(A000005(n+1))+A025456(A126683(n))`
-/

namespace A263432.P15898838499576302606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059973 (A000005 (n + 1)).toNat + A025456 (A126683 n).toNat

end

end A263432.P15898838499576302606

/-! ## A263432.P8945674243013172893

`A035382(A007425(n+1)-A141727(A094444(n)))`
-/

namespace A263432.P8945674243013172893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035382 (A007425 (n + 1) - A141727 (A094444 n).toNat).toNat

end

end A263432.P8945674243013172893

/-!
# A263433: Expansion of f(x, x) * f(x^2, x^4)^2 in powers of x where f(, ) is Ramanujan's general theta function.

The programs for A263433, there is no canonical definition to state claims against.
-/

/-! ## A263433.P2640812531326475952

`A261426(2*n)`
-/

namespace A263433.P2640812531326475952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261426 (2 * n)

end

end A263433.P2640812531326475952

/-! ## A263433.P6717570685885531586

`A045832(6*n+1)`
-/

namespace A263433.P6717570685885531586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045832 (6 * n + 1)

end

end A263433.P6717570685885531586

/-! ## A263433.P14784889498099012140

`xor(1, xor(1, A261426(n+n)))`
-/

namespace A263433.P14784889498099012140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (Int.xor 1 (A261426 (n + n)))

end

end A263433.P14784889498099012140

/-! ## A263433.P13135174032058411496

`A261444(4*n)`
-/

namespace A263433.P13135174032058411496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261444 (4 * n)

end

end A263433.P13135174032058411496

/-! ## A263433.P2527396605491573158

`A263527(4*n)`
-/

namespace A263433.P2527396605491573158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263527 (4 * n)

end

end A263433.P2527396605491573158

/-! ## A263433.P1182550114275669265

`A329957(4*n)`
-/

namespace A263433.P1182550114275669265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329957 (4 * n)

end

end A263433.P1182550114275669265

/-! ## A263433.P9679840993598867866

`A261426(n+n)+A000122(A000040(n+1))`
-/

namespace A263433.P9679840993598867866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261426 (n + n) + A000122 (A000040 (n + 1)).toNat

end

end A263433.P9679840993598867866

/-! ## A263433.P3396179773254222302

`A263444(A017545(n))`
-/

namespace A263433.P3396179773254222302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263444 (A017545 n).toNat

end

end A263433.P3396179773254222302

/-!
# A263434: Number of (n+1) X (1+1) 0..4 arrays with each row and column divisible by 13, read as a base-5 number with top and left being the most significant digits.

The programs for A263434, there is no canonical definition to state claims against.
-/

/-! ## A263434.P17056180531198757779

`A263439(∑[n]+1)`
-/

namespace A263434.P17056180531198757779
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263439 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A263434.P17056180531198757779

/-! ## A263434.P1920688956566351837

`record[A010054(n)*A263439(n+1)]`
-/

namespace A263434.P1920688956566351837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A263439 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263434.P1920688956566351837

/-! ## A263434.P12335541949682595327

`record[A263439(n+1)/A156740(n)]`
-/

namespace A263434.P12335541949682595327
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A263439 (n + 1) : ℚ) / (A156740 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263434.P12335541949682595327

/-! ## A263434.P12633873074849887926

`record[gcd(A048993(n), A263439(n+1))]`
-/

namespace A263434.P12633873074849887926
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A048993 n) (A263439 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263434.P12633873074849887926

/-! ## A263434.P17242569356234680940

`A263439(A000217(n+1))%A000051(n)`
-/

namespace A263434.P17242569356234680940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A263439 (A000217 (n + 1)).toNat) (A000051 n)

end

end A263434.P17242569356234680940

/-!
# A263435: Number of (n+1)X(2+1) 0..4 arrays with each row and column divisible by 13, read as a base-5 number with top and left being the most significant digits.

The programs for A263435, there is no canonical definition to state claims against.
-/

/-! ## A263435.P18083436137340732024

`A263439(∑[n+1]+2)`
-/

namespace A263435.P18083436137340732024
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263439 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A263435.P18083436137340732024

/-! ## A263435.P13497242772811715160

`record[A263439(A000096(val(n+1, 2)+1))]`
-/

namespace A263435.P13497242772811715160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263439 (A000096 (SequenceMachineLib.valuation (n + 1) 2 + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263435.P13497242772811715160

/-! ## A263435.P2643523911219540928

`record[A263439(n+2)%A096334(n+3)]`
-/

namespace A263435.P2643523911219540928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A263439 (n + 2)) (A096334 (n + 3))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263435.P2643523911219540928

/-! ## A263435.P1593333581061648267

`record[A263439(A134519(n+1)+A008619(n))]`
-/

namespace A263435.P1593333581061648267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263439 (A134519 (n + 1) + A008619 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263435.P1593333581061648267

/-! ## A263435.P1815731188346670344

`A263439(A167614(n+1)-4)+A014083(n)`
-/

namespace A263435.P1815731188346670344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263439 (A167614 (n + 1) - 4).toNat + A014083 n

end

end A263435.P1815731188346670344

/-!
# A263436: Number of (n+1)X(3+1) 0..4 arrays with each row and column divisible by 13, read as a base-5 number with top and left being the most significant digits.

The programs for A263436, there is no canonical definition to state claims against.
-/

/-! ## A263436.P17039680051489046401

`A263439(∑[n+2]+4)`
-/

namespace A263436.P17039680051489046401
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263439 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A263436.P17039680051489046401

/-! ## A263436.P712968122086323780

`A263439(A167614(n+1))+A014083(n)`
-/

namespace A263436.P712968122086323780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263439 (A167614 (n + 1)).toNat + A014083 n

end

end A263436.P712968122086323780

/-! ## A263436.P8651252263546471197

`A263439(A167614(n+1))+A180472(n)`
-/

namespace A263436.P8651252263546471197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263439 (A167614 (n + 1)).toNat + A180472 n

end

end A263436.P8651252263546471197

/-! ## A263436.P18260082178046071546

`A055642(n)*A263439(A167614(n+1))`
-/

namespace A263436.P18260082178046071546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 n * A263439 (A167614 (n + 1)).toNat

end

end A263436.P18260082178046071546

/-! ## A263436.P1160387919328957929

`lcm(A107336(n), A263439(A167614(n+1)))`
-/

namespace A263436.P1160387919328957929
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A107336 n) (A263439 (A167614 (n + 1)).toNat)

end

end A263436.P1160387919328957929

/-!
# A263437: Number of (n+1)X(4+1) 0..4 arrays with each row and column divisible by 13, read as a base-5 number with top and left being the most significant digits.

The programs for A263437, there is no canonical definition to state claims against.
-/

/-! ## A263437.P1494967443761940126

`A263439(∑[n+3]+7)`
-/

namespace A263437.P1494967443761940126
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263439 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A263437.P1494967443761940126

/-!
# A263438: Number of (n+1)X(5+1) 0..4 arrays with each row and column divisible by 13, read as a base-5 number with top and left being the most significant digits.

The programs for A263438, there is no canonical definition to state claims against.
-/

/-! ## A263438.P6288841099980081274

`A263439(A374005(n+1))`
-/

namespace A263438.P6288841099980081274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263439 (A374005 (n + 1)).toNat

end

end A263438.P6288841099980081274

/-! ## A263438.P7778990770844440407

`A263439(Δ[A023545(n+1)])`
-/

namespace A263438.P7778990770844440407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263439 (f1 (n + 1) - f1 n).toNat

end

end A263438.P7778990770844440407

/-!
# A263440: Number of nX2 arrays of permutations of 0..n*2-1 with each element moved a city block distance of 0 or 3.

The programs for A263440, there is no canonical definition to state claims against.
-/

/-! ## A263440.P6133086694564886904

`A263442(∑[n+1]+2)`
-/

namespace A263440.P6133086694564886904
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263442 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A263440.P6133086694564886904

/-! ## A263440.P12415316706677197538

`A000027(A263442(∑[n+2]))`
-/

namespace A263440.P12415316706677197538
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A263442 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A263440.P12415316706677197538

/-! ## A263440.P264660934752168597

`A263442(A000096(n+1))*A368025(n)`
-/

namespace A263440.P264660934752168597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263442 (A000096 (n + 1)).toNat * A368025 n

end

end A263440.P264660934752168597

/-!
# A263441: Number of nX3 arrays of permutations of 0..n*3-1 with each element moved a city block distance of 0 or 3.

The programs for A263441, there is no canonical definition to state claims against.
-/

/-! ## A263441.P486555325811200357

`A263442(∑[n+2]+4)`
-/

namespace A263441.P486555325811200357
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263442 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A263441.P486555325811200357

/-! ## A263441.P17167852001237557966

`record[A263442(∑[A257023(n)])]`
-/

namespace A263441.P17167852001237557966
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257023 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263442 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263441.P17167852001237557966

/-! ## A263441.P14572542247531900311

`record[A263442(record[A035486(n+1)])]`
-/

namespace A263441.P14572542247531900311
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035486 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263442 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263441.P14572542247531900311

/-!
# A263442: T(n,k)=Number of nXk arrays of permutations of 0..n*k-1 with each element moved a city block distance of 0 or 3.

The programs for A263442, there is no canonical definition to state claims against.
-/

/-! ## A263442.P13363189590407888025

`A122066(A299465(n+1))^A027868(n)`
-/

namespace A263442.P13363189590407888025
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A122066 (A299465 (n + 1)).toNat : ℚ) ^ (A027868 n : ℤ)

end

end A263442.P13363189590407888025

/-! ## A263442.P8202956163108383205

`A122066(A299465(n+1))^A108611(n)`
-/

namespace A263442.P8202956163108383205
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A122066 (A299465 (n + 1)).toNat : ℚ) ^ (A108611 n : ℤ)

end

end A263442.P8202956163108383205

/-! ## A263442.P17916481561549576165

`A187243(A284165(n+1)%A217258(n+1))`
-/

namespace A263442.P17916481561549576165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187243 (Int.tmod (A284165 (n + 1)) (A217258 (n + 1))).toNat

end

end A263442.P17916481561549576165

/-!
# A263445: a(n) = (2n+1)*(n+1)!*Bernoulli(2n).

The programs for A263445, there is no canonical definition to state claims against.
-/

/-! ## A263445.P7229347997911201295

`A050925(2*n)/A050932(2*n)*A000142(n+1)`
-/

namespace A263445.P7229347997911201295
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A050925 (2 * n) : ℚ) / (A050932 (2 * n) : ℚ) * (A000142 (n + 1) : ℚ)

end

end A263445.P7229347997911201295

/-! ## A263445.P8150986807367726096

`A168136(n)/A000108(n)`
-/

namespace A263445.P8150986807367726096
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A168136 n : ℚ) / (A000108 n : ℚ)

end

end A263445.P8150986807367726096

/-! ## A263445.P8654275291844773565

`A168136(n)/A076038(A000096(n))`
-/

namespace A263445.P8654275291844773565
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A168136 n : ℚ) / (A076038 (A000096 n).toNat : ℚ)

end

end A263445.P8654275291844773565

/-! ## A263445.P15146422252103056564

`A000142(n+1)*A129825(2*n+1)/A000142(2*n)`
-/

namespace A263445.P15146422252103056564
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 (n + 1) * A129825 (2 * n + 1) : ℚ) / (A000142 (2 * n) : ℚ)

end

end A263445.P15146422252103056564

/-! ## A263445.P2882631706869095535

`A129814(2*n)/A000142(2*n)*A000142(n+1)`
-/

namespace A263445.P2882631706869095535
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A129814 (2 * n) : ℚ) / (A000142 (2 * n) : ℚ) * (A000142 (n + 1) : ℚ)

end

end A263445.P2882631706869095535

/-!
# A263447: Arrange the 26 sporadic simple groups in increasing order; a(n) = number of sporadic simple groups which are subquotients of the n-th largest sporadic simple group.

The programs for A263447, there is no canonical definition to state claims against.
-/

/-! ## A263447.P1974467241121749532

`A108731(n)+A108731(A242475(n))`
-/

namespace A263447.P1974467241121749532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108731 n + A108731 (A242475 n).toNat

end

end A263447.P1974467241121749532

/-!
# A263448: Primes that can be expressed as a sum of primes where no digit appears more than once.

The programs for A263448, there is no canonical definition to state claims against.
-/

/-! ## A263448.P5205181094664786982

`p?[xor(A001744(n+1), A194673(n))]`
-/

namespace A263448.P5205181094664786982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A001744 (n + 1)) (A194673 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A263448.P5205181094664786982

/-!
# A263449: Permutation of the natural numbers: [4k+1, 4k+4, 4k+3, 4k+2, ...].

The programs for A263449, the canonical program `A263449.P16267237293989036822` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A263449 has offset 0).

The definition of A263449 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A263449.P16267237293989036822

`n+1+(1-(-1)^n)*(-1)^(n*(n-1)/2)`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A263449

/-- `n+1+(1-(-1)^n)*(-1)^(n*(n-1)/2)` -/
def P16267237293989036822.Spec : Prop :=
  ∀ n, P16267237293989036822.a n = (A263449 n : ℝ)

end A263449

/-! ## A263449.P17173533295262235217

`-xor(n, 1-4/gcd(2, n))`
-/

namespace A263449.P17173533295262235217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor (n : ℤ) (SequenceMachineLib.roundAway (1 - 4 / (Nat.gcd 2 n : ℚ)))

end

end A263449.P17173533295262235217

namespace A263449

/-- `-xor(n, 1-4/gcd(2, n))` -/
def P17173533295262235217.Spec : Prop :=
  ∀ n, P17173533295262235217.a n = A263449 n

end A263449

/-! ## A263449.P10362440767294601671

`xor(1, and(4, (n+1)²)+n)`
-/

namespace A263449.P10362440767294601671
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (Nat.land 4 ((n + 1) ^ 2) + n)

end

end A263449.P10362440767294601671

namespace A263449

/-- `xor(1, and(4, (n+1)²)+n)` -/
def P10362440767294601671.Spec : Prop :=
  ∀ n, (P10362440767294601671.a n : ℤ) = A263449 n

end A263449

/-! ## A263449.P8096136164337148773

`-xor(n, gcd(4, 2*n)-5)`
-/

namespace A263449.P8096136164337148773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor (n : ℤ) ((Nat.gcd 4 (2 * n) : ℤ) - 5)

end

end A263449.P8096136164337148773

namespace A263449

/-- `-xor(n, gcd(4, 2*n)-5)` -/
def P8096136164337148773.Spec : Prop :=
  ∀ n, P8096136164337148773.a n = A263449 n

end A263449

/-! ## A263449.P10330126110173773230

`-xor(n, xor(1, n)-(n+2))`
-/

namespace A263449.P10330126110173773230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor (n : ℤ) ((Nat.xor 1 n : ℤ) - (n + 2 : ℤ))

end

end A263449.P10330126110173773230

namespace A263449

/-- `-xor(n, xor(1, n)-(n+2))` -/
def P10330126110173773230.Spec : Prop :=
  ∀ n, P10330126110173773230.a n = A263449 n

end A263449

/-! ## A263449.P5693287892462184931

`∑[2-a(n-2)]` with `a(0)=1, a(1)=3, a(2)=-1`
-/

namespace A263449.P5693287892462184931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 3, -1] fun n f1 =>
  2 - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A263449.P5693287892462184931

namespace A263449

/-- `∑[2-a(n-2)]` -/
def P5693287892462184931.Spec : Prop :=
  ∀ n, P5693287892462184931.a n = A263449 n

end A263449

/-! ## A263449.P13920013809504218809

`ogf((1+2x-3x^2+2x^3)/(1-2x+2x^2-2x^3+x^4))`
-/

namespace A263449.P13920013809504218809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, -3, 2] [1, -2, 2, -2, 1] n

end

end A263449.P13920013809504218809

namespace A263449

/-- `ogf((1+2x-3x^2+2x^3)/(1-2x+2x^2-2x^3+x^4))` -/
def P13920013809504218809.Spec : Prop :=
  ∀ n, P13920013809504218809.a n = A263449 n

end A263449

/-! ## A263449.P17005968466989700487

`abs(xor(n+1, 1-xor(n, n+1)))`
-/

namespace A263449.P17005968466989700487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (n + 1 : ℤ) (1 - (Nat.xor n (n + 1) : ℤ))|

end

end A263449.P17005968466989700487

namespace A263449

/-- `abs(xor(n+1, 1-xor(n, n+1)))` -/
def P17005968466989700487.Spec : Prop :=
  ∀ n, P17005968466989700487.a n = A263449 n

end A263449

/-! ## A263449.P4943535861167062447

`A092486(xor(2, n))`
-/

namespace A263449.P4943535861167062447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092486 (Nat.xor 2 n)

end

end A263449.P4943535861167062447

namespace A263449

/-- `A092486(xor(2, n))` -/
def P4943535861167062447.Spec : Prop :=
  ∀ n, P4943535861167062447.a n = A263449 n

end A263449

/-! ## A263449.P18085076833689595218

`A092486(A004443(n))`
-/

namespace A263449.P18085076833689595218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092486 (A004443 n).toNat

end

end A263449.P18085076833689595218

namespace A263449

/-- `A092486(A004443(n))` -/
def P18085076833689595218.Spec : Prop :=
  ∀ n, P18085076833689595218.a n = A263449 n

end A263449

/-! ## A263449.P7593980697857837365

`A056699(A116966(n))`
-/

namespace A263449.P7593980697857837365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056699 (A116966 n).toNat

end

end A263449.P7593980697857837365

namespace A263449

/-- `A056699(A116966(n))` -/
def P7593980697857837365.Spec : Prop :=
  ∀ n, P7593980697857837365.a n = A263449 n

end A263449

/-! ## A263449.P12604175002489751821

`A256008(A092486(n))`
-/

namespace A263449.P12604175002489751821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256008 (A092486 n).toNat

end

end A263449.P12604175002489751821

namespace A263449

/-- `A256008(A092486(n))` -/
def P12604175002489751821.Spec : Prop :=
  ∀ n, P12604175002489751821.a n = A263449 n

end A263449

/-! ## A263449.P13483365932857339978

`A056699(A080412(n)+1)`
-/

namespace A263449.P13483365932857339978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056699 (A080412 n + 1).toNat

end

end A263449.P13483365932857339978

namespace A263449

/-- `A056699(A080412(n)+1)` -/
def P13483365932857339978.Spec : Prop :=
  ∀ n, P13483365932857339978.a n = A263449 n

end A263449

/-! ## A263449.P8932620461498720226

`A133256(A056699(n+1))`
-/

namespace A263449.P8932620461498720226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133256 (A056699 (n + 1)).toNat

end

end A263449.P8932620461498720226

namespace A263449

/-- `A133256(A056699(n+1))` -/
def P8932620461498720226.Spec : Prop :=
  ∀ n, P8932620461498720226.a n = A263449 n

end A263449

/-! ## A263449.P14050900588049549051

`A067060(A298364(n+1))`
-/

namespace A263449.P14050900588049549051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067060 (A298364 (n + 1)).toNat

end

end A263449.P14050900588049549051

namespace A263449

/-- `A067060(A298364(n+1))` -/
def P14050900588049549051.Spec : Prop :=
  ∀ n, P14050900588049549051.a n = A263449 n

end A263449

/-! ## A263449.P5148262152557646742

`A256008(A159966(n+1))`
-/

namespace A263449.P5148262152557646742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256008 (A159966 (n + 1)).toNat

end

end A263449.P5148262152557646742

namespace A263449

/-- `A256008(A159966(n+1))` -/
def P5148262152557646742.Spec : Prop :=
  ∀ n, P5148262152557646742.a n = A263449 n

end A263449

/-! ## A263449.P5247017505303655697

`A284307(A133256(n+1))`
-/

namespace A263449.P5247017505303655697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284307 (A133256 (n + 1)).toNat

end

end A263449.P5247017505303655697

namespace A263449

/-- `A284307(A133256(n+1))` -/
def P5247017505303655697.Spec : Prop :=
  ∀ n, P5247017505303655697.a n = A263449 n

end A263449

/-! ## A263449.P811404752543592156

`A116966(A284307(n+1)-1)`
-/

namespace A263449.P811404752543592156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116966 (A284307 (n + 1) - 1).toNat

end

end A263449.P811404752543592156

namespace A263449

/-- `A116966(A284307(n+1)-1)` -/
def P811404752543592156.Spec : Prop :=
  ∀ n, P811404752543592156.a n = A263449 n

end A263449

/-! ## A263449.P9576645570394634089

`xor(A021913(n), A284307(n+1))`
-/

namespace A263449.P9576645570394634089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A021913 n) (A284307 (n + 1))

end

end A263449.P9576645570394634089

namespace A263449

/-- `xor(A021913(n), A284307(n+1))` -/
def P9576645570394634089.Spec : Prop :=
  ∀ n, P9576645570394634089.a n = A263449 n

end A263449

/-! ## A263449.P8880305282012314636

`Δ[∑[n]+and(2, n)]`
-/

namespace A263449.P8880305282012314636
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + Nat.land 2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A263449.P8880305282012314636

namespace A263449

/-- `Δ[∑[n]+and(2, n)]` -/
def P8880305282012314636.Spec : Prop :=
  ∀ n, P8880305282012314636.a n = A263449 n

end A263449

/-!
# A263450: Smallest integer k>0 such that there is at least one zero in the decimal representation of prime(n)^k.

The programs for A263450, there is no canonical definition to state claims against.
-/

/-! ## A263450.P1014574063590681422

`A071531(Δ[A007504(n)])`
-/

namespace A263450.P1014574063590681422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071531 (f1 (n + 1) - f1 n).toNat

end

end A263450.P1014574063590681422

/-! ## A263450.P5519044849414787603

`A071531(A000040(n+1))`
-/

namespace A263450.P5519044849414787603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071531 (A000040 (n + 1)).toNat

end

end A263450.P5519044849414787603

/-! ## A263450.P6346777329178093495

`A071531(A008578(n+2))`
-/

namespace A263450.P6346777329178093495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071531 (A008578 (n + 2)).toNat

end

end A263450.P6346777329178093495

/-! ## A263450.P8223835466194408599

`A071531(A182986(n+2))`
-/

namespace A263450.P8223835466194408599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071531 (A182986 (n + 2)).toNat

end

end A263450.P8223835466194408599

/-! ## A263450.P10582260163907685725

`A071531(eq[1, A003415(n)])`
-/

namespace A263450.P10582260163907685725
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071531 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A263450.P10582260163907685725

/-! ## A263450.P12279014315596041935

`A071531(eq[1, A032741(n)])`
-/

namespace A263450.P12279014315596041935
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071531 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A263450.P12279014315596041935

/-! ## A263450.P9369981089416812120

`A071531(sqrt(A001248(n+1)))`
-/

namespace A263450.P9369981089416812120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071531 (SequenceMachineLib.roundAway (Real.sqrt (A001248 (n + 1) : ℝ))).toNat

end

end A263450.P9369981089416812120

/-! ## A263450.P720947617324373834

`A071531(record[A006530(n+2)])`
-/

namespace A263450.P720947617324373834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071531 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A263450.P720947617324373834

/-! ## A263450.P4062602583132706564

`A071531(record[A014963(n+2)])`
-/

namespace A263450.P4062602583132706564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071531 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A263450.P4062602583132706564

/-! ## A263450.P17609515432787018608

`A071531(record[A020639(n+2)])`
-/

namespace A263450.P17609515432787018608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071531 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A263450.P17609515432787018608

/-! ## A263450.P6962525043242593036

`A071531(record[A000010(n+1)+1])`
-/

namespace A263450.P6962525043242593036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071531 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A263450.P6962525043242593036

/-! ## A263450.P10398503952409802476

`A071531(eq[1, A001222(n+1)]+1)`
-/

namespace A263450.P10398503952409802476
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071531 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A263450.P10398503952409802476

/-!
# A263451: a(n) is the largest anagram of 2*a(n-1), a(1)=1.

The programs for A263451, there is no canonical definition to state claims against.
-/

/-! ## A263451.P14387842765441264947

`A333302(n+2)/2`
-/

namespace A263451.P14387842765441264947
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A333302 (n + 2) : ℚ) / 2

end

end A263451.P14387842765441264947

/-! ## A263451.P6581860118684302635

`a(n-1)*ratio[A333302(n+1)]` with `a(0)=1`
-/

namespace A263451.P6581860118684302635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333302 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * ((f1 (n + 1) : ℚ) / (f1 n : ℚ))

end

end A263451.P6581860118684302635

/-! ## A263451.P15229574043864903144

`A004186(2*a(n-1))` with `a(0)=1`
-/

namespace A263451.P15229574043864903144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A004186 (2 * a (n - 1)).toNat

end

end A263451.P15229574043864903144

/-! ## A263451.P13232291368996651535

`A004186(a(n-1)-ceil(-a(n-1)))` with `a(0)=1`

`ceil` is left out, it is the identity on integers.
-/

namespace A263451.P13232291368996651535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A004186 (a (n - 1) - (-a (n - 1))).toNat

end

end A263451.P13232291368996651535

/-! ## A263451.P10947798878612873333

`A004186(1-floor(1-a(n-1)-a(n-1)))` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A263451.P10947798878612873333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A004186 (1 - (1 - a (n - 1) - a (n - 1))).toNat

end

end A263451.P10947798878612873333

/-!
# A263452: Expansion of f(-q^3)^3 * psi(q^12) / f(-q) in powers of q where ps(), f() are Ramanujan theta functions.

The programs for A263452, there is no canonical definition to state claims against.
-/

/-! ## A263452.P8605333405645525076

`A261444(2*n+3)/2`
-/

namespace A263452.P8605333405645525076
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A261444 (2 * n + 3) : ℚ) / 2

end

end A263452.P8605333405645525076

/-! ## A263452.P17658799174674602675

`Δ[∑[A261444(Δ[n²])]/2]`
-/

namespace A263452.P17658799174674602675
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261444 ((f3 (n + 1) : ℤ) - (f3 n : ℤ)).toNat

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A263452.P17658799174674602675

/-! ## A263452.P13745860588259223963

`A078898(A261444(2*n+3))`
-/

namespace A263452.P13745860588259223963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (A261444 (2 * n + 3)).toNat

end

end A263452.P13745860588259223963

/-! ## A263452.P10217664905497690024

`A001281(A261444(2*n+3)%A006094(n+1))`
-/

namespace A263452.P10217664905497690024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (Int.tmod (A261444 (2 * n + 3)) (A006094 (n + 1))).toNat

end

end A263452.P10217664905497690024

/-! ## A263452.P15516739135322810880

`A298931(3*n+4)`
-/

namespace A263452.P15516739135322810880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298931 (3 * n + 4)

end

end A263452.P15516739135322810880

/-! ## A263452.P1622741381906322727

`A045827(6*n+11)`
-/

namespace A263452.P1622741381906322727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045827 (6 * n + 11)

end

end A263452.P1622741381906322727

/-!
# A263455: Values k in A084697.

The programs for A263455, there is no canonical definition to state claims against.
-/

/-! ## A263455.P12531959164216999338

`(A084697(n+2)-A084697(n+1))/(n+1)`
-/

namespace A263455.P12531959164216999338
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A084697 (n + 2) - A084697 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A263455.P12531959164216999338

/-! ## A263455.P10769022570731337695

`Δ[A084697(n+1)]/(n+1)`
-/

namespace A263455.P10769022570731337695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084697 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (n + 1 : ℚ)

end

end A263455.P10769022570731337695

/-! ## A263455.P3744207786927094018

`A064505(A073669(n+1))/(n+1)`
-/

namespace A263455.P3744207786927094018
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064505 (A073669 (n + 1)).toNat : ℚ) / (n + 1 : ℚ)

end

end A263455.P3744207786927094018

/-! ## A263455.P17709787001326765063

`A008586(Δ[A084697(n+1)])%(4*n+3)`
-/

namespace A263455.P17709787001326765063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084697 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008586 (f1 (n + 1) - f1 n).toNat) (4 * n + 3 : ℤ)

end

end A263455.P17709787001326765063

/-! ## A263455.P13716015258568607322

`A008486(Δ[A084697(n+1)])%A016789(n)`
-/

namespace A263455.P13716015258568607322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084697 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008486 (f1 (n + 1) - f1 n).toNat) (A016789 n)

end

end A263455.P13716015258568607322

/-! ## A263455.P2058731156683917164

`A008585(Δ[A084697(n+1)])%A016789(n)`
-/

namespace A263455.P2058731156683917164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084697 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008585 (f1 (n + 1) - f1 n).toNat) (A016789 n)

end

end A263455.P2058731156683917164

/-! ## A263455.P4700284150116083089

`Δ[eq[1, A003415(A131073(n+1))]]`
-/

namespace A263455.P4700284150116083089
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A131073 (n + 1)).toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A263455.P4700284150116083089

/-!
# A263456: Expansion of phi(-q) * f(-q^8)^3 / f(-q^24) in powers of q where phi(), f() are Ramanujan theta functions.

The programs for A263456, there is no canonical definition to state claims against.
-/

/-! ## A263456.P11900014577812173096

`A219977(n)*A263444(n)`
-/

namespace A263456.P11900014577812173096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219977 n * A263444 n

end

end A263456.P11900014577812173096

/-! ## A263456.P16233692941829215694

`A219977(n)*A263502(n)`
-/

namespace A263456.P16233692941829215694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219977 n * A263502 n

end

end A263456.P16233692941829215694

/-! ## A263456.P8441442182031810255

`(A047415(n+1)-A282939(n))*A263444(n)`
-/

namespace A263456.P8441442182031810255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A047415 (n + 1) - A282939 n) * A263444 n

end

end A263456.P8441442182031810255

/-!
# A263457: Integers m such that A006218(m) is triangular.

The programs for A263457, there is no canonical definition to state claims against.
-/

/-! ## A263457.P13985901276756948990

`record[-A233773(C(floor(n/2)+2, 2))]`
-/

namespace A263457.P13985901276756948990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A233773 (Nat.choose (⌊(n : ℚ) / 2⌋ + 2).toNat 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263457.P13985901276756948990

/-! ## A263457.P272364393415453076

`eq[0, A061199(A006218(n))]`
-/

namespace A263457.P272364393415453076
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061199 (A006218 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A263457.P272364393415453076

/-! ## A263457.P13310661540611354622

`eq[1, A002262(A054519(n))]`
-/

namespace A263457.P13310661540611354622
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (A054519 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A263457.P13310661540611354622

/-! ## A263457.P14916192803379399463

`record[-A233773(A008805(n))]`
-/

namespace A263457.P14916192803379399463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A233773 (A008805 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263457.P14916192803379399463

/-! ## A263457.P124232368165426346

`eq[1, A002262(A006218(n)+1)]`
-/

namespace A263457.P124232368165426346
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (A006218 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A263457.P124232368165426346

/-!
# A263458: Deal a pack of n cards into two piles and gather them up, n/2 times. All n such that this reverses the order of the deck.

The programs for A263458, there is no canonical definition to state claims against.
-/

/-! ## A263458.P2946555514431834933

`p?[or(5, 6*n)]-1`
-/

namespace A263458.P2946555514431834933
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 5 (6 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) - 1

end

end A263458.P2946555514431834933

/-! ## A263458.P4367153859504654570

`xor(1, p?[or(5, 6*n)])`
-/

namespace A263458.P4367153859504654570
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 5 (6 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A263458.P4367153859504654570

/-! ## A263458.P10955134258885493458

`and(p?[or(5, 6*n)], -2)`
-/

namespace A263458.P10955134258885493458
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 5 (6 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) (-2)

end

end A263458.P10955134258885493458

/-! ## A263458.P16977840470671370821

`p?[or(3, n)+n+1]-1`
-/

namespace A263458.P16977840470671370821
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 3 n + (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) - 1

end

end A263458.P16977840470671370821

/-! ## A263458.P4154363301181786836

`p?[n*and(2, n)+1]-1`
-/

namespace A263458.P4154363301181786836
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.land 2 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) - 1

end

end A263458.P4154363301181786836

/-! ## A263458.P13601916927986893991

`p?[(-1)^n+4*(n+1)]-1`
-/

namespace A263458.P13601916927986893991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n + (4 * (n + 1) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 1

end

end A263458.P13601916927986893991

/-! ## A263458.P11785869882444509183

`record[A037225(or(2, n))]`
-/

namespace A263458.P11785869882444509183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037225 (Nat.lor 2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263458.P11785869882444509183

/-! ## A263458.P1573166661288386032

`record[A000010(or(5, n))]`
-/

namespace A263458.P1573166661288386032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (Nat.lor 5 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263458.P1573166661288386032

/-! ## A263458.P10128910364247126934

`A003628(n+1)-1`
-/

namespace A263458.P10128910364247126934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003628 (n + 1) - 1

end

end A263458.P10128910364247126934

/-!
# A263459: Number of (n+1) X (1+1) 0..4 arrays with each row and column divisible by 11, read as a base-5 number with top and left being the most significant digits.

The programs for A263459, the canonical program `A263459.P4082080923444722878` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A263459 has offset 1).

The definition of A263459 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 210 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A263459.P4082080923444722878

`3*a(n-1)+a(n-5)-3*a(n-6)` with `a(0)=2, a(1)=3, a(2)=8, a(3)=23, a(4)=67, a(5)=200`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A263459

/-- `3*a(n-1)+a(n-5)-3*a(n-6)` -/
def P4082080923444722878.Spec : Prop :=
  ∀ n, P4082080923444722878.a n = A263459 (n + 1)

theorem P4082080923444722878.correct : P4082080923444722878.Spec := by
  intro n
  simp only [A263459, Nat.add_sub_cancel]

end A263459

/-! ## A263459.P12370625138215547537

`ceil(A168610(n+2)/11)`
-/

namespace A263459.P12370625138215547537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A168610 (n + 2) : ℚ) / 11⌉

end

end A263459.P12370625138215547537

namespace A263459

/-- `ceil(A168610(n+2)/11)` -/
def P12370625138215547537.Spec : Prop :=
  ∀ n, P12370625138215547537.a n = A263459 (n + 1)

end A263459

/-! ## A263459.P6350249751337895103

`ceil(A178674(n+2)/11)`
-/

namespace A263459.P6350249751337895103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A178674 (n + 2) : ℚ) / 11⌉

end

end A263459.P6350249751337895103

namespace A263459

/-- `ceil(A178674(n+2)/11)` -/
def P6350249751337895103.Spec : Prop :=
  ∀ n, P6350249751337895103.a n = A263459 (n + 1)

end A263459

/-! ## A263459.P7422922165113684464

`floor(and(1, A108898(n))+A178674(n+2)/11)`
-/

namespace A263459.P7422922165113684464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Int.land 1 (A108898 n) : ℚ) + (A178674 (n + 2) : ℚ) / 11⌋

end

end A263459.P7422922165113684464

namespace A263459

/-- `floor(and(1, A108898(n))+A178674(n+2)/11)` -/
def P7422922165113684464.Spec : Prop :=
  ∀ n, P7422922165113684464.a n = A263459 (n + 1)

end A263459

/-! ## A263459.P14989636726356999826

`floor(A088855(A000124(n))+A168610(n+2)/11)`
-/

namespace A263459.P14989636726356999826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A088855 (A000124 n).toNat : ℚ) + (A168610 (n + 2) : ℚ) / 11⌋

end

end A263459.P14989636726356999826

namespace A263459

/-- `floor(A088855(A000124(n))+A168610(n+2)/11)` -/
def P14989636726356999826.Spec : Prop :=
  ∀ n, P14989636726356999826.a n = A263459 (n + 1)

end A263459

/-! ## A263459.P16997734004430403303

`ceil(A199560(n)/A052909(n))`
-/

namespace A263459.P16997734004430403303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A199560 n : ℚ) / (A052909 n : ℚ)⌉

end

end A263459.P16997734004430403303

namespace A263459

/-- `ceil(A199560(n)/A052909(n))` -/
def P16997734004430403303.Spec : Prop :=
  ∀ n, P16997734004430403303.a n = A263459 (n + 1)

end A263459

/-! ## A263459.P2627615258325588610

`floor(A019429(2*A209874(n+1))+A168610(n+2)/11)`
-/

namespace A263459.P2627615258325588610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A019429 (2 * A209874 (n + 1)).toNat : ℚ) + (A168610 (n + 2) : ℚ) / 11⌋

end

end A263459.P2627615258325588610

namespace A263459

/-- `floor(A019429(2*A209874(n+1))+A168610(n+2)/11)` -/
def P2627615258325588610.Spec : Prop :=
  ∀ n, P2627615258325588610.a n = A263459 (n + 1)

end A263459

/-!
# A263460: Number of (n+1)X(2+1) 0..4 arrays with each row and column divisible by 11, read as a base-5 number with top and left being the most significant digits.

The programs for A263460, there is no canonical definition to state claims against.
-/

/-! ## A263460.P11568833058531329752

`A263464(∑[n+1]+2)`
-/

namespace A263460.P11568833058531329752
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263464 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A263460.P11568833058531329752

/-! ## A263460.P8915910130226780899

`record[root(A263464(n+2), A201811(n+1))]`
-/

namespace A263460.P8915910130226780899
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A263464 (n + 2) : ℝ) ^ (1 / (A201811 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263460.P8915910130226780899

/-! ## A263460.P13101700037599039693

`record[root(A263464(n+3), A074909(n+1))]`
-/

namespace A263460.P13101700037599039693
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A263464 (n + 3) : ℝ) ^ (1 / (A074909 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263460.P13101700037599039693

/-! ## A263460.P5387670789048199044

`A322437(n+1)+A263464(A133263(n+1))`
-/

namespace A263460.P5387670789048199044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322437 (n + 1) + A263464 (A133263 (n + 1)).toNat

end

end A263460.P5387670789048199044

/-! ## A263460.P1756960437199801646

`A263464(A133263(n+1))%A081045(n+1)`
-/

namespace A263460.P1756960437199801646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A263464 (A133263 (n + 1)).toNat) (A081045 (n + 1))

end

end A263460.P1756960437199801646

/-!
# A263461: Number of (n+1)X(3+1) 0..4 arrays with each row and column divisible by 11, read as a base-5 number with top and left being the most significant digits.

The programs for A263461, there is no canonical definition to state claims against.
-/

/-! ## A263461.P17827742609480902874

`A263464(∑[n+2]+4)`
-/

namespace A263461.P17827742609480902874
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263464 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A263461.P17827742609480902874

/-! ## A263461.P132409478682682375

`A263464(A167614(n+1))+A185238(n)`
-/

namespace A263461.P132409478682682375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263464 (A167614 (n + 1)).toNat + A185238 n

end

end A263461.P132409478682682375

/-! ## A263461.P18273521080627213713

`A263464(A167614(n+1))-A185284(n)`
-/

namespace A263461.P18273521080627213713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263464 (A167614 (n + 1)).toNat - A185284 n

end

end A263461.P18273521080627213713

/-! ## A263461.P4824108648608549538

`lcm(A033999(n), A263464(A167614(n+1)))`
-/

namespace A263461.P4824108648608549538
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A263464 (A167614 (n + 1)).toNat)

end

end A263461.P4824108648608549538

/-! ## A263461.P13251718247048730426

`A263464(A167614(n+1))-A112802(n+1)`
-/

namespace A263461.P13251718247048730426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263464 (A167614 (n + 1)).toNat - A112802 (n + 1)

end

end A263461.P13251718247048730426

/-!
# A263462: Number of (n+1)X(4+1) 0..4 arrays with each row and column divisible by 11, read as a base-5 number with top and left being the most significant digits.

The programs for A263462, there is no canonical definition to state claims against.
-/

/-! ## A263462.P251188663156055322

`A263464(A141214(n)+7)`
-/

namespace A263462.P251188663156055322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263464 (A141214 n + 7).toNat

end

end A263462.P251188663156055322

/-! ## A263462.P5021069762331509713

`A263464(A052905(n)+9)`
-/

namespace A263462.P5021069762331509713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263464 (A052905 n + 9).toNat

end

end A263462.P5021069762331509713

/-! ## A263462.P12380424925761990685

`A263464(A055999(n)+10)`
-/

namespace A263462.P12380424925761990685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263464 (A055999 n + 10).toNat

end

end A263462.P12380424925761990685

/-! ## A263462.P15379405595888299323

`A263464(eq[5, A066657(n)])`
-/

namespace A263462.P15379405595888299323
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263464 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A263462.P15379405595888299323

/-!
# A263463: Number of (n+1)X(5+1) 0..4 arrays with each row and column divisible by 11, read as a base-5 number with top and left being the most significant digits.

The programs for A263463, there is no canonical definition to state claims against.
-/

/-! ## A263463.P6731061450862813645

`A263464(A374005(n+1))`
-/

namespace A263463.P6731061450862813645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263464 (A374005 (n + 1)).toNat

end

end A263463.P6731061450862813645

/-! ## A263463.P18083921642734900429

`A263464(A000124(n+4)+4)`
-/

namespace A263463.P18083921642734900429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263464 (A000124 (n + 4) + 4).toNat

end

end A263463.P18083921642734900429

/-!
# A263466: Least k such that prime(n) is the smallest prime p for which k^2 + p^2 is also prime, or 0 if none.

The programs for A263466, there is no canonical definition to state claims against.
-/

/-! ## A263466.P12723647442374314057

`A001223(n+1)*A056355(A259384(n+1))`
-/

namespace A263466.P12723647442374314057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 1) * A056355 (A259384 (n + 1)).toNat

end

end A263466.P12723647442374314057

/-!
# A263468: Fibonacci primes equal to a sum of squares of two Fibonacci numbers at least one of which is also prime.

The programs for A263468, there is no canonical definition to state claims against.
-/

/-! ## A263468.P14818393453250026842

`A000045(A263467(n+1))`
-/

namespace A263468.P14818393453250026842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A263467 (n + 1)).toNat

end

end A263468.P14818393453250026842

/-!
# A263470: Total number of positive integers < 10^n with multiplicative digital root value 0.

The programs for A263470, there is no canonical definition to state claims against.
-/

/-! ## A263470.P4543649544012629379

`∑[A263476(n+1)]`
-/

namespace A263470.P4543649544012629379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263476 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A263470.P4543649544012629379

/-! ## A263470.P11947601336477361912

`∑[record[A263476(A028920(n))]]`
-/

namespace A263470.P11947601336477361912
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263476 (A028920 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A263470.P11947601336477361912

/-! ## A263470.P8876612777594525151

`∑[record[A263476(A065648(n))]]`
-/

namespace A263470.P8876612777594525151
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263476 (A065648 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A263470.P8876612777594525151

/-! ## A263470.P2194790456460371598

`∑[record[A263476(A117910(n))]]`
-/

namespace A263470.P2194790456460371598
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263476 (A117910 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A263470.P2194790456460371598

/-! ## A263470.P8398656402156609311

`∑[record[A263476(A137734(n))]]`
-/

namespace A263470.P8398656402156609311
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263476 (A137734 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A263470.P8398656402156609311

/-! ## A263470.P16366802106317079650

`∑[record[A263476(A141256(n))]]`
-/

namespace A263470.P16366802106317079650
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263476 (A141256 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A263470.P16366802106317079650

/-! ## A263470.P13075979008781110114

`∑[record[A263476(A286535(n))]]`
-/

namespace A263470.P13075979008781110114
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263476 (A286535 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A263470.P13075979008781110114

/-!
# A263471: Total number of positive integers < 10^n with multiplicative digital root value 2.

The programs for A263471, there is no canonical definition to state claims against.
-/

/-! ## A263471.P16507954688053155145

`∑[A263477(n+1)]`
-/

namespace A263471.P16507954688053155145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263477 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A263471.P16507954688053155145

/-! ## A263471.P6035334226017506216

`∑[record[A263477(A020986(n))]]`
-/

namespace A263471.P6035334226017506216
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263477 (A020986 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A263471.P6035334226017506216

/-! ## A263471.P13606646264408422177

`∑[record[A263477(A028920(n))]]`
-/

namespace A263471.P13606646264408422177
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263477 (A028920 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A263471.P13606646264408422177

/-! ## A263471.P18362158717634558742

`∑[record[A263477(A065648(n))]]`
-/

namespace A263471.P18362158717634558742
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263477 (A065648 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A263471.P18362158717634558742

/-! ## A263471.P9508860141737254950

`∑[record[A263477(A117910(n))]]`
-/

namespace A263471.P9508860141737254950
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263477 (A117910 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A263471.P9508860141737254950

/-! ## A263471.P17501814288826601070

`∑[record[A263477(A133310(n))]]`
-/

namespace A263471.P17501814288826601070
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263477 (A133310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A263471.P17501814288826601070

/-! ## A263471.P17198444740706283884

`∑[record[A263477(A141256(n))]]`
-/

namespace A263471.P17198444740706283884
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263477 (A141256 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A263471.P17198444740706283884

/-! ## A263471.P15646999047331896172

`∑[record[A263477(A286535(n))]]`
-/

namespace A263471.P15646999047331896172
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263477 (A286535 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A263471.P15646999047331896172

/-! ## A263471.P10352527169983468653

`∑[record[A263477(A331300(n))]]`
-/

namespace A263471.P10352527169983468653
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263477 (A331300 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A263471.P10352527169983468653

/-!
# A263472: Total number of positive integers < 10^n with multiplicative digital root value 4.

The programs for A263472, there is no canonical definition to state claims against.
-/

/-! ## A263472.P520631630757121224

`∑[A263478(n+1)]`
-/

namespace A263472.P520631630757121224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263478 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A263472.P520631630757121224

/-! ## A263472.P12214181137969059914

`∑[record[A263478(A020986(n))]]`
-/

namespace A263472.P12214181137969059914
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263478 (A020986 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A263472.P12214181137969059914

/-! ## A263472.P3067542020815008599

`∑[record[A263478(A028920(n))]]`
-/

namespace A263472.P3067542020815008599
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263478 (A028920 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A263472.P3067542020815008599

/-! ## A263472.P9005378439962705373

`∑[record[A263478(A065648(n))]]`
-/

namespace A263472.P9005378439962705373
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263478 (A065648 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A263472.P9005378439962705373

/-! ## A263472.P3014496841496262739

`∑[record[A263478(A109785(n))]]`
-/

namespace A263472.P3014496841496262739
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263478 (A109785 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A263472.P3014496841496262739

/-! ## A263472.P17679888217014071322

`∑[record[A263478(A117910(n))]]`
-/

namespace A263472.P17679888217014071322
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263478 (A117910 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A263472.P17679888217014071322

/-! ## A263472.P6319399520705271497

`∑[record[A263478(A133310(n))]]`
-/

namespace A263472.P6319399520705271497
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263478 (A133310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A263472.P6319399520705271497

/-! ## A263472.P3242966898416445269

`∑[record[A263478(A141256(n))]]`
-/

namespace A263472.P3242966898416445269
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263478 (A141256 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A263472.P3242966898416445269

/-! ## A263472.P7899069487330026456

`∑[record[A263478(A193739(n))]]`
-/

namespace A263472.P7899069487330026456
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263478 (A193739 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A263472.P7899069487330026456

/-! ## A263472.P16584113663717412438

`∑[record[A263478(A286535(n))]]`
-/

namespace A263472.P16584113663717412438
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263478 (A286535 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A263472.P16584113663717412438

/-!
# A263473: Total number of positive integers < 10^n with multiplicative digital root value 5.

The programs for A263473, there is no canonical definition to state claims against.
-/

/-! ## A263473.P2110123216199839658

`∑[A263479(n+1)]`
-/

namespace A263473.P2110123216199839658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263479 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A263473.P2110123216199839658

/-! ## A263473.P17604800395278420964

`∑[record[A263479(ceil(C(or(1, n), n)/2))]]`
-/

namespace A263473.P17604800395278420964
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263479 ⌈(Nat.choose (Nat.lor 1 n) n : ℚ) / 2⌉.toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A263473.P17604800395278420964

/-! ## A263473.P4781761026992955477

`∑[record[A263479(A133310(n))]]`
-/

namespace A263473.P4781761026992955477
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263479 (A133310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A263473.P4781761026992955477

/-! ## A263473.P13615518919021444132

`∑[record[A263479(A117910(n))]]`
-/

namespace A263473.P13615518919021444132
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263479 (A117910 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A263473.P13615518919021444132

/-! ## A263473.P8264497292300074191

`∑[record[A263479(A141256(n))]]`
-/

namespace A263473.P8264497292300074191
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263479 (A141256 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A263473.P8264497292300074191

/-! ## A263473.P10178125721234060775

`∑[record[A263479(A065648(n))]]`
-/

namespace A263473.P10178125721234060775
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263479 (A065648 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A263473.P10178125721234060775

/-! ## A263473.P9162189166540088632

`∑[record[A263479(A109785(n))]]`
-/

namespace A263473.P9162189166540088632
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263479 (A109785 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A263473.P9162189166540088632

/-! ## A263473.P7756473503955681995

`∑[record[A263479(A028920(n))]]`
-/

namespace A263473.P7756473503955681995
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263479 (A028920 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A263473.P7756473503955681995

/-! ## A263473.P7319568590344183366

`∑[record[A263479(1-(A057944(n)-n))]]`
-/

namespace A263473.P7319568590344183366
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263479 (1 - (A057944 n - (n : ℤ))).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A263473.P7319568590344183366

/-! ## A263473.P7896472359805622488

`∑[record[A263479(A128227(n))]]`
-/

namespace A263473.P7896472359805622488
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263479 (A128227 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A263473.P7896472359805622488

/-!
# A263474: Total number of positive integers < 10^n with multiplicative digital root value 6.

The programs for A263474, there is no canonical definition to state claims against.
-/

/-! ## A263474.P13581659215398181155

`∑[A263480(n+1)]`
-/

namespace A263474.P13581659215398181155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263480 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A263474.P13581659215398181155

/-! ## A263474.P18038370277499309965

`∑[record[A263480(A020986(n))]]`
-/

namespace A263474.P18038370277499309965
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263480 (A020986 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A263474.P18038370277499309965

/-! ## A263474.P2643073719726728199

`∑[record[A263480(A028920(n))]]`
-/

namespace A263474.P2643073719726728199
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263480 (A028920 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A263474.P2643073719726728199

/-! ## A263474.P11411802348475107410

`∑[record[A263480(A065648(n))]]`
-/

namespace A263474.P11411802348475107410
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263480 (A065648 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A263474.P11411802348475107410

/-! ## A263474.P2371392313622754593

`∑[record[A263480(A117910(n))]]`
-/

namespace A263474.P2371392313622754593
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263480 (A117910 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A263474.P2371392313622754593

/-! ## A263474.P2319245081304360410

`∑[record[A263480(A141256(n))]]`
-/

namespace A263474.P2319245081304360410
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263480 (A141256 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A263474.P2319245081304360410

/-! ## A263474.P948404638201713035

`∑[record[A263480(A286535(n))]]`
-/

namespace A263474.P948404638201713035
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263480 (A286535 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A263474.P948404638201713035

/-! ## A263474.P5865462218509483093

`∑[record[A263480(A331300(n))]]`
-/

namespace A263474.P5865462218509483093
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263480 (A331300 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A263474.P5865462218509483093

/-!
# A263475: Total number of positive integers < 10^n with multiplicative digital root value 8.

The programs for A263475, there is no canonical definition to state claims against.
-/

/-! ## A263475.P684509325380097012

`∑[A263481(n+1)]`
-/

namespace A263475.P684509325380097012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263481 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A263475.P684509325380097012

/-! ## A263475.P16116518254111927226

`∑[record[A263481(A020986(n))]]`
-/

namespace A263475.P16116518254111927226
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263481 (A020986 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A263475.P16116518254111927226

/-! ## A263475.P17913331909841375717

`∑[record[A263481(A028920(n))]]`
-/

namespace A263475.P17913331909841375717
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263481 (A028920 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A263475.P17913331909841375717

/-! ## A263475.P3313490365139255728

`∑[record[A263481(A065648(n))]]`
-/

namespace A263475.P3313490365139255728
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263481 (A065648 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A263475.P3313490365139255728

/-! ## A263475.P12863136834494902184

`∑[record[A263481(A117910(n))]]`
-/

namespace A263475.P12863136834494902184
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263481 (A117910 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A263475.P12863136834494902184

/-! ## A263475.P12672431091077896555

`∑[record[A263481(A141256(n))]]`
-/

namespace A263475.P12672431091077896555
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263481 (A141256 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A263475.P12672431091077896555

/-! ## A263475.P4540644356266379400

`∑[record[A263481(A286535(n))]]`
-/

namespace A263475.P4540644356266379400
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263481 (A286535 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A263475.P4540644356266379400

/-! ## A263475.P16216478572025063588

`∑[record[A263481(A331300(n))]]`
-/

namespace A263475.P16216478572025063588
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263481 (A331300 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A263475.P16216478572025063588

/-!
# A263476: Total number of n-digit positive integers with multiplicative digital root value 0.

The programs for A263476, there is no canonical definition to state claims against.
-/

/-! ## A263476.P12494967399797232570

`Δ[A263470(A028310(n))]`
-/

namespace A263476.P12494967399797232570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263470 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A263476.P12494967399797232570

/-! ## A263476.P14322924247435864929

`record[Δ[A263470(A008619(n))]]`
-/

namespace A263476.P14322924247435864929
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263470 (A008619 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263476.P14322924247435864929

/-! ## A263476.P1234998904912307172

`Δ[A263470(A123108(2*n))]`
-/

namespace A263476.P1234998904912307172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263470 (A123108 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A263476.P1234998904912307172

/-! ## A263476.P17139042683975605465

`Δ[A263470(A000007(n)+n)]`
-/

namespace A263476.P17139042683975605465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263470 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A263476.P17139042683975605465

/-! ## A263476.P621242501135349032

`A263470(n+1)-A263470(A028310(n))`
-/

namespace A263476.P621242501135349032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263470 (n + 1) - A263470 (A028310 n).toNat

end

end A263476.P621242501135349032

/-! ## A263476.P13932421405792933782

`A263470(n+1)-A263470(A000007(n)+n)`
-/

namespace A263476.P13932421405792933782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263470 (n + 1) - A263470 (A000007 n + (n : ℤ)).toNat

end

end A263476.P13932421405792933782

/-!
# A263477: Total number of n-digit positive integers with multiplicative digital root value 2.

The programs for A263477, there is no canonical definition to state claims against.
-/

/-! ## A263477.P13915354017835979836

`A000007(n)+Δ[A263471(A028310(n))]`
-/

namespace A263477.P13915354017835979836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263471 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (f1 (n + 1) - f1 n)

end

end A263477.P13915354017835979836

/-! ## A263477.P7777163542679281213

`Δ[A263471(A028310(n))+A057427(n)]`
-/

namespace A263477.P7777163542679281213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263471 (A028310 n).toNat + A057427 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A263477.P7777163542679281213

/-! ## A263477.P10164864054841622642

`Δ[A263471(A028310(n))+A178334(n)]`
-/

namespace A263477.P10164864054841622642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263471 (A028310 n).toNat + A178334 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A263477.P10164864054841622642

/-! ## A263477.P8962365339110493823

`Δ[A263471(A028310(n))%A025950(n)]`
-/

namespace A263477.P8962365339110493823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A263471 (A028310 n).toNat) (A025950 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A263477.P8962365339110493823

/-! ## A263477.P15406095096515776097

`A263471(n+1)+A000007(n)-A263471(A028310(n))`
-/

namespace A263477.P15406095096515776097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263471 (n + 1) + (A000007 n - A263471 (A028310 n).toNat)

end

end A263477.P15406095096515776097

/-! ## A263477.P4568328424490322179

`A263471(n+1)-A057427(n)*A263471(A028310(n))`
-/

namespace A263477.P4568328424490322179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263471 (n + 1) - A057427 n * A263471 (A028310 n).toNat

end

end A263477.P4568328424490322179

/-! ## A263477.P13436257614760390220

`A263471(n+1)-A178334(n)*A263471(A028310(n))`
-/

namespace A263477.P13436257614760390220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263471 (n + 1) - A178334 n * A263471 (A028310 n).toNat

end

end A263477.P13436257614760390220

/-!
# A263478: Total number of n-digit positive integers with multiplicative digital root value 4.

The programs for A263478, there is no canonical definition to state claims against.
-/

/-! ## A263478.P8197935431931873340

`A000007(n)+Δ[A263472(A028310(n))]`
-/

namespace A263478.P8197935431931873340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263472 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (f1 (n + 1) - f1 n)

end

end A263478.P8197935431931873340

/-! ## A263478.P15732828976688331647

`Δ[A263472(A028310(n))+A011598(n²)]`
-/

namespace A263478.P15732828976688331647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263472 (A028310 n).toNat + A011598 (n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A263478.P15732828976688331647

/-! ## A263478.P7829604805896060734

`Δ[A263472(A028310(n))+A165471(n²)]`
-/

namespace A263478.P7829604805896060734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263472 (A028310 n).toNat + A165471 (n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A263478.P7829604805896060734

/-! ## A263478.P9798527527563111506

`Δ[A263472(A028310(n))+A165476(n²)]`
-/

namespace A263478.P9798527527563111506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263472 (A028310 n).toNat + A165476 (n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A263478.P9798527527563111506

/-! ## A263478.P14693253399317064273

`Δ[A263472(A028310(n))+A165481(n²)]`
-/

namespace A263478.P14693253399317064273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263472 (A028310 n).toNat + A165481 (n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A263478.P14693253399317064273

/-! ## A263478.P371465323833113451

`A263472(n+1)+A000007(n)-A263472(A028310(n))`
-/

namespace A263478.P371465323833113451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263472 (n + 1) + (A000007 n - A263472 (A028310 n).toNat)

end

end A263478.P371465323833113451

/-!
# A263479: Total number of n-digit positive integers with multiplicative digital root value 5.

The programs for A263479, there is no canonical definition to state claims against.
-/

/-! ## A263479.P9275324407506138942

`Δ[A263473(a(lcm(5, n)%n)+n)]` with `a(0)=0`
-/

namespace A263479.P9275324407506138942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  A263473 (f1 (Nat.lcm 5 n % n) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A263479.P9275324407506138942

/-! ## A263479.P982128019311943479

`Δ[A263473(a((n*and(n, -n))%n)+n)]` with `a(0)=0`
-/

namespace A263479.P982128019311943479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  A263473 (f1 (Int.tmod ((n : ℤ) * Int.land (n : ℤ) (-(n : ℤ))) (n : ℤ)).toNat + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A263479.P982128019311943479

/-! ## A263479.P7307289669761016754

`Δ[A263473(A028310(n))]^ceil(sin(n)²)`
-/

namespace A263479.P7307289669761016754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263473 (A028310 n).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) ^ (⌈Real.sin (n : ℝ) ^ 2⌉ : ℤ)

end

end A263479.P7307289669761016754

/-! ## A263479.P14323945301581767802

`A000007(n)+Δ[A263473(A028310(n))]`
-/

namespace A263479.P14323945301581767802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263473 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (f1 (n + 1) - f1 n)

end

end A263479.P14323945301581767802

/-! ## A263479.P4059514573518454604

`Δ[A263473(A028310(n))]+A000038(n)/2`
-/

namespace A263479.P4059514573518454604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263473 (A028310 n).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) + (A000038 n : ℚ) / 2

end

end A263479.P4059514573518454604

/-! ## A263479.P8578506918069954979

`Δ[A263473(A028310(n))+A057427(n)]`
-/

namespace A263479.P8578506918069954979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263473 (A028310 n).toNat + A057427 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A263479.P8578506918069954979

/-! ## A263479.P16908797875667443428

`Δ[A263473(A028310(n))-A054977(n)]`
-/

namespace A263479.P16908797875667443428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263473 (A028310 n).toNat - A054977 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A263479.P16908797875667443428

/-! ## A263479.P6942994039630340449

`Δ[A263473(A028310(n))-A057428(n)]`
-/

namespace A263479.P6942994039630340449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263473 (A028310 n).toNat - A057428 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A263479.P6942994039630340449

/-!
# A263480: Total number of n-digit positive integers with multiplicative digital root value 6.

The programs for A263480, there is no canonical definition to state claims against.
-/

/-! ## A263480.P7742780039830985069

`A000007(n)+Δ[A263474(A028310(n))]`
-/

namespace A263480.P7742780039830985069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263474 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (f1 (n + 1) - f1 n)

end

end A263480.P7742780039830985069

/-! ## A263480.P4311737557608791129

`Δ[A263474(A028310(n))+A178334(n)]`
-/

namespace A263480.P4311737557608791129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263474 (A028310 n).toNat + A178334 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A263480.P4311737557608791129

/-! ## A263480.P5461019112485438291

`Δ[A263474(A028310(n))%A249483(n+1)]`
-/

namespace A263480.P5461019112485438291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A263474 (A028310 n).toNat) (A249483 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A263480.P5461019112485438291

/-! ## A263480.P17056680349608603121

`Δ[A263474(A028310(n))]+A073097(2*n)²`
-/

namespace A263480.P17056680349608603121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263474 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + A073097 (2 * n) ^ 2

end

end A263480.P17056680349608603121

/-! ## A263480.P3364174475761566270

`A010051(2*(n+1))+Δ[A263474(A028310(n))]`
-/

namespace A263480.P3364174475761566270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263474 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (2 * (n + 1)) + (f1 (n + 1) - f1 n)

end

end A263480.P3364174475761566270

/-! ## A263480.P13059931887721395306

`A263474(n+1)+A000007(n)-A263474(A028310(n))`
-/

namespace A263480.P13059931887721395306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263474 (n + 1) + (A000007 n - A263474 (A028310 n).toNat)

end

end A263480.P13059931887721395306

/-! ## A263480.P14619836310684552840

`A263474(n+1)-A178334(n)*A263474(A028310(n))`
-/

namespace A263480.P14619836310684552840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263474 (n + 1) - A178334 n * A263474 (A028310 n).toNat

end

end A263480.P14619836310684552840

/-!
# A263481: Total number of n-digit positive integers with multiplicative digital root value 8.

The programs for A263481, there is no canonical definition to state claims against.
-/

/-! ## A263481.P5563231193609223871

`A000007(n)+Δ[A263475(A028310(n))]`
-/

namespace A263481.P5563231193609223871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263475 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (f1 (n + 1) - f1 n)

end

end A263481.P5563231193609223871

/-! ## A263481.P5708476150820063353

`Δ[A263475(A028310(n))+A057427(n)]`
-/

namespace A263481.P5708476150820063353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263475 (A028310 n).toNat + A057427 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A263481.P5708476150820063353

/-! ## A263481.P10379489137531429432

`A151878(n)+Δ[A263475(A028310(n))]`
-/

namespace A263481.P10379489137531429432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263475 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151878 n + (f1 (n + 1) - f1 n)

end

end A263481.P10379489137531429432

/-! ## A263481.P5552969026040226697

`A151933(n)+Δ[A263475(A028310(n))]`
-/

namespace A263481.P5552969026040226697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263475 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n + (f1 (n + 1) - f1 n)

end

end A263481.P5552969026040226697

/-! ## A263481.P17558760501154872527

`Δ[A263475(A028310(n))%A091928(n)]`
-/

namespace A263481.P17558760501154872527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A263475 (A028310 n).toNat) (A091928 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A263481.P17558760501154872527

/-! ## A263481.P11866142077823464919

`A151667(8*n)+Δ[A263475(A028310(n))]`
-/

namespace A263481.P11866142077823464919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263475 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151667 (8 * n) + (f1 (n + 1) - f1 n)

end

end A263481.P11866142077823464919

/-! ## A263481.P16608788191341400721

`A263475(n+1)+A000007(n)-A263475(A028310(n))`
-/

namespace A263481.P16608788191341400721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263475 (n + 1) + (A000007 n - A263475 (A028310 n).toNat)

end

end A263481.P16608788191341400721

/-! ## A263481.P17829480757034981881

`A263475(n+1)+A151878(n)-A263475(A028310(n))`
-/

namespace A263481.P17829480757034981881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263475 (n + 1) + (A151878 n - A263475 (A028310 n).toNat)

end

end A263481.P17829480757034981881

/-! ## A263481.P2410558315397300573

`A263475(n+1)+A151933(n)-A263475(A028310(n))`
-/

namespace A263481.P2410558315397300573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263475 (n + 1) + (A151933 n - A263475 (A028310 n).toNat)

end

end A263481.P2410558315397300573

/-!
# A263482: Numbers k such that k! + 2^k + 11 or k! + 2^k - 11 is prime.

The programs for A263482, there is no canonical definition to state claims against.
-/

/-! ## A263482.P8667461069702094409

`eq[4, A004018(A266778(n))]`
-/

namespace A263482.P8667461069702094409
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004018 (A266778 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A263482.P8667461069702094409

/-! ## A263482.P15219838957009141538

`eq[A106031(n+1), A332509(n+1)]`
-/

namespace A263482.P15219838957009141538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106031 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332509 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A263482.P15219838957009141538

/-! ## A263482.P6631916104488332270

`lt[A219249(n+1), Δ[A219219(n+2)]]`
-/

namespace A263482.P6631916104488332270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219249 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219219 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A263482.P6631916104488332270

/-! ## A263482.P7794014257226360636

`lt[A381522(3*n+2), A337319(A163313(3*n+4))]`
-/

namespace A263482.P7794014257226360636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381522 (3 * n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337319 (A163313 (3 * n + 4)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A263482.P7794014257226360636

/-!
# A263483: a(n) = prime(n)+(prime(n) modulo 6).

The programs for A263483, the canonical program `A263483.P11551331983002563713` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A263483 has offset 1).

The definition of A263483 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A039704, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A263483.P11551331983002563713

`A000040(n+1)+A039704(n+1)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A263483

/-- `A000040(n+1)+A039704(n+1)` -/
def P11551331983002563713.Spec : Prop :=
  ∀ n, P11551331983002563713.a n = A263483 (n + 1)

theorem P11551331983002563713.correct : P11551331983002563713.Spec := by
  intro n
  simp only [A263483, Nat.add_sub_cancel]

end A263483

/-! ## A263483.P14948095649602027198

`A039704(n+1)+Δ[A007504(n)]`
-/

namespace A263483.P14948095649602027198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039704 (n + 1) + (f1 (n + 1) - f1 n)

end

end A263483.P14948095649602027198

namespace A263483

/-- `A039704(n+1)+Δ[A007504(n)]` -/
def P14948095649602027198.Spec : Prop :=
  ∀ n, P14948095649602027198.a n = A263483 (n + 1)

end A263483

/-! ## A263483.P8927748258543050528

`A008864(n+1)+A006093(n+1)%6`
-/

namespace A263483.P8927748258543050528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 1) + Int.tmod (A006093 (n + 1)) 6

end

end A263483.P8927748258543050528

namespace A263483

/-- `A008864(n+1)+A006093(n+1)%6` -/
def P8927748258543050528.Spec : Prop :=
  ∀ n, P8927748258543050528.a n = A263483 (n + 1)

end A263483

/-! ## A263483.P13058696988796695264

`A000040(n+1)+A039710(n+1)%6`
-/

namespace A263483.P13058696988796695264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + Int.tmod (A039710 (n + 1)) 6

end

end A263483.P13058696988796695264

namespace A263483

/-- `A000040(n+1)+A039710(n+1)%6` -/
def P13058696988796695264.Spec : Prop :=
  ∀ n, P13058696988796695264.a n = A263483 (n + 1)

end A263483

/-! ## A263483.P6599416510812316961

`A000040(n+1)+A095959(n+1)%6`
-/

namespace A263483.P6599416510812316961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + Int.tmod (A095959 (n + 1)) 6

end

end A263483.P6599416510812316961

namespace A263483

/-- `A000040(n+1)+A095959(n+1)%6` -/
def P6599416510812316961.Spec : Prop :=
  ∀ n, P6599416510812316961.a n = A263483 (n + 1)

end A263483

/-! ## A263483.P1177332175722050649

`A000040(n+1)+A171028(n+1)%6`
-/

namespace A263483.P1177332175722050649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + Int.tmod (A171028 (n + 1)) 6

end

end A263483.P1177332175722050649

namespace A263483

/-- `A000040(n+1)+A171028(n+1)%6` -/
def P1177332175722050649.Spec : Prop :=
  ∀ n, P1177332175722050649.a n = A263483 (n + 1)

end A263483

/-! ## A263483.P3784468848825503150

`A000040(n+1)+A171043(n+1)%6`
-/

namespace A263483.P3784468848825503150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + Int.tmod (A171043 (n + 1)) 6

end

end A263483.P3784468848825503150

namespace A263483

/-- `A000040(n+1)+A171043(n+1)%6` -/
def P3784468848825503150.Spec : Prop :=
  ∀ n, P3784468848825503150.a n = A263483 (n + 1)

end A263483

/-! ## A263483.P6178289082162620746

`A000040(n+1)+abs(Δ[A022837(n)]%6)`
-/

namespace A263483.P6178289082162620746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022837 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + |Int.tmod (f1 (n + 1) - f1 n) 6|

end

end A263483.P6178289082162620746

namespace A263483

/-- `A000040(n+1)+abs(Δ[A022837(n)]%6)` -/
def P6178289082162620746.Spec : Prop :=
  ∀ n, P6178289082162620746.a n = A263483 (n + 1)

end A263483

/-! ## A263483.P7851776339940190327

`A039704(n+1)+A008578(n+2)`
-/

namespace A263483.P7851776339940190327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039704 (n + 1) + A008578 (n + 2)

end

end A263483.P7851776339940190327

namespace A263483

/-- `A039704(n+1)+A008578(n+2)` -/
def P7851776339940190327.Spec : Prop :=
  ∀ n, P7851776339940190327.a n = A263483 (n + 1)

end A263483

/-! ## A263483.P8494084661653696738

`A039704(n+1)+record[A006530(n+2)]`
-/

namespace A263483.P8494084661653696738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039704 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263483.P8494084661653696738

namespace A263483

/-- `A039704(n+1)+record[A006530(n+2)]` -/
def P8494084661653696738.Spec : Prop :=
  ∀ n, P8494084661653696738.a n = A263483 (n + 1)

end A263483

/-! ## A263483.P1981539767981109608

`record[A000010(n+1)]+A039704(n+1)+1`
-/

namespace A263483.P1981539767981109608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (A039704 (n + 1) + 1)

end

end A263483.P1981539767981109608

namespace A263483

/-- `record[A000010(n+1)]+A039704(n+1)+1` -/
def P1981539767981109608.Spec : Prop :=
  ∀ n, P1981539767981109608.a n = A263483 (n + 1)

end A263483

/-! ## A263483.P9968234485982903970

`A182986(n+2)+A010875(A182986(n+2))`
-/

namespace A263483.P9968234485982903970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 2) + A010875 (A182986 (n + 2)).toNat

end

end A263483.P9968234485982903970

namespace A263483

/-- `A182986(n+2)+A010875(A182986(n+2))` -/
def P9968234485982903970.Spec : Prop :=
  ∀ n, P9968234485982903970.a n = A263483 (n + 1)

end A263483

/-! ## A263483.P15227417778244322574

`A039704(n+1)+eq[n+2, A000203(n+1)]+1`
-/

namespace A263483.P15227417778244322574
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039704 (n + 1) + (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1 : ℤ)

end

end A263483.P15227417778244322574

namespace A263483

/-- `A039704(n+1)+eq[n+2, A000203(n+1)]+1` -/
def P15227417778244322574.Spec : Prop :=
  ∀ n, P15227417778244322574.a n = A263483 (n + 1)

end A263483

/-! ## A263483.P7085410032433639944

`A067747(2*n+1)+A039704(n+1)`
-/

namespace A263483.P7085410032433639944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067747 (2 * n + 1) + A039704 (n + 1)

end

end A263483.P7085410032433639944

namespace A263483

/-- `A067747(2*n+1)+A039704(n+1)` -/
def P7085410032433639944.Spec : Prop :=
  ∀ n, P7085410032433639944.a n = A263483 (n + 1)

end A263483

/-! ## A263483.P7828583700831480064

`A039704(n+1)+p?[A004709(n+1)]`
-/

namespace A263483.P7828583700831480064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004709 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039704 (n + 1) + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A263483.P7828583700831480064

namespace A263483

/-- `A039704(n+1)+p?[A004709(n+1)]` -/
def P7828583700831480064.Spec : Prop :=
  ∀ n, P7828583700831480064.a n = A263483 (n + 1)

end A263483

/-! ## A263483.P14178118108901118864

`A039704(n+1)+p?[A014681(n)]`
-/

namespace A263483.P14178118108901118864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039704 (n + 1) + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A263483.P14178118108901118864

namespace A263483

/-- `A039704(n+1)+p?[A014681(n)]` -/
def P14178118108901118864.Spec : Prop :=
  ∀ n, P14178118108901118864.a n = A263483 (n + 1)

end A263483

/-! ## A263483.P18361267782845627686

`A039704(n+1)+record[A014963(n+2)]`
-/

namespace A263483.P18361267782845627686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039704 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263483.P18361267782845627686

namespace A263483

/-- `A039704(n+1)+record[A014963(n+2)]` -/
def P18361267782845627686.Spec : Prop :=
  ∀ n, P18361267782845627686.a n = A263483 (n + 1)

end A263483

/-! ## A263483.P3424888433880061983

`A010885(A000040(n+1)-1)+A000040(n+1)`
-/

namespace A263483.P3424888433880061983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010885 (A000040 (n + 1) - 1).toNat + A000040 (n + 1)

end

end A263483.P3424888433880061983

namespace A263483

/-- `A010885(A000040(n+1)-1)+A000040(n+1)` -/
def P3424888433880061983.Spec : Prop :=
  ∀ n, P3424888433880061983.a n = A263483 (n + 1)

end A263483

/-! ## A263483.P14843153326212706086

`A039704(n+1)+p?[A049084(n+1)]`
-/

namespace A263483.P14843153326212706086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039704 (n + 1) + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A263483.P14843153326212706086

namespace A263483

/-- `A039704(n+1)+p?[A049084(n+1)]` -/
def P14843153326212706086.Spec : Prop :=
  ∀ n, P14843153326212706086.a n = A263483 (n + 1)

end A263483

/-!
# A263484: Triangle read by rows: T(n,k) (n>=1, 0<=k

The programs for A263484, there is no canonical definition to state claims against.
-/

/-! ## A263484.P17943433076021564819

`A059438(A038722(n+1))`
-/

namespace A263484.P17943433076021564819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059438 (A038722 (n + 1)).toNat

end

end A263484.P17943433076021564819

/-! ## A263484.P9009869006330443181

`A059438(A061579(n)+1)`
-/

namespace A263484.P9009869006330443181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059438 (A061579 n + 1).toNat

end

end A263484.P9009869006330443181

/-! ## A263484.P10335791741605372177

`A059438(A114327(n)+1+n)`
-/

namespace A263484.P10335791741605372177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059438 (A114327 n + 1 + (n : ℤ)).toNat

end

end A263484.P10335791741605372177

/-! ## A263484.P16897130812153251567

`A085771(A099375(n)+1+n)`
-/

namespace A263484.P16897130812153251567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085771 (A099375 n + 1 + (n : ℤ)).toNat

end

end A263484.P16897130812153251567

/-! ## A263484.P12743215552744369251

`A059438(A093995(n+1)-n)`
-/

namespace A263484.P12743215552744369251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059438 (A093995 (n + 1) - (n : ℤ)).toNat

end

end A263484.P12743215552744369251

/-! ## A263484.P1202204043982094268

`A059438(A002024(n+1)²-n)`
-/

namespace A263484.P1202204043982094268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059438 (A002024 (n + 1) ^ 2 - (n : ℤ)).toNat

end

end A263484.P1202204043982094268

/-! ## A263484.P2463679017492936586

`A059438(A057944(n)+A004736(n+1))`
-/

namespace A263484.P2463679017492936586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059438 (A057944 n + A004736 (n + 1)).toNat

end

end A263484.P2463679017492936586

/-! ## A263484.P9937179735962466522

`A085771(A038722(n+1)+A002024(n+1))`
-/

namespace A263484.P9937179735962466522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085771 (A038722 (n + 1) + A002024 (n + 1)).toNat

end

end A263484.P9937179735962466522

/-!
# A263485: Triangle read by rows: T(n,k) (n>=2, 1<=k<=n!) is the number of permutations pi of n such that there are k permutations >= pi in the (strong) Bruhat order.

The programs for A263485, there is no canonical definition to state claims against.
-/

/-! ## A263485.P4316630009829028283

`xor(A125005(A144042(n+1)), A263489(n+2))`
-/

namespace A263485.P4316630009829028283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A125005 (A144042 (n + 1)).toNat) (A263489 (n + 2))

end

end A263485.P4316630009829028283

/-! ## A263485.P12930442580894386166

`and(A073106(A103297(n)), A263489(n+2))`
-/

namespace A263485.P12930442580894386166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A073106 (A103297 n).toNat) (A263489 (n + 2))

end

end A263485.P12930442580894386166

/-! ## A263485.P14595235067860730199

`and(A113860(n), A263489(n+2))`
-/

namespace A263485.P14595235067860730199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A113860 n) (A263489 (n + 2))

end

end A263485.P14595235067860730199

/-! ## A263485.P1336891439990652500

`A263489(n+2)^A220054(n)²`
-/

namespace A263485.P1336891439990652500
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A263489 (n + 2) : ℚ) ^ (A220054 n ^ 2 : ℤ)

end

end A263485.P1336891439990652500

/-! ## A263485.P7316562159736832292

`A263489(n+2)%A109886(n+4)`
-/

namespace A263485.P7316562159736832292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A263489 (n + 2)) (A109886 (n + 4))

end

end A263485.P7316562159736832292

/-!
# A263488: Positive integers n that can be expressed as the quotient of two elements of A005836.

The programs for A263488, there is no canonical definition to state claims against.
-/

/-! ## A263488.P8813868810850546989

`eq[A284817(2*n+1), A351944(A123937(n))]`
-/

namespace A263488.P8813868810850546989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284817 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351944 (A123937 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A263488.P8813868810850546989

/-! ## A263488.P16597229224865527289

`eq[A211096(n), A284817(n+1)]/2`
-/

namespace A263488.P16597229224865527289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211096 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284817 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j = f2 j) n : ℚ) / 2

end

end A263488.P16597229224865527289

/-! ## A263488.P14409719344117740465

`eq[A211096(2*n), A284817(2*n+1)]`
-/

namespace A263488.P14409719344117740465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211096 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284817 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A263488.P14409719344117740465

/-! ## A263488.P17566458157682825741

`A026741(eq[A211096(n), A284817(n+1)])`
-/

namespace A263488.P17566458157682825741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211096 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284817 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A263488.P17566458157682825741

/-! ## A263488.P10579306766464082973

`lt[A117966(A112952(n)), A343603(3*n)]`
-/

namespace A263488.P10579306766464082973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117966 (A112952 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343603 (3 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A263488.P10579306766464082973

/-!
# A263489: Triangle read by rows: T(n,k) (n>=2, 1<=k<=n!) is the number of permutations of n whose inversion arrangement contains k regions.

The programs for A263489, there is no canonical definition to state claims against.
-/

/-! ## A263489.P3659966996601071114

`xor(A125005(A144042(n+1)), A263485(n+2))`
-/

namespace A263489.P3659966996601071114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A125005 (A144042 (n + 1)).toNat) (A263485 (n + 2))

end

end A263489.P3659966996601071114

/-!
# A263498: Decimal expansion of the Gaussian Hypergeometric Function 2F1(1, 3; 5/2; x) at x=1/4.

The programs for A263498, there is no canonical definition to state claims against.
-/

/-! ## A263498.P5467302697066682427

`A275486(n)-A010872(A004016(n))`
-/

namespace A263498.P5467302697066682427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275486 (n + 1) - A010872 (A004016 n).toNat

end

end A263498.P5467302697066682427

/-! ## A263498.P12478163980834202497

`A275486(n)-A010872(A107760(n))`
-/

namespace A263498.P12478163980834202497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275486 (n + 1) - A010872 (A107760 n).toNat

end

end A263498.P12478163980834202497

/-! ## A263498.P829829369396143753

`A275486(n)-A010872(A113062(n))`
-/

namespace A263498.P829829369396143753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275486 (n + 1) - A010872 (A113062 n).toNat

end

end A263498.P829829369396143753

/-! ## A263498.P6727564787127935574

`A275486(n)/A158416(A019546(n+1))`
-/

namespace A263498.P6727564787127935574
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A275486 (n + 1) : ℚ) / (A158416 (A019546 (n + 1)).toNat : ℚ)

end

end A263498.P6727564787127935574

/-!
# A263499: Numbers with nondecreasing digits such that every cyclic shift is a prime.

The programs for A263499, there is no canonical definition to state claims against.
-/

/-! ## A263499.P15328147627660973931

`∩[A068652(n+1), A179239(n)]`
-/

namespace A263499.P15328147627660973931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068652 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179239 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A263499.P15328147627660973931

/-! ## A263499.P18165112119946987583

`∩[A009994(n+1), A068652(n+1)]`
-/

namespace A263499.P18165112119946987583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009994 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068652 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A263499.P18165112119946987583

/-! ## A263499.P2151975481077993900

`∩[A028864(n+1), A068652(n+1)]`
-/

namespace A263499.P2151975481077993900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028864 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068652 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A263499.P2151975481077993900

/-! ## A263499.P10056817165839663502

`∩[A032524(n+1), A068652(n+1)]`
-/

namespace A263499.P10056817165839663502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032524 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068652 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A263499.P10056817165839663502

/-! ## A263499.P16207028758824164319

`∩[A068652(n+1), A190221(n+1)]`
-/

namespace A263499.P16207028758824164319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068652 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190221 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A263499.P16207028758824164319

