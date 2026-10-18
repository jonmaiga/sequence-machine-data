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
import Seq.B000.C014
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
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
import Seq.Opaque.C025

/-!
# A210000: Number of unimodular 2 X 2 matrices having all terms in {0,1,...,n}.

The programs for A210000, the canonical program `A210000.P5435968868787770991` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A210000 has offset 0).

The definition of A210000 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A171503, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A210000.P5435968868787770991

`2*A171503(n)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A210000

/-- `2*A171503(n)` -/
def P5435968868787770991.Spec : Prop :=
  ∀ n, P5435968868787770991.a n = A210000 n

theorem P5435968868787770991.correct : P5435968868787770991.Spec := by
  intro n
  simp only [A210000]

end A210000

/-! ## A210000.P11187871643602674210

`2*ceil(A209982(n)/8)`
-/

namespace A210000.P11187871643602674210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ⌈(A209982 n : ℚ) / 8⌉

end

end A210000.P11187871643602674210

namespace A210000

/-- `2*ceil(A209982(n)/8)` -/
def P11187871643602674210.Spec : Prop :=
  ∀ n, P11187871643602674210.a n = A210000 n

end A210000

/-! ## A210000.P12531681578104850237

`lcm(2, A171503(n%(n+1)))`
-/

namespace A210000.P12531681578104850237
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A171503 (n % (n + 1)))

end

end A210000.P12531681578104850237

namespace A210000

/-- `lcm(2, A171503(n%(n+1)))` -/
def P12531681578104850237.Spec : Prop :=
  ∀ n, (P12531681578104850237.a n : ℤ) = A210000 n

end A210000

/-! ## A210000.P5118297030721195654

`lcm(floor(acot(n)²)-2, A326354(n))`
-/

namespace A210000.P5118297030721195654
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (⌊SequenceMachineLib.acot (n : ℝ) ^ 2⌋ - 2) (A326354 n)

end

end A210000.P5118297030721195654

namespace A210000

/-- `lcm(floor(acot(n)²)-2, A326354(n))` -/
def P5118297030721195654.Spec : Prop :=
  ∀ n, (P5118297030721195654.a n : ℤ) = A210000 n

end A210000

/-! ## A210000.P2049350595723295782

`lcm(2-A100449(n), 2%(n+2))`
-/

namespace A210000.P2049350595723295782
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (2 - A100449 n) ((2 % (n + 2) : ℕ) : ℤ)

end

end A210000.P2049350595723295782

namespace A210000

/-- `lcm(2-A100449(n), 2%(n+2))` -/
def P2049350595723295782.Spec : Prop :=
  ∀ n, (P2049350595723295782.a n : ℤ) = A210000 n

end A210000

/-! ## A210000.P586399793891280648

`A133655(A002088(n))-1`
-/

namespace A210000.P586399793891280648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133655 (A002088 n).toNat - 1

end

end A210000.P586399793891280648

namespace A210000

/-- `A133655(A002088(n))-1` -/
def P586399793891280648.Spec : Prop :=
  ∀ n, P586399793891280648.a n = A210000 n

end A210000

/-! ## A210000.P5411035597221792571

`A014682(lcm(4, A171503(n)))`
-/

namespace A210000.P5411035597221792571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (Int.lcm 4 (A171503 n))

end

end A210000.P5411035597221792571

namespace A210000

/-- `A014682(lcm(4, A171503(n)))` -/
def P5411035597221792571.Spec : Prop :=
  ∀ n, P5411035597221792571.a n = A210000 n

end A210000

/-! ## A210000.P2204625562067425037

`A209993(n)-A059306(n)`
-/

namespace A210000.P2204625562067425037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209993 n - A059306 n

end

end A210000.P2204625562067425037

namespace A210000

/-- `A209993(n)-A059306(n)` -/
def P2204625562067425037.Spec : Prop :=
  ∀ n, P2204625562067425037.a n = A210000 n

end A210000

/-! ## A210000.P8498513157850717371

`2*(A140466(n)+A057428(n))`
-/

namespace A210000.P8498513157850717371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A140466 n + A057428 n)

end

end A210000.P8498513157850717371

namespace A210000

/-- `2*(A140466(n)+A057428(n))` -/
def P8498513157850717371.Spec : Prop :=
  ∀ n, P8498513157850717371.a n = A210000 n

end A210000

/-! ## A210000.P4814367013922541239

`2*(A140466(n)-A057427(n))`
-/

namespace A210000.P4814367013922541239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A140466 n - A057427 n)

end

end A210000.P4814367013922541239

namespace A210000

/-- `2*(A140466(n)-A057427(n))` -/
def P4814367013922541239.Spec : Prop :=
  ∀ n, P4814367013922541239.a n = A210000 n

end A210000

/-! ## A210000.P16175902348116759113

`2*(A209991(n)-A059306(n))`
-/

namespace A210000.P16175902348116759113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A209991 n - A059306 n)

end

end A210000.P16175902348116759113

namespace A210000

/-- `2*(A209991(n)-A059306(n))` -/
def P16175902348116759113.Spec : Prop :=
  ∀ n, P16175902348116759113.a n = A210000 n

end A210000

/-! ## A210000.P8749912222636462746

`2*(A209993(n)-A209991(n))`
-/

namespace A210000.P8749912222636462746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A209993 n - A209991 n)

end

end A210000.P8749912222636462746

namespace A210000

/-- `2*(A209993(n)-A209991(n))` -/
def P8749912222636462746.Spec : Prop :=
  ∀ n, P8749912222636462746.a n = A210000 n

end A210000

/-! ## A210000.P6006047708532852111

`and(2, A326354(n))*A326354(n)`
-/

namespace A210000.P6006047708532852111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 2 (A326354 n) * A326354 n

end

end A210000.P6006047708532852111

namespace A210000

/-- `and(2, A326354(n))*A326354(n)` -/
def P6006047708532852111.Spec : Prop :=
  ∀ n, P6006047708532852111.a n = A210000 n

end A210000

/-! ## A210000.P7549323542064138011

`A209979(n)+A163300(2*n+1)`
-/

namespace A210000.P7549323542064138011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209979 n + A163300 (2 * n + 1)

end

end A210000.P7549323542064138011

namespace A210000

/-- `A209979(n)+A163300(2*n+1)` -/
def P7549323542064138011.Spec : Prop :=
  ∀ n, P7549323542064138011.a n = A210000 n

end A210000

/-! ## A210000.P1998623512304670645

`2*(A100449(n)-A036453(n+1))`
-/

namespace A210000.P1998623512304670645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A100449 n - A036453 (n + 1))

end

end A210000.P1998623512304670645

namespace A210000

/-- `2*(A100449(n)-A036453(n+1))` -/
def P1998623512304670645.Spec : Prop :=
  ∀ n, P1998623512304670645.a n = A210000 n

end A210000

/-! ## A210000.P6784957450648442259

`2*(A196227(n)+Δ[n²])*and(1, A000040(n+1))`
-/

namespace A210000.P6784957450648442259
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((A196227 n + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))) * Int.land 1 (A000040 (n + 1)))

end

end A210000.P6784957450648442259

namespace A210000

/-- `2*(A196227(n)+Δ[n²])*and(1, A000040(n+1))` -/
def P6784957450648442259.Spec : Prop :=
  ∀ n, P6784957450648442259.a n = A210000 n

end A210000

/-! ## A210000.P9319157542597987530

`2*(A100449(n)-A020639(A004277(n)))`
-/

namespace A210000.P9319157542597987530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A100449 n - A020639 (A004277 n).toNat)

end

end A210000.P9319157542597987530

namespace A210000

/-- `2*(A100449(n)-A020639(A004277(n)))` -/
def P9319157542597987530.Spec : Prop :=
  ∀ n, P9319157542597987530.a n = A210000 n

end A210000

/-! ## A210000.P5402578516115130156

`A171503(n)+A209991(n)-A059306(n)`
-/

namespace A210000.P5402578516115130156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171503 n + (A209991 n - A059306 n)

end

end A210000.P5402578516115130156

namespace A210000

/-- `A171503(n)+A209991(n)-A059306(n)` -/
def P5402578516115130156.Spec : Prop :=
  ∀ n, P5402578516115130156.a n = A210000 n

end A210000

/-! ## A210000.P6335872568207642828

`A171503(n+1)+A171503(n)-A002246(n+1)`
-/

namespace A210000.P6335872568207642828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171503 (n + 1) + (A171503 n - A002246 (n + 1))

end

end A210000.P6335872568207642828

namespace A210000

/-- `A171503(n+1)+A171503(n)-A002246(n+1)` -/
def P6335872568207642828.Spec : Prop :=
  ∀ n, P6335872568207642828.a n = A210000 n

end A210000

/-!
# A210003: Number of binary words of length n containing no subword 10001.

The programs for A210003, the canonical program `A210003.P18314922465789647613` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A210003 has offset 0).

The definition of A210003 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A210003.P18314922465789647613

`2*a(n-1)-a(n-4)+a(n-5)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=8, a(4)=16`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A210003

/-- `2*a(n-1)-a(n-4)+a(n-5)` -/
def P18314922465789647613.Spec : Prop :=
  ∀ n, P18314922465789647613.a n = A210003 n

theorem P18314922465789647613.correct : P18314922465789647613.Spec := by
  intro n
  simp only [A210003]

end A210003

/-! ## A210003.P10741033142589927143

`A057363(A121381(a(n-1)))` with `a(0)=1`
-/

namespace A210003.P10741033142589927143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A057363 (A121381 (a (n - 1)).toNat).toNat

end

end A210003.P10741033142589927143

namespace A210003

/-- `A057363(A121381(a(n-1)))` -/
def P10741033142589927143.Spec : Prop :=
  ∀ n, P10741033142589927143.a n = A210003 n

end A210003

/-! ## A210003.P14201734499484451416

`A134119(A313619(2*a(n-1)))` with `a(0)=1`
-/

namespace A210003.P14201734499484451416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A134119 (A313619 (2 * a (n - 1)).toNat).toNat

end

end A210003.P14201734499484451416

namespace A210003

/-- `A134119(A313619(2*a(n-1)))` -/
def P14201734499484451416.Spec : Prop :=
  ∀ n, P14201734499484451416.a n = A210003 n

end A210003

/-! ## A210003.P2929837778422219409

`A062259(n+1)-(A185238(A001949(n))+A172316(n))`
-/

namespace A210003.P2929837778422219409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062259 (n + 1) - (A185238 (A001949 n).toNat + A172316 n)

end

end A210003.P2929837778422219409

namespace A210003

/-- `A062259(n+1)-(A185238(A001949(n))+A172316(n))` -/
def P2929837778422219409.Spec : Prop :=
  ∀ n, P2929837778422219409.a n = A210003 n

end A210003

/-!
# A210004: 

The programs for A210004, there is no canonical definition to state claims against.
-/

/-! ## A210004.P12600296760068039625

`A210012((n+1)²+n²)`
-/

namespace A210004.P12600296760068039625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210012 ((n + 1) ^ 2 + n ^ 2)

end

end A210004.P12600296760068039625

/-! ## A210004.P15048492083085455134

`record[A077606(n+1)*A210012(n+1)]`
-/

namespace A210004.P15048492083085455134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077606 (n + 1) * A210012 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A210004.P15048492083085455134

/-!
# A210005: Number of (n+1) X 2 0..2 arrays containing all values 0..2 with every 2 X 2 subblock having two or three distinct values, and new values 0..2 introduced in row major order.

The programs for A210005, there is no canonical definition to state claims against.
-/

/-! ## A210005.P7230703537941956744

`A210012(∑[n]+1)`
-/

namespace A210005.P7230703537941956744
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210012 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A210005.P7230703537941956744

/-! ## A210005.P14334328467000201097

`record[gcd(A002262(n), A210012(n+1))]`
-/

namespace A210005.P14334328467000201097
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A210012 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A210005.P14334328467000201097

/-! ## A210005.P13284667534792881903

`record[root(A210012(n+1), A002260(n+1))]`
-/

namespace A210005.P13284667534792881903
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A210012 (n + 1) : ℝ) ^ (1 / (A002260 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A210005.P13284667534792881903

/-! ## A210005.P13842096745765136685

`record[root(A210012(n+1), A209996(n+1))]`
-/

namespace A210005.P13842096745765136685
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A210012 (n + 1) : ℝ) ^ (1 / (A209996 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A210005.P13842096745765136685

/-! ## A210005.P15662080276580318197

`record[root(A210012(n+1), A271465(n+1))]`
-/

namespace A210005.P15662080276580318197
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A210012 (n + 1) : ℝ) ^ (1 / (A271465 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A210005.P15662080276580318197

/-!
# A210006: Number of (n+1) X 3 0..2 arrays containing all values 0..2 with every 2 X 2 subblock having two or three distinct values, and new values 0..2 introduced in row major order.

The programs for A210006, there is no canonical definition to state claims against.
-/

/-! ## A210006.P7709180849099310249

`A210012(∑[n+1]+2)`
-/

namespace A210006.P7709180849099310249
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210012 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A210006.P7709180849099310249

/-! ## A210006.P10699054792764001922

`record[gcd(A002262(n), A210012(n+2))]`
-/

namespace A210006.P10699054792764001922
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A210012 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A210006.P10699054792764001922

/-! ## A210006.P5233817585672449807

`record[root(A210012(n+2), A210033(n+1))]`
-/

namespace A210006.P5233817585672449807
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A210012 (n + 2) : ℝ) ^ (1 / (A210033 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A210006.P5233817585672449807

/-! ## A210006.P3175796270561388871

`record[root(A210012(n+3), A004736(n+1))]`
-/

namespace A210006.P3175796270561388871
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A210012 (n + 3) : ℝ) ^ (1 / (A004736 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A210006.P3175796270561388871

/-! ## A210006.P10615563612476513976

`record[A210012(A198453(n+1))]`
-/

namespace A210006.P10615563612476513976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210012 (A198453 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A210006.P10615563612476513976

/-!
# A210007: Number of (n+1)X4 0..2 arrays containing all values 0..2 with every 2X2 subblock having two or three distinct values, and new values 0..2 introduced in row major order.

The programs for A210007, there is no canonical definition to state claims against.
-/

/-! ## A210007.P8002436644649199938

`A210012(∑[n+2]+4)`
-/

namespace A210007.P8002436644649199938
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210012 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A210007.P8002436644649199938

/-! ## A210007.P10026189794826369485

`or(1, A210012(A167614(n+1)))`
-/

namespace A210007.P10026189794826369485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A210012 (A167614 (n + 1)).toNat)

end

end A210007.P10026189794826369485

/-! ## A210007.P10768839679778968009

`A210012(A167614(n+1))+A185246(n)`
-/

namespace A210007.P10768839679778968009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210012 (A167614 (n + 1)).toNat + A185246 n

end

end A210007.P10768839679778968009

/-! ## A210007.P13369163396778729007

`A210012(A167614(n+1))+A185284(n)`
-/

namespace A210007.P13369163396778729007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210012 (A167614 (n + 1)).toNat + A185284 n

end

end A210007.P13369163396778729007

/-! ## A210007.P15930206186447429780

`A210012(A167614(n+1))%A209552(n+1)`
-/

namespace A210007.P15930206186447429780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A210012 (A167614 (n + 1)).toNat) (A209552 (n + 1))

end

end A210007.P15930206186447429780

/-!
# A210008: Number of (n+1)X5 0..2 arrays containing all values 0..2 with every 2X2 subblock having two or three distinct values, and new values 0..2 introduced in row major order.

The programs for A210008, there is no canonical definition to state claims against.
-/

/-! ## A210008.P3790024739210104997

`A208319(n+2)-A208266(n+2)`
-/

namespace A210008.P3790024739210104997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208319 (n + 2) - A208266 (n + 2)

end

end A210008.P3790024739210104997

/-! ## A210008.P8751724286319292742

`A210012(A167614(n+2)+1)`
-/

namespace A210008.P8751724286319292742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210012 (A167614 (n + 2) + 1).toNat

end

end A210008.P8751724286319292742

/-! ## A210008.P11211782112540817665

`A210012(eq[5, A131818(n+1)])`
-/

namespace A210008.P11211782112540817665
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210012 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A210008.P11211782112540817665

/-! ## A210008.P8041391211397137064

`A210012(A141214(n+1))`
-/

namespace A210008.P8041391211397137064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210012 (A141214 (n + 1)).toNat

end

end A210008.P8041391211397137064

/-! ## A210008.P16050656793289865449

`A210012(A155212(n)+5)`
-/

namespace A210008.P16050656793289865449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210012 (A155212 n + 5).toNat

end

end A210008.P16050656793289865449

/-!
# A210009: 

The programs for A210009, there is no canonical definition to state claims against.
-/

/-! ## A210009.P3852639084554944221

`A210012(eq[6, A131818(n+1)])`
-/

namespace A210009.P3852639084554944221
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210012 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A210009.P3852639084554944221

/-! ## A210009.P2098951487221223769

`A210012(eq[6, A185782(n+1)])`
-/

namespace A210009.P2098951487221223769
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210012 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A210009.P2098951487221223769

/-!
# A210010: 

The programs for A210010, there is no canonical definition to state claims against.
-/

/-! ## A210010.P7596864878004511240

`A210012(eq[7, A131818(n+1)])`
-/

namespace A210010.P7596864878004511240
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210012 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A210010.P7596864878004511240

/-! ## A210010.P14728942995779317460

`A210012(eq[8, A185782(n+1)])`
-/

namespace A210010.P14728942995779317460
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210012 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A210010.P14728942995779317460

/-!
# A210011: 

The programs for A210011, there is no canonical definition to state claims against.
-/

/-! ## A210011.P9252005556230428782

`A210012(eq[8, A131818(n+1)])`
-/

namespace A210011.P9252005556230428782
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210012 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A210011.P9252005556230428782

/-! ## A210011.P17941128820662516757

`A210012(eq[10, A185782(n+1)])`
-/

namespace A210011.P17941128820662516757
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210012 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A210011.P17941128820662516757

/-!
# A210021: Number of binary words of length n containing no subword 11011.

The programs for A210021, the canonical program `A210021.P1607339052362857866` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A210021 has offset 0).

The definition of A210021 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A210021.P1607339052362857866

`2*a(n-1)-a(n-3)+a(n-4)+a(n-5)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=8, a(4)=16`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A210021

/-- `2*a(n-1)-a(n-3)+a(n-4)+a(n-5)` -/
def P1607339052362857866.Spec : Prop :=
  ∀ n, P1607339052362857866.a n = A210021 n

theorem P1607339052362857866.correct : P1607339052362857866.Spec := by
  intro n
  simp only [A210021]

end A210021

/-! ## A210021.P3637606928108763766

`A277678(A008750(n)-A000007(n))`
-/

namespace A210021.P3637606928108763766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277678 (A008750 n - A000007 n).toNat

end

end A210021.P3637606928108763766

namespace A210021

/-- `A277678(A008750(n)-A000007(n))` -/
def P3637606928108763766.Spec : Prop :=
  ∀ n, P3637606928108763766.a n = A210021 n

end A210021

/-! ## A210021.P13950542385227694511

`A277678(A008750(n)%A014126(n))`
-/

namespace A210021.P13950542385227694511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277678 (Int.tmod (A008750 n) (A014126 n)).toNat

end

end A210021.P13950542385227694511

namespace A210021

/-- `A277678(A008750(n)%A014126(n))` -/
def P13950542385227694511.Spec : Prop :=
  ∀ n, P13950542385227694511.a n = A210021 n

end A210021

/-! ## A210021.P11671672159513984371

`2^n-A276785(n)`
-/

namespace A210021.P11671672159513984371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A276785 n

end

end A210021.P11671672159513984371

namespace A210021

/-- `2^n-A276785(n)` -/
def P11671672159513984371.Spec : Prop :=
  ∀ n, P11671672159513984371.a n = A210021 n

end A210021

/-! ## A210021.P17468580240026967275

`abs(A000079(n)-A276785(n))`
-/

namespace A210021.P17468580240026967275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000079 n - A276785 n|

end

end A210021.P17468580240026967275

namespace A210021

/-- `abs(A000079(n)-A276785(n))` -/
def P17468580240026967275.Spec : Prop :=
  ∀ n, P17468580240026967275.a n = A210021 n

end A210021

/-! ## A210021.P891659382613815906

`A000051(n)-(A276785(n)+1)`
-/

namespace A210021.P891659382613815906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n - (A276785 n + 1)

end

end A210021.P891659382613815906

namespace A210021

/-- `A000051(n)-(A276785(n)+1)` -/
def P891659382613815906.Spec : Prop :=
  ∀ n, P891659382613815906.a n = A210021 n

end A210021

/-! ## A210021.P10047508488462738447

`abs(A011782(n+1)-A276785(n))`
-/

namespace A210021.P10047508488462738447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A011782 (n + 1) - A276785 n|

end

end A210021.P10047508488462738447

namespace A210021

/-- `abs(A011782(n+1)-A276785(n))` -/
def P10047508488462738447.Spec : Prop :=
  ∀ n, P10047508488462738447.a n = A210021 n

end A210021

/-! ## A210021.P12626751428619824176

`abs(A131577(n+1)-A276785(n))`
-/

namespace A210021.P12626751428619824176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A131577 (n + 1) - A276785 n|

end

end A210021.P12626751428619824176

namespace A210021

/-- `abs(A131577(n+1)-A276785(n))` -/
def P12626751428619824176.Spec : Prop :=
  ∀ n, P12626751428619824176.a n = A210021 n

end A210021

/-!
# A210022: List of successive digits in A210023.

The programs for A210022, there is no canonical definition to state claims against.
-/

/-! ## A210022.P18326292652913032166

`abs(Δ[A210023(n)])`
-/

namespace A210022.P18326292652913032166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210023 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A210022.P18326292652913032166

/-! ## A210022.P17782403677629963873

`A000194(Δ[A210023(n)]²)`
-/

namespace A210022.P17782403677629963873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210023 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 ((f1 (n + 1) - f1 n) ^ 2).toNat

end

end A210022.P17782403677629963873

/-! ## A210022.P14300396451921985925

`A000196(Δ[A210023(n)]²)`
-/

namespace A210022.P14300396451921985925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210023 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 ((f1 (n + 1) - f1 n) ^ 2).toNat

end

end A210022.P14300396451921985925

/-! ## A210022.P9139531999939561204

`A007966(Δ[A210023(n)]²)`
-/

namespace A210022.P9139531999939561204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210023 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007966 ((f1 (n + 1) - f1 n) ^ 2).toNat

end

end A210022.P9139531999939561204

/-! ## A210022.P3864532538279796318

`A007967(Δ[A210023(n)]²)`
-/

namespace A210022.P3864532538279796318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210023 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007967 ((f1 (n + 1) - f1 n) ^ 2).toNat

end

end A210022.P3864532538279796318

/-! ## A210022.P10221040645835497588

`A018851(Δ[A210023(n)]²)`
-/

namespace A210022.P10221040645835497588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210023 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018851 ((f1 (n + 1) - f1 n) ^ 2).toNat

end

end A210022.P10221040645835497588

/-! ## A210022.P10381563646730593487

`A038690(Δ[A210023(n)]²)`
-/

namespace A210022.P10381563646730593487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210023 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038690 ((f1 (n + 1) - f1 n) ^ 2).toNat

end

end A210022.P10381563646730593487

/-! ## A210022.P14060253738054042623

`gcd(Δ[A210023(n)], A000038(n))`
-/

namespace A210022.P14060253738054042623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210023 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (n + 1) - f1 n) (A000038 n)

end

end A210022.P14060253738054042623

/-! ## A210022.P17731196856544617825

`∑{d}[Δ[A210023(n)], A000010(#)]`
-/

namespace A210022.P17731196856544617825
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210023 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A210022.P17731196856544617825

/-! ## A210022.P3638135490564259782

`abs(A210023(n+1)-A210023(n))`
-/

namespace A210022.P3638135490564259782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A210023 (n + 1) - A210023 n|

end

end A210022.P3638135490564259782

/-! ## A210022.P6279615386514978894

`sqrt(Δ[A210023(n)]²%A001504(n))`
-/

namespace A210022.P6279615386514978894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210023 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Int.tmod ((f1 (n + 1) - f1 n) ^ 2) (A001504 n) : ℝ)

end

end A210022.P6279615386514978894

/-! ## A210022.P12564024239731093135

`dr(Δ[A210023(n)]%A000040(n+2))`
-/

namespace A210022.P12564024239731093135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210023 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (Int.tmod (f1 (n + 1) - f1 n) (A000040 (n + 2)))

end

end A210022.P12564024239731093135

/-! ## A210022.P9490082652995891050

`sqrt(Δ[A210023(n)]²^A014963(4*n+2))`
-/

namespace A210022.P9490082652995891050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210023 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (((f1 (n + 1) - f1 n) ^ 2 : ℚ) ^ (A014963 (4 * n + 2) : ℤ) : ℝ)

end

end A210022.P9490082652995891050

/-! ## A210022.P13535082002126791242

`lcm((A000040(n+1)%2)^n, Δ[A210023(n)])`
-/

namespace A210022.P13535082002126791242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210023 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (Int.tmod (A000040 (n + 1)) 2 ^ n) (f1 (n + 1) - f1 n)

end

end A210022.P13535082002126791242

/-!
# A210023: a(0)=1. Let S = string of digits of a(0),a(1),a(2),... To get a(n+1) (n>=0), subtract next element of S from a(n) if that would give a positive number different from a(0),...,a(n), otherwise add it to a(n).

The programs for A210023, there is no canonical definition to state claims against.
-/

/-! ## A210023.P10518538284219530810

`A309571(n+1)+A230533(A023430(n))`
-/

namespace A210023.P10518538284219530810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309571 (n + 1) + A230533 (A023430 n).toNat

end

end A210023.P10518538284219530810

/-! ## A210023.P2288344172341956520

`A309571(A077168(n))`
-/

namespace A210023.P2288344172341956520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309571 (A077168 n).toNat

end

end A210023.P2288344172341956520

/-! ## A210023.P18105407405863955079

`A309571(A187829(n+2)-1)`
-/

namespace A210023.P18105407405863955079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309571 (A187829 (n + 2) - 1).toNat

end

end A210023.P18105407405863955079

/-! ## A210023.P17192809792586409881

`A309571(Δ[A187829(n+1)]+n)`
-/

namespace A210023.P17192809792586409881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187829 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309571 (f1 (n + 1) - f1 n + (n : ℤ)).toNat

end

end A210023.P17192809792586409881

/-! ## A210023.P178322035431660252

`A309571(n+1)%A309548(2*(n+2))`
-/

namespace A210023.P178322035431660252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A309571 (n + 1)) (A309548 (2 * (n + 2)))

