import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
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
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
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
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
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
# A356504: a(n) = A356500(2*n, 2*n+1) for n >= 0.

The programs for A356504, there is no canonical definition to state claims against.
-/

/-! ## A356504.P6848844790346599412

`A356501(∑[3*n+1])`
-/

namespace A356504.P6848844790346599412
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356501 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A356504.P6848844790346599412

/-! ## A356504.P8180493885228785908

`A356500(A085473(n))`
-/

namespace A356504.P8180493885228785908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356500 (A085473 n).toNat

end

end A356504.P8180493885228785908

/-! ## A356504.P8255097817612204244

`record[A356500(∑[A008486(n)])]`
-/

namespace A356504.P8255097817612204244
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356500 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A356504.P8255097817612204244

/-! ## A356504.P3984941400468307176

`A356500(A005448(2*n+1))`
-/

namespace A356504.P3984941400468307176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356500 (A005448 (2 * n + 1)).toNat

end

end A356504.P3984941400468307176

/-! ## A356504.P3301044749542551045

`A356500(∑[record[A016945(n)^(n%2)]])`
-/

namespace A356504.P3301044749542551045
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016945 n ^ (n % 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356500 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A356504.P3301044749542551045

/-!
# A356505: a(n) = A356500(2*n+1, 2*n) for n >= 0.

The programs for A356505, there is no canonical definition to state claims against.
-/

/-! ## A356505.P11935365462810370788

`A356501(floor(2/acot(n))+∑[n]+n²)`
-/

namespace A356505.P11935365462810370788
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356501 (⌊2 / SequenceMachineLib.acot (n : ℝ)⌋ + ((∑ j ∈ Finset.range (n + 1), f1 j + n ^ 2 : ℕ) : ℤ)).toNat

end

end A356505.P11935365462810370788

/-! ## A356505.P5348826643792486045

`A355350(A062728(n))`
-/

namespace A356505.P5348826643792486045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355350 (A062728 n).toNat

end

end A356505.P5348826643792486045

/-! ## A356505.P2360680330248153751

`A356501(A115067(n+1))`
-/

namespace A356505.P2360680330248153751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356501 (A115067 (n + 1)).toNat

end

end A356505.P2360680330248153751

/-! ## A356505.P15986345597876148020

`A356501(eq[0, A355870(n+1)])`
-/

namespace A356505.P15986345597876148020
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355870 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356501 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A356505.P15986345597876148020

/-! ## A356505.P16644233314365251201

`A356500(A005448(2*(n+1))-2)`
-/

namespace A356505.P16644233314365251201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356500 (A005448 (2 * (n + 1)) - 2).toNat

end

end A356505.P16644233314365251201

/-!
# A356506: a(n) = A356500(3*n, n+1) for n >= 0.

The programs for A356506, there is no canonical definition to state claims against.
-/

/-! ## A356506.P17651657961069071887

`A356501(∑[3*n]+1)`
-/

namespace A356506.P17651657961069071887
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356501 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A356506.P17651657961069071887

/-! ## A356506.P10824293576714986018

`record[A010054(n)*A356501(3*n+1)]`
-/

namespace A356506.P10824293576714986018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A356501 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A356506.P10824293576714986018

/-! ## A356506.P10960474534873453276

`record[gcd(A355360(n), A356501(3*n+1))]`
-/

namespace A356506.P10960474534873453276
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A355360 n) (A356501 (3 * n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A356506.P10960474534873453276

/-! ## A356506.P17052851189560730376

`A356501(A005448(n+1))%A356504(n+1)`
-/

namespace A356506.P17052851189560730376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A356501 (A005448 (n + 1)).toNat) (A356504 (n + 1))

end

end A356506.P17052851189560730376

/-!
# A356507: G.f.: Sum_{n>=0} x^(n*(n+1)/2) * P(x)^n, where P(x) is the partition function (A000041).

The programs for A356507, there is no canonical definition to state claims against.
-/

/-! ## A356507.P12161952300054904116

`A189672(A335473(n)+A023028(n+8)%(A368098(n)+1))`
-/

namespace A356507.P12161952300054904116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189672 (A335473 n + Int.tmod (A023028 (n + 8)) (A368098 n + 1)).toNat

end

end A356507.P12161952300054904116

/-! ## A356507.P1382721766513487101

`A035041(n)+A003056(A078012(3*n))`
-/

namespace A356507.P1382721766513487101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035041 n + A003056 (A078012 (3 * n)).toNat

end

end A356507.P1382721766513487101

/-! ## A356507.P9586710304621399795

`A231429(n+2)+A000196(A295495(n+3))`
-/

namespace A356507.P9586710304621399795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231429 (n + 2) + A000196 (A295495 (n + 3)).toNat

end

end A356507.P9586710304621399795

/-! ## A356507.P15667676804276488281

`A259896(A076586(3*n+2))+A010049(n)`
-/

namespace A356507.P15667676804276488281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259896 (A076586 (3 * n + 2)).toNat + A010049 n

end

end A356507.P15667676804276488281

/-! ## A356507.P11612817961212082914

`round(sqrt(A034336(n+3)+1))`
-/

namespace A356507.P11612817961212082914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A034336 (n + 3) + 1 : ℝ))

end

end A356507.P11612817961212082914

/-!
# A356508: G.f. A(x) satisfies: 2 = Product_{n>=1} (1 + x^n*A(x)) * (1 + x^(n-1)/A(x)).

The programs for A356508, there is no canonical definition to state claims against.
-/

/-! ## A356508.P11542463375415156066

`A241316(A000040(3*n+2))-A249757(2*n+1)`
-/

namespace A356508.P11542463375415156066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241316 (A000040 (3 * n + 2)).toNat - A249757 (2 * n + 1)

end

end A356508.P11542463375415156066

/-!
# A356511: Total number of distinct numbers that can be obtained by starting with 1 and applying the "Choix de Bruxelles", version 2 operation at most n times in duodecimal (base 12).

The programs for A356511, there is no canonical definition to state claims against.
-/

/-! ## A356511.P16413353400183746750

`A002024(A264608(n)+A005843(n))`
-/

namespace A356511.P16413353400183746750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A264608 n + A005843 n).toNat

end

end A356511.P16413353400183746750

/-! ## A356511.P233460041682016443

`A002024(A264608(n)+A228088(n+1))`
-/

namespace A356511.P233460041682016443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A264608 n + A228088 (n + 1)).toNat

end

end A356511.P233460041682016443

/-! ## A356511.P2921880686825066752

`A257639(A004077(n+1))+A257628(n)`
-/

namespace A356511.P2921880686825066752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257639 (A004077 (n + 1)).toNat + A257628 n

end

end A356511.P2921880686825066752

/-! ## A356511.P4369111419288248313

`∑[A088004(n+1)*A094802(A005676(n))]`
-/

