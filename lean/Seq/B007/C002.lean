import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C018
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C035
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C004
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002

/-!
# Canonical definitions

Each definition is given by its canonical program and only uses definitions written before it.
-/

/-! ## A375782.P12848737483940934003

`1+A007814(A085062(n+1))`
-/

namespace A375782.P12848737483940934003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A007814 (A085062 (n + 1)).toNat

end

end A375782.P12848737483940934003

noncomputable section

/-- A375782: The 2-adic valuation of the result, starting from n, of Collatz steps x -> (3x+1)/2 while odd.

Offset 1, canonical program `A375782.P12848737483940934003`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A375782 (n : ℕ) : ℤ :=
  A375782.P12848737483940934003.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A375782.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A379222.P16799102987765888211

`A378999(2*n+1)`
-/

namespace A379222.P16799102987765888211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378999 (2 * n + 1)

end

end A379222.P16799102987765888211

noncomputable section

/-- A379222: Number of trailing 1-bits in the binary representation of the sum of the divisors of the n-th odd square: a(n) = sigma((2*n-1)^2).

Offset 1, canonical program `A379222.P16799102987765888211`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A379222 (n : ℕ) : ℤ :=
  A379222.P16799102987765888211.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A379222.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A394497.P5937869929885374420

`2*A085062(n)+1`
-/

namespace A394497.P5937869929885374420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A085062 n + 1

end

end A394497.P5937869929885374420

noncomputable section

/-- A394497: Recurrence: a(2*n + 1) = 2*n + 1, a(2*n) = 3*a(n).

Offset 1, canonical program `A394497.P5937869929885374420`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A394497 (n : ℕ) : ℤ :=
  A394497.P5937869929885374420.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A394497.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A376102.P5296559543741715473

`A288870(n)-A130321(n)`
-/

namespace A376102.P5296559543741715473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288870 n - A130321 n

end

end A376102.P5296559543741715473

noncomputable section

/-- A376102: Array read by ascending antidiagonals: A(n,k) = k*2^(n+1) + 1.

Offset 0, canonical program `A376102.P5296559543741715473`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A376102 (n : ℕ) : ℤ :=
  A376102.P5296559543741715473.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A376102.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A378959.P5432620633639023974

`A003817(n)*A090706(n)`
-/

namespace A378959.P5432620633639023974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003817 n * A090706 n

end

end A378959.P5432620633639023974

noncomputable section

/-- A378959: Sum, in base 10, of the permutations of the digits of n, written in base 2.

Offset 0, canonical program `A378959.P5432620633639023974`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A090706, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A378959 (n : ℕ) : ℤ :=
  A378959.P5432620633639023974.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A090706, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A378959.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A379267.P15908437696186355973

`∩[A144754(n+1), A059010(n)]`
-/

namespace A379267.P15908437696186355973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144754 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059010 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A379267.P15908437696186355973

noncomputable section

/-- A379267: Numbers whose binary representation contains exactly two zeros.

Offset 1, canonical program `A379267.P15908437696186355973`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 469 terms. -/
def A379267 (n : ℕ) : ℤ :=
  (A379267.P15908437696186355973.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 469 terms. -/
def A379267.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A384125.P14964655347719937837

`A093445(n+1)-A128141(n+1)`
-/

namespace A384125.P14964655347719937837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093445 (n + 1) - A128141 (n + 1)

end

end A384125.P14964655347719937837

noncomputable section

/-- A384125: Array read by antidiagonals: T(n,m) is the number of edges in the n X m rook graph K_n X K_m.

Offset 1, canonical program `A384125.P14964655347719937837`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. -/
def A384125 (n : ℕ) : ℤ :=
  A384125.P14964655347719937837.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. -/
def A384125.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A396409.P16372428509261204668

`A326730(A025480(n))`
-/

namespace A396409.P16372428509261204668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326730 (A025480 n).toNat

end

end A396409.P16372428509261204668

noncomputable section

/-- A396409: Number of iterations of x -> x XOR 2^A000120(x) from x = n to reach a number of the form 2^m-1.

Offset 0, canonical program `A396409.P16372428509261204668`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A396409 (n : ℕ) : ℤ :=
  A396409.P16372428509261204668.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A396409.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A396776.P18268578886540690482

`2*n+3-A073254(n)`
-/

namespace A396776.P18268578886540690482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 3 : ℤ) - A073254 n

end

end A396776.P18268578886540690482

noncomputable section

/-- A396776: Square array read by upwards antidiagonals: T(p,q) is the number cells required to completely surround a single cell of the regular tiling with Schläfli symbol {p,q}.

Offset 3, canonical program `A396776.P18268578886540690482`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A396776 (n : ℕ) : ℤ :=
  A396776.P18268578886540690482.a (n - 3)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A396776.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A380114.P703305606341716703

`A097805(n)*A137688(n)`
-/

namespace A380114.P703305606341716703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097805 n * A137688 n

end

end A380114.P703305606341716703

noncomputable section

/-- A380114: Triangle read by rows: The convolution triangle of 2^n, where the convolution triangle of a sequence is defined in A357368.