end

end A210023.P178322035431660252

/-!
# A210024: Floor of the expected value of number of trials until all cells are occupied in a random distribution of 2n balls in n cells.

The programs for A210024, there is no canonical definition to state claims against.
-/

/-! ## A210024.P14819873930082981924

`A000196(A008611(Δ[A289177(n)]))`
-/

namespace A210024.P14819873930082981924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289177 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A008611 (f1 (n + 1) - f1 n).toNat).toNat

end

end A210024.P14819873930082981924

/-! ## A210024.P9261808105498666516

`A300763(A172471(∑[A205476(n)]))`
-/

namespace A210024.P9261808105498666516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205476 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300763 (A172471 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A210024.P9261808105498666516

/-! ## A210024.P10347883760243098655

`or(A067661(n), A340988(A111133(n)))`
-/

namespace A210024.P10347883760243098655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A067661 n) (A340988 ((A111133 n).toNat + 91))

end

end A210024.P10347883760243098655

/-! ## A210024.P11661985756461386044

`A263846(A055501(n))`
-/

namespace A210024.P11661985756461386044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263846 (A055501 n).toNat

end

end A210024.P11661985756461386044

/-! ## A210024.P2918376587414008221

`or(A067661(n), A101264(A305105(n)))`
-/

namespace A210024.P2918376587414008221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A067661 n) (A101264 (A305105 n).toNat)

end

end A210024.P2918376587414008221

/-!
# A210026: List of successive digits in A210025.

The programs for A210026, there is no canonical definition to state claims against.
-/

/-! ## A210026.P14802307029055240678

`abs(Δ[A210025(n)])`
-/

namespace A210026.P14802307029055240678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210025 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A210026.P14802307029055240678

/-! ## A210026.P10803049389686419423

`A000194(Δ[A210025(n)]²)`
-/

namespace A210026.P10803049389686419423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210025 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 ((f1 (n + 1) - f1 n) ^ 2).toNat

end

end A210026.P10803049389686419423

/-! ## A210026.P1669284017569418057

`A000196(Δ[A210025(n)]²)`
-/

namespace A210026.P1669284017569418057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210025 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 ((f1 (n + 1) - f1 n) ^ 2).toNat

end

end A210026.P1669284017569418057

/-! ## A210026.P11690534564406682785

`A007966(Δ[A210025(n)]²)`
-/

namespace A210026.P11690534564406682785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210025 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007966 ((f1 (n + 1) - f1 n) ^ 2).toNat

end

end A210026.P11690534564406682785

/-! ## A210026.P16935419692799627326

`A007967(Δ[A210025(n)]²)`
-/

namespace A210026.P16935419692799627326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210025 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007967 ((f1 (n + 1) - f1 n) ^ 2).toNat

end

end A210026.P16935419692799627326

/-! ## A210026.P3862483542382106779

`A037213(Δ[A210025(n)]²)`
-/

namespace A210026.P3862483542382106779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210025 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037213 ((f1 (n + 1) - f1 n) ^ 2).toNat

end

end A210026.P3862483542382106779

/-! ## A210026.P16379121587540678582

`lcm(Δ[A210025(n)], A033999(n))`
-/

namespace A210026.P16379121587540678582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210025 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (f1 (n + 1) - f1 n) (A033999 n)

end

end A210026.P16379121587540678582

/-! ## A210026.P17621617011351504265

`∑{d}[Δ[A210025(n)], A000010(#)]`
-/

namespace A210026.P17621617011351504265
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210025 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A210026.P17621617011351504265

/-! ## A210026.P16515891403303119858

`abs(A210025(n+1)-A210025(n))`
-/

namespace A210026.P16515891403303119858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A210025 (n + 1) - A210025 n|

end

end A210026.P16515891403303119858

/-! ## A210026.P5919796662593851505

`gcd(Δ[A210025(n)], A210067(2*n))`
-/

namespace A210026.P5919796662593851505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210025 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (n + 1) - f1 n) (A210067 (2 * n))

end

end A210026.P5919796662593851505

/-!
# A210028: E.g.f. A(x) satisfies: A(x) = 1 / [Sum_{n>=0} (-x)^n*A(x)^n/n!^2], where A(x) = Sum_{n>=0} a(n)*x^n/n!^2.

The programs for A210028, there is no canonical definition to state claims against.
-/

/-! ## A210028.P5227344583459999226

`A216806(A001105(n))+A069905(n)`
-/

namespace A210028.P5227344583459999226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216806 (A001105 n).toNat + A069905 n

end

end A210028.P5227344583459999226

/-!
# A210029: Number of sequences over the alphabet of n symbols of length 2n which have n distinct symbols. Also number of placements of 2n balls into n cells where no cell is empty.

The programs for A210029, there is no canonical definition to state claims against.
-/

/-! ## A210029.P3438780408518722272

`A344397(2*(n+1))`
-/

namespace A210029.P3438780408518722272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344397 (2 * (n + 1))

end

end A210029.P3438780408518722272

/-! ## A210029.P4285083894845911588

`A000142(n+1)*A007820(n+1)`
-/

namespace A210029.P4285083894845911588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 (n + 1) * A007820 (n + 1)

end

end A210029.P4285083894845911588

/-! ## A210029.P15559220591429969353

`A019538(2*(n+1)²)`
-/

namespace A210029.P15559220591429969353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019538 (2 * (n + 1) ^ 2)

end

end A210029.P15559220591429969353

/-! ## A210029.P1357039587973050207

`A131689(∑[4*(n+1)])`
-/

namespace A210029.P1357039587973050207
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131689 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A210029.P1357039587973050207

/-! ## A210029.P10484260951895170501

`A090582(2*(n+1)²+1)`
-/

namespace A210029.P10484260951895170501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090582 (2 * (n + 1) ^ 2 + 1)

end

end A210029.P10484260951895170501

/-!
# A210030: Expansion of phi(-q) / phi(q^2) in powers of q where phi() is a Ramanujan theta function.

The programs for A210030, there is no canonical definition to state claims against.
-/

/-! ## A210030.P712853981032123608

`(-1)^n*A080015(n)`
-/

namespace A210030.P712853981032123608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A080015 n

end

end A210030.P712853981032123608

/-! ## A210030.P16660803170898029906

`A057077(n)*A108494(n)`
-/

namespace A210030.P16660803170898029906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 n * A108494 n

end

end A210030.P16660803170898029906

/-! ## A210030.P3619558290312079082

`A080054(n)*A087960(n)`
-/

namespace A210030.P3619558290312079082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080054 n * A087960 n

end

end A210030.P3619558290312079082

/-! ## A210030.P17414009611508218503

`A245432(n)*A280560(n)`
-/

namespace A210030.P17414009611508218503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245432 n * A280560 n

end

end A210030.P17414009611508218503

/-! ## A210030.P7183225814313227882

`A080015(n)/A057077(A057077(n)+n)`
-/

namespace A210030.P7183225814313227882
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080015 n : ℚ) / (A057077 (A057077 n + (n : ℤ)).toNat : ℚ)

end

end A210030.P7183225814313227882

/-! ## A210030.P13731682197579936586

`A080015(n)/A080054(n)*A108494(n)`
-/

namespace A210030.P13731682197579936586
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080015 n : ℚ) / (A080054 n : ℚ) * (A108494 n : ℚ)

end

end A210030.P13731682197579936586

/-! ## A210030.P3220226094066642705

`A224216(n+1)/A208856(n)*A080054(n)`
-/

namespace A210030.P3220226094066642705
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A224216 (n + 1) : ℚ) / (A208856 n : ℚ) * (A080054 n : ℚ)

end

end A210030.P3220226094066642705

/-! ## A210030.P7841501921370688744

`A057077(n+1)*A080054(n)`
-/

namespace A210030.P7841501921370688744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 (n + 1) * A080054 n

end

end A210030.P7841501921370688744

/-! ## A210030.P12455671559668956368

`A080015(n)/(A059841(n)-A059841(n+1))`
-/

namespace A210030.P12455671559668956368
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080015 n : ℚ) / (A059841 n - A059841 (n + 1) : ℚ)

end

end A210030.P12455671559668956368

/-! ## A210030.P3674416607671302878

`A080015(n+1)/A080054(n+1)*A080054(n)`
-/

namespace A210030.P3674416607671302878
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080015 (n + 1) : ℚ) / (A080054 (n + 1) : ℚ) * (A080054 n : ℚ)

end

end A210030.P3674416607671302878

/-! ## A210030.P18352661172390666225