namespace A356511.P4369111419288248313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088004 (n + 1) * A094802 (A005676 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A356511.P4369111419288248313

/-! ## A356511.P7438536999270153880

`∑[A088004(n+1)*A094802(A114299(n))]`
-/

namespace A356511.P7438536999270153880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088004 (n + 1) * A094802 (A114299 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A356511.P7438536999270153880

/-!
# A356512: a(n) is the number of tilings of the Aztec diamond of order n using dominoes and square tetrominoes.

The programs for A356512, there is no canonical definition to state claims against.
-/

/-! ## A356512.P7259029063879842142

`A070924(A000244(n))-A067076(n+1)`
-/

namespace A356512.P7259029063879842142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070924 (A000244 n).toNat - A067076 (n + 1)

end

end A356512.P7259029063879842142

/-!
# A356513: a(n) is the number of tilings of the Aztec diamond of order n using horizontal skew tetrominoes and square tetrominoes.

The programs for A356513, there is no canonical definition to state claims against.
-/

/-! ## A356513.P16078004334617531396

`ceil((n+1)*A330474(n)/(n+2))`
-/

namespace A356513.P16078004334617531396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((n + 1 : ℤ) * A330474 n : ℚ) / (n + 2 : ℚ)⌉

end

end A356513.P16078004334617531396

/-! ## A356513.P11665328185059116481

`floor((3/2)^n)*A032572(floor((5/2)^n))`
-/

namespace A356513.P11665328185059116481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((3 : ℚ) / 2) ^ n⌋ * A032572 ⌊((5 : ℚ) / 2) ^ n⌋.toNat

end

end A356513.P11665328185059116481

/-!
# A356515: For any n >= 0, let x_n(1) = n, and for any b > 1, x_n(b) is the sum of digits of x_n(b-1) in base b; x_n is eventually constant, with value a(n).

The programs for A356515, there is no canonical definition to state claims against.
-/

/-! ## A356515.P7473164836869456744

`round(sqrt(lcm(3, A000120(n))/2))`
-/

namespace A356515.P7473164836869456744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt ((Int.lcm 3 (A000120 n) : ℚ) / 2 : ℝ))

end

end A356515.P7473164836869456744

/-! ## A356515.P12599062789153889392

`A008611(∑[1-∑{e}[and(n, -n), #]])`
-/

namespace A356515.P12599062789153889392
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-(n : ℤ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((∑ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A356515.P12599062789153889392

/-! ## A356515.P10454340151278888721

`A008611(∑[1-∑{e}[or(n, -n), #]])`
-/

namespace A356515.P10454340151278888721
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (-(n : ℤ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((∑ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A356515.P10454340151278888721

/-! ## A356515.P12938904779464662923

`A112779(∑[∏{e}[and(n, -n), 1-#]])`
-/

namespace A356515.P12938904779464662923
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-(n : ℤ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, (1 - (Nat.factorization (f2 n).natAbs p : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112779 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A356515.P12938904779464662923

/-! ## A356515.P13871390758955541817

`A005811(∑[∑{e}[xor(n, -n), 2-#]])`
-/

namespace A356515.P13871390758955541817
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (-(n : ℤ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, (2 - (Nat.factorization (f2 n).natAbs p : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A356515.P13871390758955541817

/-! ## A356515.P13447749545075774021

`A053735(∑[∑{e}[xor(n, -n), 2-#]])`
-/

namespace A356515.P13447749545075774021
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (-(n : ℤ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, (2 - (Nat.factorization (f2 n).natAbs p : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053735 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A356515.P13447749545075774021

/-! ## A356515.P8070349933495405748

`A165477(∑[∑{e}[xor(n, -n), 2-#]])`
-/

namespace A356515.P8070349933495405748
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (-(n : ℤ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, (2 - (Nat.factorization (f2 n).natAbs p : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165477 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A356515.P8070349933495405748

/-! ## A356515.P17099576841041263683

`gcd(a(and(n, n-1))+1, A131762(n))` with `a(0)=0`
-/

namespace A356515.P17099576841041263683
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Int.gcd (a (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat + 1 : ℤ) (A131762 n)

end

end A356515.P17099576841041263683

/-! ## A356515.P14583568617376044386

`A112779(∏{e}[2*a(and(n, n-1)), #])` with `a(0)=2`
-/

namespace A356515.P14583568617376044386
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2] fun n f1 =>
  2 * f1 (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112779 (∏ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)

end

end A356515.P14583568617376044386

/-! ## A356515.P14090784374985631933

`A005811(∑[1-∑{e}[or(n, -n), #]]-1)`
-/

namespace A356515.P14090784374985631933
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (-(n : ℤ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((∑ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 (∑ j ∈ Finset.range (n + 1), f1 j - 1).toNat

end

end A356515.P14090784374985631933

/-!
# A356516: a(n) is the least k such that A356515(k) = n.

The programs for A356516, there is no canonical definition to state claims against.
-/

/-! ## A356516.P14233897806203610708

`A000225(a(n-1)+(xor(n, -n)²+2)/3)` with `a(0)=0, a(1)=1, a(2)=3`
-/

namespace A356516.P14233897806203610708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 3] fun n a =>
  A000225 (SequenceMachineLib.roundAway ((a (n - 1) : ℚ) + (Int.xor (n : ℤ) (-(n : ℤ)) ^ 2 + 2 : ℚ) / 3)).toNat

end

end A356516.P14233897806203610708

/-!
# A356517: Square array A(n, k), n >= 2, k >= 0, read by antidiagonals upwards; A(n, k) is the least integer with sum of digits k in base n.

The programs for A356517, there is no canonical definition to state claims against.
-/

/-! ## A356517.P7980742130033970057

`A140740(∑[char[∑[n]]]²-n)-1`
-/

namespace A356517.P7980742130033970057
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140740 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n) - 1

end

end A356517.P7980742130033970057

/-! ## A356517.P2522750782771830708

`A141539(n)-A011558(A049894(n+1))`
-/

namespace A356517.P2522750782771830708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141539 n - A011558 (A049894 (n + 1)).toNat

end

end A356517.P2522750782771830708

/-! ## A356517.P10519697237791746021

`A059268(n)-A348041(A228899(n))`
-/

namespace A356517.P10519697237791746021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n - A348041 (A228899 n).toNat

end

end A356517.P10519697237791746021

/-! ## A356517.P2163806850660855887

`A141539(n)-A249351(A057861(n+1))`
-/

namespace A356517.P2163806850660855887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141539 n - A249351 (A057861 (n + 1)).toNat

end

end A356517.P2163806850660855887

/-! ## A356517.P2666315502600850837

`A141539(n)-A332903(A351241(n+1))`
-/

namespace A356517.P2666315502600850837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141539 n - A332903 (A351241 (n + 1)).toNat

end

end A356517.P2666315502600850837

/-!
# A356519: Denominators in approximations to the Aurifeuillian factors of p^p +- 1.

The programs for A356519, there is no canonical definition to state claims against.
-/

/-! ## A356519.P18298041147694010406

`∏[A030101(A006953(n+1))]`
-/

namespace A356519.P18298041147694010406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (A006953 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A356519.P18298041147694010406

/-!
# A356520: Numbers k such that A000005(A007953(k)) = A007953(k).

The programs for A356520, the canonical program `A356520.P11715847703644159576` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A356520 has offset 1).

The definition of A356520 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5133 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A356520.P11715847703644159576

`floor(A052216(n+2)/10)`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A356520

/-- `floor(A052216(n+2)/10)` -/
def P11715847703644159576.Spec : Prop :=
  ∀ n, P11715847703644159576.a n = A356520 (n + 1)

theorem P11715847703644159576.correct : P11715847703644159576.Spec := by
  intro n
  simp only [A356520, Nat.add_sub_cancel]

end A356520

/-! ## A356520.P17523000344226192988

`∩[A069263(n+1), A325112(n+1)]`
-/

namespace A356520.P17523000344226192988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069263 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325112 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A356520.P17523000344226192988

namespace A356520

/-- `∩[A069263(n+1), A325112(n+1)]` -/
def P17523000344226192988.Spec : Prop :=
  ∀ n, (P17523000344226192988.a n : ℤ) = A356520 (n + 1)

end A356520

/-! ## A356520.P7303164821876605206

`∩[A136816(n+1), A325112(n+1)]`
-/

namespace A356520.P7303164821876605206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136816 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325112 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A356520.P7303164821876605206

namespace A356520

/-- `∩[A136816(n+1), A325112(n+1)]` -/
def P7303164821876605206.Spec : Prop :=
  ∀ n, (P7303164821876605206.a n : ℤ) = A356520 (n + 1)

end A356520

/-! ## A356520.P14427527527711576333

`∩[A136819(n+1), A325112(n+1)]`
-/

namespace A356520.P14427527527711576333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136819 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325112 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A356520.P14427527527711576333

namespace A356520

/-- `∩[A136819(n+1), A325112(n+1)]` -/
def P14427527527711576333.Spec : Prop :=
  ∀ n, (P14427527527711576333.a n : ℤ) = A356520 (n + 1)

end A356520

/-! ## A356520.P816474082064549963

`∩[A136821(n+1), A325112(n+1)]`
-/

namespace A356520.P816474082064549963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136821 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325112 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A356520.P816474082064549963

namespace A356520

/-- `∩[A136821(n+1), A325112(n+1)]` -/
def P816474082064549963.Spec : Prop :=
  ∀ n, (P816474082064549963.a n : ℤ) = A356520 (n + 1)

end A356520

/-! ## A356520.P5113423364302219261

`∩[A136810(n+1), A325112(n+1)]`
-/

namespace A356520.P5113423364302219261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136810 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325112 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A356520.P5113423364302219261

namespace A356520

/-- `∩[A136810(n+1), A325112(n+1)]` -/
def P5113423364302219261.Spec : Prop :=
  ∀ n, (P5113423364302219261.a n : ℤ) = A356520 (n + 1)

end A356520

/-! ## A356520.P16185596375926201582

`∩[A325112(n+1), A169683(n)]`
-/

namespace A356520.P16185596375926201582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325112 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169683 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A356520.P16185596375926201582

namespace A356520

/-- `∩[A325112(n+1), A169683(n)]` -/
def P16185596375926201582.Spec : Prop :=
  ∀ n, (P16185596375926201582.a n : ℤ) = A356520 (n + 1)

end A356520

/-! ## A356520.P9846212490137596756

`A381668(A023745(n+2))`
-/

namespace A356520.P9846212490137596756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381668 (A023745 (n + 2)).toNat

end

end A356520.P9846212490137596756

namespace A356520

/-- `A381668(A023745(n+2))` -/
def P9846212490137596756.Spec : Prop :=
  ∀ n, P9846212490137596756.a n = A356520 (n + 1)

end A356520

/-!
# A356521: The constant coefficient of (x + x*y + y + 1/(x*y))^n.

The programs for A356521, there is no canonical definition to state claims against.
-/

/-! ## A356521.P13309920698407400872

`lcm(A078008(n), A102347(A051295(n)))`
-/

namespace A356521.P13309920698407400872
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A078008 n) (A102347 (A051295 n).toNat)

end

end A356521.P13309920698407400872

/-! ## A356521.P8355130058276121564

`A031007(A116540(n+1))*A078008(n)`
-/

namespace A356521.P8355130058276121564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031007 (A116540 (n + 1)).toNat * A078008 n

end

end A356521.P8355130058276121564

/-! ## A356521.P2044892240529695189

`A059953(A147414(n+1))*A078008(n)`
-/

namespace A356521.P2044892240529695189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059953 (A147414 (n + 1)).toNat * A078008 n

end

end A356521.P2044892240529695189

/-!
# A356522: Numbers that are nim cubes; numbers in A335170.

The programs for A356522, there is no canonical definition to state claims against.
-/

/-! ## A356522.P12754303835405548384

`eq[1, A055277(A333862(n))]`
-/

namespace A356522.P12754303835405548384
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055277 (A333862 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A356522.P12754303835405548384

/-! ## A356522.P9265396376241208504

`lt[A180094(n), A048896(A333862(n))]`
-/

namespace A356522.P9265396376241208504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180094 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048896 (A333862 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A356522.P9265396376241208504

/-! ## A356522.P18184064092163429793

`lt[A121549(A101624(n)), A084612(n)]`
-/

namespace A356522.P18184064092163429793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121549 (A101624 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084612 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A356522.P18184064092163429793

/-! ## A356522.P1897173120570918035

`lt[A236840(n+1), A359762(A324697(n+1))]`
-/

namespace A356522.P1897173120570918035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236840 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359762 (A324697 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A356522.P1897173120570918035

/-! ## A356522.P16810910368621801579

`lt[A328966(3*(n+2)), A118040(A070080(n+1))]`
-/

namespace A356522.P16810910368621801579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328966 (3 * (n + 2))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118040 (A070080 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A356522.P16810910368621801579

/-!
# A356524: Expansion of e.g.f. Product_{k>0} 1/(1 - k * x^k)^(1/k!).

The programs for A356524, there is no canonical definition to state claims against.
-/

/-! ## A356524.P8445263749464828712

`A151871(A216857(n))+n`
-/

namespace A356524.P8445263749464828712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151871 (A216857 n).toNat + (n : ℤ)

end

end A356524.P8445263749464828712

/-! ## A356524.P943470435769452701

`A346941(n)+A056968(A059167(n))`
-/

namespace A356524.P943470435769452701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346941 n + A056968 (A059167 n).toNat

end

end A356524.P943470435769452701

/-!
# A356529: a(n) = (n-1)! * Sum_{d|n} d^(n-d+1).

The programs for A356529, there is no canonical definition to state claims against.
-/

/-! ## A356529.P7881832575659918293

`n!*A342675(n+1)`
-/

namespace A356529.P7881832575659918293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A342675 (n + 1)

end

end A356529.P7881832575659918293

/-! ## A356529.P14677689355377589528

`n!*∑{d}[n+1, #^(n+2-#)]`
-/

namespace A356529.P14677689355377589528
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℚ) * (∑ d ∈ Nat.divisors (f1 n), (d : ℚ) ^ ((n + 2 : ℤ) - (d : ℤ) : ℤ))

end

end A356529.P14677689355377589528

/-! ## A356529.P2142808389345128865

`∑{d}[n+1, #^(n+2-#)]*A000142(n)`
-/

namespace A356529.P2142808389345128865
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∑ d ∈ Nat.divisors (f1 n), (d : ℚ) ^ ((n + 2 : ℤ) - (d : ℤ) : ℤ)) * (A000142 n : ℚ)

end

end A356529.P2142808389345128865

/-! ## A356529.P5332591218437986072

`A000142(n)*A342675(n+1)`
-/

namespace A356529.P5332591218437986072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A342675 (n + 1)

end

end A356529.P5332591218437986072

/-! ## A356529.P4173776822464544711

`∏[A028310(n)]*A342675(n+1)`
-/

namespace A356529.P4173776822464544711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * A342675 (n + 1)

end

end A356529.P4173776822464544711

/-!
# A356530: Expansion of e.g.f. Product_{k>0} 1/(1 - (k * x)^k)^(1/k^k).

The programs for A356530, there is no canonical definition to state claims against.
-/

/-! ## A356530.P4012391609691413729

`A028310(A356560(n))`
-/

namespace A356530.P4012391609691413729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A356560 n).toNat

end

end A356530.P4012391609691413729

/-! ## A356530.P3216494792348952386

`A324546(A356560(n)+1)`
-/

namespace A356530.P3216494792348952386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324546 (A356560 n + 1).toNat

end

end A356530.P3216494792348952386

/-!
# A356531: Primes p == 1 (mod 23) which are norms of elements in the 23rd cyclotomic field.

The programs for A356531, there is no canonical definition to state claims against.
-/

/-! ## A356531.P15157902265688355264

`p?[A035209(n)]`
-/

namespace A356531.P15157902265688355264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035209 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A356531.P15157902265688355264

/-! ## A356531.P15608491526886683797

`A035209(A099260(n))`
-/

namespace A356531.P15608491526886683797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035209 (A099260 n).toNat

end

end A356531.P15608491526886683797

/-! ## A356531.P16393255145865389835

`filter[A035209(n), A010051(#)]`
-/

namespace A356531.P16393255145865389835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035209 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A356531.P16393255145865389835

/-! ## A356531.P5774904473183765208

`filter[A035209(n), A049240(#)]`
-/

namespace A356531.P5774904473183765208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035209 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A049240 (f1 j).toNat = 1) n)

end

end A356531.P5774904473183765208

/-! ## A356531.P17198669743177838448

`filter[A035209(n), A066829(#)]`
-/

namespace A356531.P17198669743177838448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035209 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066829 (f1 j).toNat = 1) n)

end

end A356531.P17198669743177838448

/-!
# A356533: a(n) = sigma_2(n)^2.

The programs for A356533, the canonical program `A356533.P11774335523977616474` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A356533 has offset 1).

The definition of A356533 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001157, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A356533.P11774335523977616474

`A001157(n+1)²`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A356533

/-- `A001157(n+1)²` -/
def P11774335523977616474.Spec : Prop :=
  ∀ n, P11774335523977616474.a n = A356533 (n + 1)

theorem P11774335523977616474.correct : P11774335523977616474.Spec := by
  intro n
  simp only [A356533, Nat.add_sub_cancel]

end A356533

/-! ## A356533.P3616681682515866962

`∑{d}[n+1, #²]²`
-/

namespace A356533.P3616681682515866962
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ d ∈ Nat.divisors (f1 n), d ^ 2) ^ 2

end

end A356533.P3616681682515866962

namespace A356533

/-- `∑{d}[n+1, #²]²` -/
def P3616681682515866962.Spec : Prop :=
  ∀ n, (P3616681682515866962.a n : ℤ) = A356533 (n + 1)

end A356533

/-! ## A356533.P11715219555857545746

`(A328259(n+1)/(n+1))²`
-/

namespace A356533.P11715219555857545746
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A328259 (n + 1) : ℚ) / (n + 1 : ℚ)) ^ 2

end

end A356533.P11715219555857545746

namespace A356533

/-- `(A328259(n+1)/(n+1))²` -/
def P11715219555857545746.Spec : Prop :=
  ∀ n, P11715219555857545746.a n = (A356533 (n + 1) : ℚ)

end A356533

/-! ## A356533.P12956929385279694053

`(A067558(n+1)+(n+1)²)²`
-/

namespace A356533.P12956929385279694053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A067558 (n + 1) + ((n + 1) ^ 2 : ℤ)) ^ 2

end

end A356533.P12956929385279694053

namespace A356533

/-- `(A067558(n+1)+(n+1)²)²` -/
def P12956929385279694053.Spec : Prop :=
  ∀ n, P12956929385279694053.a n = A356533 (n + 1)

end A356533

/-! ## A356533.P3728334130318833136

`(A386745(n+1)/(n+1)²)²`
-/

namespace A356533.P3728334130318833136
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A386745 (n + 1) : ℚ) / ((n + 1) ^ 2 : ℚ)) ^ 2

end

end A356533.P3728334130318833136

namespace A356533

/-- `(A386745(n+1)/(n+1)²)²` -/
def P3728334130318833136.Spec : Prop :=
  ∀ n, P3728334130318833136.a n = (A356533 (n + 1) : ℚ)

end A356533

/-! ## A356533.P12150390150734562350

`(A069153(n+1)+A007437(n+1))²`
-/

namespace A356533.P12150390150734562350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A069153 (n + 1) + A007437 (n + 1)) ^ 2

end

end A356533.P12150390150734562350

namespace A356533

/-- `(A069153(n+1)+A007437(n+1))²` -/
def P12150390150734562350.Spec : Prop :=
  ∀ n, P12150390150734562350.a n = A356533 (n + 1)

end A356533

/-! ## A356533.P10217003724064147081

`(A086666(n+1)+A000203(n+1))²`
-/

namespace A356533.P10217003724064147081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A086666 (n + 1) + A000203 (n + 1)) ^ 2

end

end A356533.P10217003724064147081

namespace A356533

/-- `(A086666(n+1)+A000203(n+1))²` -/
def P10217003724064147081.Spec : Prop :=
  ∀ n, P10217003724064147081.a n = A356533 (n + 1)

end A356533

/-! ## A356533.P4385254922795274596

`(A189120(n+1)+A005063(n+1))²`
-/

namespace A356533.P4385254922795274596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A189120 (n + 1) + A005063 (n + 1)) ^ 2

end

end A356533.P4385254922795274596

namespace A356533

/-- `(A189120(n+1)+A005063(n+1))²` -/
def P4385254922795274596.Spec : Prop :=
  ∀ n, P4385254922795274596.a n = A356533 (n + 1)

end A356533

/-! ## A356533.P9663613383474986070

`(A189835(n+1)+A038040(n+1))²`
-/

namespace A356533.P9663613383474986070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A189835 (n + 1) + A038040 (n + 1)) ^ 2

end

end A356533.P9663613383474986070

namespace A356533

/-- `(A189835(n+1)+A038040(n+1))²` -/
def P9663613383474986070.Spec : Prop :=
  ∀ n, P9663613383474986070.a n = A356533 (n + 1)

end A356533

/-! ## A356533.P11477086175876086044

`(A001158(n+1)-A092349(n+1))²`
-/

namespace A356533.P11477086175876086044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001158 (n + 1) - A092349 (n + 1)) ^ 2

end

end A356533.P11477086175876086044

namespace A356533

/-- `(A001158(n+1)-A092349(n+1))²` -/
def P11477086175876086044.Spec : Prop :=
  ∀ n, P11477086175876086044.a n = A356533 (n + 1)

end A356533

/-! ## A356533.P15545275427788764176

`(A064987(n+1)-A303384(n+1))²`
-/

namespace A356533.P15545275427788764176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A064987 (n + 1) - A303384 (n + 1)) ^ 2

end

end A356533.P15545275427788764176

namespace A356533

/-- `(A064987(n+1)-A303384(n+1))²` -/
def P15545275427788764176.Spec : Prop :=
  ∀ n, P15545275427788764176.a n = A356533 (n + 1)

end A356533

/-! ## A356533.P3784711084687256481

`A379814(n+1)²/A356534(n+1)`
-/

namespace A356533.P3784711084687256481
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A379814 (n + 1) ^ 2 : ℚ) / (A356534 (n + 1) : ℚ)

end

end A356533.P3784711084687256481

namespace A356533

/-- `A379814(n+1)²/A356534(n+1)` -/
def P3784711084687256481.Spec : Prop :=
  ∀ n, P3784711084687256481.a n = (A356533 (n + 1) : ℚ)

end A356533

/-! ## A356533.P6649537263780328929

`(A000203(n+1)²-A066293(n+1))²`
-/

namespace A356533.P6649537263780328929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) ^ 2 - A066293 (n + 1)) ^ 2

end

end A356533.P6649537263780328929

namespace A356533

/-- `(A000203(n+1)²-A066293(n+1))²` -/
def P6649537263780328929.Spec : Prop :=
  ∀ n, P6649537263780328929.a n = A356533 (n + 1)

end A356533

/-! ## A356533.P3639910195213063833

`A379814(n+1)²/A001158(n+1)²`
-/

namespace A356533.P3639910195213063833
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A379814 (n + 1) ^ 2 : ℚ) / (A001158 (n + 1) ^ 2 : ℚ)

end

end A356533.P3639910195213063833

namespace A356533

/-- `A379814(n+1)²/A001158(n+1)²` -/
def P3639910195213063833.Spec : Prop :=
  ∀ n, P3639910195213063833.a n = (A356533 (n + 1) : ℚ)

end A356533

/-! ## A356533.P1957127570712859058

`∑{d}[n+1, A034678(#)*A034714((n+1)/#)]`
-/

namespace A356533.P1957127570712859058
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A034678 d * A034714 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A356533.P1957127570712859058

namespace A356533

/-- `∑{d}[n+1, A034678(#)*A034714((n+1)/#)]` -/
def P1957127570712859058.Spec : Prop :=
  ∀ n, P1957127570712859058.a n = A356533 (n + 1)

end A356533

/-! ## A356533.P12551068938269169372

`(A069153(n+1)+A007437(n+1))*A001157(n+1)`
-/

namespace A356533.P12551068938269169372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A069153 (n + 1) + A007437 (n + 1)) * A001157 (n + 1)

end

end A356533.P12551068938269169372

namespace A356533

/-- `(A069153(n+1)+A007437(n+1))*A001157(n+1)` -/
def P12551068938269169372.Spec : Prop :=
  ∀ n, P12551068938269169372.a n = A356533 (n + 1)

end A356533

/-! ## A356533.P4809376729129611911

`(A086666(n+1)+A000203(n+1))*A001157(n+1)`
-/

namespace A356533.P4809376729129611911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A086666 (n + 1) + A000203 (n + 1)) * A001157 (n + 1)

end

end A356533.P4809376729129611911

namespace A356533

/-- `(A086666(n+1)+A000203(n+1))*A001157(n+1)` -/
def P4809376729129611911.Spec : Prop :=
  ∀ n, P4809376729129611911.a n = A356533 (n + 1)

end A356533

/-! ## A356533.P13277615320262969274

`(A189120(n+1)+A005063(n+1))*A001157(n+1)`
-/

namespace A356533.P13277615320262969274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A189120 (n + 1) + A005063 (n + 1)) * A001157 (n + 1)

end

end A356533.P13277615320262969274

namespace A356533

/-- `(A189120(n+1)+A005063(n+1))*A001157(n+1)` -/
def P13277615320262969274.Spec : Prop :=
  ∀ n, P13277615320262969274.a n = A356533 (n + 1)

end A356533

/-! ## A356533.P14072676533413955855

`(A189835(n+1)+A038040(n+1))*A001157(n+1)`
-/

namespace A356533.P14072676533413955855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A189835 (n + 1) + A038040 (n + 1)) * A001157 (n + 1)

end

end A356533.P14072676533413955855

namespace A356533

/-- `(A189835(n+1)+A038040(n+1))*A001157(n+1)` -/
def P14072676533413955855.Spec : Prop :=
  ∀ n, P14072676533413955855.a n = A356533 (n + 1)

end A356533

/-! ## A356533.P5386982788585850048

`(A001158(n+1)-A092349(n+1))*A001157(n+1)`
-/

namespace A356533.P5386982788585850048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001158 (n + 1) - A092349 (n + 1)) * A001157 (n + 1)

end

end A356533.P5386982788585850048

namespace A356533

/-- `(A001158(n+1)-A092349(n+1))*A001157(n+1)` -/
def P5386982788585850048.Spec : Prop :=
  ∀ n, P5386982788585850048.a n = A356533 (n + 1)

end A356533

/-!
# A356534: a(n) = sigma_3(n)^2.

The programs for A356534, the canonical program `A356534.P12552150373399321` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A356534 has offset 1).