Offset 0, canonical program `A380114.P703305606341716703`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A380114 (n : ℕ) : ℤ :=
  A380114.P703305606341716703.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A380114.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A381848.P12239694092902384723

`A245188(n)+A036577(A014681(n+1))`
-/

namespace A381848.P12239694092902384723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245188 n + A036577 (A014681 (n + 1)).toNat

end

end A381848.P12239694092902384723

noncomputable section

/-- A381848: Sequence obtained by replacing 3-term subwords of A010060 by 0,1,2,3,4,5 as described in Comments.

Offset 1, canonical program `A381848.P12239694092902384723`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A381848 (n : ℕ) : ℤ :=
  A381848.P12239694092902384723.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A381848.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A385136.P7441573335229270188

`∑{d}[n+1, A384040(#)]`
-/

namespace A385136.P7441573335229270188
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A384040 d

end

end A385136.P7441573335229270188

noncomputable section

/-- A385136: The sum of divisors d of n such that n/d is a cubefull number (A036966).

Offset 1, canonical program `A385136.P7441573335229270188`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A385136 (n : ℕ) : ℤ :=
  A385136.P7441573335229270188.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A385136.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A386822.P5436816925973816835

`A362227(A023758(n+1))`
-/

namespace A386822.P5436816925973816835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362227 (A023758 (n + 1)).toNat

end

end A386822.P5436816925973816835

noncomputable section

/-- A386822: Irregular table T(n,k) = Product_{j = 1..k} prime(j)^(n-j+1), n >= 0, k = 1..n.

Offset 0, canonical program `A386822.P5436816925973816835`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 107 terms. -/
def A386822 (n : ℕ) : ℤ :=
  A386822.P5436816925973816835.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 107 terms. -/
def A386822.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A386825.P13800824448105910529

`A094527(n)*A140303(n)`
-/

namespace A386825.P13800824448105910529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094527 n * A140303 n

end

end A386825.P13800824448105910529

noncomputable section

/-- A386825: Triangle read by rows: T(n,k) = 3^(n-k)*C(2*n,n-k).

Offset 0, canonical program `A386825.P13800824448105910529`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4465 terms. -/
def A386825 (n : ℕ) : ℤ :=
  A386825.P13800824448105910529.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4465 terms. -/
def A386825.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A398136.P2768667115202154946

`A071207(n)*A233543(n)`
-/

namespace A398136.P2768667115202154946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071207 n * A233543 n

end

end A398136.P2768667115202154946

noncomputable section

/-- A398136: Triangle read by rows: T(n, k) = n! * n^(n - k) / (n - k)!.

Offset 0, canonical program `A398136.P2768667115202154946`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1653 terms. -/
def A398136 (n : ℕ) : ℤ :=
  A398136.P2768667115202154946.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1653 terms. -/
def A398136.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A378377.P1377304433949360129

`A176992(A056943(n+1))`
-/

namespace A378377.P1377304433949360129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176992 (A056943 (n + 1)).toNat

end

end A378377.P1377304433949360129

noncomputable section

/-- A378377: Triangle read by rows: T(n,k) is the number of non-descending sequences with length k such that the maximum of the length and the last number is n.

Offset 1, canonical program `A378377.P1377304433949360129`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. -/
def A378377 (n : ℕ) : ℤ :=
  A378377.P1377304433949360129.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. -/
def A378377.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A397429.P9837664119609473260

`∩[A080790(n+1), A161601(n+1)]`
-/

namespace A397429.P9837664119609473260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080790 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161601 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A397429.P9837664119609473260

noncomputable section

/-- A397429: Primes in A161601 whose binary reversal is prime.

Offset 1, canonical program `A397429.P9837664119609473260`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 759 terms. -/
def A397429 (n : ℕ) : ℤ :=
  (A397429.P9837664119609473260.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 759 terms. -/
def A397429.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A375076.P5343439789459528226

`filter[A391497(n+1), A295316(#)]`
-/

namespace A375076.P5343439789459528226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391497 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A295316 (f1 j).toNat = 1) n)

end

end A375076.P5343439789459528226

noncomputable section

/-- A375076: Numbers whose prime factorization exponents include at least one 1, at least one 3 and no other exponents.

Offset 1, canonical program `A375076.P5343439789459528226`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4985 terms. -/
def A375076 (n : ℕ) : ℤ :=
  A375076.P5343439789459528226.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4985 terms. -/
def A375076.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A394481.P3743534600693645198

`A034448(n+1)+A000005(n+1)-A034444(n+1)`
-/

namespace A394481.P3743534600693645198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034448 (n + 1) + A000005 (n + 1) - A034444 (n + 1)

end

end A394481.P3743534600693645198

noncomputable section

/-- A394481: a(n) = usigma(n) + tau(n) - tau(rad(n)).

Offset 1, canonical program `A394481.P3743534600693645198`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A034444, A034448, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A394481 (n : ℕ) : ℤ :=
  A394481.P3743534600693645198.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A034444, A034448, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A394481.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A395435.P9852731748166270111

`A000203(n+1)-A034448(n+1)+A034444(n+1)`
-/

namespace A395435.P9852731748166270111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A034448 (n + 1) + A034444 (n + 1)

end

end A395435.P9852731748166270111

noncomputable section