`A115671(n+1)/A224216(n+1)*A080054(n)`
-/

namespace A210030.P18352661172390666225
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A115671 (n + 1) : ℚ) / (A224216 (n + 1) : ℚ) * (A080054 n : ℚ)

end

end A210030.P18352661172390666225

/-! ## A210030.P486338220294709580

`A115671(n+1)/A245432(n+1)*A080054(n)`
-/

namespace A210030.P486338220294709580
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A115671 (n + 1) : ℚ) / (A245432 (n + 1) : ℚ) * (A080054 n : ℚ)

end

end A210030.P486338220294709580

/-! ## A210030.P12505092996431097499

`A080015(n)*A087960(2*n)`
-/

namespace A210030.P12505092996431097499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080015 n * A087960 (2 * n)

end

end A210030.P12505092996431097499

/-! ## A210030.P13970408560637642452

`A080015(n)/A057077(2*n)`
-/

namespace A210030.P13970408560637642452
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080015 n : ℚ) / (A057077 (2 * n) : ℚ)

end

end A210030.P13970408560637642452

/-! ## A210030.P1342226559932433898

`A010815(A001318(n))*A080054(n)`
-/

namespace A210030.P1342226559932433898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010815 (A001318 n).toNat * A080054 n

end

end A210030.P1342226559932433898

/-! ## A210030.P10045819138633072082

`A080015(n)/A087960(n²)`
-/

namespace A210030.P10045819138633072082
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080015 n : ℚ) / (A087960 (n ^ 2) : ℚ)

end

end A210030.P10045819138633072082

/-!
# A210031: Number of binary words of length n containing no subword 100001.

The programs for A210031, the canonical program `A210031.P7756911998985763384` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A210031 has offset 0).

The definition of A210031 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A210031.P7756911998985763384

`2*a(n-1)-a(n-5)+a(n-6)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=8, a(4)=16, a(5)=32`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A210031

/-- `2*a(n-1)-a(n-5)+a(n-6)` -/
def P7756911998985763384.Spec : Prop :=
  ∀ n, P7756911998985763384.a n = A210031 n

theorem P7756911998985763384.correct : P7756911998985763384.Spec := by
  intro n
  simp only [A210031]

end A210031

/-! ## A210031.P6972466703369616515

`A059169(A356621(n+1)+A033948(n+4))`
-/

namespace A210031.P6972466703369616515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059169 (A356621 (n + 1) + A033948 (n + 4)).toNat

end

end A210031.P6972466703369616515

namespace A210031

/-- `A059169(A356621(n+1)+A033948(n+4))` -/
def P6972466703369616515.Spec : Prop :=
  ∀ n, P6972466703369616515.a n = A210031 n

end A210031

/-! ## A210031.P17748104843631590685

`record[A141020(n)]`
-/

namespace A210031.P17748104843631590685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141020 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A210031.P17748104843631590685

namespace A210031

/-- `record[A141020(n)]` -/
def P17748104843631590685.Spec : Prop :=
  ∀ n, P17748104843631590685.a n = A210031 n

end A210031

/-! ## A210031.P8763580628447868294

`A141020(∑[n+1]+1)`
-/

namespace A210031.P8763580628447868294
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141020 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A210031.P8763580628447868294

namespace A210031

/-- `A141020(∑[n+1]+1)` -/
def P8763580628447868294.Spec : Prop :=
  ∀ n, P8763580628447868294.a n = A210031 n

end A210031

/-! ## A210031.P6643034601657866610

`A001949(and(n², round(n²/11))!+n+4)`
-/

namespace A210031.P6643034601657866610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001949 (Nat.factorial (Int.land (n ^ 2 : ℤ) (SequenceMachineLib.roundAway ((n ^ 2 : ℚ) / 11))).toNat + n + 4)

end

end A210031.P6643034601657866610

namespace A210031

/-- `A001949(and(n², round(n²/11))!+n+4)` -/
def P6643034601657866610.Spec : Prop :=
  ∀ n, P6643034601657866610.a n = A210031 n

end A210031

/-!
# A210032: a(n)=n for n=1,2,3 and 4; a(n)=5 for n >= 5.

The programs for A210032, the canonical program `A210032.P11148988425945671977` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A210032 has offset 1).

The definition of A210032 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A158411, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A210032.P11148988425945671977

`1+A158411(n)`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A210032

/-- `1+A158411(n)` -/
def P11148988425945671977.Spec : Prop :=
  ∀ n, P11148988425945671977.a n = A210032 (n + 1)

theorem P11148988425945671977.correct : P11148988425945671977.Spec := by
  intro n
  simp only [A210032, Nat.add_sub_cancel]

end A210032

/-!
# A210034: Triangle of coefficients of polynomials v(n,x) jointly generated with A210033; see the Formula section.

The programs for A210034, there is no canonical definition to state claims against.
-/

/-! ## A210034.P6842962205426086616

`A076791(n+1)-char[∑[n]]`
-/

namespace A210034.P6842962205426086616
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076791 (n + 1) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A210034.P6842962205426086616

/-! ## A210034.P1682406737254996471

`A210036(n+1)/A059268(n)`
-/

namespace A210034.P1682406737254996471
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A210036 (n + 1) : ℚ) / (A059268 n : ℚ)

end

end A210034.P1682406737254996471

/-! ## A210034.P3733748524612762849

`A210036(n+1)/A000079(A002262(n))`
-/

namespace A210034.P3733748524612762849
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A210036 (n + 1) : ℚ) / (A000079 (A002262 n).toNat : ℚ)

end

end A210034.P3733748524612762849

/-! ## A210034.P14248058921529495454

`A210036(n+1)/A011782(A002260(n+1))`
-/

namespace A210034.P14248058921529495454
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A210036 (n + 1) : ℚ) / (A011782 (A002260 (n + 1)).toNat : ℚ)

end

end A210034.P14248058921529495454

/-! ## A210034.P9900676888688828689

`(A210221(n+2)-char[∑[n]])/A059268(n)`
-/

namespace A210034.P9900676888688828689
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A210221 (n + 2) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) : ℚ) / (A059268 n : ℚ)

end

end A210034.P9900676888688828689

/-! ## A210034.P3572203978585611201

`A028310(A210036(n+1))/A000079(A025668(n+1))`
-/

namespace A210034.P3572203978585611201
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028310 (A210036 (n + 1)).toNat : ℚ) / (A000079 (A025668 (n + 1)).toNat : ℚ)

end

end A210034.P3572203978585611201

/-! ## A210034.P7513363864550606206

`A384893(A014132(n+1))`
-/

namespace A210034.P7513363864550606206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384893 (A014132 (n + 1)).toNat

end

end A210034.P7513363864550606206

/-! ## A210034.P15042587999208212301

`A384893(A007401(n+2))`
-/

namespace A210034.P15042587999208212301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384893 (A007401 (n + 2)).toNat

end

end A210034.P15042587999208212301

/-!
# A210036: Triangle of coefficients of polynomials v(n,x) jointly generated with A210035; see the Formula section.

The programs for A210036, there is no canonical definition to state claims against.
-/

/-! ## A210036.P4879199582125234222

`A059268(n)*A210034(n+1)`
-/

namespace A210036.P4879199582125234222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n * A210034 (n + 1)

end

end A210036.P4879199582125234222

/-! ## A210036.P1812395342419183699

`2^A002262(n)*A210034(n+1)`
-/

namespace A210036.P1812395342419183699
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A002262 n : ℤ) * (A210034 (n + 1) : ℚ)

end

end A210036.P1812395342419183699

/-! ## A210036.P2356466742900274468

`(A076791(n+1)-char[∑[n]])*A059268(n)`
-/

namespace A210036.P2356466742900274468
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A076791 (n + 1) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)) * A059268 n

end

end A210036.P2356466742900274468

/-! ## A210036.P14435636363148761130

`2^A002260(n+1)/2*A210034(n+1)`
-/

namespace A210036.P14435636363148761130
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A002260 (n + 1) : ℤ) / 2 * (A210034 (n + 1) : ℚ)

end

end A210036.P14435636363148761130

/-! ## A210036.P15021414027889495087

`2^(A002260(2*n+1-n)-1)*A210034(n+1)`
-/

namespace A210036.P15021414027889495087
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A002260 (2 * n + 1 - n) - 1 : ℤ) * (A210034 (n + 1) : ℚ)

end

end A210036.P15021414027889495087

/-! ## A210036.P10443501134587134075

`A000079(A002262(n))*A210034(n+1)`
-/

namespace A210036.P10443501134587134075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A002262 n).toNat * A210034 (n + 1)

end

end A210036.P10443501134587134075

/-! ## A210036.P6817383016855183984

`A011782(A002260(n+1))*A210034(n+1)`
-/

namespace A210036.P6817383016855183984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A002260 (n + 1)).toNat * A210034 (n + 1)

end

end A210036.P6817383016855183984

/-! ## A210036.P7724558503920047121

`(A000225(A002260(n+1)-1)+1)*A210034(n+1)`
-/

namespace A210036.P7724558503920047121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000225 (A002260 (n + 1) - 1).toNat + 1) * A210034 (n + 1)

end

end A210036.P7724558503920047121

/-! ## A210036.P9038931730873845465

`A210221(n+2)-char[∑[n]]`
-/

namespace A210036.P9038931730873845465
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210221 (n + 2) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A210036.P9038931730873845465

/-! ## A210036.P5632487593438634906

`2^(A026100(A026098(n+1))-1)*A210034(n+1)`
-/

namespace A210036.P5632487593438634906
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A026100 (A026098 (n + 1)).toNat - 1 : ℤ) * (A210034 (n + 1) : ℚ)

end

end A210036.P5632487593438634906

/-! ## A210036.P2490325689228261510

`A000010(2^A002260(n+1))*A210034(n+1)`
-/

namespace A210036.P2490325689228261510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A002260 (n + 1) : ℤ))).toNat * A210034 (n + 1)

end

end A210036.P2490325689228261510

/-!
# A210038: Triangle of coefficients of polynomials v(n,x) jointly generated with A210037; see the Formula section.

The programs for A210038, there is no canonical definition to state claims against.
-/

/-! ## A210038.P6945943439187959457

`2*A106195(n)-A055587(n)`
-/

namespace A210038.P6945943439187959457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A106195 n - A055587 n

end

end A210038.P6945943439187959457

/-! ## A210038.P5741219036971621858

`A207605(n+2)-char[∑[n]]`
-/

namespace A210038.P5741219036971621858
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207605 (n + 2) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A210038.P5741219036971621858

/-! ## A210038.P315982976256171895

`Δ[∑[A207605(n+1)]-A123578(n)]`
-/

namespace A210038.P315982976256171895
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207605 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A123578 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A210038.P315982976256171895

/-! ## A210038.P4673816764895912372

`A106195(n)+A055807(A014132(n+1))`
-/

namespace A210038.P4673816764895912372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106195 n + A055807 (A014132 (n + 1)).toNat

end

end A210038.P4673816764895912372

/-! ## A210038.P6211912973034348982

`2*A055587(A014132(n+1))-A055587(n)`
-/

namespace A210038.P6211912973034348982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A055587 (A014132 (n + 1)).toNat - A055587 n

end

end A210038.P6211912973034348982

/-! ## A210038.P7759400942049145798

`A055807(eq[0, A103451(n)])`
-/

namespace A210038.P7759400942049145798
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103451 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055807 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A210038.P7759400942049145798

/-! ## A210038.P13199487558875106892

`A055807(eq[0, A103452(n)])`
-/

namespace A210038.P13199487558875106892
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103452 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055807 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A210038.P13199487558875106892

/-! ## A210038.P16183511562430235342

`A055807(eq[0, A145677(n)])`
-/

namespace A210038.P16183511562430235342
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145677 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055807 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A210038.P16183511562430235342

/-! ## A210038.P13502006107772549253

`A055807(eq[0, A158821(n)])`
-/

namespace A210038.P13502006107772549253
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158821 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055807 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A210038.P13502006107772549253

/-! ## A210038.P8415103694163225677

`A055807(lt[1, A180562(n)])`
-/

namespace A210038.P8415103694163225677
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180562 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055807 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A210038.P8415103694163225677

/-! ## A210038.P15860562529767879627

`A055807(eq[0, A185740(n+1)])`
-/

namespace A210038.P15860562529767879627
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185740 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055807 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A210038.P15860562529767879627

/-! ## A210038.P13466102282695479184

`A055807(A131507(n)+3+n)`
-/

namespace A210038.P13466102282695479184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055807 (A131507 n + 3 + (n : ℤ)).toNat

end

end A210038.P13466102282695479184

/-! ## A210038.P15952702406766244752

`A055807(2*A003057(n+2)+n)`
-/

namespace A210038.P15952702406766244752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055807 (2 * A003057 (n + 2) + (n : ℤ)).toNat

end

end A210038.P15952702406766244752

/-! ## A210038.P14434581783812623213

`A055807(2*A014132(n+1)-n)`
-/

namespace A210038.P14434581783812623213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055807 (2 * A014132 (n + 1) - (n : ℤ)).toNat

end

end A210038.P14434581783812623213

/-! ## A210038.P10201924874827334336

`A055807(A014132(A014132(n+1)))`
-/

namespace A210038.P10201924874827334336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055807 (A014132 (A014132 (n + 1)).toNat).toNat

end

end A210038.P10201924874827334336

/-! ## A210038.P4134493708699852062

`A055807(eq[A023531(n), A073424(n)])`
-/

namespace A210038.P4134493708699852062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073424 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055807 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A210038.P4134493708699852062

/-! ## A210038.P7950623978977514925

`A055807(eq[A073424(n+1), A073424(n)])`
-/

namespace A210038.P7950623978977514925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073424 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073424 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055807 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A210038.P7950623978977514925

/-!
# A210039: Array of coefficients of polynomials u(n,x) jointly generated with A210040; see the Formula section.

The programs for A210039, the canonical program `A210039.P13325331133632388062` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A210039 has offset 1).

The definition of A210039 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9801 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A210039.P14943768797295274738

`A210189(n+1)/A210189(A122197(n+1)²)`
-/

namespace A210039.P14943768797295274738
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A210189 (n + 1) : ℚ) / (A210189 (A122197 (n + 1) ^ 2).toNat : ℚ)

end

end A210039.P14943768797295274738

namespace A210039

/-- `A210189(n+1)/A210189(A122197(n+1)²)` -/
def P14943768797295274738.Spec : Prop :=
  ∀ n, P14943768797295274738.a n = (A210039 (n + 1) : ℚ)

end A210039

/-! ## A210039.P13325331133632388062

`A034839(A049068(n+1))`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A210039

/-- `A034839(A049068(n+1))` -/
def P13325331133632388062.Spec : Prop :=
  ∀ n, P13325331133632388062.a n = A210039 (n + 1)

theorem P13325331133632388062.correct : P13325331133632388062.Spec := by
  intro n
  simp only [A210039, Nat.add_sub_cancel]

end A210039

/-! ## A210039.P15124380715532182286

`A034839(A183866(n+2))`
-/

namespace A210039.P15124380715532182286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034839 (A183866 (n + 2)).toNat

end

end A210039.P15124380715532182286

namespace A210039

/-- `A034839(A183866(n+2))` -/
def P15124380715532182286.Spec : Prop :=
  ∀ n, P15124380715532182286.a n = A210039 (n + 1)

end A210039

/-! ## A210039.P8133744900936904546

`A074909(comp[n²]+n+1)`
-/

namespace A210039.P8133744900936904546
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + (n + 1))

end

end A210039.P8133744900936904546

namespace A210039

/-- `A074909(comp[n²]+n+1)` -/
def P8133744900936904546.Spec : Prop :=
  ∀ n, P8133744900936904546.a n = A210039 (n + 1)

end A210039

/-! ## A210039.P9261316849979863699

`A299927(comp[n²]+n+2)`
-/

namespace A210039.P9261316849979863699
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299927 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + (n + 2))

end

end A210039.P9261316849979863699

namespace A210039

/-- `A299927(comp[n²]+n+2)` -/
def P9261316849979863699.Spec : Prop :=
  ∀ n, P9261316849979863699.a n = A210039 (n + 1)

end A210039

/-! ## A210039.P13162980580122421708

`A007318(A161827(n+1)+n)`
-/

namespace A210039.P13162980580122421708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A161827 (n + 1) + (n : ℤ)).toNat

end

end A210039.P13162980580122421708

namespace A210039

/-- `A007318(A161827(n+1)+n)` -/
def P13162980580122421708.Spec : Prop :=
  ∀ n, P13162980580122421708.a n = A210039 (n + 1)

end A210039

/-! ## A210039.P6967641293759376774

`A007318(A049068(n+1)+comp[n²])`
-/

namespace A210039.P6967641293759376774
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A049068 (n + 1) + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ)).toNat

end

end A210039.P6967641293759376774

namespace A210039

/-- `A007318(A049068(n+1)+comp[n²])` -/
def P6967641293759376774.Spec : Prop :=
  ∀ n, P6967641293759376774.a n = A210039 (n + 1)

end A210039

/-! ## A210039.P16335566080191921892

`A007318(A003059(n+1)+2*comp[n²])`
-/

namespace A210039.P16335566080191921892
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A003059 (n + 1) + (2 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ)).toNat

end

end A210039.P16335566080191921892

namespace A210039

/-- `A007318(A003059(n+1)+2*comp[n²])` -/
def P16335566080191921892.Spec : Prop :=
  ∀ n, P16335566080191921892.a n = A210039 (n + 1)

end A210039

/-! ## A210039.P4343129332048863943

`A007318(comp[C(n+1, A007318(a(n-1))²)])` with `a(0)=2`
-/