The definition of A356534 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A356534.P12552150373399321

`∑{d}[n+1, #^3]²`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A356534

/-- `∑{d}[n+1, #^3]²` -/
def P12552150373399321.Spec : Prop :=
  ∀ n, (P12552150373399321.a n : ℤ) = A356534 (n + 1)

theorem P12552150373399321.correct : P12552150373399321.Spec := by
  intro n
  simp only [A356534, Nat.add_sub_cancel]

end A356534

/-! ## A356534.P12871886545126768303

`∑{d}[n+1, #^3]^2`
-/

namespace A356534.P12871886545126768303
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ d ∈ Nat.divisors (f1 n), d ^ 3) ^ 2

end

end A356534.P12871886545126768303

namespace A356534

/-- `∑{d}[n+1, #^3]^2` -/
def P12871886545126768303.Spec : Prop :=
  ∀ n, (P12871886545126768303.a n : ℤ) = A356534 (n + 1)

theorem P12871886545126768303.correct : P12871886545126768303.Spec := by
  intro n
  simp only [A356534, Nat.add_sub_cancel, A356534.P12871886545126768303.f1, A356534.P12871886545126768303.a, A356534.P12552150373399321.f1, A356534.P12552150373399321.a, SequenceMachineLib.memo_apply]

end A356534

/-! ## A356534.P13938378425073476699

`round(sqrt(∑{d}[n+1, #*#²]²+1))²`
-/

namespace A356534.P13938378425073476699
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (((∑ d ∈ Nat.divisors (f1 n), d * d ^ 2) ^ 2 + 1 : ℕ) : ℝ)) ^ 2

end

end A356534.P13938378425073476699

namespace A356534

/-- `round(sqrt(∑{d}[n+1, #*#²]²+1))²` -/
def P13938378425073476699.Spec : Prop :=
  ∀ n, P13938378425073476699.a n = A356534 (n + 1)

end A356534

/-! ## A356534.P9963836657198799713

`(∑{d}[n+1, (#-1)*#²]+∑{d}[n+1, #²])²`
-/

namespace A356534.P9963836657198799713
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ d ∈ Nat.divisors (f1 n), ((d : ℤ) - 1) * (d ^ 2 : ℤ) + ((∑ d ∈ Nat.divisors (f2 n), d ^ 2 : ℕ) : ℤ)) ^ 2

end

end A356534.P9963836657198799713

namespace A356534

/-- `(∑{d}[n+1, (#-1)*#²]+∑{d}[n+1, #²])²` -/
def P9963836657198799713.Spec : Prop :=
  ∀ n, P9963836657198799713.a n = A356534 (n + 1)

end A356534

/-! ## A356534.P1545791009415980059

`A001158(n+1)²`
-/

namespace A356534.P1545791009415980059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001158 (n + 1) ^ 2

end

end A356534.P1545791009415980059

namespace A356534

/-- `A001158(n+1)²` -/
def P1545791009415980059.Spec : Prop :=
  ∀ n, P1545791009415980059.a n = A356534 (n + 1)

end A356534

/-! ## A356534.P13472626813402235048

`(A092348(n+1)+A000203(n+1))²`
-/

namespace A356534.P13472626813402235048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A092348 (n + 1) + A000203 (n + 1)) ^ 2

end

end A356534.P13472626813402235048

namespace A356534

/-- `(A092348(n+1)+A000203(n+1))²` -/
def P13472626813402235048.Spec : Prop :=
  ∀ n, P13472626813402235048.a n = A356534 (n + 1)

end A356534

/-! ## A356534.P13413638752042783034

`(A092349(n+1)+A001157(n+1))²`
-/

namespace A356534.P13413638752042783034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A092349 (n + 1) + A001157 (n + 1)) ^ 2

end

end A356534.P13413638752042783034

namespace A356534

/-- `(A092349(n+1)+A001157(n+1))²` -/
def P13413638752042783034.Spec : Prop :=
  ∀ n, P13413638752042783034.a n = A356534 (n + 1)

end A356534

/-! ## A356534.P11716193281723139069

`(A279290(n+1)+A005064(n+1))²`
-/

namespace A356534.P11716193281723139069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A279290 (n + 1) + A005064 (n + 1)) ^ 2

end

end A356534.P11716193281723139069

namespace A356534

/-- `(A279290(n+1)+A005064(n+1))²` -/
def P11716193281723139069.Spec : Prop :=
  ∀ n, P11716193281723139069.a n = A356534 (n + 1)

end A356534

/-! ## A356534.P694048573637196254

`(A051000(n+1)*A318935(n+1))²`
-/

namespace A356534.P694048573637196254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A051000 (n + 1) * A318935 (n + 1)) ^ 2

end

end A356534.P694048573637196254

namespace A356534

/-- `(A051000(n+1)*A318935(n+1))²` -/
def P694048573637196254.Spec : Prop :=
  ∀ n, P694048573637196254.a n = A356534 (n + 1)

end A356534

/-! ## A356534.P9818359377859537464

`(A379813(n+1)/A000203(n+1))²`
-/

namespace A356534.P9818359377859537464
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A379813 (n + 1) : ℚ) / (A000203 (n + 1) : ℚ)) ^ 2

end

end A356534.P9818359377859537464

namespace A356534

/-- `(A379813(n+1)/A000203(n+1))²` -/
def P9818359377859537464.Spec : Prop :=
  ∀ n, P9818359377859537464.a n = (A356534 (n + 1) : ℚ)

end A356534

/-! ## A356534.P200931917565516475

`(A379814(n+1)/A001157(n+1))²`
-/

namespace A356534.P200931917565516475
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A379814 (n + 1) : ℚ) / (A001157 (n + 1) : ℚ)) ^ 2

end

end A356534.P200931917565516475

namespace A356534

/-- `(A379814(n+1)/A001157(n+1))²` -/
def P200931917565516475.Spec : Prop :=
  ∀ n, P200931917565516475.a n = (A356534 (n + 1) : ℚ)

end A356534

/-! ## A356534.P8269044772536953593

`A379813(n+1)²/A072861(n+1)`
-/

namespace A356534.P8269044772536953593
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A379813 (n + 1) ^ 2 : ℚ) / (A072861 (n + 1) : ℚ)

end

end A356534.P8269044772536953593

namespace A356534

/-- `A379813(n+1)²/A072861(n+1)` -/
def P8269044772536953593.Spec : Prop :=
  ∀ n, P8269044772536953593.a n = (A356534 (n + 1) : ℚ)

end A356534

/-! ## A356534.P4482406380390407317

`∑{d}[n+1, A034680(#)*A386012((n+1)/#)]`
-/

namespace A356534.P4482406380390407317
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A034680 d * A386012 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A356534.P4482406380390407317

namespace A356534

/-- `∑{d}[n+1, A034680(#)*A386012((n+1)/#)]` -/
def P4482406380390407317.Spec : Prop :=
  ∀ n, P4482406380390407317.a n = A356534 (n + 1)

end A356534

/-! ## A356534.P5656062968038329726

`A001158(A000027(n+1))*A001158(n+1)`
-/

namespace A356534.P5656062968038329726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001158 (A000027 (n + 1)).toNat * A001158 (n + 1)

end

end A356534.P5656062968038329726

namespace A356534

/-- `A001158(A000027(n+1))*A001158(n+1)` -/
def P5656062968038329726.Spec : Prop :=
  ∀ n, P5656062968038329726.a n = A356534 (n + 1)

end A356534

/-! ## A356534.P11747566189887542381

`(A092349(n+1)+A001157(n+1))*A001158(n+1)`
-/

namespace A356534.P11747566189887542381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A092349 (n + 1) + A001157 (n + 1)) * A001158 (n + 1)

end

end A356534.P11747566189887542381

namespace A356534

/-- `(A092349(n+1)+A001157(n+1))*A001158(n+1)` -/
def P11747566189887542381.Spec : Prop :=
  ∀ n, P11747566189887542381.a n = A356534 (n + 1)

end A356534

/-! ## A356534.P12823026956851789741

`(A279290(n+1)+A005064(n+1))*A001158(n+1)`
-/

namespace A356534.P12823026956851789741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A279290 (n + 1) + A005064 (n + 1)) * A001158 (n + 1)

end

end A356534.P12823026956851789741

namespace A356534

/-- `(A279290(n+1)+A005064(n+1))*A001158(n+1)` -/
def P12823026956851789741.Spec : Prop :=
  ∀ n, P12823026956851789741.a n = A356534 (n + 1)

end A356534

/-! ## A356534.P7130737279381990627

`A091259(n+1)/A091258(n+1)*A379813(n+1)`
-/