/-- A395435: a(n) = sigma(n) - usigma(n) + tau(rad(n)).

Offset 1, canonical program `A395435.P9852731748166270111`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034444, A034448, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A395435 (n : ℕ) : ℤ :=
  A395435.P9852731748166270111.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034444, A034448, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A395435.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A385045.P3641014629195364561

`A034448(A065330(n+1))`
-/

namespace A385045.P3641014629195364561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034448 (A065330 (n + 1)).toNat

end

end A385045.P3641014629195364561

noncomputable section

/-- A385045: The sum of the unitary divisors of n that are 5-rough numbers (A007310).

Offset 1, canonical program `A385045.P3641014629195364561`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A385045 (n : ℕ) : ℤ :=
  A385045.P3641014629195364561.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A385045.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A387220.P18196060376439450765

`A256465((n+1)²)`
-/

namespace A387220.P18196060376439450765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256465 ((n + 1) ^ 2)

end

end A387220.P18196060376439450765

noncomputable section

/-- A387220: Arithmetic mean of number of lattice points strictly inside circle of radius n centered on origin, and number of points not outside that circle.

Offset 1, canonical program `A387220.P18196060376439450765`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A256465, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A387220 (n : ℕ) : ℤ :=
  A387220.P18196060376439450765.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A256465, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A387220.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A390613.P13768311840881029602

`∩[A034961(n+1), A166039(n+1)]`
-/

namespace A390613.P13768311840881029602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034961 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166039 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A390613.P13768311840881029602

noncomputable section

/-- A390613: Numbers that are the sum of three consecutive primes and also the sum of three consecutive composites.

Offset 1, canonical program `A390613.P13768311840881029602`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 507 terms. -/
def A390613 (n : ℕ) : ℤ :=
  (A390613.P13768311840881029602.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 507 terms. -/
def A390613.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A390801.P18004554109699074383

`(A010051(n+1)+1)*(n+1)*A117494(n+1)/2`
-/

namespace A390801.P18004554109699074383
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A010051 (n + 1) + 1) * ((n + 1 : ℤ) * A117494 (n + 1)) : ℚ) / 2

end

end A390801.P18004554109699074383

noncomputable section

/-- A390801: The sum of the integers k from 1 to n such that gcd(n, k) is prime.

Offset 1, canonical program `A390801.P18004554109699074383`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010051, A117494, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A390801 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A390801.P18004554109699074383.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010051, A117494, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A390801.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A378298.P155601813315861815

`(A062803(n+1)-(n+1))/2`
-/

namespace A378298.P155601813315861815
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062803 (n + 1) - (n + 1 : ℤ) : ℚ) / 2

end

end A378298.P155601813315861815

noncomputable section

/-- A378298: Number of solutions that satisfy the congruence: i^2 == j^2 (mod n) with 1 <= i < j <= n.

Offset 1, canonical program `A378298.P155601813315861815`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A378298 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A378298.P155601813315861815.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A378298.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A381017.P10834525739329830361

`p?[A000328(n)]`
-/

namespace A381017.P10834525739329830361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000328 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A381017.P10834525739329830361

noncomputable section

/-- A381017: Prime terms of A000328.

Offset 1, canonical program `A381017.P10834525739329830361`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A381017 (n : ℕ) : ℤ :=
  A381017.P10834525739329830361.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A381017.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A381018.P990383455539555304

`∑[A010051(A000328(n+1))]`
-/

namespace A381018.P990383455539555304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A000328 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A381018.P990383455539555304

noncomputable section

/-- A381018: a(n) is the number of primes in A000328 for r <= n.

Offset 1, canonical program `A381018.P990383455539555304`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 178 terms. -/
def A381018 (n : ℕ) : ℤ :=
  A381018.P990383455539555304.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 178 terms. -/
def A381018.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A387157.P12867334020301138515

`A003958(A080398(n+1))`
-/

namespace A387157.P12867334020301138515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003958 (A080398 (n + 1)).toNat

end

end A387157.P12867334020301138515

noncomputable section

/-- A387157: a(n) = A173557(sigma(n)), where A173557(n) is multiplicative with a(p^e) = p-1 and sigma is the sum of divisors function.

Offset 1, canonical program `A387157.P12867334020301138515`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003958, A080398, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A387157 (n : ℕ) : ℤ :=
  A387157.P12867334020301138515.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003958, A080398, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A387157.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A387325.P12366465277394037670

`A117303(n+1)-1`
-/

namespace A387325.P12366465277394037670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117303 (n + 1) - 1

end

end A387325.P12366465277394037670

noncomputable section

/-- A387325: Self-inverse permutation of the nonnegative integers, by swapping and converting the head and tail parts of n in binary and using the rightmost 0-bit as their separator.

Offset 0, canonical program `A387325.P12366465277394037670`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 666 terms. -/
def A387325 (n : ℕ) : ℤ :=
  A387325.P12366465277394037670.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 666 terms. -/
def A387325.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A389162.P5482749429256733056