namespace A210039.P4343129332048863943
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2] fun n f1 =>
  Nat.choose (n + 1) (A007318 (f1 (n - 1)) ^ 2).toNat

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A210039.P4343129332048863943

namespace A210039

/-- `A007318(comp[C(n+1, A007318(a(n-1))²)])` -/
def P4343129332048863943.Spec : Prop :=
  ∀ n, P4343129332048863943.a n = A210039 (n + 1)

end A210039

/-! ## A210039.P3508047495527502513

`A135278(comp[n²]+n)`
-/

namespace A210039.P3508047495527502513
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135278 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + n)

end

end A210039.P3508047495527502513

namespace A210039

/-- `A135278(comp[n²]+n)` -/
def P3508047495527502513.Spec : Prop :=
  ∀ n, P3508047495527502513.a n = A210039 (n + 1)

end A210039

/-! ## A210039.P4771678267631852161

`A153861(comp[n²]+n)`
-/

namespace A210039.P4771678267631852161
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153861 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + n)

end

end A210039.P4771678267631852161

namespace A210039

/-- `A153861(comp[n²]+n)` -/
def P4771678267631852161.Spec : Prop :=
  ∀ n, P4771678267631852161.a n = A210039 (n + 1)

end A210039

/-! ## A210039.P6806458867556524722

`A202023(lt[A202023(n), A201701(n)]+1)`
-/

namespace A210039.P6806458867556524722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202023 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201701 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202023 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1)

end

end A210039.P6806458867556524722

namespace A210039

/-- `A202023(lt[A202023(n), A201701(n)]+1)` -/
def P6806458867556524722.Spec : Prop :=
  ∀ n, P6806458867556524722.a n = A210039 (n + 1)

end A210039

/-! ## A210039.P390565297403536983

`A202023(lt[1, A007318(n)*A202023(n)])`
-/

namespace A210039.P390565297403536983
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A202023 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202023 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A210039.P390565297403536983

namespace A210039

/-- `A202023(lt[1, A007318(n)*A202023(n)])` -/
def P390565297403536983.Spec : Prop :=
  ∀ n, P390565297403536983.a n = A210039 (n + 1)

end A210039

/-! ## A210039.P17322461507098851053

`A202023(lt[1/A007318(n), A202023(n)])`
-/

namespace A210039.P17322461507098851053
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (A007318 n : ℚ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202023 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202023 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n)

end

end A210039.P17322461507098851053

namespace A210039

/-- `A202023(lt[1/A007318(n), A202023(n)])` -/
def P17322461507098851053.Spec : Prop :=
  ∀ n, P17322461507098851053.a n = A210039 (n + 1)

end A210039

/-! ## A210039.P1110826481523464487

`A143858(A056536(n+1))`
-/

namespace A210039.P1110826481523464487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143858 (A056536 (n + 1)).toNat

end

end A210039.P1110826481523464487

namespace A210039

/-- `A143858(A056536(n+1))` -/
def P1110826481523464487.Spec : Prop :=
  ∀ n, P1110826481523464487.a n = A210039 (n + 1)

end A210039

/-! ## A210039.P1849611712361483492

`A007318(lt[A124844(n), 0])`
-/

namespace A210039.P1849611712361483492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124844 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A210039.P1849611712361483492

namespace A210039

/-- `A007318(lt[A124844(n), 0])` -/
def P1849611712361483492.Spec : Prop :=
  ∀ n, P1849611712361483492.a n = A210039 (n + 1)

end A210039

/-! ## A210039.P9798906706072093116

`A097805(eq[0, A053382(n)])`
-/

namespace A210039.P9798906706072093116
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053382 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097805 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A210039.P9798906706072093116

namespace A210039

/-- `A097805(eq[0, A053382(n)])` -/
def P9798906706072093116.Spec : Prop :=
  ∀ n, P9798906706072093116.a n = A210039 (n + 1)

end A210039

/-! ## A210039.P2496310921388336755

`A007318(lt[A191739(n+1), A191736(n+1)])`
-/

namespace A210039.P2496310921388336755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191739 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A210039.P2496310921388336755

namespace A210039

/-- `A007318(lt[A191739(n+1), A191736(n+1)])` -/
def P2496310921388336755.Spec : Prop :=
  ∀ n, P2496310921388336755.a n = A210039 (n + 1)

end A210039

/-! ## A210039.P6880112796519796861

`A007318(eq[0, A004175(n)])`
-/

namespace A210039.P6880112796519796861
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004175 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A210039.P6880112796519796861

namespace A210039

/-- `A007318(eq[0, A004175(n)])` -/
def P6880112796519796861.Spec : Prop :=
  ∀ n, P6880112796519796861.a n = A210039 (n + 1)

end A210039

/-! ## A210039.P14631343472040627231

`A132749(eq[0, A004175(n)])`
-/

namespace A210039.P14631343472040627231
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004175 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132749 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A210039.P14631343472040627231

namespace A210039

/-- `A132749(eq[0, A004175(n)])` -/
def P14631343472040627231.Spec : Prop :=
  ∀ n, P14631343472040627231.a n = A210039 (n + 1)

end A210039

/-!
# A210040: Array of coefficients of polynomials v(n,x) jointly generated with A210039; see the Formula section.

The programs for A210040, the canonical program `A210040.P8255258809295094256` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A210040 has offset 1).

The definition of A210040 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A210040.P8255258809295094256