namespace A356534.P7130737279381990627
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A091259 (n + 1) : ℚ) / (A091258 (n + 1) : ℚ) * (A379813 (n + 1) : ℚ)

end

end A356534.P7130737279381990627

namespace A356534

/-- `A091259(n+1)/A091258(n+1)*A379813(n+1)` -/
def P7130737279381990627.Spec : Prop :=
  ∀ n, P7130737279381990627.a n = (A356534 (n + 1) : ℚ)

end A356534

/-! ## A356534.P6993766521426980885

`Δ[∑[4*∑{d}[n, #^3]]/4]²`
-/

namespace A356534.P6993766521426980885
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (∑ d ∈ Nat.divisors (f3 n), d ^ 3)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A356534.P6993766521426980885

namespace A356534

/-- `Δ[∑[4*∑{d}[n, #^3]]/4]²` -/
def P6993766521426980885.Spec : Prop :=
  ∀ n, P6993766521426980885.a n = (A356534 (n + 1) : ℚ)

end A356534

/-! ## A356534.P1324016375501400762

`(A281372(n+1)/(n+1))²`
-/

namespace A356534.P1324016375501400762
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A281372 (n + 1) : ℚ) / (n + 1 : ℚ)) ^ 2

end

end A356534.P1324016375501400762

namespace A356534

/-- `(A281372(n+1)/(n+1))²` -/
def P1324016375501400762.Spec : Prop :=
  ∀ n, P1324016375501400762.a n = (A356534 (n + 1) : ℚ)

end A356534

/-! ## A356534.P6378198017564111685

`(A282099(n+1)/(n+1)²)²`
-/

namespace A356534.P6378198017564111685
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A282099 (n + 1) : ℚ) / ((n + 1) ^ 2 : ℚ)) ^ 2

end

end A356534.P6378198017564111685

namespace A356534

/-- `(A282099(n+1)/(n+1)²)²` -/
def P6378198017564111685.Spec : Prop :=
  ∀ n, P6378198017564111685.a n = (A356534 (n + 1) : ℚ)

end A356534

/-!
# A356535: a(n) = Sum_{k=1..n} sigma_2(k)^2.

The programs for A356535, the canonical program `A356535.P10393813371317612542` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A356535 has offset 1).

The definition of A356535 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A356535.P10393813371317612542

`∑[∑{d}[n+1, #²]²]`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A356535

/-- `∑[∑{d}[n+1, #²]²]` -/
def P10393813371317612542.Spec : Prop :=
  ∀ n, (P10393813371317612542.a n : ℤ) = A356535 (n + 1)

theorem P10393813371317612542.correct : P10393813371317612542.Spec := by
  intro n
  simp only [A356535, Nat.add_sub_cancel]

end A356535

/-! ## A356535.P490523170345797830

`a(n-1)+∑{d}[n+1, #²]²` with `a(0)=1`
-/

namespace A356535.P490523170345797830
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (∑ d ∈ Nat.divisors (f1 n), d ^ 2) ^ 2

end

end A356535.P490523170345797830

namespace A356535

/-- `a(n-1)+∑{d}[n+1, #²]²` -/
def P490523170345797830.Spec : Prop :=
  ∀ n, (P490523170345797830.a n : ℤ) = A356535 (n + 1)

end A356535

/-! ## A356535.P18147412392456179052

`∑[A356533(n+1)]`
-/

namespace A356535.P18147412392456179052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356533 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A356535.P18147412392456179052

namespace A356535

/-- `∑[A356533(n+1)]` -/
def P18147412392456179052.Spec : Prop :=
  ∀ n, P18147412392456179052.a n = A356535 (n + 1)

end A356535

/-! ## A356535.P16391299644348925143

`∑[A001157(n+1)²]`
-/

namespace A356535.P16391299644348925143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001157 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A356535.P16391299644348925143

namespace A356535

/-- `∑[A001157(n+1)²]` -/
def P16391299644348925143.Spec : Prop :=
  ∀ n, P16391299644348925143.a n = A356535 (n + 1)

end A356535

/-! ## A356535.P6636483247543956726

`∑[(A328259(n+1)/(n+1))²]`
-/

namespace A356535.P6636483247543956726
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A328259 (n + 1) : ℚ) / (n + 1 : ℚ)) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A356535.P6636483247543956726

namespace A356535

/-- `∑[(A328259(n+1)/(n+1))²]` -/
def P6636483247543956726.Spec : Prop :=
  ∀ n, P6636483247543956726.a n = (A356535 (n + 1) : ℚ)

end A356535

/-! ## A356535.P6057616490049648190

`∑[(A189120(n+1)+A005063(n+1))²]`
-/

namespace A356535.P6057616490049648190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A189120 (n + 1) + A005063 (n + 1)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A356535.P6057616490049648190

namespace A356535

/-- `∑[(A189120(n+1)+A005063(n+1))²]` -/
def P6057616490049648190.Spec : Prop :=
  ∀ n, P6057616490049648190.a n = A356535 (n + 1)

end A356535

/-! ## A356535.P10982623162304126786

`∑[(A064987(n+1)-A303384(n+1))²]`
-/

namespace A356535.P10982623162304126786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A064987 (n + 1) - A303384 (n + 1)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A356535.P10982623162304126786

namespace A356535

/-- `∑[(A064987(n+1)-A303384(n+1))²]` -/
def P10982623162304126786.Spec : Prop :=
  ∀ n, P10982623162304126786.a n = A356535 (n + 1)

end A356535

/-! ## A356535.P13192341252690286633

`∑[(A158274(n+1)*A179931(n+1))²]`
-/

namespace A356535.P13192341252690286633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A158274 (n + 1) * A179931 (n + 1)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A356535.P13192341252690286633

namespace A356535

/-- `∑[(A158274(n+1)*A179931(n+1))²]` -/
def P13192341252690286633.Spec : Prop :=
  ∀ n, P13192341252690286633.a n = A356535 (n + 1)

end A356535

/-! ## A356535.P1949828599069296138

`∑[(A050999(n+1)*A296306(n+1))²]`
-/

namespace A356535.P1949828599069296138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A050999 (n + 1) * A296306 (n + 1)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A356535.P1949828599069296138

namespace A356535

/-- `∑[(A050999(n+1)*A296306(n+1))²]` -/
def P1949828599069296138.Spec : Prop :=
  ∀ n, P1949828599069296138.a n = A356535 (n + 1)

end A356535

/-! ## A356535.P1344391717179809790

`∑[(A000203(n+1)²-A066293(n+1))²]`
-/

namespace A356535.P1344391717179809790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) ^ 2 - A066293 (n + 1)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A356535.P1344391717179809790

namespace A356535

/-- `∑[(A000203(n+1)²-A066293(n+1))²]` -/
def P1344391717179809790.Spec : Prop :=
  ∀ n, P1344391717179809790.a n = A356535 (n + 1)

end A356535

/-! ## A356535.P17919309466762213231

`∑[(A053807(n+2)+1)²]`
-/

namespace A356535.P17919309466762213231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A053807 (n + 2) + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A356535.P17919309466762213231

namespace A356535

/-- `∑[(A053807(n+2)+1)²]` -/
def P17919309466762213231.Spec : Prop :=
  ∀ n, P17919309466762213231.a n = A356535 (n + 1)

end A356535

/-! ## A356535.P15145424918818695701

`∑[A035316((n+1)²)²]`
-/

namespace A356535.P15145424918818695701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035316 ((n + 1) ^ 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A356535.P15145424918818695701

namespace A356535

/-- `∑[A035316((n+1)²)²]` -/
def P15145424918818695701.Spec : Prop :=
  ∀ n, P15145424918818695701.a n = A356535 (n + 1)

end A356535

/-! ## A356535.P18055326478842474702

`∑[A076752((n+1)²)²]`
-/

namespace A356535.P18055326478842474702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076752 ((n + 1) ^ 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A356535.P18055326478842474702

namespace A356535

/-- `∑[A076752((n+1)²)²]` -/
def P18055326478842474702.Spec : Prop :=
  ∀ n, P18055326478842474702.a n = A356535 (n + 1)

end A356535

/-! ## A356535.P8211591153717666115

`∑[A365172((n+1)²)²]`
-/

namespace A356535.P8211591153717666115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365172 ((n + 1) ^ 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A356535.P8211591153717666115

namespace A356535

/-- `∑[A365172((n+1)²)²]` -/
def P8211591153717666115.Spec : Prop :=
  ∀ n, P8211591153717666115.a n = A356535 (n + 1)

end A356535

/-! ## A356535.P5141475511940731623

`∑[A367989((n+1)²)²]`
-/

namespace A356535.P5141475511940731623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367989 ((n + 1) ^ 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A356535.P5141475511940731623

namespace A356535

/-- `∑[A367989((n+1)²)²]` -/
def P5141475511940731623.Spec : Prop :=
  ∀ n, P5141475511940731623.a n = A356535 (n + 1)

end A356535

/-!
# A356536: a(n) = Sum_{k=1..n} sigma_3(k)^2.

The programs for A356536, the canonical program `A356536.P17202211988731151882` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A356536 has offset 1).

The definition of A356536 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A356536.P17202211988731151882

`∑[∑{d}[n+1, #^3]²]`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A356536

/-- `∑[∑{d}[n+1, #^3]²]` -/
def P17202211988731151882.Spec : Prop :=
  ∀ n, (P17202211988731151882.a n : ℤ) = A356536 (n + 1)

theorem P17202211988731151882.correct : P17202211988731151882.Spec := by
  intro n
  simp only [A356536, Nat.add_sub_cancel]

end A356536

/-! ## A356536.P3983922484352024892

`∑[round(sqrt(∑{d}[n+1, #*#²]²+1))²]`
-/

namespace A356536.P3983922484352024892
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (((∑ d ∈ Nat.divisors (f2 n), d * d ^ 2) ^ 2 + 1 : ℕ) : ℝ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A356536.P3983922484352024892

namespace A356536

/-- `∑[round(sqrt(∑{d}[n+1, #*#²]²+1))²]` -/
def P3983922484352024892.Spec : Prop :=
  ∀ n, P3983922484352024892.a n = A356536 (n + 1)

end A356536

/-! ## A356536.P12347519294315491654

`∑[A356534(n+1)]`
-/

namespace A356536.P12347519294315491654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356534 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A356536.P12347519294315491654

namespace A356536

/-- `∑[A356534(n+1)]` -/
def P12347519294315491654.Spec : Prop :=
  ∀ n, P12347519294315491654.a n = A356536 (n + 1)

end A356536

/-! ## A356536.P6712238686210576303

`∑[A001158(n+1)²]`
-/

namespace A356536.P6712238686210576303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001158 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A356536.P6712238686210576303

namespace A356536

/-- `∑[A001158(n+1)²]` -/
def P6712238686210576303.Spec : Prop :=
  ∀ n, P6712238686210576303.a n = A356536 (n + 1)

end A356536

/-! ## A356536.P13017432326767846197

`∑[(A092349(n+1)+A001157(n+1))²]`
-/

namespace A356536.P13017432326767846197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A092349 (n + 1) + A001157 (n + 1)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A356536.P13017432326767846197

namespace A356536

/-- `∑[(A092349(n+1)+A001157(n+1))²]` -/
def P13017432326767846197.Spec : Prop :=
  ∀ n, P13017432326767846197.a n = A356536 (n + 1)

end A356536

/-! ## A356536.P15979810834137958914

`∑[Δ[∑[4*∑{d}[n, #^3]]/4]²]`
-/

namespace A356536.P15979810834137958914
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (∑ d ∈ Nat.divisors (f4 n), d ^ 3)

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f3 j : ℕ) : ℚ) / 4

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A356536.P15979810834137958914

namespace A356536

/-- `∑[Δ[∑[4*∑{d}[n, #^3]]/4]²]` -/
def P15979810834137958914.Spec : Prop :=
  ∀ n, P15979810834137958914.a n = (A356536 (n + 1) : ℚ)

end A356536

/-! ## A356536.P18067623167810338041

`∑[(A281372(n+1)/(n+1))²]`
-/

namespace A356536.P18067623167810338041
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A281372 (n + 1) : ℚ) / (n + 1 : ℚ)) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A356536.P18067623167810338041

namespace A356536

/-- `∑[(A281372(n+1)/(n+1))²]` -/
def P18067623167810338041.Spec : Prop :=
  ∀ n, P18067623167810338041.a n = (A356536 (n + 1) : ℚ)

end A356536

/-! ## A356536.P1994894460182682438

`∑[A361794((n+1)²)²]`
-/

namespace A356536.P1994894460182682438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361794 ((n + 1) ^ 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A356536.P1994894460182682438

namespace A356536

/-- `∑[A361794((n+1)²)²]` -/
def P1994894460182682438.Spec : Prop :=
  ∀ n, P1994894460182682438.a n = A356536 (n + 1)

end A356536

/-!
# A356538: Expansion of e.g.f. Product_{k>0} 1/(1 - (2 * x)^k)^(1/2^k).

The programs for A356538, there is no canonical definition to state claims against.
-/

/-! ## A356538.P3332285876236849882

`A161490(A148229(n))-2`
-/

namespace A356538.P3332285876236849882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161490 (A148229 n).toNat - 2

end

end A356538.P3332285876236849882

/-! ## A356538.P16721130489476202354

`or(n*gcd(2, n), A165345(A006252(n+1)))`
-/

namespace A356538.P16721130489476202354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n * Nat.gcd 2 n : ℤ) (A165345 (A006252 (n + 1)).toNat)

end

end A356538.P16721130489476202354

/-!
# A356539: a(n) = Sum_{d|n} d * 3^(n-d).

The programs for A356539, the canonical program `A356539.P14473421961130448499` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A356539 has offset 1).

The definition of A356539 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A356539.P14473421961130448499

`∑{d}[n+1, #*3^(n+1-#)]`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A356539

/-- `∑{d}[n+1, #*3^(n+1-#)]` -/
def P14473421961130448499.Spec : Prop :=
  ∀ n, P14473421961130448499.a n = (A356539 (n + 1) : ℚ)

end A356539

/-! ## A356539.P18135194304734213432