`A034448(n+1)-A048250(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A389162.P5482749429256733056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034448 (n + 1) - A048250 (n + 1)

end

end A389162.P5482749429256733056

noncomputable section

/-- A389162: a(n) = A034448(n) - A048250(n), where A034448 is the sum of unitary divisors and A048250 is the sum of squarefree divisors.

Offset 1, canonical program `A389162.P5482749429256733056`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034448, A048250, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A389162 (n : ℕ) : ℤ :=
  A389162.P5482749429256733056.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034448, A048250, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A389162.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A389425.P17457791161868218869

`A199716(n+2)-A199716(n+1)`
-/

namespace A389425.P17457791161868218869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199716 (n + 2) - A199716 (n + 1)

end

end A389425.P17457791161868218869

noncomputable section

/-- A389425: First differences of A199716.

Offset 1, canonical program `A389425.P17457791161868218869`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A199716, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A389425 (n : ℕ) : ℤ :=
  A389425.P17457791161868218869.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A199716, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A389425.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A396323.P6518160970652980328

`filter[A391319(n+1), A379958(#)]`
-/

namespace A396323.P6518160970652980328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391319 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379958 (f1 j).toNat = 1) n)

end

end A396323.P6518160970652980328

noncomputable section

/-- A396323: Numbers that are neither cubefree nor powerful with at least 3 distinct prime factors.

Offset 1, canonical program `A396323.P6518160970652980328`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7067 terms. -/
def A396323 (n : ℕ) : ℤ :=
  A396323.P6518160970652980328.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7067 terms. -/
def A396323.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A375272.P13151626788742865521

`log2(A331109(n+1))`
-/

namespace A375272.P13151626788742865521
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A331109 (n + 1) : ℝ)

end

end A375272.P13151626788742865521

noncomputable section

/-- A375272: The number of factors of n of the form p^Fibonacci(k), where p is a prime and k >= 2, when the factorization is uniquely done using the dual Zeckendorf representation of the exponents in the prime factorization of n.

Offset 1, canonical program `A375272.P13151626788742865521`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A331109, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A375272 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A375272.P13151626788742865521.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A331109, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A375272.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A375669.P4375013482018991559

`A051903(A000265(n+1))`
-/

namespace A375669.P4375013482018991559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A000265 (n + 1)).toNat

end

end A375669.P4375013482018991559

noncomputable section

/-- A375669: The maximum exponent in the prime factorization of the largest odd divisor of n.

Offset 1, canonical program `A375669.P4375013482018991559`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000265, A051903, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A375669 (n : ℕ) : ℤ :=
  A375669.P4375013482018991559.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000265, A051903, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A375669.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A375766.P13293560451162268866

`A051903(A115063(n+1))`
-/

namespace A375766.P13293560451162268866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A115063 (n + 1)).toNat

end

end A375766.P13293560451162268866

noncomputable section

/-- A375766: The maximum exponent in the prime factorization of the numbers whose exponents in their prime factorization are all Fibonacci numbers.

Offset 1, canonical program `A375766.P13293560451162268866`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, A115063, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A375766 (n : ℕ) : ℤ :=
  A375766.P13293560451162268866.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, A115063, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A375766.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A378615.P10846133080896541724

`A368748(n)+a(n-1)` with `a(0)=1`
-/

namespace A378615.P10846133080896541724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A368748 n + a (n - 1)

end

end A378615.P10846133080896541724

noncomputable section

/-- A378615: Number of non prime powers <= prime(n).

Offset 1, canonical program `A378615.P10846133080896541724`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A378615 (n : ℕ) : ℤ :=
  A378615.P10846133080896541724.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A378615.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A378987.P6480789479262422065

`A083254(2*n+1)`
-/

namespace A378987.P6480789479262422065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083254 (2 * n + 1)

end

end A378987.P6480789479262422065

noncomputable section

/-- A378987: Odd bisection of A083254, where A083254(n) = 2*phi(n)-n.

Offset 1, canonical program `A378987.P6480789479262422065`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A083254, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A378987 (n : ℕ) : ℤ :=
  A378987.P6480789479262422065.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A083254, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A378987.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A379213.P13710358421444218836

`∏{e}[A277331(n), A000045(#)]`
-/

namespace A379213.P13710358421444218836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277331 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000045 (Nat.factorization (f1 n).natAbs p)

end

end A379213.P13710358421444218836

noncomputable section

/-- A379213: a(n) is the number of nonnegative integers m such that A184615(m) = A003714(n).

Offset 0, canonical program `A379213.P13710358421444218836`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 317 terms. -/
def A379213 (n : ℕ) : ℤ :=
  A379213.P13710358421444218836.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 317 terms. -/
def A379213.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A379717.P10074037294569084625

`A007434(A004709(n+1))`
-/

namespace A379717.P10074037294569084625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007434 (A004709 (n + 1)).toNat

end

end A379717.P10074037294569084625

noncomputable section

/-- A379717: The second Jordan totient function applied to the cubefree numbers.

Offset 1, canonical program `A379717.P10074037294569084625`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004709, A007434, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A379717 (n : ℕ) : ℤ :=
  A379717.P10074037294569084625.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004709, A007434, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A379717.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A379832.P7411395680414309384

`A007434(A268335(n+1))`
-/

namespace A379832.P7411395680414309384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007434 (A268335 (n + 1)).toNat

end

end A379832.P7411395680414309384