`A034867(Δ[A055087(n)]+n)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A210040

/-- `A034867(Δ[A055087(n)]+n)` -/
def P8255258809295094256.Spec : Prop :=
  ∀ n, P8255258809295094256.a n = A210040 (n + 1)

theorem P8255258809295094256.correct : P8255258809295094256.Spec := by
  intro n
  simp only [A210040, Nat.add_sub_cancel]

end A210040

/-! ## A210040.P7763000239032663921

`A034867(Δ[A122197(n+1)]+n)`
-/

namespace A210040.P7763000239032663921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122197 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034867 (f1 (n + 1) - f1 n + (n : ℤ)).toNat

end

end A210040.P7763000239032663921

namespace A210040

/-- `A034867(Δ[A122197(n+1)]+n)` -/
def P7763000239032663921.Spec : Prop :=
  ∀ n, P7763000239032663921.a n = A210040 (n + 1)

end A210040

/-! ## A210040.P6858327909356440443

`A034867(n+1)-Δ[A000267(n)]`
-/

namespace A210040.P6858327909356440443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000267 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034867 (n + 1) - (f1 (n + 1) - f1 n)

end

end A210040.P6858327909356440443

namespace A210040

/-- `A034867(n+1)-Δ[A000267(n)]` -/
def P6858327909356440443.Spec : Prop :=
  ∀ n, P6858327909356440443.a n = A210040 (n + 1)

end A210040

/-! ## A210040.P4080543554253466115

`A034867(n+1)-(A028297(n)%2)²`
-/

namespace A210040.P4080543554253466115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034867 (n + 1) - Int.tmod (A028297 n) 2 ^ 2

end

end A210040.P4080543554253466115

namespace A210040

/-- `A034867(n+1)-(A028297(n)%2)²` -/
def P4080543554253466115.Spec : Prop :=
  ∀ n, P4080543554253466115.a n = A210040 (n + 1)

end A210040

/-! ## A210040.P9890893474880164284

`A007318(A000037(n+2)+n+1)-A240025(n+1)`
-/

namespace A210040.P9890893474880164284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A000037 (n + 2) + (n + 1 : ℤ)).toNat - A240025 (n + 1)

end

end A210040.P9890893474880164284

namespace A210040

/-- `A007318(A000037(n+2)+n+1)-A240025(n+1)` -/
def P9890893474880164284.Spec : Prop :=
  ∀ n, P9890893474880164284.a n = A210040 (n + 1)

end A210040

/-! ## A210040.P4536756084725114776

`A153861(∑[gcd(2, A000005(n+1))])`
-/

namespace A210040.P4536756084725114776
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A000005 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153861 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A210040.P4536756084725114776

namespace A210040

/-- `A153861(∑[gcd(2, A000005(n+1))])` -/
def P4536756084725114776.Spec : Prop :=
  ∀ n, P4536756084725114776.a n = A210040 (n + 1)

end A210040

/-! ## A210040.P11787078522552623833

`A153861(A028391(n+1)+n+1)`
-/

namespace A210040.P11787078522552623833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153861 (A028391 (n + 1) + (n + 1 : ℤ)).toNat

end

end A210040.P11787078522552623833

namespace A210040

/-- `A153861(A028391(n+1)+n+1)` -/
def P11787078522552623833.Spec : Prop :=
  ∀ n, P11787078522552623833.a n = A210040 (n + 1)

end A210040

/-!
# A210042: Triangle of coefficients of polynomials u(n,x) jointly generated with A124927; see the Formula section.

The programs for A210042, there is no canonical definition to state claims against.
-/

/-! ## A210042.P9691553810115224955

`A209688(n+1)+A206735(A028310(n))`
-/

namespace A210042.P9691553810115224955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209688 (n + 1) + A206735 (A028310 n).toNat

end

end A210042.P9691553810115224955

/-! ## A210042.P6397477980652112648

`A209688(n+1)+A007318(n)%A008949(n)`
-/

namespace A210042.P6397477980652112648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209688 (n + 1) + Int.tmod (A007318 n) (A008949 n)

end

end A210042.P6397477980652112648

/-! ## A210042.P13859555389803065963

`A209688(n+1)+A206735(n)%A008949(n)`
-/

namespace A210042.P13859555389803065963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209688 (n + 1) + Int.tmod (A206735 n) (A008949 n)

end

end A210042.P13859555389803065963

/-! ## A210042.P12814420951113084272

`A095660(A014132(n+1))-Δ[A209688(n+1)]`
-/

namespace A210042.P12814420951113084272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209688 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095660 (A014132 (n + 1)).toNat - (f1 (n + 1) - f1 n)

end

end A210042.P12814420951113084272

/-! ## A210042.P15067079134778641219

`A209688(n+1)+A097805(A080036(n))`
-/

namespace A210042.P15067079134778641219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209688 (n + 1) + A097805 (A080036 n).toNat

end

end A210042.P15067079134778641219

/-! ## A210042.P11769409809918313691

`A209688(n+1)+A249756(n)-A184049(n)`
-/

namespace A210042.P11769409809918313691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209688 (n + 1) + (A249756 n - A184049 n)

end

end A210042.P11769409809918313691

/-! ## A210042.P9262785784685005725

`A209688(n+1)+A249755(n)-A249756(n)`
-/

namespace A210042.P9262785784685005725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209688 (n + 1) + (A249755 n - A249756 n)

end

end A210042.P9262785784685005725

/-! ## A210042.P2443980614276074894

`A209688(n+1)+A123108(A124927(n))`
-/

namespace A210042.P2443980614276074894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209688 (n + 1) + A123108 (A124927 n).toNat

end

end A210042.P2443980614276074894

/-! ## A210042.P4184966124033662324

`A209688(n+1)+A002264(A124928(n))`
-/

namespace A210042.P4184966124033662324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209688 (n + 1) + A002264 (A124928 n).toNat

end

end A210042.P4184966124033662324

/-! ## A210042.P4910483328120347246

`A209688(n+1)+A002264(A134060(n))`
-/

namespace A210042.P4910483328120347246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209688 (n + 1) + A002264 (A134060 n).toNat

end

end A210042.P4910483328120347246

/-!
# A210043: G.f. A(x) satisfies: A(x) = 1 / Product_{n>=1} (1 - x^n*A(x)^(n-1)).

The programs for A210043, there is no canonical definition to state claims against.
-/

/-! ## A210043.P9680853012851051715

`A178780(A174316(n))+A049130(n+1)`
-/

namespace A210043.P9680853012851051715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178780 (A174316 n).toNat + A049130 (n + 1)

end

end A210043.P9680853012851051715

/-! ## A210043.P2315836030651868545

`A049130(n+1)-A185284(A000124(n))`
-/

namespace A210043.P2315836030651868545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049130 (n + 1) - A185284 (A000124 n).toNat

end

end A210043.P2315836030651868545

/-! ## A210043.P17848011151514938850

`A049130(n+1)-A347440(A000213(n))`
-/

namespace A210043.P17848011151514938850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049130 (n + 1) - A347440 (A000213 n).toNat

end

end A210043.P17848011151514938850

/-! ## A210043.P12553347283530238656

`A049130(n+1)-A340998(A323582(n))`
-/

namespace A210043.P12553347283530238656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049130 (n + 1) - A340998 ((A323582 n).toNat + 140)

end

end A210043.P12553347283530238656

/-! ## A210043.P4531360902946298791

`A049130(n+1)-A083919(A141268(n+1))`
-/

namespace A210043.P4531360902946298791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049130 (n + 1) - A083919 (A141268 (n + 1)).toNat

end

end A210043.P4531360902946298791

/-!
# A210044: Number of (n+1)X(n+1) 0..2 arrays containing all values 0..2 with every 2X2 subblock having two distinct values, and new values 0..2 introduced in row major order.

The programs for A210044, there is no canonical definition to state claims against.
-/

/-! ## A210044.P3394805811225143547

`A210052((n+1)²+n²)`
-/

namespace A210044.P3394805811225143547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210052 ((n + 1) ^ 2 + n ^ 2)

end

end A210044.P3394805811225143547

/-!
# A210045: Number of (n+1)X2 0..2 arrays containing all values 0..2 with every 2X2 subblock having two distinct values, and new values 0..2 introduced in row major order.

The programs for A210045, the canonical program `A210045.P9142798141755511271` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A210045 has offset 1).

The definition of A210045 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 145 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A210045.P9142798141755511271

`7*a(n-1)-6*a(n-2)-20*a(n-3)-8*a(n-4)` with `a(0)=0, a(1)=9, a(2)=75, a(3)=475`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A210045

/-- `7*a(n-1)-6*a(n-2)-20*a(n-3)-8*a(n-4)` -/
def P9142798141755511271.Spec : Prop :=
  ∀ n, P9142798141755511271.a n = A210045 (n + 1)

theorem P9142798141755511271.correct : P9142798141755511271.Spec := by
  intro n
  simp only [A210045, Nat.add_sub_cancel]

end A210045

/-! ## A210045.P3487401191353456624

`A210052(∑[n]+1)`
-/

namespace A210045.P3487401191353456624
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210052 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A210045.P3487401191353456624

namespace A210045

/-- `A210052(∑[n]+1)` -/
def P3487401191353456624.Spec : Prop :=
  ∀ n, P3487401191353456624.a n = A210045 (n + 1)

end A210045

/-! ## A210045.P10954617462258233263

`record[A010054(n)*A210052(n+1)]`
-/

namespace A210045.P10954617462258233263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A210052 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A210045.P10954617462258233263

namespace A210045

/-- `record[A010054(n)*A210052(n+1)]` -/
def P10954617462258233263.Spec : Prop :=
  ∀ n, P10954617462258233263.a n = A210045 (n + 1)

end A210045

/-! ## A210045.P444253729896604572

`record[A210052(n+1)/A022168(n)]`
-/

namespace A210045.P444253729896604572
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A210052 (n + 1) : ℚ) / (A022168 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A210045.P444253729896604572

namespace A210045

/-- `record[A210052(n+1)/A022168(n)]` -/
def P444253729896604572.Spec : Prop :=
  ∀ n, P444253729896604572.a n = (A210045 (n + 1) : ℚ)

end A210045

/-! ## A210045.P8288384562783463934

`record[gcd(A002262(n), A210052(n+1))]`
-/

namespace A210045.P8288384562783463934
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A210052 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A210045.P8288384562783463934

namespace A210045

/-- `record[gcd(A002262(n), A210052(n+1))]` -/
def P8288384562783463934.Spec : Prop :=
  ∀ n, (P8288384562783463934.a n : ℤ) = A210045 (n + 1)

end A210045

/-!
# A210046: Number of (n+1) X 3 0..2 arrays containing all values 0..2 with every 2 X 2 subblock having two distinct values, and new values 0..2 introduced in row major order.

The programs for A210046, there is no canonical definition to state claims against.
-/

/-! ## A210046.P1804995805687778819

`A210052(∑[n+1]+2)`
-/

namespace A210046.P1804995805687778819
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210052 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A210046.P1804995805687778819

/-! ## A210046.P5330172740216717793

`record[A010054(n)*A210052(n+2)]`
-/

namespace A210046.P5330172740216717793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A210052 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A210046.P5330172740216717793

/-! ## A210046.P11398351413076861484

`record[gcd(A002262(n), A210052(n+2))]`
-/

namespace A210046.P11398351413076861484
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A210052 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A210046.P11398351413076861484

/-! ## A210046.P11622914653166733087

`record[root(A210052(n+2), A210033(n+1))]`
-/

namespace A210046.P11622914653166733087
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A210052 (n + 2) : ℝ) ^ (1 / (A210033 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A210046.P11622914653166733087

/-! ## A210046.P10520288913381190749

`record[root(A210052(n+2), A210037(n+1))]`
-/

namespace A210046.P10520288913381190749
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A210052 (n + 2) : ℝ) ^ (1 / (A210037 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A210046.P10520288913381190749

/-!
# A210047: Number of (n+1)X4 0..2 arrays containing all values 0..2 with every 2X2 subblock having two distinct values, and new values 0..2 introduced in row major order.

The programs for A210047, there is no canonical definition to state claims against.
-/

/-! ## A210047.P3138082402646533700

`A210052(∑[n+2]+4)`
-/

namespace A210047.P3138082402646533700
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210052 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A210047.P3138082402646533700

/-! ## A210047.P7742451300954617228

`or(1, A210052(A167614(n+1)))`
-/

namespace A210047.P7742451300954617228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A210052 (A167614 (n + 1)).toNat)

end

end A210047.P7742451300954617228

/-! ## A210047.P8077119376079911544

`A210052(A167614(n+1))+A185284(n)`
-/

namespace A210047.P8077119376079911544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210052 (A167614 (n + 1)).toNat + A185284 n

end

end A210047.P8077119376079911544

/-! ## A210047.P3053649381157241867

`lcm(A210052(A167614(n+1)), A269529(n))`
-/

namespace A210047.P3053649381157241867
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A210052 (A167614 (n + 1)).toNat) (A269529 n)

end

end A210047.P3053649381157241867

/-! ## A210047.P12092368043761830740

`A210052(A167614(n+1))+A034550(n+1)`
-/

namespace A210047.P12092368043761830740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210052 (A167614 (n + 1)).toNat + A034550 (n + 1)

end

end A210047.P12092368043761830740

/-!
# A210048: Number of (n+1)X5 0..2 arrays containing all values 0..2 with every 2X2 subblock having two distinct values, and new values 0..2 introduced in row major order.

The programs for A210048, there is no canonical definition to state claims against.
-/

/-! ## A210048.P5861367922182459228

`A210052(A374004(n+1))`
-/

namespace A210048.P5861367922182459228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210052 (A374004 (n + 1)).toNat

end

end A210048.P5861367922182459228

/-! ## A210048.P3860402618763803889

`A210052(A141214(n)+7)`
-/

namespace A210048.P3860402618763803889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210052 (A141214 n + 7).toNat

end

end A210048.P3860402618763803889

/-! ## A210048.P16503650946224534027

`A210052(A052905(n)+9)`
-/

namespace A210048.P16503650946224534027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210052 (A052905 n + 9).toNat

end

end A210048.P16503650946224534027

/-! ## A210048.P3250976530257944603

`A210052(A167614(n+2)+1)`
-/

namespace A210048.P3250976530257944603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210052 (A167614 (n + 2) + 1).toNat

end

end A210048.P3250976530257944603

/-! ## A210048.P14227199164736813046

`A210052(Δ[A264443(n)-n²])`
-/

namespace A210048.P14227199164736813046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210052 (f1 (n + 1) - f1 n).toNat

end

end A210048.P14227199164736813046

/-!
# A210049: Number of (n+1)X6 0..2 arrays containing all values 0..2 with every 2X2 subblock having two distinct values, and new values 0..2 introduced in row major order.

The programs for A210049, there is no canonical definition to state claims against.
-/

/-! ## A210049.P15467127283219390007

`A210052(A374005(n+1))`
-/

namespace A210049.P15467127283219390007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210052 (A374005 (n + 1)).toNat

end

end A210049.P15467127283219390007

/-! ## A210049.P12341386403494251345

`A210052(A167499(n+3))`
-/

namespace A210049.P12341386403494251345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210052 (A167499 (n + 3)).toNat

end

end A210049.P12341386403494251345

/-! ## A210049.P15449343303530956513

`A210052(A056000(n)+15)`
-/

namespace A210049.P15449343303530956513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210052 (A056000 n + 15).toNat

end

end A210049.P15449343303530956513

/-! ## A210049.P15558095449929187772

`A210052(Δ[A264443(n)])`
-/

namespace A210049.P15558095449929187772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210052 (f1 (n + 1) - f1 n).toNat

end

end A210049.P15558095449929187772

/-! ## A210049.P2466759187189196523

`A210052(A046691(n+3))`
-/

namespace A210049.P2466759187189196523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210052 (A046691 (n + 3)).toNat

end

end A210049.P2466759187189196523

/-!
# A210050: Number of (n+1)X7 0..2 arrays containing all values 0..2 with every 2X2 subblock having two distinct values, and new values 0..2 introduced in row major order.

The programs for A210050, there is no canonical definition to state claims against.
-/

/-! ## A210050.P2015583080074232640

`A210052(A374007(n+1))`
-/

namespace A210050.P2015583080074232640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210052 (A374007 (n + 1)).toNat

end

end A210050.P2015583080074232640

/-! ## A210050.P1139297766529229790

`A210052(A052905(n+3))`
-/

namespace A210050.P1139297766529229790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210052 (A052905 (n + 3)).toNat

end

end A210050.P1139297766529229790

/-! ## A210050.P8494955761992221374

`A210052(A056119(n)+16)`
-/

namespace A210050.P8494955761992221374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210052 (A056119 n + 16).toNat

end

end A210050.P8494955761992221374

/-! ## A210050.P17202353482139037194

`A210052(eq[5, A193592(n)])`
-/

namespace A210050.P17202353482139037194
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210052 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A210050.P17202353482139037194

/-! ## A210050.P12863332083225857262

`A210052(eq[8, A258709(n)])`
-/

namespace A210050.P12863332083225857262
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258709 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210052 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A210050.P12863332083225857262

/-!
# A210051: Number of (n+1)X8 0..2 arrays containing all values 0..2 with every 2X2 subblock having two distinct values, and new values 0..2 introduced in row major order.

The programs for A210051, there is no canonical definition to state claims against.
-/

/-! ## A210051.P16302074836858961637

`A210052(A374008(n+1))`
-/

namespace A210051.P16302074836858961637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210052 (A374008 (n + 1)).toNat

end

end A210051.P16302074836858961637

/-! ## A210051.P1200422460577298810

`A210052(eq[6, A193592(n)])`
-/

namespace A210051.P1200422460577298810
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210052 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A210051.P1200422460577298810

/-!
# A210052: T(n,k)=Number of (n+1)X(k+1) 0..2 arrays containing all values 0..2 with every 2X2 subblock having two distinct values, and new values 0..2 introduced in row major order.

The programs for A210052, there is no canonical definition to state claims against.
-/

/-! ## A210052.P16890783883544601886

`A143225(n*a(n-2))` with `a(0)=0, a(1)=9, a(2)=9`
-/

namespace A210052.P16890783883544601886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 9, 9] fun n a =>
  A143225 ((n : ℤ) * a (n - 2)).toNat

end

end A210052.P16890783883544601886

/-!
# A210053: Number of (n+1)X(n+1) 0..3 arrays with every 2X2 subblock having one, two or four distinct values, and new values 0..3 introduced in row major order.

The programs for A210053, there is no canonical definition to state claims against.
-/

/-! ## A210053.P12902006129120735113

`A210061((n+1)²+n²)`
-/

namespace A210053.P12902006129120735113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210061 ((n + 1) ^ 2 + n ^ 2)

end

end A210053.P12902006129120735113

/-!
# A210054: Number of (n+1) X 2 0..3 arrays with every 2 X 2 subblock having one, two or four distinct values, and new values 0..3 introduced in row major order.

The programs for A210054, the canonical program `A210054.P10732365589404489648` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A210054 has offset 1).

The definition of A210054 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 114 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A210054.P10732365589404489648

`A094286(2*(n+2))`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A210054

/-- `A094286(2*(n+2))` -/
def P10732365589404489648.Spec : Prop :=
  ∀ n, P10732365589404489648.a n = A210054 (n + 1)

theorem P10732365589404489648.correct : P10732365589404489648.Spec := by
  intro n
  simp only [A210054, Nat.add_sub_cancel]

end A210054

/-! ## A210054.P7524211914758487744

`A057960(2*(n+1))+A000079(n+1)²`
-/

namespace A210054.P7524211914758487744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057960 (2 * (n + 1)) + A000079 (n + 1) ^ 2

end

end A210054.P7524211914758487744

namespace A210054

/-- `A057960(2*(n+1))+A000079(n+1)²` -/
def P7524211914758487744.Spec : Prop :=
  ∀ n, P7524211914758487744.a n = A210054 (n + 1)

end A210054

/-! ## A210054.P14521526742658299489

`A057960(2*(n+1))+A000079(2*(n+1))`
-/

namespace A210054.P14521526742658299489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057960 (2 * (n + 1)) + A000079 (2 * (n + 1))

end

end A210054.P14521526742658299489

namespace A210054

/-- `A057960(2*(n+1))+A000079(2*(n+1))` -/
def P14521526742658299489.Spec : Prop :=
  ∀ n, P14521526742658299489.a n = A210054 (n + 1)

end A210054

/-! ## A210054.P15057039925018918785

`A243641(A033537(n+1)+1)`
-/

namespace A210054.P15057039925018918785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243641 (A033537 (n + 1) + 1).toNat

end

end A210054.P15057039925018918785

namespace A210054

/-- `A243641(A033537(n+1)+1)` -/
def P15057039925018918785.Spec : Prop :=
  ∀ n, P15057039925018918785.a n = A210054 (n + 1)

end A210054

/-! ## A210054.P66410385011544226

`A243641(A152950(2*(n+1))+6*n+4)`
-/

namespace A210054.P66410385011544226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243641 (A152950 (2 * (n + 1)) + (6 * n + 4 : ℤ)).toNat

end

end A210054.P66410385011544226

namespace A210054

/-- `A243641(A152950(2*(n+1))+6*n+4)` -/
def P66410385011544226.Spec : Prop :=
  ∀ n, P66410385011544226.a n = A210054 (n + 1)

end A210054

/-! ## A210054.P600791284554780911

`A243641(A034856(A144396(n+1)))`
-/

namespace A210054.P600791284554780911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243641 (A034856 (A144396 (n + 1)).toNat).toNat

end

end A210054.P600791284554780911

namespace A210054

/-- `A243641(A034856(A144396(n+1)))` -/
def P600791284554780911.Spec : Prop :=
  ∀ n, P600791284554780911.a n = A210054 (n + 1)

end A210054

/-! ## A210054.P1882107826262278894

`A243641(A055999(A005408(n))+4)`
-/

namespace A210054.P1882107826262278894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243641 (A055999 (A005408 n).toNat + 4).toNat

end

end A210054.P1882107826262278894

namespace A210054

/-- `A243641(A055999(A005408(n))+4)` -/
def P1882107826262278894.Spec : Prop :=
  ∀ n, P1882107826262278894.a n = A210054 (n + 1)

end A210054

/-! ## A210054.P15050110100284746988

`A243641(A062545(n+1)+A055998(2*n+1))`
-/

namespace A210054.P15050110100284746988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243641 (A062545 (n + 1) + A055998 (2 * n + 1)).toNat

end

end A210054.P15050110100284746988

namespace A210054

/-- `A243641(A062545(n+1)+A055998(2*n+1))` -/
def P15050110100284746988.Spec : Prop :=
  ∀ n, P15050110100284746988.a n = A210054 (n + 1)

end A210054

/-!
# A210055: Number of (n+1) X 3 0..3 arrays with every 2 X 2 subblock having one, two or four distinct values, and new values 0..3 introduced in row major order.

The programs for A210055, there is no canonical definition to state claims against.
-/

/-! ## A210055.P5547196806300414820

`A210061(∑[n+1]+2)`
-/

namespace A210055.P5547196806300414820
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210061 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A210055.P5547196806300414820

/-! ## A210055.P2655426265321366244

`record[A210061(A238531(A000038(n)+n))]`
-/

namespace A210055.P2655426265321366244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210061 (A238531 (A000038 n + (n : ℤ)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A210055.P2655426265321366244

/-! ## A210055.P17621651444972367717

`A210061(A000096(n)+3)%A209847(n+1)`
-/

namespace A210055.P17621651444972367717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A210061 (A000096 n + 3).toNat) (A209847 (n + 1))

end

end A210055.P17621651444972367717

/-! ## A210055.P12089488762038213460

`record[A210061(Δ[A003453(n+5)])]`
-/

namespace A210055.P12089488762038213460
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210061 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A210055.P12089488762038213460

/-! ## A210055.P16206814653690119812

`record[A210061(A000096(∑{e}[n+1, #]+1))]`
-/

namespace A210055.P16206814653690119812
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210061 (A000096 (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A210055.P16206814653690119812

/-!
# A210056: Number of (n+1)X4 0..3 arrays with every 2X2 subblock having one, two or four distinct values, and new values 0..3 introduced in row major order.

The programs for A210056, there is no canonical definition to state claims against.
-/

/-! ## A210056.P5438833116916165093

`A210061(∑[n+2]+4)`
-/

namespace A210056.P5438833116916165093
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210061 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A210056.P5438833116916165093

/-! ## A210056.P11910795534365633220

`or(1, A210061(A167614(n+1)))`
-/

namespace A210056.P11910795534365633220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A210061 (A167614 (n + 1)).toNat)

end

end A210056.P11910795534365633220

/-! ## A210056.P16309028685099112630

`A210061(A167614(n+1))+A025469(n)`
-/

namespace A210056.P16309028685099112630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210061 (A167614 (n + 1)).toNat + A025469 n

end

end A210056.P16309028685099112630

/-! ## A210056.P16266163203467283446

`lcm(A057077(n), A210061(A167614(n+1)))`
-/

namespace A210056.P16266163203467283446
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A057077 n) (A210061 (A167614 (n + 1)).toNat)

end

end A210056.P16266163203467283446

/-! ## A210056.P14793334056549931876

`A210061(A167614(n+1))+A034501(n+1)`
-/

namespace A210056.P14793334056549931876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210061 (A167614 (n + 1)).toNat + A034501 (n + 1)

end

end A210056.P14793334056549931876

/-!
# A210057: Number of (n+1)X5 0..3 arrays with every 2X2 subblock having one, two or four distinct values, and new values 0..3 introduced in row major order.

The programs for A210057, there is no canonical definition to state claims against.
-/

/-! ## A210057.P8462166179432859966

`A210061(A374004(n+1))`
-/

namespace A210057.P8462166179432859966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210061 (A374004 (n + 1)).toNat

end

end A210057.P8462166179432859966

/-! ## A210057.P12907385286069266393

`A210061(A141214(n)+7)`
-/

namespace A210057.P12907385286069266393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210061 (A141214 n + 7).toNat

end

end A210057.P12907385286069266393

/-! ## A210057.P3583763155249530624

`A210061(A052905(n)+9)`
-/

namespace A210057.P3583763155249530624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210061 (A052905 n + 9).toNat

end

end A210057.P3583763155249530624

/-! ## A210057.P11827442834127044171

`A210061(A055999(n)+10)`
-/

namespace A210057.P11827442834127044171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210061 (A055999 n + 10).toNat

end

end A210057.P11827442834127044171

/-! ## A210057.P4203942428081713857

`A210061(A167614(n+2)+1)`
-/

namespace A210057.P4203942428081713857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210061 (A167614 (n + 2) + 1).toNat

end

end A210057.P4203942428081713857

/-!
# A210058: Number of (n+1)X6 0..3 arrays with every 2X2 subblock having one, two or four distinct values, and new values 0..3 introduced in row major order.

The programs for A210058, there is no canonical definition to state claims against.
-/

/-! ## A210058.P12629734126352653672

`A210061(A374005(n+1))`
-/

namespace A210058.P12629734126352653672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210061 (A374005 (n + 1)).toNat

end

end A210058.P12629734126352653672

/-! ## A210058.P11013582392550833536

`A210061(A155212(n)+13)`
-/

namespace A210058.P11013582392550833536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210061 (A155212 n + 13).toNat

end

end A210058.P11013582392550833536

/-! ## A210058.P11161504943399847086

`A210061(eq[6, A131818(n+1)])`
-/

namespace A210058.P11161504943399847086
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210061 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A210058.P11161504943399847086

/-! ## A210058.P17595653113102359534

`A210061(eq[4, A193592(n)])`
-/

namespace A210058.P17595653113102359534
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210061 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A210058.P17595653113102359534

/-! ## A210058.P16730041762016980409

`A210061(Δ[A023545(n+1)])`
-/

namespace A210058.P16730041762016980409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210061 (f1 (n + 1) - f1 n).toNat

end

end A210058.P16730041762016980409

/-!
# A210059: Number of (n+1)X7 0..3 arrays with every 2X2 subblock having one, two or four distinct values, and new values 0..3 introduced in row major order.

The programs for A210059, there is no canonical definition to state claims against.
-/

/-! ## A210059.P11219457513595724

`A210061(A374007(n+1))`
-/

namespace A210059.P11219457513595724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210061 (A374007 (n + 1)).toNat

end

end A210059.P11219457513595724

/-! ## A210059.P9870727926671606850

`A210061(eq[7, A131818(n+1)])`
-/

namespace A210059.P9870727926671606850
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210061 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A210059.P9870727926671606850

/-! ## A210059.P13105597614623247859

`A210061(eq[3, A219347(n)])`
-/

namespace A210059.P13105597614623247859
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210061 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A210059.P13105597614623247859

/-! ## A210059.P8768414801921048179

`A210061(eq[5, A193592(n)])`
-/

namespace A210059.P8768414801921048179
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210061 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A210059.P8768414801921048179

/-! ## A210059.P10618366071960723529

`A210061(A155212(n+2)+3)`
-/

namespace A210059.P10618366071960723529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210061 (A155212 (n + 2) + 3).toNat

end

end A210059.P10618366071960723529

/-!
# A210060: 

The programs for A210060, there is no canonical definition to state claims against.
-/

/-! ## A210060.P2884320246229956662

`A210061(A000124(n+7)-(n+1))`
-/

namespace A210060.P2884320246229956662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210061 (A000124 (n + 7) - (n + 1 : ℤ)).toNat

end

end A210060.P2884320246229956662

/-! ## A210060.P13112083013813816430

`A210061(eq[4, A219347(n)])`
-/

namespace A210060.P13112083013813816430
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210061 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A210060.P13112083013813816430

/-! ## A210060.P5854715884408380247

`A210061(eq[6, A193592(n)])`
-/

namespace A210060.P5854715884408380247
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210061 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A210060.P5854715884408380247

/-! ## A210060.P17021831433279687590

`A210061(eq[6, A243060(n+1)])`
-/

namespace A210060.P17021831433279687590
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243060 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210061 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A210060.P17021831433279687590

/-!
# A210061: T(n,k)=Number of (n+1)X(k+1) 0..3 arrays with every 2X2 subblock having one, two or four distinct values, and new values 0..3 introduced in row major order.

The programs for A210061, there is no canonical definition to state claims against.
-/

/-! ## A210061.P11375968925491766168

`A210143(n+1)+A209829(n+1)`
-/

namespace A210061.P11375968925491766168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210143 (n + 1) + A209829 (n + 1)

end

end A210061.P11375968925491766168

/-! ## A210061.P5255118246935464450

`A209848(n+1)+A210143(n+1)-A209969(n+1)`
-/

namespace A210061.P5255118246935464450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209848 (n + 1) + (A210143 (n + 1) - A209969 (n + 1))

end

end A210061.P5255118246935464450

/-! ## A210061.P3911519506654688309

`A210143(n+1)+A001057(A234036(n+1)-A234161(n+1))`
-/

namespace A210061.P3911519506654688309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210143 (n + 1) + A001057 (A234036 (n + 1) - A234161 (n + 1)).toNat

end

end A210061.P3911519506654688309

/-! ## A210061.P13071585663000281031

`A210143(n+1)+A001057(A234184(n+1)-A234036(n+1))`
-/

namespace A210061.P13071585663000281031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210143 (n + 1) + A001057 (A234184 (n + 1) - A234036 (n + 1)).toNat

end

end A210061.P13071585663000281031

/-! ## A210061.P11688335125420676423

`A210143(n+1)+A001057(A234131(n+1)-A234184(n+1))`
-/

namespace A210061.P11688335125420676423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210143 (n + 1) + A001057 (A234131 (n + 1) - A234184 (n + 1)).toNat

end

end A210061.P11688335125420676423

/-!
# A210062: Number of digits in 7^n.

The programs for A210062, there is no canonical definition to state claims against.
-/

/-! ## A210062.P904175040397886226

`∑{digits}[7^n, and(1, #)!]`
-/

namespace A210062.P904175040397886226
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => Nat.factorial (Nat.land 1 x)).sum

end

end A210062.P904175040397886226

/-! ## A210062.P7047781012014644744

`∑{digits}[A121203(n), A014416(#)]`
-/

namespace A210062.P7047781012014644744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121203 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A014416 x).sum

end

end A210062.P7047781012014644744

/-! ## A210062.P10421155285301521362

`∑{digits}[A024075(n), A155050(#)]`
-/

namespace A210062.P10421155285301521362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024075 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A155050 x).sum

end

end A210062.P10421155285301521362

/-! ## A210062.P14059360378342861294

`∑{digits}[A034491(n), A155050(#)]`
-/

namespace A210062.P14059360378342861294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034491 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A155050 x).sum