`A331683(n+1)+A331669(A331653(n+1))`
-/

namespace A356539.P18135194304734213432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331683 (n + 1) + A331669 (A331653 (n + 1)).toNat

end

end A356539.P18135194304734213432

namespace A356539

/-- `A331683(n+1)+A331669(A331653(n+1))` -/
def P18135194304734213432.Spec : Prop :=
  ∀ n, P18135194304734213432.a n = A356539 (n + 1)

end A356539

/-!
# A356540: Expansion of e.g.f. Product_{k>0} 1/(1 - (3 * x)^k)^(1/3^k).

The programs for A356540, there is no canonical definition to state claims against.
-/

/-! ## A356540.P10023165363860315100

`A047994(A357225(n)+A007318(n))`
-/

namespace A356540.P10023165363860315100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047994 (A357225 n + A007318 n).toNat

end

end A356540.P10023165363860315100

/-! ## A356540.P3434029558287776873

`A047994(A357225(n)+A141021(n))`
-/

namespace A356540.P3434029558287776873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047994 (A357225 n + A141021 n).toNat

end

end A356540.P3434029558287776873

/-!
# A356543: a(n) = Sum_{d|n} (d!)^(n/d-1).

The programs for A356543, the canonical program `A356543.P13519504959808890991` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A356543 has offset 1).

The definition of A356543 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A356543.P13519504959808890991

`∑{d}[n+1, #!^((n+1)/#-1)]`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A356543

/-- `∑{d}[n+1, #!^((n+1)/#-1)]` -/
def P13519504959808890991.Spec : Prop :=
  ∀ n, P13519504959808890991.a n = (A356543 (n + 1) : ℝ)

end A356543

/-! ## A356543.P2787174141871590249

`A239832(n)+A112798(A089243(n+1))`
-/

namespace A356543.P2787174141871590249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239832 n + A112798 (A089243 (n + 1)).toNat

end

end A356543.P2787174141871590249

namespace A356543

/-- `A239832(n)+A112798(A089243(n+1))` -/
def P2787174141871590249.Spec : Prop :=
  ∀ n, P2787174141871590249.a n = A356543 (n + 1)

end A356543

/-!
# A356544: Number of strict closure operators on a set of n elements such that all pairs of nonempty disjoint closed sets can be separated by clopen sets.

The programs for A356544, there is no canonical definition to state claims against.
-/

/-! ## A356544.P9893683618360096760

`A240874(A196570(n+2))`
-/

namespace A356544.P9893683618360096760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240874 (A196570 (n + 2)).toNat

end

end A356544.P9893683618360096760

/-!
# A356546: Triangle read by rows. T(n, k) = RisingFactorial(n + 1, n) / (k! * (n - k)!).

The programs for A356546, the canonical program `A356546.P14984275591505448716` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A356546 has offset 0).

The definition of A356546 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6604 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A356546.P17098382507163963284

`∑[char[∑[n]]]*A085880(n)`
-/

namespace A356546.P17098382507163963284
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A085880 n

end

end A356546.P17098382507163963284

namespace A356546

/-- `∑[char[∑[n]]]*A085880(n)` -/
def P17098382507163963284.Spec : Prop :=
  ∀ n, P17098382507163963284.a n = A356546 n

end A356546

/-! ## A356546.P4085523015637806219

`A046899(n)*A094527(n)`
-/

namespace A356546.P4085523015637806219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046899 n * A094527 n

end

end A356546.P4085523015637806219

namespace A356546

/-- `A046899(n)*A094527(n)` -/
def P4085523015637806219.Spec : Prop :=
  ∀ n, P4085523015637806219.a n = A356546 n

end A356546

/-! ## A356546.P808329039216730045

`A062344(n)*A092392(n)`
-/

namespace A356546.P808329039216730045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062344 n * A092392 n

end

end A356546.P808329039216730045

namespace A356546

/-- `A062344(n)*A092392(n)` -/
def P808329039216730045.Spec : Prop :=
  ∀ n, P808329039216730045.a n = A356546 n

end A356546

/-! ## A356546.P6058414035234268715

`A068555(n)*A086645(n)`
-/

namespace A356546.P6058414035234268715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068555 n * A086645 n

end

end A356546.P6058414035234268715

namespace A356546

/-- `A068555(n)*A086645(n)` -/
def P6058414035234268715.Spec : Prop :=
  ∀ n, P6058414035234268715.a n = A356546 n

end A356546

/-! ## A356546.P2147689139529579535

`A085478(n)*A182411(n)`
-/

namespace A356546.P2147689139529579535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085478 n * A182411 n

end

end A356546.P2147689139529579535

namespace A356546

/-- `A085478(n)*A182411(n)` -/
def P2147689139529579535.Spec : Prop :=
  ∀ n, P2147689139529579535.a n = A356546 n

end A356546

/-! ## A356546.P14984275591505448716

`A003506(n+1)*A168256(n)`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A356546

/-- `A003506(n+1)*A168256(n)` -/
def P14984275591505448716.Spec : Prop :=
  ∀ n, P14984275591505448716.a n = A356546 n

theorem P14984275591505448716.correct : P14984275591505448716.Spec := by
  intro n
  simp only [A356546]

end A356546

/-! ## A356546.P5010442743901433063

`A004736(n+1)*A368745(n)`
-/

namespace A356546.P5010442743901433063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1) * A368745 n

end

end A356546.P5010442743901433063

namespace A356546

/-- `A004736(n+1)*A368745(n)` -/
def P5010442743901433063.Spec : Prop :=
  ∀ n, P5010442743901433063.a n = A356546 n

end A356546

/-! ## A356546.P2093521830418259146

`A000984(A003056(n))*A007318(n)`
-/

namespace A356546.P2093521830418259146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 (A003056 n).toNat * A007318 n

end

end A356546.P2093521830418259146

namespace A356546

/-- `A000984(A003056(n))*A007318(n)` -/
def P2093521830418259146.Spec : Prop :=
  ∀ n, P2093521830418259146.a n = A356546 n

end A356546

/-! ## A356546.P12994525349237906136

`A036453(2*n+1)*A258758(n)`
-/

namespace A356546.P12994525349237906136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036453 (2 * n + 1) * A258758 n

end

end A356546.P12994525349237906136

namespace A356546

/-- `A036453(2*n+1)*A258758(n)` -/
def P12994525349237906136.Spec : Prop :=
  ∀ n, P12994525349237906136.a n = A356546 n

end A356546

/-! ## A356546.P3520726050004776606

`A069466(n)/A007318(n)`
-/

namespace A356546.P3520726050004776606
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069466 n : ℚ) / (A007318 n : ℚ)

end

end A356546.P3520726050004776606

namespace A356546

/-- `A069466(n)/A007318(n)` -/
def P3520726050004776606.Spec : Prop :=
  ∀ n, P3520726050004776606.a n = (A356546 n : ℚ)

end A356546

/-! ## A356546.P4976131529602593487

`2/A028326(n)*A069466(n)`
-/

namespace A356546.P4976131529602593487
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (A028326 n : ℚ) * (A069466 n : ℚ)

end

end A356546.P4976131529602593487

namespace A356546

/-- `2/A028326(n)*A069466(n)` -/
def P4976131529602593487.Spec : Prop :=
  ∀ n, P4976131529602593487.a n = (A356546 n : ℚ)

end A356546

/-!
# A356547: Triangle read by rows. T(n, k) are the coefficients of polynomials p_n(x) based on the Eulerian numbers of second order representing the Bernoulli numbers as B_n = p_n(1) / (2*(2*n - 1)!).

The programs for A356547, there is no canonical definition to state claims against.
-/

/-! ## A356547.P2076301693361361110

`A158800(or(A035327(2*(n+2)), A215327(n)))`
-/

namespace A356547.P2076301693361361110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158800 (Int.lor (A035327 (2 * (n + 2))) (A215327 n)).toNat

end

end A356547.P2076301693361361110

/-!
# A356549: a(n) is the number of divisors of 10^n whose first digit is 1.

The programs for A356549, the canonical program `A356549.P5941019978963454808` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A356549 has offset 0).

The definition of A356549 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 501 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A356549.P14694359741545557804

`∑[A034887(n)+∑[A125117(n)]]`
-/

namespace A356549.P14694359741545557804
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125117 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034887 n + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A356549.P14694359741545557804

namespace A356549

/-- `∑[A034887(n)+∑[A125117(n)]]` -/
def P14694359741545557804.Spec : Prop :=
  ∀ n, P14694359741545557804.a n = A356549 n

end A356549

/-! ## A356549.P5941019978963454808

`∑[A034887(n+1)+A034887(n)-1]`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A356549

/-- `∑[A034887(n+1)+A034887(n)-1]` -/
def P5941019978963454808.Spec : Prop :=
  ∀ n, P5941019978963454808.a n = A356549 n

theorem P5941019978963454808.correct : P5941019978963454808.Spec := by
  intro n
  simp only [A356549]

end A356549

/-! ## A356549.P3892397678528836796

`A097992(A008738(3*(n+1)))+A059995(n)`
-/

namespace A356549.P3892397678528836796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097992 (A008738 (3 * (n + 1))).toNat + A059995 n

end

end A356549.P3892397678528836796

namespace A356549

/-- `A097992(A008738(3*(n+1)))+A059995(n)` -/
def P3892397678528836796.Spec : Prop :=
  ∀ n, P3892397678528836796.a n = A356549 n

end A356549

/-! ## A356549.P3200783976111297332

`∑[∑[A244895(A014632(n))]]`
-/

namespace A356549.P3200783976111297332
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244895 (A014632 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A356549.P3200783976111297332

namespace A356549

/-- `∑[∑[A244895(A014632(n))]]` -/
def P3200783976111297332.Spec : Prop :=
  ∀ n, P3200783976111297332.a n = A356549 n

end A356549

/-! ## A356549.P12719194160901726933

`∑[∑[A374043(A124250(n+1))]]`
-/

namespace A356549.P12719194160901726933
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374043 (A124250 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A356549.P12719194160901726933

namespace A356549

/-- `∑[∑[A374043(A124250(n+1))]]` -/
def P12719194160901726933.Spec : Prop :=
  ∀ n, P12719194160901726933.a n = A356549 n

end A356549

/-!
# A356550: a(n) is the period of {F(F(k)) mod n, k >= 0}, where F denotes the Fibonacci numbers (A000045).

The programs for A356550, there is no canonical definition to state claims against.
-/

/-! ## A356550.P6863264656439273528

`A395522(∑[n+1]+2)`
-/

namespace A356550.P6863264656439273528
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395522 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A356550.P6863264656439273528

/-!
# A356551: a(n) = A005132(n+2) - A005132(n).

The programs for A356551, there is no canonical definition to state claims against.
-/

/-! ## A356551.P14707410126218075743

`A005132(n+2)-A005132(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A356551.P14707410126218075743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005132 (n + 2) - A005132 n

end

end A356551.P14707410126218075743

/-! ## A356551.P2140407050203631390

`Δ[A005132(n+1)+A005132(n)]`
-/

namespace A356551.P2140407050203631390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005132 (n + 1) + A005132 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A356551.P2140407050203631390

/-! ## A356551.P18177780938550902464

`Δ[A209386(n)+A160356(n+1)]`
-/

namespace A356551.P18177780938550902464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209386 n + A160356 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A356551.P18177780938550902464

/-! ## A356551.P15033821134567640401

`Δ[A209387(n)+A160356(n+1)]`
-/

namespace A356551.P15033821134567640401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209387 n + A160356 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A356551.P15033821134567640401

/-! ## A356551.P1956904572605060028

`A160356(n+1)+A160356(n+2)`
-/

namespace A356551.P1956904572605060028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160356 (n + 1) + A160356 (n + 2)

end

end A356551.P1956904572605060028

/-! ## A356551.P15324081006008872005

`Δ[A065056(n+1)]-A209386(n)/2`
-/

namespace A356551.P15324081006008872005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065056 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) - (A209386 n : ℚ) / 2

end

end A356551.P15324081006008872005

/-! ## A356551.P7420447956503615377

`Δ[A209387(n)+Δ[A334951(n+1)]+1]`
-/

namespace A356551.P7420447956503615377
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334951 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209387 n + (f2 (n + 1) - f2 n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A356551.P7420447956503615377

/-!
# A356552: a(n) is the least base b > 1 where the sum of digits of n divides n.

The programs for A356552, there is no canonical definition to state claims against.
-/

/-! ## A356552.P14171996959390267996

`A184303(A104443(n+1))+A049559(n+1)`
-/

namespace A356552.P14171996959390267996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184303 (A104443 (n + 1)).toNat + A049559 (n + 1)

end

end A356552.P14171996959390267996

/-! ## A356552.P2742327335992285945

`A020639(C(A256017(n+1), A339890(n+5)))`
-/

namespace A356552.P2742327335992285945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (Nat.choose (A256017 (n + 1)).toNat (A339890 (n + 5)).toNat)

end

end A356552.P2742327335992285945

/-! ## A356552.P16104136768249119385

`A071889(n+1)-A010815(A334309(3*n+1))`
-/

namespace A356552.P16104136768249119385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071889 (n + 1) - A010815 (A334309 (3 * n + 1)).toNat

end

end A356552.P16104136768249119385

/-! ## A356552.P13239792637261584341

`A020639(A347535(n+1)%A347532(3*(n+1)))`
-/

namespace A356552.P13239792637261584341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (Int.tmod (A347535 (n + 1)) (A347532 (3 * (n + 1)))).toNat

end

end A356552.P13239792637261584341

/-! ## A356552.P13005229179956012776

`A354945(gcd(A354945(n+1), A354957(3*(n+1))))`
-/

namespace A356552.P13005229179956012776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354945 (Int.gcd (A354945 (n + 1)) (A354957 (3 * (n + 1))))

end

end A356552.P13005229179956012776

/-!
# A356553: For any n > 0, let b > 1 be the least base where the sum of digits of n divides n; a(n) is the sum of digits of n in base b.

The programs for A356553, there is no canonical definition to state claims against.
-/

/-! ## A356553.P5611685979703371778

`gcd(A020639(n+1), A050368(A195441(n)))`
-/

namespace A356553.P5611685979703371778
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A020639 (n + 1)) (A050368 (A195441 n).toNat)

end

end A356553.P5611685979703371778

/-! ## A356553.P16883620005359343050

`gcd(∏{p}[n+1, #], A046526((n+1)/2^val(n+1, 2)))`
-/

namespace A356553.P16883620005359343050
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℤ) (A046526 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat)

end

end A356553.P16883620005359343050

/-! ## A356553.P11209061090277998461

`A076820(A351831(n+2))`
-/

namespace A356553.P11209061090277998461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076820 (A351831 (n + 2)).toNat

end

end A356553.P11209061090277998461

/-! ## A356553.P16082975455109100871

`gcd(A324284(n+1), A355747(∏{p}[n+1, #]))`
-/

namespace A356553.P16082975455109100871
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A324284 (n + 1)) (A355747 (∏ p ∈ Nat.primeFactors (f1 n), p))

end

end A356553.P16082975455109100871

/-!
# A356555: Irregular triangle T(n, k), n > 0, k = 1..A080221(n) read by rows; the n-th row contains, in ascending order, the bases b from 2..n+1 where the sum of digits of n divides n.

The programs for A356555, there is no canonical definition to state claims against.
-/

/-! ## A356555.P7821519156651012176

`A131818(lt[A141214(n), A349735(n)])`
-/

namespace A356555.P7821519156651012176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141214 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349735 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A356555.P7821519156651012176

/-!
# A356556: Parity of A061418.

The programs for A356556, there is no canonical definition to state claims against.
-/

/-! ## A356556.P8464306886402275340

`1-A205083(n+2)`
-/

namespace A356556.P8464306886402275340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A205083 (n + 2)

end

end A356556.P8464306886402275340

/-! ## A356556.P7267681110567802361

`A000007(A205083(n+1)+Δ[A205083(n+1)])`
-/

namespace A356556.P7267681110567802361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205083 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A205083 (n + 1) + (f1 (n + 1) - f1 n)).toNat

end

end A356556.P7267681110567802361

/-! ## A356556.P6325271001850373747

`A017898(A205083(n+1)+Δ[A205083(n+1)])`
-/

namespace A356556.P6325271001850373747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205083 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017898 (A205083 (n + 1) + (f1 (n + 1) - f1 n)).toNat

end

end A356556.P6325271001850373747

/-! ## A356556.P14174880127218192225

`A242018(A006999(A083044(A083199(n+1))))`
-/

namespace A356556.P14174880127218192225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242018 (A006999 (A083044 (A083199 (n + 1)).toNat).toNat).toNat

end

end A356556.P14174880127218192225

/-! ## A356556.P10688040978592179374

`1-A304273(n+2)`
-/

namespace A356556.P10688040978592179374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A304273 (n + 2)

end

end A356556.P10688040978592179374

/-! ## A356556.P14007671764883317997

`A029137(A304273(n+1)+Δ[A304273(n+1)])`
-/

namespace A356556.P14007671764883317997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304273 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029137 (A304273 (n + 1) + (f1 (n + 1) - f1 n)).toNat

end

end A356556.P14007671764883317997

/-! ## A356556.P5606767220244095318

`A006999(n)%2`
-/

namespace A356556.P5606767220244095318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006999 n) 2