noncomputable section

/-- A379832: The second Jordan totient function applied to the exponentially odd numbers.

Offset 1, canonical program `A379832.P7411395680414309384`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007434, A268335, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A379832 (n : ℕ) : ℤ :=
  A379832.P7411395680414309384.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007434, A268335, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A379832.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A379833.P6496859754452473676

`A007434(A000290(n+1))`
-/

namespace A379833.P6496859754452473676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007434 (A000290 (n + 1)).toNat

end

end A379833.P6496859754452473676

noncomputable section

/-- A379833: The second Jordan totient function applied to the squares.

Offset 1, canonical program `A379833.P6496859754452473676`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007434, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A379833 (n : ℕ) : ℤ :=
  A379833.P6496859754452473676.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007434, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A379833.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A382420.P7625293795778711111

`A056170(A046099(n+1))`
-/

namespace A382420.P7625293795778711111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056170 (A046099 (n + 1)).toNat

end

end A382420.P7625293795778711111

noncomputable section

/-- A382420: The number of non-unitary prime divisors of the noncubefree numbers.

Offset 1, canonical program `A382420.P7625293795778711111`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046099, A056170, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A382420 (n : ℕ) : ℤ :=
  A382420.P7625293795778711111.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046099, A056170, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A382420.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A382660.P13276603593670196303

`A047994(A268335(n+1))`
-/

namespace A382660.P13276603593670196303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047994 (A268335 (n + 1)).toNat

end

end A382660.P13276603593670196303

noncomputable section

/-- A382660: The unitary totient function applied to the exponentially odd numbers (A268335).

Offset 1, canonical program `A382660.P13276603593670196303`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A047994, A268335, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A382660 (n : ℕ) : ℤ :=
  A382660.P13276603593670196303.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A047994, A268335, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A382660.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A382662.P17606153397219342384

`A047994(A004709(n+1))`
-/

namespace A382662.P17606153397219342384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047994 (A004709 (n + 1)).toNat

end

end A382662.P17606153397219342384

noncomputable section

/-- A382662: The unitary totient function applied to the cubefree numbers (A004709).

Offset 1, canonical program `A382662.P17606153397219342384`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004709, A047994, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A382662 (n : ℕ) : ℤ :=
  A382662.P17606153397219342384.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004709, A047994, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A382662.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A382966.P5975578079117178061

`A056170(A375072(n+1))`
-/

namespace A382966.P5975578079117178061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056170 (A375072 (n + 1)).toNat

end

end A382966.P5975578079117178061

noncomputable section

/-- A382966: The number of non-unitary prime divisors of the n-th biquadratefree number that is not cubefree.

Offset 1, canonical program `A382966.P5975578079117178061`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056170, A375072, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A382966 (n : ℕ) : ℤ :=
  A382966.P5975578079117178061.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056170, A375072, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A382966.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A382968.P9973608297298639006

`A056170(A382967(n+1))`
-/

namespace A382968.P9973608297298639006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056170 (A382967 (n + 1)).toNat

end

end A382968.P9973608297298639006

noncomputable section

/-- A382968: The number of non-unitary prime divisors of the n-th biquadratefree number that is not squarefree.

Offset 1, canonical program `A382968.P9973608297298639006`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056170, A382967, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A382968 (n : ℕ) : ℤ :=
  A382968.P9973608297298639006.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056170, A382967, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A382968.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A384048.P15247859992876317530

`A047994(A057521(n+1))*A055231(n+1)`
-/

namespace A384048.P15247859992876317530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047994 (A057521 (n + 1)).toNat * A055231 (n + 1)

end

end A384048.P15247859992876317530

noncomputable section

/-- A384048: The number of integers k from 1 to n such that the greatest divisor of k that is a unitary divisor of n is squarefree.

Offset 1, canonical program `A384048.P15247859992876317530`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A047994, A055231, A057521, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A384048 (n : ℕ) : ℤ :=
  A384048.P15247859992876317530.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A047994, A055231, A057521, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A384048.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A384055.P10252134696873280874

`A047994(A006519(n+1))*A000265(n+1)`
-/

namespace A384055.P10252134696873280874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047994 (A006519 (n + 1)).toNat * A000265 (n + 1)

end

end A384055.P10252134696873280874

noncomputable section

/-- A384055: The number of integers k from 1 to n such that the greatest divisor of k that is a unitary divisor of n is odd.

Offset 1, canonical program `A384055.P10252134696873280874`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000265, A047994, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A384055 (n : ℕ) : ℤ :=
  A384055.P10252134696873280874.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000265, A047994, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A384055.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A384057.P11150408959898623205

`A047994(A065330(n+1))*A065331(n+1)`
-/

namespace A384057.P11150408959898623205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047994 (A065330 (n + 1)).toNat * A065331 (n + 1)

end

end A384057.P11150408959898623205

noncomputable section

/-- A384057: The number of integers k from 1 to n such that the greatest divisor of k that is a unitary divisor of n is a 3-smooth number.

Offset 1, canonical program `A384057.P11150408959898623205`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A047994, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A384057 (n : ℕ) : ℤ :=
  A384057.P11150408959898623205.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A047994, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A384057.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A384058.P8076363188625105423