end

end A210062.P14059360378342861294

/-! ## A210062.P14101793535148885106

`∑{digits}[A034491(n), A175740(#)]`
-/

namespace A210062.P14101793535148885106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034491 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A175740 x).sum

end

end A210062.P14101793535148885106

/-! ## A210062.P6905832371605660684

`∑{digits}[A103458(n), A337584(A000124(#))]`
-/

namespace A210062.P6905832371605660684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103458 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A337584 (A000124 x).toNat).sum

end

end A210062.P6905832371605660684

/-! ## A210062.P8126729289306262946

`∑{digits}[A103458(n), A337584(A124322(#))]`
-/

namespace A210062.P8126729289306262946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103458 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A337584 (A124322 x).toNat).sum

end

end A210062.P8126729289306262946

/-!
# A210063: Expansion of psi(x^4) / phi(x) in powers of x where phi(), psi() are Ramanujan theta functions.

The programs for A210063, there is no canonical definition to state claims against.
-/

/-! ## A210063.P6706758730987237778

`(-1)^n*A187154(n)`
-/

namespace A210063.P6706758730987237778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A187154 n

end

end A210063.P6706758730987237778

/-! ## A210063.P7387177833355049650

`A187154(n)/A033999(n)`
-/

namespace A210063.P7387177833355049650
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A187154 n : ℚ) / (A033999 n : ℚ)

end

end A210063.P7387177833355049650

/-! ## A210063.P1554827220880636854

`A224216(Δ[n²])`
-/

namespace A210063.P1554827220880636854
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224216 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A210063.P1554827220880636854

/-! ## A210063.P17163636366024506235

`A245432(Δ[n²])`
-/

namespace A210063.P17163636366024506235
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245432 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A210063.P17163636366024506235

/-! ## A210063.P16957636713337207077

`A080015(Δ[n²])/2`
-/

namespace A210063.P16957636713337207077
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080015 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 2

end

end A210063.P16957636713337207077

/-! ## A210063.P14179720430296706190

`A210030(2*n+1)/(1-6/2)`
-/

namespace A210063.P14179720430296706190
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A210030 (2 * n + 1) : ℚ) / (1 - (6 : ℚ) / 2)

end

end A210063.P14179720430296706190

/-! ## A210063.P14735261272676826318

`A056594(2*n)*A208856(2*n)`
-/

namespace A210063.P14735261272676826318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (2 * n) * A208856 (2 * n)

end

end A210063.P14735261272676826318

/-! ## A210063.P11770488632661594368

`A087960(2*n)*A208856(2*n)`
-/

namespace A210063.P11770488632661594368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087960 (2 * n) * A208856 (2 * n)

end

end A210063.P11770488632661594368

/-! ## A210063.P2902439456815514908

`A087960(n)²*A224216(2*n+1)`
-/

namespace A210063.P2902439456815514908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087960 n ^ 2 * A224216 (2 * n + 1)

end

end A210063.P2902439456815514908

/-! ## A210063.P6464422506427965891

`A224216(2*n+1)+A000007(n+1)`
-/

namespace A210063.P6464422506427965891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224216 (2 * n + 1) + A000007 (n + 1)

end

end A210063.P6464422506427965891

/-! ## A210063.P16150509894920117584

`A224216(2*n+1)+A000038(n+1)`
-/

namespace A210063.P16150509894920117584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224216 (2 * n + 1) + A000038 (n + 1)

end

end A210063.P16150509894920117584

/-! ## A210063.P12684393808877344214

`A108494(2*n+1)/A280560(n+1)`
-/

namespace A210063.P12684393808877344214
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A108494 (2 * n + 1) : ℚ) / (A280560 (n + 1) : ℚ)

end

end A210063.P12684393808877344214

/-! ## A210063.P615625159965046475

`A057077(2*n)*A115671(2*n+1)`
-/

namespace A210063.P615625159965046475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 (2 * n) * A115671 (2 * n + 1)

end

end A210063.P615625159965046475

/-! ## A210063.P16929069524665703734

`A108494(2*n+1)/(2*A033999(n+1))`
-/

namespace A210063.P16929069524665703734
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A108494 (2 * n + 1) : ℚ) / (2 * A033999 (n + 1) : ℚ)

end

end A210063.P16929069524665703734

/-! ## A210063.P7268115777166160087

`A080054(2*n+1)/(2*A057077(2*n))`
-/

namespace A210063.P7268115777166160087
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080054 (2 * n + 1) : ℚ) / (2 * A057077 (2 * n) : ℚ)

end

end A210063.P7268115777166160087

/-! ## A210063.P3882924088040685499

`A080054(2*n+1)/(2*A087960(2*n))`
-/

namespace A210063.P3882924088040685499
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080054 (2 * n + 1) : ℚ) / (2 * A087960 (2 * n) : ℚ)

end

end A210063.P3882924088040685499

/-! ## A210063.P4444777376129673679

`A087960(2*n+1)*A108494(2*n+1)/2`
-/

namespace A210063.P4444777376129673679
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A087960 (2 * n + 1) * A108494 (2 * n + 1) : ℚ) / 2

end

end A210063.P4444777376129673679

/-! ## A210063.P4029593545509166267

`A115671(2*n+1)*(1-6/2)/A280560(n+1)`
-/

namespace A210063.P4029593545509166267
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A115671 (2 * n + 1) : ℚ) * (1 - (6 : ℚ) / 2) / (A280560 (n + 1) : ℚ)

end

end A210063.P4029593545509166267

/-! ## A210063.P1022218921548742640

`A214639(4*n+2)`
-/

namespace A210063.P1022218921548742640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214639 (4 * n + 2)

end

end A210063.P1022218921548742640

/-! ## A210063.P7847473798959354397

`A208856(2*n)²/A224216(2*n+1)`
-/

namespace A210063.P7847473798959354397
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A208856 (2 * n) ^ 2 : ℚ) / (A224216 (2 * n + 1) : ℚ)

end

end A210063.P7847473798959354397

/-!
# A210064: Total number of 231 patterns in the set of permutations avoiding 123.

The programs for A210064, the canonical program `A210064.P5749393447975860566` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A210064 has offset 1).

The definition of A210064 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 163 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A210064.P5749393447975860566