end

end A356556.P5606767220244095318

/-! ## A356556.P3747382039934214503

`A061418(n+1)%2`
-/

namespace A356556.P3747382039934214503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A061418 (n + 1)) 2

end

end A356556.P3747382039934214503

/-! ## A356556.P5401688844952085184

`gcd(2, A061419(n+1))-1`
-/

namespace A356556.P5401688844952085184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 2 (A061419 (n + 1)) : ℤ) - 1

end

end A356556.P5401688844952085184

/-! ## A356556.P4735226622990443435

`and(A006999(n), A054977(n))`
-/

namespace A356556.P4735226622990443435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A006999 n) (A054977 n)

end

end A356556.P4735226622990443435

/-! ## A356556.P9001645804173322804

`and(A006999(n), A057427(n))`
-/

namespace A356556.P9001645804173322804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A006999 n) (A057427 n)

end

end A356556.P9001645804173322804

/-! ## A356556.P11481374371439025067

`and(A006999(n), A158388(n))`
-/

namespace A356556.P11481374371439025067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A006999 n) (A158388 n)

end

end A356556.P11481374371439025067

/-! ## A356556.P6743753965041926385

`and(A006999(n), A267537(n))`
-/

namespace A356556.P6743753965041926385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A006999 n) (A267537 n)

end

end A356556.P6743753965041926385

/-! ## A356556.P16891838340546748209

`A061418(n+1)-2*A005428(n)`
-/

namespace A356556.P16891838340546748209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061418 (n + 1) - 2 * A005428 n

end

end A356556.P16891838340546748209

/-! ## A356556.P8945156669145759670

`2-gcd(A061418(n+1), A130130(n))`
-/

namespace A356556.P8945156669145759670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (Int.gcd (A061418 (n + 1)) (A130130 n) : ℤ)

end

end A356556.P8945156669145759670

/-! ## A356556.P1325568494870722450

`or(1, A003312(n+1))-A003312(n+1)`
-/

namespace A356556.P1325568494870722450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A003312 (n + 1)) - A003312 (n + 1)

end

end A356556.P1325568494870722450

/-! ## A356556.P3501108209475798095

`A061418(n+1)-A073941(n+2)-A073941(n+2)`
-/

namespace A356556.P3501108209475798095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061418 (n + 1) - A073941 (n + 2) - A073941 (n + 2)

end

end A356556.P3501108209475798095

/-! ## A356556.P14474821303615537148

`2-round(ratio[floor(3/2*a(n-1))])` with `a(0)=2`
-/

namespace A356556.P14474821303615537148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  ⌊(3 : ℚ) / 2 * (f1 (n - 1) : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - SequenceMachineLib.roundAway ((f1 (n + 1) : ℚ) / (f1 n : ℚ))

end

end A356556.P14474821303615537148

/-! ## A356556.P7449673043384221546

`A061418(n+2)-A081848(n+2)`
-/

namespace A356556.P7449673043384221546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061418 (n + 2) - A081848 (n + 2)

end

end A356556.P7449673043384221546

/-! ## A356556.P15697603001100558234

`A003312(n+2)-(A081848(n+2)+1)`
-/

namespace A356556.P15697603001100558234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003312 (n + 2) - (A081848 (n + 2) + 1)

end

end A356556.P15697603001100558234

/-!
# A356558: Triangle read by rows: T(n,k), where n, k >= 2, is the number of n-element unlabeled connected series-parallel posets with k ordinal terms that are either the singleton or disconnected posets.

The programs for A356558, there is no canonical definition to state claims against.
-/

/-! ## A356558.P11793555221421296707

`A160185(n)+A010054(A039598(3*n+1))`
-/

namespace A356558.P11793555221421296707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160185 n + A010054 (A039598 (3 * n + 1)).toNat

end

end A356558.P11793555221421296707

/-! ## A356558.P11450328391829678958

`A160185(n)+A003982(A214978(3*n+5))`
-/

namespace A356558.P11450328391829678958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160185 n + A003982 (A214978 (3 * n + 5)).toNat

end

end A356558.P11450328391829678958

/-! ## A356558.P14798327107575318236

`A324088(A349380(n+2))+A160185(n)`
-/

namespace A356558.P14798327107575318236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324088 (A349380 (n + 2)).toNat + A160185 n

end

end A356558.P14798327107575318236

/-! ## A356558.P9879510335434710524

`A160185(n)+A039966(A005421(2*n+5))`
-/

namespace A356558.P9879510335434710524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160185 n + A039966 (A005421 (2 * n + 5)).toNat

end

end A356558.P9879510335434710524

/-! ## A356558.P8083264468921937595

`A160185(n)+A102683(A120375(n+1))`
-/

namespace A356558.P8083264468921937595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160185 n + A102683 (A120375 (n + 1)).toNat

end

end A356558.P8083264468921937595

/-!
# A356559: a(n) = exp(-1) * n! * Sum_{k>=0} Laguerre(n,k) / k!.

The programs for A356559, there is no canonical definition to state claims against.
-/

/-! ## A356559.P15156485719133776600

`A050296(A003319(n))-A071625(n+1)`
-/

namespace A356559.P15156485719133776600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050296 (A003319 n).toNat - A071625 (n + 1)

end

end A356559.P15156485719133776600

/-! ## A356559.P12697609899698753935

`A187187(A000260(n))-A001221(n+1)`
-/

namespace A356559.P12697609899698753935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187187 (A000260 n).toNat - A001221 (n + 1)

end

end A356559.P12697609899698753935

/-! ## A356559.P18008244336540092864

`A187187(A000260(n))-A302041(n+1)`
-/

namespace A356559.P18008244336540092864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187187 (A000260 n).toNat - A302041 (n + 1)

end

end A356559.P18008244336540092864

/-!
# A356561: Expansion of e.g.f. Product_{k>0} 1/(1 - k^3 * x^k)^(1/k^3).

The programs for A356561, there is no canonical definition to state claims against.
-/

/-! ## A356561.P11183211857596087303

`A000011(n)*A258037(A356633(n))`
-/

namespace A356561.P11183211857596087303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000011 n * A258037 (A356633 n).toNat

end

end A356561.P11183211857596087303

/-! ## A356561.P17657375955307401829

`A065033(A000142(n)*A105271(n+1))`
-/

namespace A356561.P17657375955307401829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A000142 n * A105271 (n + 1)).toNat

end

end A356561.P17657375955307401829

/-!
# A356563: Sums of powers of roots of x^3 - 2*x^2 - x - 2.

The programs for A356563, the canonical program `A356563.P877375239935482984` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A356563 has offset 0).

The definition of A356563 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A356563.P877375239935482984

`2*a(n-1)+a(n-2)+2*a(n-3)` with `a(0)=3, a(1)=2, a(2)=6`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A356563

/-- `2*a(n-1)+a(n-2)+2*a(n-3)` -/
def P877375239935482984.Spec : Prop :=
  ∀ n, (P877375239935482984.a n : ℤ) = A356563 n

theorem P877375239935482984.correct : P877375239935482984.Spec := by
  intro n
  simp only [A356563]

end A356563

/-! ## A356563.P9767146772358269777

`a(n-2)+2*(a(n-1)+a(n-3))` with `a(0)=3, a(1)=2, a(2)=6`
-/

namespace A356563.P9767146772358269777
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3, 2, 6] fun n a =>
  a (n - 2) + 2 * (a (n - 1) + a (n - 3))

end

end A356563.P9767146772358269777

namespace A356563

/-- `a(n-2)+2*(a(n-1)+a(n-3))` -/
def P9767146772358269777.Spec : Prop :=
  ∀ n, (P9767146772358269777.a n : ℤ) = A356563 n

end A356563

/-!
# A356566: Expansion of e.g.f. ( Product_{k>0} (1+x^k)^k )^x.

The programs for A356566, there is no canonical definition to state claims against.
-/

/-! ## A356566.P11931285942100154242

`floor(A049988(A000065(n²))/log(n+2))`
-/

namespace A356566.P11931285942100154242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A049988 (A000065 (n ^ 2)).toNat : ℝ) / Real.log (n + 2 : ℝ)⌋

end

end A356566.P11931285942100154242

/-! ## A356566.P3031872324376438695

`A055457(A026004(n))*A356786(n)`
-/

namespace A356566.P3031872324376438695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055457 (A026004 n).toNat * A356786 n

end

end A356566.P3031872324376438695

/-!
# A356567: Numbers that generate increasing numbers of consecutive primes when doubled and added to the sequence of odd squares. (Positions of records in A354499.)

The programs for A356567, there is no canonical definition to state claims against.
-/

/-! ## A356567.P1180214611463348092

`a(n-1)*a(floor(n/2))+7` with `a(0)=1, a(1)=2`
-/

namespace A356567.P1180214611463348092
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 1) * a ⌊(n : ℚ) / 2⌋.toNat + 7

end

end A356567.P1180214611463348092

/-!
# A356568: a(n) = (4^n - 1)*n^(2*n).

The programs for A356568, the canonical program `A356568.P28372044304319319` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A356568 has offset 0).

The definition of A356568 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(4^n-1)*n^(2*n)` (program `A356568.P28372044304319319`, by `A356568.P28372044304319319.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A356568.P28372044304319319

`(4^n-1)*n^(2*n)`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A356568

/-- `(4^n-1)*n^(2*n)` -/
def P28372044304319319.Spec : Prop :=
  ∀ n, P28372044304319319.a n = A356568 n

theorem P28372044304319319.correct : P28372044304319319.Spec := by
  intro n
  simp only [A356568]

end A356568

/-! ## A356568.P4241402963995302911

`A085534(n)-A062206(n)`
-/

namespace A356568.P4241402963995302911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085534 n - A062206 n

end

end A356568.P4241402963995302911

namespace A356568

/-- `A085534(n)-A062206(n)` -/
def P4241402963995302911.Spec : Prop :=
  ∀ n, P4241402963995302911.a n = A356568 n

end A356568

/-! ## A356568.P1957477278203723074

`A000312(2*n)-A062206(n)`
-/

namespace A356568.P1957477278203723074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000312 (2 * n) - A062206 n

end

end A356568.P1957477278203723074

namespace A356568

/-- `A000312(2*n)-A062206(n)` -/
def P1957477278203723074.Spec : Prop :=
  ∀ n, P1957477278203723074.a n = A356568 n

end A356568

/-! ## A356568.P14832186864938281763

`A062971(n)²-A000312(n)²`
-/

namespace A356568.P14832186864938281763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062971 n ^ 2 - A000312 n ^ 2

end

end A356568.P14832186864938281763

namespace A356568

/-- `A062971(n)²-A000312(n)²` -/
def P14832186864938281763.Spec : Prop :=
  ∀ n, P14832186864938281763.a n = A356568 n

end A356568

/-! ## A356568.P12044532154573275658

`A000312(2*n)-A000312(n)²`
-/