`A047994(A065331(n+1))*A065330(n+1)`
-/

namespace A384058.P8076363188625105423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047994 (A065331 (n + 1)).toNat * A065330 (n + 1)

end

end A384058.P8076363188625105423

noncomputable section

/-- A384058: The number of integers k from 1 to n such that the greatest divisor of k that is a unitary divisor of n is a 5-rough number (A007310).

Offset 1, canonical program `A384058.P8076363188625105423`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A047994, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A384058 (n : ℕ) : ℤ :=
  A384058.P8076363188625105423.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A047994, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A384058.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A384423.P12075957193450750820

`∑{e}[n+1, A047994(#)]`
-/

namespace A384423.P12075957193450750820
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A047994 (Nat.factorization (f1 n) p)

end

end A384423.P12075957193450750820

noncomputable section

/-- A384423: The number of prime powers (not including 1) p^e that divide n such that e is unitarily coprime to the p-adic valuation of n.

Offset 1, canonical program `A384423.P12075957193450750820`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A384423 (n : ℕ) : ℤ :=
  A384423.P12075957193450750820.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A384423.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A384710.P17192466185515351844

`1-A062830(n)+n`
-/

namespace A384710.P17192466185515351844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A062830 n + (n : ℤ)

end

end A384710.P17192466185515351844

noncomputable section

/-- A384710: a(n) = Sum_{k=0..n} [gcd(k, n) = 1], where [.] are the Iverson brackets.

Offset 0, canonical program `A384710.P17192466185515351844`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A384710 (n : ℕ) : ℤ :=
  A384710.P17192466185515351844.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A384710.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A385122.P7971090258386335497

`A062821(n+1)-A163109(n+1)`
-/

namespace A385122.P7971090258386335497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062821 (n + 1) - A163109 (n + 1)

end

end A385122.P7971090258386335497

noncomputable section

/-- A385122: a(n) = d(phi(n)) - phi(d(n)) where d(n) = A000005(n) is the number of divisors and phi(n) = A000010(n) is the Euler totient function.

Offset 1, canonical program `A385122.P7971090258386335497`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A062821, A163109, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A385122 (n : ℕ) : ℤ :=
  A385122.P7971090258386335497.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A062821, A163109, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A385122.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A385147.P13098067646068759981

`∑[A066781(n+1)]`
-/

namespace A385147.P13098067646068759981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066781 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A385147.P13098067646068759981

noncomputable section

/-- A385147: a(n) = Sum_{i=1..n} 2^phi(i), where phi=A000010.

Offset 1, canonical program `A385147.P13098067646068759981`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 336 terms. -/
def A385147 (n : ℕ) : ℤ :=
  A385147.P13098067646068759981.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 336 terms. -/
def A385147.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A385195.P13869607100043770004

`A138191(n+1)*A047994(n+1)`
-/

namespace A385195.P13869607100043770004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138191 (n + 1) * A047994 (n + 1)

end

end A385195.P13869607100043770004

noncomputable section

/-- A385195: The number of integers k from 1 to n such that the greatest divisor of k that is a unitary divisor of n is either 1 or 2.

Offset 1, canonical program `A385195.P13869607100043770004`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A047994, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A385195 (n : ℕ) : ℤ :=
  A385195.P13869607100043770004.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A047994, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A385195.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A385822.P7363694969260658902

`comp[A039770(n+1)-1]+1`
-/

namespace A385822.P7363694969260658902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039770 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A385822.P7363694969260658902

noncomputable section

/-- A385822: Numbers k such that phi(k) is not a perfect square.