`A038806(n)-A018218(n)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A210064

/-- `A038806(n)-A018218(n)` -/
def P5749393447975860566.Spec : Prop :=
  ∀ n, P5749393447975860566.a n = A210064 (n + 1)

theorem P5749393447975860566.correct : P5749393447975860566.Spec := by
  intro n
  simp only [A210064, Nat.add_sub_cancel]

end A210064

/-! ## A210064.P12848018743496233502

`A395675(n)-A000531(n+1)`
-/

namespace A210064.P12848018743496233502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395675 n - A000531 (n + 1)

end

end A210064.P12848018743496233502

namespace A210064

/-- `A395675(n)-A000531(n+1)` -/
def P12848018743496233502.Spec : Prop :=
  ∀ n, P12848018743496233502.a n = A210064 (n + 1)

end A210064

/-! ## A210064.P4279420671335777561

`A000346(n)+A018218(n)-A002457(n)`
-/

namespace A210064.P4279420671335777561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000346 n + (A018218 n - A002457 n)

end

end A210064.P4279420671335777561

namespace A210064

/-- `A000346(n)+A018218(n)-A002457(n)` -/
def P4279420671335777561.Spec : Prop :=
  ∀ n, P4279420671335777561.a n = A210064 (n + 1)

end A210064

/-! ## A210064.P17447100879979684486

`A002457(n)+A018218(n)-A000531(n+1)`
-/

namespace A210064.P17447100879979684486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002457 n + (A018218 n - A000531 (n + 1))

end

end A210064.P17447100879979684486

namespace A210064

/-- `A002457(n)+A018218(n)-A000531(n+1)` -/
def P17447100879979684486.Spec : Prop :=
  ∀ n, P17447100879979684486.a n = A210064 (n + 1)

end A210064

/-! ## A210064.P8575394915157556405

`A000346(n)+A018218(n)-A056040(2*n+1)`
-/

namespace A210064.P8575394915157556405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000346 n + (A018218 n - A056040 (2 * n + 1))

end

end A210064.P8575394915157556405

namespace A210064

/-- `A000346(n)+A018218(n)-A056040(2*n+1)` -/
def P8575394915157556405.Spec : Prop :=
  ∀ n, P8575394915157556405.a n = A210064 (n + 1)

end A210064

/-! ## A210064.P1186881487618257873

`Δ[A018218(n)-∑[A002697(n)]]`
-/

namespace A210064.P1186881487618257873
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002697 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018218 n - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A210064.P1186881487618257873

namespace A210064

/-- `Δ[A018218(n)-∑[A002697(n)]]` -/
def P1186881487618257873.Spec : Prop :=
  ∀ n, P1186881487618257873.a n = A210064 (n + 1)

end A210064

/-! ## A210064.P11577186068571424455

`Δ[A018218(n)]-A002697(n+1)`
-/

namespace A210064.P11577186068571424455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A002697 (n + 1)

end

end A210064.P11577186068571424455

namespace A210064

/-- `Δ[A018218(n)]-A002697(n+1)` -/
def P11577186068571424455.Spec : Prop :=
  ∀ n, P11577186068571424455.a n = A210064 (n + 1)

end A210064

/-! ## A210064.P11821863833115086564

`A018218(n+1)-(A018218(n)+A002697(n+1))`
-/

namespace A210064.P11821863833115086564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018218 (n + 1) - (A018218 n + A002697 (n + 1))

end

end A210064.P11821863833115086564

namespace A210064

/-- `A018218(n+1)-(A018218(n)+A002697(n+1))` -/
def P11821863833115086564.Spec : Prop :=
  ∀ n, P11821863833115086564.a n = A210064 (n + 1)

end A210064

/-!
# A210065: Expansion of phi(q^2) / phi(q) in powers of q where phi() is a Ramanujan theta function.

The programs for A210065, there is no canonical definition to state claims against.
-/

/-! ## A210065.P4829188400086966534

`(-1)^n*A208850(n)`
-/

namespace A210065.P4829188400086966534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A208850 n

end

end A210065.P4829188400086966534

/-! ## A210065.P4353025900057976311

`A185083(n)*A280560(n)`
-/

namespace A210065.P4353025900057976311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185083 n * A280560 n

end

end A210065.P4353025900057976311

/-! ## A210065.P14096198453974845971

`A208850(n)/A033999(n)`
-/

namespace A210065.P14096198453974845971
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A208850 n : ℚ) / (A033999 n : ℚ)

end

end A210065.P14096198453974845971

/-! ## A210065.P6666754022160450983

`A033999(n)*A080054(2*n)`
-/

namespace A210065.P6666754022160450983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A080054 (2 * n)

end

end A210065.P6666754022160450983

/-! ## A210065.P9732212104608620625

`A080015(2*n)`
-/

namespace A210065.P9732212104608620625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080015 (2 * n)

end

end A210065.P9732212104608620625

/-! ## A210065.P2242573369619482190

`A210030(2*n)`
-/

namespace A210065.P2242573369619482190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210030 (2 * n)

end

end A210065.P2242573369619482190

/-! ## A210065.P14548087582868158988

`A108494(2*n)/(-1)^n`
-/

namespace A210065.P14548087582868158988
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A108494 (2 * n) : ℚ) / ((-1) ^ n : ℚ)

end

end A210065.P14548087582868158988

/-! ## A210065.P5842937250915052646

`A210030(n+n)+2-4/2`
-/

namespace A210065.P5842937250915052646
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A210030 (n + n) : ℚ) + (2 - (4 : ℚ) / 2)

end

end A210065.P5842937250915052646

/-! ## A210065.P10274967546336294369

`A033999(n)*A108494(2*n)`
-/

namespace A210065.P10274967546336294369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A108494 (2 * n)

end

end A210065.P10274967546336294369

/-! ## A210065.P16017648370530677181

`A115671(2*n)*A280560(n)`
-/

namespace A210065.P16017648370530677181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115671 (2 * n) * A280560 n

end

end A210065.P16017648370530677181

/-! ## A210065.P16991994465523354503

`A036453(n+1)*A245432(2*n)`
-/

namespace A210065.P16991994465523354503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036453 (n + 1) * A245432 (2 * n)

end

end A210065.P16991994465523354503

/-! ## A210065.P3581311384049243559

`A057077(2*n)*A080054(2*n)`
-/

namespace A210065.P3581311384049243559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 (2 * n) * A080054 (2 * n)

end

end A210065.P3581311384049243559

/-! ## A210065.P15308177935542572029

`A057077(2*n)*A108494(2*n)`
-/

namespace A210065.P15308177935542572029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 (2 * n) * A108494 (2 * n)

end

end A210065.P15308177935542572029

/-! ## A210065.P4283527674594126403

`A080054(2*n)*A087960(2*n)`
-/

namespace A210065.P4283527674594126403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080054 (2 * n) * A087960 (2 * n)

end

end A210065.P4283527674594126403

/-! ## A210065.P585446727308616157

`A087960(2*n)*A108494(2*n)`
-/

namespace A210065.P585446727308616157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087960 (2 * n) * A108494 (2 * n)

end

end A210065.P585446727308616157

/-! ## A210065.P1921643393409657862

`A245432(2*n)*A280560(2*n)`
-/

namespace A210065.P1921643393409657862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245432 (2 * n) * A280560 (2 * n)

end

end A210065.P1921643393409657862

/-! ## A210065.P16189328451378698427

`A020639(A001316(n))*A245432(2*n)`
-/

namespace A210065.P16189328451378698427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A001316 n).toNat * A245432 (2 * n)

end

end A210065.P16189328451378698427

/-! ## A210065.P16623058295959591183

`A080054(2*n)/A004402(3*n)*A015128(3*n)`
-/

namespace A210065.P16623058295959591183
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080054 (2 * n) : ℚ) / (A004402 (3 * n) : ℚ) * (A015128 (3 * n) : ℚ)

end

end A210065.P16623058295959591183

/-!
# A210066: Expansion of (phi(q^2) / phi(q))^2 in powers of q where phi() is a Ramanujan theta function.

The programs for A210066, there is no canonical definition to state claims against.
-/

/-! ## A210066.P16736505579380758716

`(-1)^n*A131126(n)`
-/

namespace A210066.P16736505579380758716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A131126 n

end

end A210066.P16736505579380758716

/-! ## A210066.P15303246983562166199

`A131126(n)/A033999(n)`
-/

namespace A210066.P15303246983562166199
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A131126 n : ℚ) / (A033999 n : ℚ)

end

end A210066.P15303246983562166199

/-! ## A210066.P9741452630984877398

`A014969(n)/A280560(n)`
-/

namespace A210066.P9741452630984877398
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014969 n : ℚ) / (A280560 n : ℚ)

end

end A210066.P9741452630984877398

/-! ## A210066.P10435352091246425420

`A033999(n)*A208933(2*n)`
-/

namespace A210066.P10435352091246425420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A208933 (2 * n)

end

end A210066.P10435352091246425420

/-! ## A210066.P14409815802044269184

`A007096(2*n)/A280560(n)`
-/

namespace A210066.P14409815802044269184
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007096 (2 * n) : ℚ) / (A280560 n : ℚ)

end

end A210066.P14409815802044269184

/-! ## A210066.P4142786741581204362

`2/A084099(2*n+1)*A208933(2*n)`
-/

namespace A210066.P4142786741581204362
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (A084099 (2 * n + 1) : ℚ) * (A208933 (2 * n) : ℚ)

end

end A210066.P4142786741581204362

/-! ## A210066.P2351503105886611490

`(1-6/2)/A280560(n+1)*A208933(2*n)`
-/

namespace A210066.P2351503105886611490
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 - (6 : ℚ) / 2) / (A280560 (n + 1) : ℚ) * (A208933 (2 * n) : ℚ)

end

end A210066.P2351503105886611490

/-! ## A210066.P1985760766885521273

`A033999(n)*A112128(2*n)`
-/

namespace A210066.P1985760766885521273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A112128 (2 * n)

end

end A210066.P1985760766885521273

/-! ## A210066.P4910751689136551377

`2/A084099(2*n+1)*A112128(2*n)`
-/

namespace A210066.P4910751689136551377
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (A084099 (2 * n + 1) : ℚ) * (A112128 (2 * n) : ℚ)

end

end A210066.P4910751689136551377

/-! ## A210066.P6547939409403914870

`(1-6/2)/A280560(n+1)*A112128(2*n)`
-/

namespace A210066.P6547939409403914870
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 - (6 : ℚ) / 2) / (A280560 (n + 1) : ℚ) * (A112128 (2 * n) : ℚ)

end

end A210066.P6547939409403914870

/-! ## A210066.P12037011173663780671

`ceil(A139820(n)/2)`
-/

namespace A210066.P12037011173663780671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A139820 n : ℚ) / 2⌉

end

end A210066.P12037011173663780671

/-! ## A210066.P9238923103075726570

`A139820(n)/A036453(n+1)`
-/

namespace A210066.P9238923103075726570
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139820 n : ℚ) / (A036453 (n + 1) : ℚ)

end

end A210066.P9238923103075726570

/-! ## A210066.P2016419457599023568

`A139820(n)/A280560(2*n)`
-/

namespace A210066.P2016419457599023568
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139820 n : ℚ) / (A280560 (2 * n) : ℚ)

end

end A210066.P2016419457599023568

/-! ## A210066.P6905504311767586648

`A189925(2*n)/A280560(n)`
-/

namespace A210066.P6905504311767586648
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A189925 (2 * n) : ℚ) / (A280560 n : ℚ)

end

end A210066.P6905504311767586648

/-!
# A210067: Expansion of (phi(-q) / phi(q^2))^2 in powers of q where phi() is a Ramanujan theta function.

The programs for A210067, there is no canonical definition to state claims against.
-/

/-! ## A210067.P17994689986466206862

`(-1)^n*A134746(n)`
-/

namespace A210067.P17994689986466206862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A134746 n

end

end A210067.P17994689986466206862

/-! ## A210067.P10113991959226847125

`xor(1, 1-A134746(n))`
-/

namespace A210067.P10113991959226847125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (1 - A134746 n)

end

end A210067.P10113991959226847125

/-! ## A210067.P17381195061391064069

`A000038(n)-A134746(n)`
-/

namespace A210067.P17381195061391064069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n - A134746 n

end

end A210067.P17381195061391064069

/-! ## A210067.P14024772572577012255

`A007096(n)*A163805(n)`
-/

namespace A210067.P14024772572577012255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007096 n * A163805 n

end

end A210067.P14024772572577012255

/-! ## A210067.P5986374516666999623

`A084099(n)*A112128(n)`
-/

namespace A210067.P5986374516666999623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084099 n * A112128 n

end

end A210067.P5986374516666999623

/-! ## A210067.P14123259775302660609

`A134746(n)*A164117(n)`
-/

namespace A210067.P14123259775302660609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134746 n * A164117 n

end

end A210067.P14123259775302660609

/-! ## A210067.P10015363577820878327

`A117569(n)*A189925(n)`
-/

namespace A210067.P10015363577820878327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117569 n * A189925 n

end

end A210067.P10015363577820878327

/-! ## A210067.P4297397243054669467

`A134746(n)*A280193(n)`
-/

namespace A210067.P4297397243054669467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134746 n * A280193 n

end

end A210067.P4297397243054669467

/-! ## A210067.P5799796246373569536

`A134746(n)*A323191(n)`
-/

namespace A210067.P5799796246373569536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134746 n * A323191 n

end

end A210067.P5799796246373569536

/-! ## A210067.P15128334164726934940

`A134746(n)*A323202(n)`
-/

namespace A210067.P15128334164726934940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134746 n * A323202 n

end

end A210067.P15128334164726934940

/-! ## A210067.P9050345606165291991

`A134746(n)*A153881(n+1)`
-/

namespace A210067.P9050345606165291991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134746 n * A153881 (n + 1)

end

end A210067.P9050345606165291991

/-! ## A210067.P6336058500654658170

`A026741(and(2, a(n-1)))-A134746(n)` with `a(0)=1`
-/

namespace A210067.P6336058500654658170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A026741 (Int.land 2 (a (n - 1))).toNat - A134746 n

end

end A210067.P6336058500654658170

/-! ## A210067.P4812275480036205066

`A004869(and(2, a(n-1))+1)-A134746(n)` with `a(0)=1`
-/

namespace A210067.P4812275480036205066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A004869 (Int.land 2 (a (n - 1)) + 1).toNat - A134746 n

end

end A210067.P4812275480036205066

/-! ## A210067.P15897259117904655499

`A000122(A000122(n)+n)-A134746(n)`
-/

namespace A210067.P15897259117904655499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (A000122 n + (n : ℤ)).toNat - A134746 n

end

end A210067.P15897259117904655499

/-! ## A210067.P7846190642046641755

`A208274(n)+A208604(n)-A134746(n)`
-/

namespace A210067.P7846190642046641755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208274 n + (A208604 n - A134746 n)

end

end A210067.P7846190642046641755

/-! ## A210067.P13829059499871870606

`A134746(n)*A208274(n+1)-A134746(n)`
-/

namespace A210067.P13829059499871870606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134746 n * A208274 (n + 1) - A134746 n

end

end A210067.P13829059499871870606

/-! ## A210067.P14225194349668060276

`2*A036987(2*n)-A216060(2*n)`
-/

namespace A210067.P14225194349668060276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A036987 (2 * n) - A216060 (2 * n)

end

end A210067.P14225194349668060276

/-! ## A210067.P977698609167625275

`A001938(n)*A134746(n)/A093160(n)`
-/

namespace A210067.P977698609167625275
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001938 n * A134746 n : ℚ) / (A093160 n : ℚ)

end

end A210067.P977698609167625275

/-! ## A210067.P1440365802048695466

`A131126(n)*A134746(n)/A210066(n)`
-/

namespace A210067.P1440365802048695466
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A131126 n * A134746 n : ℚ) / (A210066 n : ℚ)

end

end A210067.P1440365802048695466

/-!
# A210068: Expansion of 1/((1-x)^2*(1-x^2)^3*(1-x^3)^2*(1-x^4)).

The programs for A210068, the canonical program `A210068.P12843734911801841323` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A210068 has offset 0).

The definition of A210068 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A210068.P12843734911801841323

`∑[∑[A001993(n)-a(n-1)]]` with `a(0)=1`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A210068

/-- `∑[∑[A001993(n)-a(n-1)]]` -/
def P12843734911801841323.Spec : Prop :=
  ∀ n, P12843734911801841323.a n = A210068 n

theorem P12843734911801841323.correct : P12843734911801841323.Spec := by
  intro n
  simp only [A210068]

end A210068

/-! ## A210068.P14761698113916834191

`A210633(n+18)`
-/

namespace A210068.P14761698113916834191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210633 (n + 18)

end

end A210068.P14761698113916834191

namespace A210068

/-- `A210633(n+18)` -/
def P14761698113916834191.Spec : Prop :=
  ∀ n, P14761698113916834191.a n = A210068 n

end A210068

/-! ## A210068.P10431617821203245307

`record[or(A000007(n), A210633(n))]`
-/

namespace A210068.P10431617821203245307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A210633 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A210068.P10431617821203245307

namespace A210068

/-- `record[or(A000007(n), A210633(n))]` -/
def P10431617821203245307.Spec : Prop :=
  ∀ n, P10431617821203245307.a n = A210068 n

end A210068

/-! ## A210068.P7424852400729928312

`record[or(A130706(n), A210633(n))]`
-/

namespace A210068.P7424852400729928312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A130706 n) (A210633 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A210068.P7424852400729928312

namespace A210068

/-- `record[or(A130706(n), A210633(n))]` -/
def P7424852400729928312.Spec : Prop :=
  ∀ n, P7424852400729928312.a n = A210068 n

end A210068

/-! ## A210068.P14901286027268073837

`record[A210633(n)^A112347(n)²]`
-/

namespace A210068.P14901286027268073837
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A210633 n : ℚ) ^ (A112347 n ^ 2 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A210068.P14901286027268073837

namespace A210068

/-- `record[A210633(n)^A112347(n)²]` -/
def P14901286027268073837.Spec : Prop :=
  ∀ n, P14901286027268073837.a n = (A210068 n : ℚ)

end A210068

/-!
# A210069: 1/4 the number of (n+1)X(n+1) 0..3 arrays with every 2X2 subblock having one or three distinct clockwise edge differences.

The programs for A210069, there is no canonical definition to state claims against.
-/

/-! ## A210069.P7916501394114875524

`A210077((n+1)²+n²)`
-/

namespace A210069.P7916501394114875524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210077 ((n + 1) ^ 2 + n ^ 2)

end

end A210069.P7916501394114875524

/-!
# A210070: 1/4 the number of (n+1) X 2 0..3 arrays with every 2 X 2 subblock having one or three distinct clockwise edge differences.

The programs for A210070, there is no canonical definition to state claims against.
-/

/-! ## A210070.P440156465004908802

`A210077(∑[n]+1)`
-/

namespace A210070.P440156465004908802
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210077 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A210070.P440156465004908802

/-! ## A210070.P5380185979473515754

`record[A010054(n)*A210077(n+1)]`
-/

namespace A210070.P5380185979473515754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A210077 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A210070.P5380185979473515754

/-! ## A210070.P13995155270354315470

`record[A103451(n)*A210077(n+1)]`
-/

namespace A210070.P13995155270354315470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103451 n * A210077 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A210070.P13995155270354315470

/-! ## A210070.P3904341702833475038

`record[root(A210077(n+1), A007318(n))]`
-/

namespace A210070.P3904341702833475038
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A210077 (n + 1) : ℝ) ^ (1 / (A007318 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A210070.P3904341702833475038

/-! ## A210070.P8291670146434534505

`record[root(A210077(n+1), A013613(n))]`
-/

namespace A210070.P8291670146434534505
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A210077 (n + 1) : ℝ) ^ (1 / (A013613 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A210070.P8291670146434534505

/-!
# A210071: 1/4 the number of (n+1)X3 0..3 arrays with every 2X2 subblock having one or three distinct clockwise edge differences.

The programs for A210071, there is no canonical definition to state claims against.
-/

/-! ## A210071.P10846349993276538871

`A210077(∑[n+1]+2)`
-/

namespace A210071.P10846349993276538871
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210077 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A210071.P10846349993276538871

/-! ## A210071.P8851060418222011734

`record[A010054(n)*A210077(n+2)]`
-/

namespace A210071.P8851060418222011734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A210077 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A210071.P8851060418222011734

/-! ## A210071.P6265109192822195009

`record[root(A210077(n+2), A013613(n))]`
-/

namespace A210071.P6265109192822195009
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A210077 (n + 2) : ℝ) ^ (1 / (A013613 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A210071.P6265109192822195009

/-! ## A210071.P17629832032094119574

`record[A210077(A101881(n)+1)]`
-/

namespace A210071.P17629832032094119574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210077 (A101881 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A210071.P17629832032094119574

/-! ## A210071.P10174570977544810539

`record[A210077(Δ[A003453(n+5)])]`
-/

namespace A210071.P10174570977544810539
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210077 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A210071.P10174570977544810539

/-!
# A210072: 1/4 the number of (n+1)X4 0..3 arrays with every 2X2 subblock having one or three distinct clockwise edge differences.

The programs for A210072, there is no canonical definition to state claims against.
-/

/-! ## A210072.P11469753977587006839

`A210077(A167614(n+1))`
-/

namespace A210072.P11469753977587006839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210077 (A167614 (n + 1)).toNat

end

end A210072.P11469753977587006839

/-! ## A210072.P5465868591926569840

`A210077(A373663(n+1))`
-/

namespace A210072.P5465868591926569840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210077 (A373663 (n + 1)).toNat

end

end A210072.P5465868591926569840

/-! ## A210072.P6339685758134462879

`A210077(A055998(n)+6)`
-/

namespace A210072.P6339685758134462879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210077 (A055998 n + 6).toNat

end

end A210072.P6339685758134462879

/-! ## A210072.P548665040171643619

`A210077(A046691(n)+7)`
-/

namespace A210072.P548665040171643619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210077 (A046691 n + 7).toNat

end

end A210072.P548665040171643619

/-! ## A210072.P1234391469482910034

`A210077(A167499(n)+n)`
-/

namespace A210072.P1234391469482910034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210077 (A167499 n + (n : ℤ)).toNat

end

end A210072.P1234391469482910034

/-!
# A210073: 1/4 the number of (n+1)X5 0..3 arrays with every 2X2 subblock having one or three distinct clockwise edge differences.

The programs for A210073, there is no canonical definition to state claims against.
-/

/-! ## A210073.P12345449911472370348

`A210077(A167614(n+2)+1)`
-/

namespace A210073.P12345449911472370348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210077 (A167614 (n + 2) + 1).toNat

end

end A210073.P12345449911472370348

/-! ## A210073.P15469653948823578589

`A210077(A000124(n+4)-(n+1))`
-/

namespace A210073.P15469653948823578589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210077 (A000124 (n + 4) - (n + 1 : ℤ)).toNat

end

end A210073.P15469653948823578589

/-! ## A210073.P17383197125807539393

`A210077(A055998(n+2))`
-/

namespace A210073.P17383197125807539393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210077 (A055998 (n + 2)).toNat

end

end A210073.P17383197125807539393

/-! ## A210073.P14391490047720829489

`A210077(A000217(n+3)+n+1)`
-/

namespace A210073.P14391490047720829489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210077 (A000217 (n + 3) + (n + 1 : ℤ)).toNat

end

end A210073.P14391490047720829489

/-!
# A210074: 1/4 the number of (n+1)X6 0..3 arrays with every 2X2 subblock having one or three distinct clockwise edge differences.

The programs for A210074, there is no canonical definition to state claims against.
-/

/-! ## A210074.P17228352419701827885

`A210077(A374005(n+1))`
-/

namespace A210074.P17228352419701827885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210077 (A374005 (n + 1)).toNat

end

end A210074.P17228352419701827885

/-! ## A210074.P1050535232525731405

`A210077(A167499(n+3))`
-/

namespace A210074.P1050535232525731405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210077 (A167499 (n + 3)).toNat

end

end A210074.P1050535232525731405

/-! ## A210074.P18229364632078053386

`A210077(A000124(n+4)+n)`
-/

namespace A210074.P18229364632078053386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210077 (A000124 (n + 4) + (n : ℤ)).toNat

end

end A210074.P18229364632078053386

/-!
# A210076: 

The programs for A210076, there is no canonical definition to state claims against.
-/

/-! ## A210076.P16891843276326683109

`A210077(A077169(n+7)+2)`
-/

namespace A210076.P16891843276326683109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210077 (A077169 (n + 7) + 2).toNat

end

end A210076.P16891843276326683109

/-! ## A210076.P4363617804276782496

`A210077(A000124(n+7)-(n+1))`
-/

namespace A210076.P4363617804276782496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210077 (A000124 (n + 7) - (n + 1 : ℤ)).toNat

end

end A210076.P4363617804276782496

/-!
# A210078: 

The programs for A210078, there is no canonical definition to state claims against.
-/

/-! ## A210078.P8971969041954559207

`A210086((n+1)²+n²)`
-/

namespace A210078.P8971969041954559207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210086 ((n + 1) ^ 2 + n ^ 2)

end

end A210078.P8971969041954559207

/-!
# A210079: Number of (n+1) X 2 0..3 arrays containing all values 0..3 with every 2 X 2 subblock having one, three or four distinct values, and new values 0..3 introduced in row major order.

The programs for A210079, there is no canonical definition to state claims against.
-/

/-! ## A210079.P14594707841272905339

`A210127(n+1)-A210100(n+1)`
-/

namespace A210079.P14594707841272905339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210127 (n + 1) - A210100 (n + 1)

end

end A210079.P14594707841272905339

/-! ## A210079.P11653844161303027884

`A210086(∑[n]+1)`
-/

namespace A210079.P11653844161303027884
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210086 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A210079.P11653844161303027884

/-! ## A210079.P12764848256809238427

`record[A210086(n+1)/A022171(n)]`
-/

namespace A210079.P12764848256809238427
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A210086 (n + 1) : ℚ) / (A022171 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A210079.P12764848256809238427

/-! ## A210079.P9108297944479583116

`record[root(A210086(n+1), A307883(n))]`
-/

namespace A210079.P9108297944479583116
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A210086 (n + 1) : ℝ) ^ (1 / (A307883 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A210079.P9108297944479583116

/-! ## A210079.P202307238367715689

`record[gcd(A072233(n), A210086(n+1))]`
-/

namespace A210079.P202307238367715689
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A072233 n) (A210086 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A210079.P202307238367715689

/-!
# A210080: Number of (n+1)X3 0..3 arrays containing all values 0..3 with every 2X2 subblock having one, three or four distinct values, and new values 0..3 introduced in row major order.

The programs for A210080, there is no canonical definition to state claims against.
-/

/-! ## A210080.P15444876039035144494

`A210128(n+1)-A210101(n+1)`
-/

namespace A210080.P15444876039035144494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210128 (n + 1) - A210101 (n + 1)

end

end A210080.P15444876039035144494

/-! ## A210080.P17000022144528949917

`A210128(n+1)-A210107(∑[n+1]+2)`
-/

namespace A210080.P17000022144528949917
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210128 (n + 1) - A210107 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A210080.P17000022144528949917

/-! ## A210080.P3443531631522480575

`A210086(∑[n+1]+2)`
-/

namespace A210080.P3443531631522480575
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210086 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A210080.P3443531631522480575

/-! ## A210080.P4115181728113963254

`record[gcd(A210086(n+2), A286335(n+2))]`
-/

namespace A210080.P4115181728113963254
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A210086 (n + 2)) (A286335 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A210080.P4115181728113963254

/-! ## A210080.P2050292226130661752

`A210086(A000096(n+1))%A157581(n+4)`
-/

namespace A210080.P2050292226130661752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A210086 (A000096 (n + 1)).toNat) (A157581 (n + 4))

end

end A210080.P2050292226130661752

/-!
# A210081: Number of (n+1)X4 0..3 arrays containing all values 0..3 with every 2X2 subblock having one, three or four distinct values, and new values 0..3 introduced in row major order.

The programs for A210081, there is no canonical definition to state claims against.
-/

/-! ## A210081.P13434224826901061670

`A210129(n+1)-A210102(n+1)`
-/

namespace A210081.P13434224826901061670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210129 (n + 1) - A210102 (n + 1)

end

end A210081.P13434224826901061670

/-! ## A210081.P14330588259486734465

`A210086(∑[n+2]+4)`
-/

namespace A210081.P14330588259486734465
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210086 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A210081.P14330588259486734465

/-! ## A210081.P2278092307430623874

`A210086(A167614(n+1))+A185284(n)`
-/

namespace A210081.P2278092307430623874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210086 (A167614 (n + 1)).toNat + A185284 n

end

end A210081.P2278092307430623874

/-! ## A210081.P4245180491452149755

`lcm(A033999(n), A210086(A167614(n+1)))`
-/

namespace A210081.P4245180491452149755
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A210086 (A167614 (n + 1)).toNat)

end

end A210081.P4245180491452149755

/-! ## A210081.P7691449766675049117

`A062379(n+1)*A210086(A167614(n+1))`
-/

namespace A210081.P7691449766675049117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062379 (n + 1) * A210086 (A167614 (n + 1)).toNat

end

end A210081.P7691449766675049117

/-!
# A210082: Number of (n+1)X5 0..3 arrays containing all values 0..3 with every 2X2 subblock having one, three or four distinct values, and new values 0..3 introduced in row major order.

The programs for A210082, there is no canonical definition to state claims against.
-/

/-! ## A210082.P1972920968223537612

`A210130(n+1)-A210103(n+1)`
-/

namespace A210082.P1972920968223537612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210130 (n + 1) - A210103 (n + 1)

end

end A210082.P1972920968223537612

/-! ## A210082.P11452062880559659933

`A210086(A052905(n)+9)`
-/

namespace A210082.P11452062880559659933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210086 (A052905 n + 9).toNat

end

end A210082.P11452062880559659933

/-! ## A210082.P13381717237028950632

`A210086(A167614(n+2)+1)`
-/

namespace A210082.P13381717237028950632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210086 (A167614 (n + 2) + 1).toNat

end

end A210082.P13381717237028950632

/-! ## A210082.P1435883221539605541

`A210086(A000124(n+4)-(n+1))`
-/

namespace A210082.P1435883221539605541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210086 (A000124 (n + 4) - (n + 1 : ℤ)).toNat

end

end A210082.P1435883221539605541

/-! ## A210082.P12758411411732359568

`A210086(A000217(n+3)+n+1)`
-/

namespace A210082.P12758411411732359568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210086 (A000217 (n + 3) + (n + 1 : ℤ)).toNat

end

end A210082.P12758411411732359568

/-!
# A210083: 

The programs for A210083, there is no canonical definition to state claims against.
-/

/-! ## A210083.P10045730456716100247

`A210086(A000124(n+4)+n)`
-/

namespace A210083.P10045730456716100247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210086 (A000124 (n + 4) + (n : ℤ)).toNat

end

end A210083.P10045730456716100247

/-!
# A210086: T(n,k)=Number of (n+1)X(k+1) 0..3 arrays containing all values 0..3 with every 2X2 subblock having one, three or four distinct values, and new values 0..3 introduced in row major order.

The programs for A210086, there is no canonical definition to state claims against.
-/

/-! ## A210086.P5589028784725570358

`A210134(n+1)-A210107(n+1)`
-/

namespace A210086.P5589028784725570358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210134 (n + 1) - A210107 (n + 1)

end

end A210086.P5589028784725570358

/-! ## A210086.P4273651673541716451

`A210134(n+1)+A210309(n+1)-A210404(n+1)`
-/

namespace A210086.P4273651673541716451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210134 (n + 1) + (A210309 (n + 1) - A210404 (n + 1))

end

end A210086.P4273651673541716451

/-!
# A210087: Number of (n+1) X (n+1) 0..2 arrays containing all values 0..2 with every 2 X 2 subblock having one or two distinct values, and new values 0..2 introduced in row major order.

The programs for A210087, there is no canonical definition to state claims against.
-/

/-! ## A210087.P14432569665583630578

`A210095((n+1)²+n²)`
-/

namespace A210087.P14432569665583630578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210095 ((n + 1) ^ 2 + n ^ 2)

end

end A210087.P14432569665583630578

/-!
# A210088: Number of (n+1) X 2 0..2 arrays containing all values 0..2 with every 2 X 2 subblock having one or two distinct values, and new values 0..2 introduced in row major order.

The programs for A210088, the canonical program `A210088.P1634276222292992924` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A210088 has offset 1).

The definition of A210088 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 136 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A210088.P1634276222292992924

`10*a(n-1)-27*a(n-2)+10*a(n-3)+8*a(n-4)` with `a(0)=0, a(1)=9, a(2)=90, a(3)=657`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A210088

/-- `10*a(n-1)-27*a(n-2)+10*a(n-3)+8*a(n-4)` -/
def P1634276222292992924.Spec : Prop :=
  ∀ n, P1634276222292992924.a n = A210088 (n + 1)

theorem P1634276222292992924.correct : P1634276222292992924.Spec := by
  intro n
  simp only [A210088, Nat.add_sub_cancel]

end A210088

/-! ## A210088.P17617866101432116157

`A210095(∑[n]+1)`
-/

namespace A210088.P17617866101432116157
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210095 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A210088.P17617866101432116157

namespace A210088

/-- `A210095(∑[n]+1)` -/
def P17617866101432116157.Spec : Prop :=
  ∀ n, P17617866101432116157.a n = A210088 (n + 1)

end A210088

/-! ## A210088.P15115064735696314337

`lcm(3, A210095(A000124(n)))`
-/

namespace A210088.P15115064735696314337
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 (A210095 (A000124 n).toNat)

end

end A210088.P15115064735696314337

namespace A210088

/-- `lcm(3, A210095(A000124(n)))` -/
def P15115064735696314337.Spec : Prop :=
  ∀ n, (P15115064735696314337.a n : ℤ) = A210088 (n + 1)

end A210088

/-! ## A210088.P17653550650800177767

`record[A010054(n)*A210095(n+1)]`
-/

namespace A210088.P17653550650800177767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A210095 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A210088.P17653550650800177767

namespace A210088

/-- `record[A010054(n)*A210095(n+1)]` -/
def P17653550650800177767.Spec : Prop :=
  ∀ n, P17653550650800177767.a n = A210088 (n + 1)

end A210088

/-! ## A210088.P2576762588751574490

`record[A210095(n+1)/A034802(n)]`
-/

namespace A210088.P2576762588751574490
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A210095 (n + 1) : ℚ) / (A034802 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A210088.P2576762588751574490

namespace A210088

/-- `record[A210095(n+1)/A034802(n)]` -/
def P2576762588751574490.Spec : Prop :=
  ∀ n, P2576762588751574490.a n = (A210088 (n + 1) : ℚ)

end A210088

/-!
# A210089: Number of (n+1) X 3 0..2 arrays containing all values 0..2 with every 2 X 2 subblock having one or two distinct values, and new values 0..2 introduced in row major order.

The programs for A210089, there is no canonical definition to state claims against.
-/

/-! ## A210089.P16361400316425664463

`A209823(n+1)-A151821(3*n+5)`
-/

namespace A210089.P16361400316425664463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209823 (n + 1) - A151821 (3 * n + 5)

end

end A210089.P16361400316425664463

/-! ## A210089.P16731626384007811980

`A210095(∑[n+1]+2)`
-/

namespace A210089.P16731626384007811980
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210095 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A210089.P16731626384007811980

/-! ## A210089.P6234392084012110982

`record[A010054(n)*A210095(n+2)]`
-/

namespace A210089.P6234392084012110982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A210095 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A210089.P6234392084012110982

/-! ## A210089.P13918665436541617812

`record[root(A210095(n+2), A285061(n))]`
-/

namespace A210089.P13918665436541617812
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A210095 (n + 2) : ℝ) ^ (1 / (A285061 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A210089.P13918665436541617812

/-!
# A210090: Number of (n+1)X4 0..2 arrays containing all values 0..2 with every 2X2 subblock having one or two distinct values, and new values 0..2 introduced in row major order.

The programs for A210090, there is no canonical definition to state claims against.
-/

/-! ## A210090.P7615590776105809182

`A210095(∑[n+2]+4)`
-/

namespace A210090.P7615590776105809182
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210095 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A210090.P7615590776105809182

/-! ## A210090.P632002921840060738

`A210095(A167614(n+1))+A025439(n)`
-/

namespace A210090.P632002921840060738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210095 (A167614 (n + 1)).toNat + A025439 n

end

end A210090.P632002921840060738

/-! ## A210090.P9149364481314843932

`A210095(A167614(n+1))+A185284(n)`
-/

namespace A210090.P9149364481314843932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210095 (A167614 (n + 1)).toNat + A185284 n

end

end A210090.P9149364481314843932

/-! ## A210090.P10953723729870924508

`lcm(A158388(n), A210095(A167614(n+1)))`
-/

namespace A210090.P10953723729870924508
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A158388 n) (A210095 (A167614 (n + 1)).toNat)

end

end A210090.P10953723729870924508

/-! ## A210090.P6501146085383280740

`or(A210095(A167614(n+1)), A316868(n))`
-/

namespace A210090.P6501146085383280740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A210095 (A167614 (n + 1)).toNat) (A316868 n)

end

end A210090.P6501146085383280740

/-!
# A210091: Number of (n+1)X5 0..2 arrays containing all values 0..2 with every 2X2 subblock having one or two distinct values, and new values 0..2 introduced in row major order.

The programs for A210091, there is no canonical definition to state claims against.
-/

/-! ## A210091.P9495883457114744622

`A210095(A374004(n+1))`
-/

namespace A210091.P9495883457114744622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210095 (A374004 (n + 1)).toNat

end

end A210091.P9495883457114744622

/-! ## A210091.P3260419415399355255

`A210095(A052905(n)+9)`
-/

namespace A210091.P3260419415399355255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210095 (A052905 n + 9).toNat

end

end A210091.P3260419415399355255

/-! ## A210091.P9944201206471182441

`A210095(A055999(n)+10)`
-/

namespace A210091.P9944201206471182441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210095 (A055999 n + 10).toNat

end

end A210091.P9944201206471182441

/-! ## A210091.P1740322368697289762

`A210095(Δ[A008778(n)]+6)`
-/

namespace A210091.P1740322368697289762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210095 (f1 (n + 1) - f1 n + 6).toNat

end

end A210091.P1740322368697289762

/-! ## A210091.P1721314183719407718

`A210095(A167614(n+2)+1)`
-/

namespace A210091.P1721314183719407718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210095 (A167614 (n + 2) + 1).toNat

end

end A210091.P1721314183719407718

/-!
# A210092: Number of (n+1)X6 0..2 arrays containing all values 0..2 with every 2X2 subblock having one or two distinct values, and new values 0..2 introduced in row major order.

The programs for A210092, there is no canonical definition to state claims against.
-/

/-! ## A210092.P17369559852394718908

`A210095(A374005(n+1))`
-/

namespace A210092.P17369559852394718908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210095 (A374005 (n + 1)).toNat

end

end A210092.P17369559852394718908

/-! ## A210092.P10626573812353875388

`A210095(A167499(n+3))`
-/

namespace A210092.P10626573812353875388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210095 (A167499 (n + 3)).toNat

end

end A210092.P10626573812353875388

/-! ## A210092.P17351357245469662961

`A210095(A155212(n)+13)`
-/

namespace A210092.P17351357245469662961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210095 (A155212 n + 13).toNat

end

end A210092.P17351357245469662961

/-! ## A210092.P2281000982512049513

`A210095(eq[6, A131818(n+1)])`
-/

namespace A210092.P2281000982512049513
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210095 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A210092.P2281000982512049513

/-! ## A210092.P14270260982473819707

`A210095(A046691(n+3))`
-/

namespace A210092.P14270260982473819707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210095 (A046691 (n + 3)).toNat

end

end A210092.P14270260982473819707

/-!
# A210093: Number of (n+1)X7 0..2 arrays containing all values 0..2 with every 2X2 subblock having one or two distinct values, and new values 0..2 introduced in row major order.

The programs for A210093, there is no canonical definition to state claims against.
-/

/-! ## A210093.P14385920449599491445

`A210095(A374007(n+1))`
-/

namespace A210093.P14385920449599491445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210095 (A374007 (n + 1)).toNat

end

end A210093.P14385920449599491445

/-! ## A210093.P4482731348691143550

`A210095(eq[7, A131818(n+1)])`
-/

namespace A210093.P4482731348691143550
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210095 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A210093.P4482731348691143550

/-! ## A210093.P6199278823810695313

`A210095(A167499(n+3)+n+6)`
-/

namespace A210093.P6199278823810695313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210095 (A167499 (n + 3) + (n + 6 : ℤ)).toNat

end

end A210093.P6199278823810695313

/-!
# A210094: Number of (n+1)X8 0..2 arrays containing all values 0..2 with every 2X2 subblock having one or two distinct values, and new values 0..2 introduced in row major order.

The programs for A210094, there is no canonical definition to state claims against.
-/

/-! ## A210094.P6431019826241086969

`A210095(A374008(n+1))`
-/

namespace A210094.P6431019826241086969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210095 (A374008 (n + 1)).toNat

end

end A210094.P6431019826241086969

/-! ## A210094.P2221885601234273280

`A210095(eq[8, A131818(n+1)])`
-/

namespace A210094.P2221885601234273280
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210095 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A210094.P2221885601234273280

/-! ## A210094.P1239625249036793960

`A210095(eq[32, A057728(n+1)])`
-/

namespace A210094.P1239625249036793960
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  32

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057728 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210095 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A210094.P1239625249036793960

/-!
# A210095: T(n,k)=Number of (n+1)X(k+1) 0..2 arrays containing all values 0..2 with every 2X2 subblock having one or two distinct values, and new values 0..2 introduced in row major order.

The programs for A210095, there is no canonical definition to state claims against.
-/

/-! ## A210095.P16394133047389530188

`Δ[A298205(2*A339888(n))]`
-/

namespace A210095.P16394133047389530188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298205 (2 * A339888 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A210095.P16394133047389530188

/-!
# A210096: G.f.: 1 = Sum_{n>=0} a(n)*x^n/(1 + (n+1)*x)^(2*n+1).

The programs for A210096, there is no canonical definition to state claims against.
-/

/-! ## A210096.P370226276927568953

`A344404(n!²)`
-/

namespace A210096.P370226276927568953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344404 (Nat.factorial n ^ 2)

end

end A210096.P370226276927568953

/-!
# A210097: G.f.: 1 = Sum_{n>=0} a(n)*x^n*(1-x)^(n+1)/(1 + (n+1)*x)^(2*n+1).

The programs for A210097, there is no canonical definition to state claims against.
-/

/-! ## A210097.P8787066350707201363

`A194964(A121227(n)+A020561(n))`
-/

namespace A210097.P8787066350707201363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194964 (A121227 n + A020561 n).toNat

end

end A210097.P8787066350707201363

/-!
# A210099: Number of (n+1) X (n+1) 0..2 arrays with every 2 X 2 subblock having one or three distinct values, and new values 0..2 introduced in row major order.

The programs for A210099, there is no canonical definition to state claims against.
-/

/-! ## A210099.P17141007379958667562

`A210107((n+1)²+n²)`
-/

namespace A210099.P17141007379958667562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210107 ((n + 1) ^ 2 + n ^ 2)

end

end A210099.P17141007379958667562