namespace A356568.P12044532154573275658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000312 (2 * n) - A000312 n ^ 2

end

end A356568.P12044532154573275658

namespace A356568

/-- `A000312(2*n)-A000312(n)²` -/
def P12044532154573275658.Spec : Prop :=
  ∀ n, P12044532154573275658.a n = A356568 n

end A356568

/-!
# A356569: Sums of powers of roots of x^4 - 2*x^3 - 6*x^2 + 2*x + 1.

The programs for A356569, the canonical program `A356569.P342227409904761265` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A356569 has offset 0).

The definition of A356569 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A356569.P342227409904761265

`2*a(n-1)+6*a(n-2)-2*a(n-3)-a(n-4)` with `a(0)=4, a(1)=2, a(2)=16, a(3)=38`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A356569

/-- `2*a(n-1)+6*a(n-2)-2*a(n-3)-a(n-4)` -/
def P342227409904761265.Spec : Prop :=
  ∀ n, P342227409904761265.a n = A356569 n

theorem P342227409904761265.correct : P342227409904761265.Spec := by
  intro n
  simp only [A356569]

end A356569

/-!
# A356571: a(n) = floor(f(n)), where f(n) = n^4*(15-24*n+10*n^2) + 20*n^5*(1-n)^3 / (1-2*n(1-n)).

The programs for A356571, there is no canonical definition to state claims against.
-/

/-! ## A356571.P12778288324827997887

`A019565(n)-A051221(A007985(n+1))`
-/

namespace A356571.P12778288324827997887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 n - A051221 (A007985 (n + 1)).toNat

end

end A356571.P12778288324827997887

/-!
# A356572: Expansion of e.g.f. sinh( (exp(3*x) - 1)/3 ).

The programs for A356572, there is no canonical definition to state claims against.
-/

/-! ## A356572.P4983773270630588376

`A219652(∏[eq[n, ∏{d}[n, #]]]-1)`
-/

namespace A356572.P4983773270630588376
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f4 n), d

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219652 (∏ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A356572.P4983773270630588376

/-! ## A356572.P4840092205724384166

`A098429(∑[A346649(n)])`
-/

namespace A356572.P4840092205724384166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346649 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098429 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A356572.P4840092205724384166

/-!
# A356573: Sigma-dense numbers: integers k such that sigma(k) * log(1+log(1+log(1+k))) / (k * log(1+log(1+k))) sets a new record.

The programs for A356573, there is no canonical definition to state claims against.
-/

/-! ## A356573.P9633812797537355695

`record[A061799(A362746(3*n+4))]`
-/

namespace A356573.P9633812797537355695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061799 (A362746 (3 * n + 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A356573.P9633812797537355695

/-! ## A356573.P10209054090786387170

`record[A278524(A006995(2*(n+1)))]`
-/

namespace A356573.P10209054090786387170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278524 (A006995 (2 * (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A356573.P10209054090786387170

/-! ## A356573.P5154385155190077309

`A004394(lt[A257623(n), A128836(n+1)])`
-/

namespace A356573.P5154385155190077309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257623 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128836 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004394 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A356573.P5154385155190077309

/-! ## A356573.P3774029742540222818

`filter[A330688(n+1), A322586(#)]`
-/

namespace A356573.P3774029742540222818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330688 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A322586 (f1 j).toNat = 1) n)

end

end A356573.P3774029742540222818

/-! ## A356573.P16482558816371676882

`∩[A019505(n+1), A068090(n+1)]`
-/

namespace A356573.P16482558816371676882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019505 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068090 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A356573.P16482558816371676882

/-!
# A356574: a(n) = Sum_{d|n} tau(d^4), where tau(n) = number of divisors of n, cf. A000005.

The programs for A356574, the canonical program `A356574.P7099550415851902923` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A356574 has offset 1).

The definition of A356574 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A356574.P7099550415851902923

`∑{d}[n+1, A344327(#)]`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A356574

/-- `∑{d}[n+1, A344327(#)]` -/
def P7099550415851902923.Spec : Prop :=
  ∀ n, P7099550415851902923.a n = A356574 (n + 1)

theorem P7099550415851902923.correct : P7099550415851902923.Spec := by
  intro n
  simp only [A356574, Nat.add_sub_cancel]

end A356574

/-! ## A356574.P1845351711744761999

`Δ[A006218(n)]*A048691(n+1)`
-/

namespace A356574.P1845351711744761999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A048691 (n + 1)

end

end A356574.P1845351711744761999

namespace A356574

/-- `Δ[A006218(n)]*A048691(n+1)` -/
def P1845351711744761999.Spec : Prop :=
  ∀ n, P1845351711744761999.a n = A356574 (n + 1)

end A356574

/-! ## A356574.P2372411149478074655

`A000005(n+1)*A048691(n+1)`
-/

namespace A356574.P2372411149478074655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) * A048691 (n + 1)

end

end A356574.P2372411149478074655

namespace A356574

/-- `A000005(n+1)*A048691(n+1)` -/
def P2372411149478074655.Spec : Prop :=
  ∀ n, P2372411149478074655.a n = A356574 (n + 1)

end A356574

/-! ## A356574.P10917660066971690635

`A061680(n+1)*A072695(n+1)`
-/

namespace A356574.P10917660066971690635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061680 (n + 1) * A072695 (n + 1)

end

end A356574.P10917660066971690635

namespace A356574

/-- `A061680(n+1)*A072695(n+1)` -/
def P10917660066971690635.Spec : Prop :=
  ∀ n, P10917660066971690635.a n = A356574 (n + 1)

end A356574

/-! ## A356574.P17171006195512322987

`A069735(n+1)*A078644(n+1)`
-/

namespace A356574.P17171006195512322987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069735 (n + 1) * A078644 (n + 1)

end

end A356574.P17171006195512322987

namespace A356574

/-- `A069735(n+1)*A078644(n+1)` -/
def P17171006195512322987.Spec : Prop :=
  ∀ n, P17171006195512322987.a n = A356574 (n + 1)

end A356574

/-! ## A356574.P12595650128129310621

`sqrt(A035116(n+1))*A048691(n+1)`
-/

namespace A356574.P12595650128129310621
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A035116 (n + 1) : ℝ) * (A048691 (n + 1) : ℝ)

end

end A356574.P12595650128129310621

namespace A356574

/-- `sqrt(A035116(n+1))*A048691(n+1)` -/
def P12595650128129310621.Spec : Prop :=
  ∀ n, P12595650128129310621.a n = (A356574 (n + 1) : ℝ)

end A356574

/-! ## A356574.P11157148310274476744

`∑{d}[n+1, A008683(#)*A062368((n+1)/#)]`
-/

namespace A356574.P11157148310274476744
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A062368 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A356574.P11157148310274476744

namespace A356574

/-- `∑{d}[n+1, A008683(#)*A062368((n+1)/#)]` -/
def P11157148310274476744.Spec : Prop :=
  ∀ n, P11157148310274476744.a n = A356574 (n + 1)

end A356574

/-! ## A356574.P5300513748067976041

`∑{d}[n+1, A007425(#)*A347149((n+1)/#)]`
-/

namespace A356574.P5300513748067976041
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007425 d * A347149 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A356574.P5300513748067976041

namespace A356574

/-- `∑{d}[n+1, A007425(#)*A347149((n+1)/#)]` -/
def P5300513748067976041.Spec : Prop :=
  ∀ n, P5300513748067976041.a n = A356574 (n + 1)

end A356574

/-! ## A356574.P690581572358018880

`∑{d}[n+1, A130054(#)*A344222((n+1)/#)]`
-/

namespace A356574.P690581572358018880
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A130054 d * A344222 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A356574.P690581572358018880

namespace A356574

/-- `∑{d}[n+1, A130054(#)*A344222((n+1)/#)]` -/
def P690581572358018880.Spec : Prop :=
  ∀ n, P690581572358018880.a n = A356574 (n + 1)

end A356574

/-! ## A356574.P7998831007713784991

`(A055205(n+1)+A000005(n+1))*A000005(n+1)`
-/

namespace A356574.P7998831007713784991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A055205 (n + 1) + A000005 (n + 1)) * A000005 (n + 1)

end

end A356574.P7998831007713784991

namespace A356574

/-- `(A055205(n+1)+A000005(n+1))*A000005(n+1)` -/
def P7998831007713784991.Spec : Prop :=
  ∀ n, P7998831007713784991.a n = A356574 (n + 1)

end A356574

/-! ## A356574.P1572423052942208432

`(A063647(n+1)+A018892(n+1))*A000005(n+1)`
-/

namespace A356574.P1572423052942208432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A063647 (n + 1) + A018892 (n + 1)) * A000005 (n + 1)

end

end A356574.P1572423052942208432

namespace A356574

/-- `(A063647(n+1)+A018892(n+1))*A000005(n+1)` -/
def P1572423052942208432.Spec : Prop :=
  ∀ n, P1572423052942208432.a n = A356574 (n + 1)

end A356574

/-! ## A356574.P1172797834326727612

`(A035116(n+1)-A065814(n+1))*A000005(n+1)`
-/

namespace A356574.P1172797834326727612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A035116 (n + 1) - A065814 (n + 1)) * A000005 (n + 1)

end

end A356574.P1172797834326727612

namespace A356574

/-- `(A035116(n+1)-A065814(n+1))*A000005(n+1)` -/
def P1172797834326727612.Spec : Prop :=
  ∀ n, P1172797834326727612.a n = A356574 (n + 1)

end A356574

/-! ## A356574.P8771624834294853506

`(A048691(n+1)-A055205(n+1))*A048691(n+1)`
-/

namespace A356574.P8771624834294853506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A048691 (n + 1) - A055205 (n + 1)) * A048691 (n + 1)

end

end A356574.P8771624834294853506

namespace A356574

/-- `(A048691(n+1)-A055205(n+1))*A048691(n+1)` -/
def P8771624834294853506.Spec : Prop :=
  ∀ n, P8771624834294853506.a n = A356574 (n + 1)

end A356574

/-! ## A356574.P9717459712629209422

`(A018892(n+1)-A089233(n+1))*A048691(n+1)`
-/

namespace A356574.P9717459712629209422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A018892 (n + 1) - A089233 (n + 1)) * A048691 (n + 1)

end

end A356574.P9717459712629209422

namespace A356574

/-- `(A018892(n+1)-A089233(n+1))*A048691(n+1)` -/
def P9717459712629209422.Spec : Prop :=
  ∀ n, P9717459712629209422.a n = A356574 (n + 1)

end A356574

/-! ## A356574.P11380864042222138819

`(A086222(n+1)-A086165(n+1))*A000005(n+1)`
-/

namespace A356574.P11380864042222138819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A086222 (n + 1) - A086165 (n + 1)) * A000005 (n + 1)

end

end A356574.P11380864042222138819

namespace A356574

/-- `(A086222(n+1)-A086165(n+1))*A000005(n+1)` -/
def P11380864042222138819.Spec : Prop :=
  ∀ n, P11380864042222138819.a n = A356574 (n + 1)

end A356574

/-! ## A356574.P5702790709494055538

`(A146564(n+1)-A063647(n+1))*A000005(n+1)`
-/

namespace A356574.P5702790709494055538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A146564 (n + 1) - A063647 (n + 1)) * A000005 (n + 1)

end

end A356574.P5702790709494055538

namespace A356574

/-- `(A146564(n+1)-A063647(n+1))*A000005(n+1)` -/
def P5702790709494055538.Spec : Prop :=
  ∀ n, P5702790709494055538.a n = A356574 (n + 1)

end A356574

/-! ## A356574.P7067120550823622991

`(A100565(n+1)-A066620(n+1))*A048691(n+1)`
-/

namespace A356574.P7067120550823622991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A100565 (n + 1) - A066620 (n + 1)) * A048691 (n + 1)

end

end A356574.P7067120550823622991

namespace A356574

/-- `(A100565(n+1)-A066620(n+1))*A048691(n+1)` -/
def P7067120550823622991.Spec : Prop :=
  ∀ n, P7067120550823622991.a n = A356574 (n + 1)

end A356574

/-! ## A356574.P16214369989417464035

`(A184389(n+1)-A066446(n+1))*A048691(n+1)`
-/

namespace A356574.P16214369989417464035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A184389 (n + 1) - A066446 (n + 1)) * A048691 (n + 1)

end

end A356574.P16214369989417464035

namespace A356574

/-- `(A184389(n+1)-A066446(n+1))*A048691(n+1)` -/
def P16214369989417464035.Spec : Prop :=
  ∀ n, P16214369989417464035.a n = A356574 (n + 1)

end A356574

/-! ## A356574.P17942464249499192118

`(A048785(n+1)-A294072(n+1))*A048691(n+1)`
-/

namespace A356574.P17942464249499192118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A048785 (n + 1) - A294072 (n + 1)) * A048691 (n + 1)

end

end A356574.P17942464249499192118

namespace A356574

/-- `(A048785(n+1)-A294072(n+1))*A048691(n+1)` -/
def P17942464249499192118.Spec : Prop :=
  ∀ n, P17942464249499192118.a n = A356574 (n + 1)

end A356574

/-! ## A356574.P7923986276279325560

`(A361689(n+1)-A275367(n+1))*A000005(n+1)`
-/

namespace A356574.P7923986276279325560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A361689 (n + 1) - A275367 (n + 1)) * A000005 (n + 1)

end

end A356574.P7923986276279325560

namespace A356574

/-- `(A361689(n+1)-A275367(n+1))*A000005(n+1)` -/
def P7923986276279325560.Spec : Prop :=
  ∀ n, P7923986276279325560.a n = A356574 (n + 1)

end A356574

/-!
# A356575: Expansion of e.g.f. ( Product_{k>0} 1/(1-x^k)^(1/k!) )^x.

The programs for A356575, there is no canonical definition to state claims against.
-/

/-! ## A356575.P4760996078899540176

`A341939(a(n-1)+1)` with `a(0)=1, a(1)=0, a(2)=2, a(3)=6`
-/

namespace A356575.P4760996078899540176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 2, 6] fun n a =>
  A341939 (a (n - 1) + 1).toNat