Offset 1, canonical program `A385822.P7363694969260658902`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A385822 (n : ℕ) : ℤ :=
  (A385822.P7363694969260658902.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A385822.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A386220.P3238769250650299334

`A000265(n+1)+A171977(n+1)`
-/

namespace A386220.P3238769250650299334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (n + 1) + A171977 (n + 1)

end

end A386220.P3238769250650299334

noncomputable section

/-- A386220: a(n) = d + 2*2^e where n = d*2^e with d = A000265(n) odd.

Offset 1, canonical program `A386220.P3238769250650299334`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000265, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A386220 (n : ℕ) : ℤ :=
  A386220.P3238769250650299334.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000265, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A386220.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A386624.P17245005643228662318

`∑{d}[n+1, A007427(#)*A062952((n+1)/#)]`
-/

namespace A386624.P17245005643228662318
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007427 d * A062952 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A386624.P17245005643228662318

noncomputable section

/-- A386624: a(n) = Sum_{d|n} sigma(d) * phi(d) * mu(n/d).

Offset 1, canonical program `A386624.P17245005643228662318`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A386624 (n : ℕ) : ℤ :=
  A386624.P17245005643228662318.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A386624.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A392085.P14049026985306902224

`A047994(A019554(n+1))`
-/

namespace A392085.P14049026985306902224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047994 (A019554 (n + 1)).toNat

end

end A392085.P14049026985306902224

noncomputable section

/-- A392085: The unitary totient of the smallest number whose square is divisible by n.

Offset 1, canonical program `A392085.P14049026985306902224`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A019554, A047994, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A392085 (n : ℕ) : ℤ :=
  A392085.P14049026985306902224.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A019554, A047994, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A392085.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A392087.P1327224941349964914

`A047994(A053143(n+1))`
-/

namespace A392087.P1327224941349964914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047994 (A053143 (n + 1)).toNat

end

end A392087.P1327224941349964914

noncomputable section

/-- A392087: The unitary totient of the smallest square divisible by n.

Offset 1, canonical program `A392087.P1327224941349964914`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A047994, A053143, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A392087 (n : ℕ) : ℤ :=
  A392087.P1327224941349964914.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A047994, A053143, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A392087.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A392089.P14519463081902606176

`A047994(A197863(n+1))`
-/

namespace A392089.P14519463081902606176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047994 (A197863 (n + 1)).toNat

end

end A392089.P14519463081902606176

noncomputable section

/-- A392089: The unitary totient of the smallest powerful number that is divisible by n.

Offset 1, canonical program `A392089.P14519463081902606176`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A047994, A197863, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A392089 (n : ℕ) : ℤ :=
  A392089.P14519463081902606176.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A047994, A197863, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A392089.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A392090.P974268744326610450

`A047994(A356193(n+1))`
-/

namespace A392090.P974268744326610450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047994 (A356193 (n + 1)).toNat

end

end A392090.P974268744326610450

noncomputable section

/-- A392090: The unitary totient of the smallest cubefull number that is divisible by n.

Offset 1, canonical program `A392090.P974268744326610450`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A047994, A356193, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A392090 (n : ℕ) : ℤ :=
  A392090.P974268744326610450.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A047994, A356193, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A392090.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A392218.P16910627991504591076

`∏{d}[A349137(2*n+1), #]`
-/

namespace A392218.P16910627991504591076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349137 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A392218.P16910627991504591076

noncomputable section

/-- A392218: Product of the divisors of phi(n).

Offset 1, canonical program `A392218.P16910627991504591076`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5182 terms. -/
def A392218 (n : ℕ) : ℤ :=
  (A392218.P16910627991504591076.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5182 terms. -/
def A392218.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A392450.P7898530236286233614

`∏{e}[n+1, A056671(#)]`
-/

namespace A392450.P7898530236286233614
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A056671 (Nat.factorization (f1 n) p)

end

end A392450.P7898530236286233614

noncomputable section

/-- A392450: The number of exponential unitary (or e-unitary) divisors of n that are exponentially squarefree numbers (A209061).

Offset 1, canonical program `A392450.P7898530236286233614`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A392450 (n : ℕ) : ℤ :=
  A392450.P7898530236286233614.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A392450.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A393976.P11083541113519582612

`A127473(n+1)+A000010(n+1)+1`
-/

namespace A393976.P11083541113519582612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127473 (n + 1) + A000010 (n + 1) + 1

end

end A393976.P11083541113519582612

noncomputable section

/-- A393976: a(n) = phi(n)^2 + phi(n) + 1, where phi is Euler's totient function.

Offset 1, canonical program `A393976.P11083541113519582612`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A127473, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A393976 (n : ℕ) : ℤ :=
  A393976.P11083541113519582612.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A127473, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A393976.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A393980.P14400587957278650939

`A153154(A233280(n))`
-/

namespace A393980.P14400587957278650939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153154 (A233280 n).toNat

end

end A393980.P14400587957278650939

noncomputable section

/-- A393980: On the nonnegative integer number line, go to the first next unused power of 2 minus 1, then spiral back to pick up any skipped numbers, and repeat.

Offset 0, canonical program `A393980.P14400587957278650939`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2048 terms. -/
def A393980 (n : ℕ) : ℤ :=
  A393980.P14400587957278650939.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2048 terms. -/
def A393980.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A395301.P11832353311031738574

`A033273(n+1)+A345266(n+1)`
-/

namespace A395301.P11832353311031738574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033273 (n + 1) + A345266 (n + 1)

end

end A395301.P11832353311031738574

noncomputable section

/-- A395301: a(n) = tau(n) - omega(n) + Sum_{p|n, p prime} gcd(p,n/p).

Offset 1, canonical program `A395301.P11832353311031738574`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A033273, A345266, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A395301 (n : ℕ) : ℤ :=
  A395301.P11832353311031738574.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A033273, A345266, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A395301.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A377844.P397277366577125668

`eq[1, A295662(n+1)]+1`
-/

namespace A377844.P397277366577125668
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295662 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A377844.P397277366577125668

noncomputable section

/-- A377844: Numbers that have a single odd exponent larger than 1 in their prime factorization.

Offset 1, canonical program `A377844.P397277366577125668`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5748 terms. -/
def A377844 (n : ℕ) : ℤ :=
  (A377844.P397277366577125668.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5748 terms. -/
def A377844.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A377990.P17241050129781097420

`A051027(A350388(n+1))*A051027(A350389(n+1))`
-/

namespace A377990.P17241050129781097420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051027 (A350388 (n + 1)).toNat * A051027 (A350389 (n + 1)).toNat

end

end A377990.P17241050129781097420

noncomputable section

/-- A377990: a(n) = sigma(sigma(A350388(n))) * sigma(sigma(A350389(n))), where A350388 and A350389 are the largest unitary divisor of n that is a square, and the largest unitary divisor of n that is an exponentially odd number, respectively.

Offset 1, canonical program `A377990.P17241050129781097420`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A350388, A350389, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A377990 (n : ℕ) : ℤ :=
  A377990.P17241050129781097420.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A350388, A350389, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A377990.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A379762.P18428336242211905384

`∩[A046386(n+1), A087248(n+1)]`
-/

namespace A379762.P18428336242211905384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046386 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087248 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A379762.P18428336242211905384

noncomputable section

/-- A379762: Products of 4 distinct prime numbers (or tetraprimes) that are abundant.

Offset 1, canonical program `A379762.P18428336242211905384`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3651 terms. -/
def A379762 (n : ℕ) : ℤ :=
  (A379762.P18428336242211905384.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3651 terms. -/
def A379762.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A380165.P2435245022523968233

`A000010(A350389(n+1))`
-/

namespace A380165.P2435245022523968233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A350389 (n + 1)).toNat

end

end A380165.P2435245022523968233

noncomputable section

/-- A380165: a(n) is the value of the Euler totient function when applied to the largest unitary divisor of n that is an exponentially odd number.

Offset 1, canonical program `A380165.P2435245022523968233`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A350389, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A380165 (n : ℕ) : ℤ :=
  A380165.P2435245022523968233.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A350389, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A380165.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A384052.P2784021690662808847

`A047994(A350389(n+1))*A350388(n+1)`
-/

namespace A384052.P2784021690662808847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047994 (A350389 (n + 1)).toNat * A350388 (n + 1)

end

end A384052.P2784021690662808847

noncomputable section

/-- A384052: The number of integers k from 1 to n such that the greatest divisor of k that is a unitary divisor of n is a square.

Offset 1, canonical program `A384052.P2784021690662808847`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A047994, A350388, A350389, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A384052 (n : ℕ) : ℤ :=
  A384052.P2784021690662808847.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A047994, A350388, A350389, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A384052.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A384054.P17702262864445494828

`A047994(A350388(n+1))*A350389(n+1)`
-/

namespace A384054.P17702262864445494828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047994 (A350388 (n + 1)).toNat * A350389 (n + 1)

end

end A384054.P17702262864445494828

noncomputable section

/-- A384054: The number of integers k from 1 to n such that the greatest divisor of k that is a unitary divisor of n is an exponentially odd number.

Offset 1, canonical program `A384054.P17702262864445494828`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A047994, A350388, A350389, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A384054 (n : ℕ) : ℤ :=
  A384054.P17702262864445494828.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A047994, A350388, A350389, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A384054.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A385132.P10498133729348376008

`n+1-A385133(n+1)`
-/

namespace A385132.P10498133729348376008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A385133 (n + 1)

end

end A385132.P10498133729348376008

noncomputable section

/-- A385132: The number of integers k from 1 to n such that gcd(n, k) has an even maximum exponent in its prime factorization.

Offset 1, canonical program `A385132.P10498133729348376008`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A385133, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A385132 (n : ℕ) : ℤ :=
  A385132.P10498133729348376008.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A385133, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A385132.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A390958.P3512256824104388828

`A390957(A072587(n+1))`
-/

namespace A390958.P3512256824104388828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390957 (A072587 (n + 1)).toNat

end

end A390958.P3512256824104388828

noncomputable section

/-- A390958: The number of non-bi-unitary divisors of the numbers that are not exponentially odd.

Offset 1, canonical program `A390958.P3512256824104388828`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A072587, A390957, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A390958 (n : ℕ) : ℤ :=
  A390958.P3512256824104388828.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A072587, A390957, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A390958.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A391428.P16960108032895023113

`A087248(n+1)²`
-/

namespace A391428.P16960108032895023113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087248 (n + 1) ^ 2

end

end A391428.P16960108032895023113

noncomputable section

/-- A391428: Exponential abundant numbers that are squares of squarefree numbers.

Offset 1, canonical program `A391428.P16960108032895023113`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A087248, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A391428 (n : ℕ) : ℤ :=
  A391428.P16960108032895023113.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A087248, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A391428.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A391584.P15171015652483584175

`∩[2*n+1, A391585(n+1)]`
-/

namespace A391584.P15171015652483584175
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391585 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391584.P15171015652483584175

noncomputable section

/-- A391584: Odd numbers k such that 3*k = A048720(m,k) for some m, where A048720 is carryless base-2 multiplication.

Offset 1, canonical program `A391584.P15171015652483584175`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 826 terms. -/
def A391584 (n : ℕ) : ℤ :=
  (A391584.P15171015652483584175.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 826 terms. -/
def A391584.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A395958.P5165968733303486376

`A010060(A064707(n))`
-/

namespace A395958.P5165968733303486376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (A064707 n).toNat

end

end A395958.P5165968733303486376

noncomputable section

/-- A395958: Third iterate of the Thue-Morse transform applied to A000035.

Offset 0, canonical program `A395958.P5165968733303486376`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A395958 (n : ℕ) : ℤ :=
  A395958.P5165968733303486376.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A395958.provenance : SequenceMachineLib.Provenance := .conjectured