end

end A356575.P4760996078899540176

/-! ## A356575.P10968383233374611643

`A289499(A211211(n)+1)`
-/

namespace A356575.P10968383233374611643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289499 (A211211 n + 1).toNat

end

end A356575.P10968383233374611643

/-!
# A356577: Expansion of e.g.f. ( Product_{k>0} 1/(1 - x^k/k) )^x.

The programs for A356577, there is no canonical definition to state claims against.
-/

/-! ## A356577.P1093619328831183764

`A289499(A001910(n+3)+2)`
-/

namespace A356577.P1093619328831183764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289499 (A001910 (n + 3) + 2).toNat

end

end A356577.P1093619328831183764

/-! ## A356577.P8757727319078946935

`A277486(A191994(n+1)+n)`
-/

namespace A356577.P8757727319078946935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277486 (A191994 (n + 1) + (n : ℤ)).toNat

end

end A356577.P8757727319078946935

/-!
# A356578: Expansion of e.g.f. ( Product_{k>0} 1/(1 - k * x^k) )^x.

The programs for A356578, there is no canonical definition to state claims against.
-/

/-! ## A356578.P3175824839370637488

`A356554(n)+A352669(A165883(n))`
-/

namespace A356578.P3175824839370637488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356554 n + A352669 (A165883 n).toNat

end

end A356578.P3175824839370637488

/-! ## A356578.P2500393297594579487

`A358507(A196545(n+1))-A001791(n)`
-/

namespace A356578.P2500393297594579487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358507 (A196545 (n + 1)).toNat - A001791 n

end

end A356578.P2500393297594579487

/-!
# A356579: Expansion of e.g.f. ( Product_{k>0} 1/(1 - x^k/k!) )^x.

The programs for A356579, there is no canonical definition to state claims against.
-/

/-! ## A356579.P1753286294043517511

`A214810(A245460(n+1)-n)`
-/

namespace A356579.P1753286294043517511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214810 (A245460 (n + 1) - (n : ℤ)).toNat

end

end A356579.P1753286294043517511

/-! ## A356579.P872093824292848342

`round(1/acot(n))*A352130(A000225(n))`
-/

namespace A356579.P872093824292848342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (1 / SequenceMachineLib.acot (n : ℝ)) * A352130 (A000225 n).toNat

end

end A356579.P872093824292848342

/-!
# A356582: T(n,k) is the number of degree n polynomials in GF_2[x] that have exactly k linear factors in their prime factorization when the factors are counted with multiplicity, n >= 0, 0 <= k <= n. Triangular array read by rows.

The programs for A356582, there is no canonical definition to state claims against.
-/

/-! ## A356582.P891596592387647070

`A128307(n+1)*A134199(n)`
-/

namespace A356582.P891596592387647070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128307 (n + 1) * A134199 n

end

end A356582.P891596592387647070

/-! ## A356582.P12646010029510344256

`A002260(n+1)*A128307(n+1)`
-/

namespace A356582.P12646010029510344256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) * A128307 (n + 1)

end

end A356582.P12646010029510344256

/-! ## A356582.P11310454984556633231

`A128307(n+1)*A134226(n+1)`
-/

namespace A356582.P11310454984556633231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128307 (n + 1) * A134226 (n + 1)

end

end A356582.P11310454984556633231

/-! ## A356582.P16804222772313018035

`(A296612(n)+A128064(n+1))/2`
-/

namespace A356582.P16804222772313018035
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A296612 n + A128064 (n + 1) : ℚ) / 2

end

end A356582.P16804222772313018035

/-! ## A356582.P1706529697250786422

`A078898(A296612(n)+A128064(n+1))`
-/

namespace A356582.P1706529697250786422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (A296612 n + A128064 (n + 1)).toNat

end

end A356582.P1706529697250786422

/-! ## A356582.P7225310609958071819

`A002260(n+1)*A034008(A025581(n))`
-/

namespace A356582.P7225310609958071819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) * A034008 (A025581 n).toNat

end

end A356582.P7225310609958071819

/-! ## A356582.P6125582919631914896

`A002260(n+1)*A300717(A130321(n))`
-/

namespace A356582.P6125582919631914896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) * A300717 (A130321 n).toNat

end

end A356582.P6125582919631914896

/-! ## A356582.P2172722172223134794

`2*A228527(n+1)-A228526(n+1)`
-/

namespace A356582.P2172722172223134794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A228527 (n + 1) - A228526 (n + 1)

end

end A356582.P2172722172223134794

/-!
# A356583: T(n,k) is the number of degree n polynomials p in GF_2[x] whose squarefree part has degree k, n >= 0, 0 <= k <= n. Triangular array read by rows.

The programs for A356583, there is no canonical definition to state claims against.
-/

/-! ## A356583.P6096452483644909723

`A034444(A011782(n))*A144157(n)`
-/

namespace A356583.P6096452483644909723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (A011782 n).toNat * A144157 n

end

end A356583.P6096452483644909723

/-! ## A356583.P1920576112125292651

`A144157(n)*A297770(A166444(n+1))`
-/

namespace A356583.P1920576112125292651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144157 n * A297770 (A166444 (n + 1)).toNat

end

end A356583.P1920576112125292651

/-! ## A356583.P7317925177926395137

`A024361(A304334(n+4)+A040090(n))`
-/

namespace A356583.P7317925177926395137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024361 (A304334 (n + 4) + A040090 n).toNat

end

end A356583.P7317925177926395137

/-! ## A356583.P382497675767138072

`A034444(A128761(n))%A027467(n+1)`
-/

namespace A356583.P382497675767138072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A034444 (A128761 n).toNat) (A027467 (n + 1))

end

end A356583.P382497675767138072

/-!
# A356584: Number of instances of the stable roommates problem of cardinality n (extension to instances of odd cardinality).

The programs for A356584, there is no canonical definition to state claims against.
-/

/-! ## A356584.P6721231624908405895

`A235507(A051286(n)^A280451(n))`
-/

namespace A356584.P6721231624908405895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235507 (SequenceMachineLib.roundAway ((A051286 n : ℚ) ^ (A280451 n : ℤ))).toNat

end

end A356584.P6721231624908405895

/-!
# A356585: Number of decimal digits in the n-th Gosper hyperfactorial of n (A330716).

The programs for A356585, there is no canonical definition to state claims against.
-/

/-! ## A356585.P593461847065289049

`A358537(3^C(n, 2))`
-/

namespace A356585.P593461847065289049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358537 (3 ^ Nat.choose n 2)

end

end A356585.P593461847065289049

/-!
# A356586: Number of binary digits in the n-th Gosper hyperfactorial of n (A330716).

The programs for A356586, there is no canonical definition to state claims against.
-/

/-! ## A356586.P3498597163905494124

`A120243(C(2*n, n)/(n+1)*n!-C(n, 2))`
-/

namespace A356586.P3498597163905494124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120243 (SequenceMachineLib.roundAway ((Nat.choose (2 * n) n : ℚ) / (n + 1 : ℚ) * (Nat.factorial n : ℚ) - (Nat.choose n 2 : ℚ))).toNat

end

end A356586.P3498597163905494124

/-!
# A356587: Expansion of e.g.f. ( Product_{k>0} 1/(1 - (k * x)^k)^(1/k) )^x.

The programs for A356587, there is no canonical definition to state claims against.
-/

/-! ## A356587.P13573319441109749594

`A279858(a(n-1)+n)` with `a(0)=1, a(1)=0`
-/

namespace A356587.P13573319441109749594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A279858 (a (n - 1) + (n : ℤ)).toNat

end

end A356587.P13573319441109749594

/-!
# A356588: Expansion of e.g.f. ( Product_{k>0} 1/(1 - k * x^k)^(1/k) )^x.

The programs for A356588, there is no canonical definition to state claims against.
-/

/-! ## A356588.P2373794141832484554

`A052126(A075147(n+1))-n`
-/

namespace A356588.P2373794141832484554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052126 (A075147 (n + 1)).toNat - (n : ℤ)

end

end A356588.P2373794141832484554

/-! ## A356588.P2859543153423780949

`A317079(n)-A099390(n+1)`
-/

namespace A356588.P2859543153423780949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317079 n - A099390 (n + 1)

end

end A356588.P2859543153423780949

/-!
# A356590: Expansion of e.g.f. ( Product_{k>0} 1/(1 - (k * x)^k)^(1/k) )^exp(x).

The programs for A356590, there is no canonical definition to state claims against.
-/

/-! ## A356590.P7581554609152160094

`A014684(ceil(∑[n^sin(59)]^n)+1)`
-/

namespace A356590.P7581554609152160094
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n : ℝ) ^ (Real.sin (59 : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014684 (⌈(∑ j ∈ Finset.range (n + 1), f1 j) ^ n⌉ + 1).toNat

end

end A356590.P7581554609152160094

/-!
# A356593: Smallest k such that primorial(k) > n^2.

The programs for A356593, there is no canonical definition to state claims against.
-/

/-! ## A356593.P15549485401448435217

`ceil(log2(log2(log2(3)+n+1)²))`
-/

namespace A356593.P15549485401448435217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (Real.logb 2 (Real.logb 2 (3 : ℝ) + (n + 1 : ℝ)) ^ 2)⌉

end

end A356593.P15549485401448435217

/-! ## A356593.P15337365401104253767

`floor(∑[5/p?[floor((8*n+1)/5)]])`
-/

namespace A356593.P15337365401104253767
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(8 * n + 1 : ℚ) / 5⌋

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  5 / (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A356593.P15337365401104253767

/-! ## A356593.P7199950749842806435

`floor(∑[4/∑[10-a(n-2)]])` with `a(0)=3, a(1)=1, a(2)=1, a(3)=2`
-/

namespace A356593.P7199950749842806435
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3, 1, 1, 2] fun n f2 =>
  10 - f2 (n - 2)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  4 / ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A356593.P7199950749842806435

/-! ## A356593.P14243057427539095510

`A235224((n+1)²)`
-/

namespace A356593.P14243057427539095510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235224 ((n + 1) ^ 2)

end

end A356593.P14243057427539095510

/-! ## A356593.P12739647675987086974

`∑[char[A225044(∑[n])]]`
-/

namespace A356593.P12739647675987086974
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225044 (∑ j ∈ Finset.range (n + 1), f3 j)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A356593.P12739647675987086974

/-! ## A356593.P489120911599829791

`∑[char[∑[A246013(n)]]]`
-/

namespace A356593.P489120911599829791
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246013 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A356593.P489120911599829791

/-! ## A356593.P15470143099084670803

`∑[char[A131236(n)]]+1`
-/

namespace A356593.P15470143099084670803
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131236 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A356593.P15470143099084670803

/-! ## A356593.P668693540460045544

`∑[char[A149906(n)]]+1`
-/

namespace A356593.P668693540460045544
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149906 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A356593.P668693540460045544

/-! ## A356593.P15573532109495443845

`∑[Δ[A235224(n²)]²]`
-/

namespace A356593.P15573532109495443845
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235224 (n ^ 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A356593.P15573532109495443845

/-! ## A356593.P3192831334041269261

`A111972((n+1)²)+1`
-/

namespace A356593.P3192831334041269261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111972 ((n + 1) ^ 2) + 1

end

end A356593.P3192831334041269261

/-!
# A356595: Expansion of e.g.f. ( Product_{k>0} 1/(1 - x^k)^k )^exp(x).

The programs for A356595, there is no canonical definition to state claims against.
-/

/-! ## A356595.P8890202755976547052

`A099337(n^∑{p}[n+1, gcd(n, #)])`
-/

namespace A356595.P8890202755976547052
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099337 (n ^ (∑ p ∈ Nat.primeFactors (f1 n), Nat.gcd n p))

end

end A356595.P8890202755976547052

/-!
# A356596: Expansion of e.g.f. ( Product_{k>0} 1/(1 - x^k)^(1/k!) )^exp(x).

The programs for A356596, there is no canonical definition to state claims against.
-/

/-! ## A356596.P7729583271291541274

`A085655(A057991(n))+A085644(n)`
-/

namespace A356596.P7729583271291541274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085655 (A057991 n).toNat + A085644 n

end

end A356596.P7729583271291541274

/-! ## A356596.P1509627849122114685

`A167865(A087761(n))+A087761(n)`
-/

namespace A356596.P1509627849122114685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167865 (A087761 n).toNat + A087761 n

end

end A356596.P1509627849122114685

/-!
# A356597: Expansion of e.g.f. ( Product_{k>0} 1/(1 - x^k/k) )^exp(x).

The programs for A356597, there is no canonical definition to state claims against.
-/

/-! ## A356597.P14160429676250536274

`A000037(A218678(n))-A002995(n)`
-/

namespace A356597.P14160429676250536274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000037 (A218678 n).toNat - A002995 n

end

end A356597.P14160429676250536274

/-! ## A356597.P4057761764851089850

`A346545(n)-A025428(A105787(n+1))`
-/

namespace A356597.P4057761764851089850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346545 n - A025428 (A105787 (n + 1)).toNat

end

end A356597.P4057761764851089850

/-!
# A356598: Expansion of e.g.f. ( Product_{k>0} 1/(1 - k * x^k) )^exp(x).

The programs for A356598, there is no canonical definition to state claims against.
-/

/-! ## A356598.P6362392888941899211

`A357320(A008004(n))`
-/

namespace A356598.P6362392888941899211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357320 (A008004 n).toNat

end

end A356598.P6362392888941899211

/-!
# A356599: Expansion of e.g.f. ( Product_{k>0} 1/(1 - x^k/k!) )^exp(x).

The programs for A356599, there is no canonical definition to state claims against.
-/

/-! ## A356599.P9121356824633988298

`A171521(A228883(n+1))`
-/

namespace A356599.P9121356824633988298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171521 (A228883 (n + 1)).toNat

end

end A356599.P9121356824633988298

/-! ## A356599.P16626374957530935300

`A004396(A180119(n)+A063420(n))`
-/

namespace A356599.P16626374957530935300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A180119 n + A063420 n).toNat

end

end A356599.P16626374957530935300

