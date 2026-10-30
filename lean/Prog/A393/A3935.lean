import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C004
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
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C042
import Seq.B000.C043
import Seq.B000.C044
import Seq.B000.C047
import Seq.B000.C050
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import Seq.B001.C014
import Seq.B002.C000
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C007
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C003
import Seq.B004.C004
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
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
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A393503: Number of paths in the n-necklace graph.

The programs for A393503, the canonical program `A393503.P12262583245712848993` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A393503 has offset 1).

The definition of A393503 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A393503.P12262583245712848993

`(77*4^(n+1)-128)*(n+1)/6`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A393503

/-- `(77*4^(n+1)-128)*(n+1)/6` -/
def P12262583245712848993.Spec : Prop :=
  ∀ n, P12262583245712848993.a n = (A393503 (n + 1) : ℚ)

end A393503

/-!
# A393508: Indices of records in A038575.

The programs for A393508, there is no canonical definition to state claims against.
-/

/-! ## A393508.P7814784824537488144

`eq[A124764(n), A364491(n)]`
-/

namespace A393508.P7814784824537488144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124764 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364491 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A393508.P7814784824537488144

/-!
# A393509: Number of partitions of n having three times as many even parts as odd.

The programs for A393509, there is no canonical definition to state claims against.
-/

/-! ## A393509.P5859399537580171756

`A393515(A055646(n))`
-/

namespace A393509.P5859399537580171756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393515 (A055646 n).toNat

end

end A393509.P5859399537580171756

/-! ## A393509.P1219617386767785869

`A393515(A330336(n))`
-/

namespace A393509.P1219617386767785869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393515 (A330336 n).toNat

end

end A393509.P1219617386767785869

/-! ## A393509.P6370439689472380538

`A393515(n)^A083722((n+1)/∏{p}[n+1, #])`
-/

namespace A393509.P6370439689472380538
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A393515 n : ℚ) ^ (A083722 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ))).toNat : ℤ)

end

end A393509.P6370439689472380538

/-! ## A393509.P9338706451334984190

`A393515(n)^A347491(∏{p}[n+1, #^val(n+1, #!)])`
-/

namespace A393509.P9338706451334984190
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A393515 n : ℚ) ^ (A347491 (∏ p ∈ Nat.primeFactors (f1 n), p ^ SequenceMachineLib.valuation (n + 1) (Nat.factorial p)) : ℤ)

end

end A393509.P9338706451334984190

/-! ## A393509.P3761270538840018885

`A393515(n)%A029710(A063834(n))`
-/

namespace A393509.P3761270538840018885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A393515 n) (A029710 (A063834 n).toNat)

end

end A393509.P3761270538840018885

/-!
# A393510: Number of partitions of n having four times as many even parts as odd.

The programs for A393510, there is no canonical definition to state claims against.
-/

/-! ## A393510.P3893936556183926470

`floor(A285844(n)/A239455(3*n+1))`
-/

namespace A393510.P3893936556183926470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A285844 n : ℚ) / (A239455 (3 * n + 1) : ℚ)⌋

end

end A393510.P3893936556183926470

/-!
# A393511: Number of partitions of n having five times as many even parts as odd.

The programs for A393511, there is no canonical definition to state claims against.
-/

/-! ## A393511.P17323550452197683208

`A000120(floor(A009006(n)/A052536(n)))`
-/

namespace A393511.P17323550452197683208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 ⌊(A009006 n : ℚ) / (A052536 n : ℚ)⌋.toNat

end

end A393511.P17323550452197683208

/-!
# A393512: a(n) = ((2n)^(2n + 1) + 1)/(2n + 1)^2.

The programs for A393512, the canonical program `A393512.P6697239211401130408` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A393512 has offset 0).

The definition of A393512 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A393512.P6697239211401130408

`((2*n)^(2*n+1)+1)/(2*n+1)²`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A393512

/-- `((2*n)^(2*n+1)+1)/(2*n+1)²` -/
def P6697239211401130408.Spec : Prop :=
  ∀ n, P6697239211401130408.a n = (A393512 n : ℚ)

end A393512

/-! ## A393512.P11237726157453365803

`A081215(2*n)`
-/

namespace A393512.P11237726157453365803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081215 (2 * n)

end

end A393512.P11237726157453365803

namespace A393512

/-- `A081215(2*n)` -/
def P11237726157453365803.Spec : Prop :=
  ∀ n, P11237726157453365803.a n = A393512 n

end A393512

/-!
# A393513: Number of partitions of n having three times as many odd parts as even.

The programs for A393513, there is no canonical definition to state claims against.
-/

/-! ## A393513.P14827417543489462283

`∑{e}[A221578(A239004(n)), #]`
-/

namespace A393513.P14827417543489462283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221578 (A239004 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A393513.P14827417543489462283

/-!
# A393514: Number of partitions of 2*n having four times as many odd parts as even.

The programs for A393514, there is no canonical definition to state claims against.
-/

/-! ## A393514.P9272015729701708081

`A000196(A028307(n+1))-n`
-/

namespace A393514.P9272015729701708081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A028307 (n + 1)).toNat - (n : ℤ)

end

end A393514.P9272015729701708081

/-! ## A393514.P16495480927982185399

`A038718(n+1)%A325886(n+1)-n`
-/

namespace A393514.P16495480927982185399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A038718 (n + 1)) (A325886 (n + 1)) - (n : ℤ)

end

end A393514.P16495480927982185399

/-! ## A393514.P18385158294093778200

`A038718(n+1)-A046469(A046469(n))`
-/

namespace A393514.P18385158294093778200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038718 (n + 1) - A046469 (A046469 n).toNat

end

end A393514.P18385158294093778200

/-! ## A393514.P1078590761293097275

`A351007(lcm(A333255(n+1), A351005(n)))`
-/

namespace A393514.P1078590761293097275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351007 (Int.lcm (A333255 (n + 1)) (A351005 n))

end

end A393514.P1078590761293097275

/-!
# A393516: Number of partitions of n in which (number of odd parts) / (number of even parts) = 3/2.

The programs for A393516, there is no canonical definition to state claims against.
-/

/-! ## A393516.P2246822707212334358

`A343380(A048678(n))`
-/

namespace A393516.P2246822707212334358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343380 (A048678 n).toNat

end

end A393516.P2246822707212334358

/-!
# A393517: Number of partitions of 2*n in which (number of odd parts) / (number of even parts) = 2/3.

The programs for A393517, there is no canonical definition to state claims against.
-/

/-! ## A393517.P1429566440251416800

`A308827(n+1)+A000007(A001654(n))`
-/

namespace A393517.P1429566440251416800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308827 (n + 1) + A000007 (A001654 n).toNat

end

end A393517.P1429566440251416800

/-! ## A393517.P10708401179501093164

`A308827(n+1)+A000007(A382076(3*n+2))`
-/

namespace A393517.P10708401179501093164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308827 (n + 1) + A000007 (A382076 (3 * n + 2)).toNat

end

end A393517.P10708401179501093164

/-!
# A393519: Triangular array: T(n,k) is the number of set partitions of [n] into k labeled 3-tori.

The programs for A393519, there is no canonical definition to state claims against.
-/

/-! ## A393519.P13873666256931668665

`A126885(A204084(n+1))*A132393(n)`
-/

namespace A393519.P13873666256931668665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126885 (A204084 (n + 1)).toNat * A132393 n

end

end A393519.P13873666256931668665

/-!
# A393520: Primes p such that the reversal of p^2 is the square of a prime.

The programs for A393520, there is no canonical definition to state claims against.
-/

/-! ## A393520.P10991787639712368766

`∩[A035122(n+1), A161929(n+1)]`
-/

namespace A393520.P10991787639712368766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035122 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161929 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A393520.P10991787639712368766

/-! ## A393520.P4018679346486003097

`∩[A102859(n+1), A161929(n+1)]`
-/

namespace A393520.P4018679346486003097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102859 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161929 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A393520.P4018679346486003097

/-! ## A393520.P1689387259723850126

`∩[A085306(n+1), A107062(n)]`
-/

namespace A393520.P1689387259723850126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085306 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107062 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A393520.P1689387259723850126

/-!
# A393523: Triangle T(n,k) read by rows: number of unordered increasing trees on n nodes, with k nodes colored blue and n-k nodes colored red, such that each red node has at least two children.

The programs for A393523, there is no canonical definition to state claims against.
-/

/-! ## A393523.P5117907581933437315

`A172263(A079510(n+1))`
-/

namespace A393523.P5117907581933437315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172263 (A079510 (n + 1)).toNat

end

end A393523.P5117907581933437315

/-! ## A393523.P13067567301982303896

`A035179(A186037(n)+A005207(n))`
-/

namespace A393523.P13067567301982303896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035179 (A186037 n + A005207 n).toNat

end

end A393523.P13067567301982303896

/-! ## A393523.P17515641248284630764

`C(A349782(n), A112132(A018008(n)))`
-/

namespace A393523.P17515641248284630764
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A349782 n).toNat (A112132 (A018008 n).toNat).toNat

end

end A393523.P17515641248284630764

/-! ## A393523.P9957238632528428138

`and(A088996(n), A321410(A294950(n)))`
-/

namespace A393523.P9957238632528428138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A088996 n) (A321410 (A294950 n).toNat)

end

end A393523.P9957238632528428138

/-! ## A393523.P7884052013255446210

`A131689(n)-A285258(A112306(n+1))`
-/

namespace A393523.P7884052013255446210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131689 n - A285258 (A112306 (n + 1)).toNat

end

end A393523.P7884052013255446210

/-!
# A393524: Number of bicolored unordered increasing trees having n blue nodes and any number of red nodes, such that each red node has at least two children.

The programs for A393524, there is no canonical definition to state claims against.
-/

/-! ## A393524.P4309274765346082684

`∑[A079523(A008933(n)²)]`
-/

namespace A393524.P4309274765346082684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079523 (A008933 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A393524.P4309274765346082684

/-!
# A393525: Consider the following transformation of prime numbers: If b(n) == 1 (mod 4) then b(n+1) = (b(n) + 1)/2. If b(n) == 3 (mod 4) then b(n+1) = (b(n) - 1)/2. Continue this transformation until a nonprime is reached. a(n) is the least prime number such that exactly n primes appear in the chain of numbers created by this transformation.

The programs for A393525, there is no canonical definition to state claims against.
-/

/-! ## A393525.P1861858483106014284

`A246491(∑[A114299(n)²])`
-/

namespace A393525.P1861858483106014284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114299 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246491 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A393525.P1861858483106014284

/-! ## A393525.P18329704334055905371

`Δ[A326178(∑[A292937(n)])]`
-/

namespace A393525.P18329704334055905371
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292937 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326178 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A393525.P18329704334055905371

/-!
# A393526: Numbers of the form a*b*c*r where (a,b,c) is a primitive Pythagorean triple with inradius r.

The programs for A393526, there is no canonical definition to state claims against.
-/

/-! ## A393526.P12428469616724364626

`A169823(A393614(n+1))`
-/

namespace A393526.P12428469616724364626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169823 (A393614 (n + 1)).toNat

end

end A393526.P12428469616724364626

/-!
# A393530: Emirps in A157711.

The programs for A393530, there is no canonical definition to state claims against.
-/

/-! ## A393530.P17652358548497487532

`∩[A062339(n+1), A155512(n+1)]`
-/

namespace A393530.P17652358548497487532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062339 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155512 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A393530.P17652358548497487532

/-! ## A393530.P7601307477327684666

`∩[A155512(n+1), A157711(n+1)]`
-/

namespace A393530.P7601307477327684666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155512 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157711 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A393530.P7601307477327684666

/-! ## A393530.P12985738307592308039

`∩[A157711(n+1), A161721(n+1)]`
-/

namespace A393530.P12985738307592308039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157711 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161721 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A393530.P12985738307592308039

/-!
# A393532: The difference between the maximum and minimum voucher costs for n distinct positive integer vouchers v_1, v_2, ..., v_n, where the cost is defined as v_1 + v_1*v_2 + v_2*v_3 + ... + v_(n-1)*v_n.

The programs for A393532, the canonical program `A393532.P15979102273837115022` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A393532 has offset 1).

The definition of A393532 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A393532.P12317473697853685753

`ogf((x+x^2+2x^4-2x^5)/(1-3x+2x^2+2x^3-3x^4+x^5))`
-/

namespace A393532.P12317473697853685753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 1, 0, 2, -2] [1, -3, 2, 2, -3, 1] n

end

end A393532.P12317473697853685753

namespace A393532

/-- `ogf((x+x^2+2x^4-2x^5)/(1-3x+2x^2+2x^3-3x^4+x^5))` -/
def P12317473697853685753.Spec : Prop :=
  ∀ n, P12317473697853685753.a n = A393532 (n + 1)

end A393532

/-! ## A393532.P15979102273837115022

`3*a(n-1)-2*a(n-2)-2*a(n-3)+3*a(n-4)-a(n-5)` with `a(0)=0, a(1)=1, a(2)=4, a(3)=10, a(4)=22, a(5)=39`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A393532

/-- `3*a(n-1)-2*a(n-2)-2*a(n-3)+3*a(n-4)-a(n-5)` -/
def P15979102273837115022.Spec : Prop :=
  ∀ n, P15979102273837115022.a n = A393532 (n + 1)

theorem P15979102273837115022.correct : P15979102273837115022.Spec := by
  intro n
  simp only [A393532, Nat.add_sub_cancel]

end A393532

/-! ## A393532.P10919142986774987665

`A110610(n+1)-A393145(n+1)`
-/

namespace A393532.P10919142986774987665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110610 (n + 1) - A393145 (n + 1)

end

end A393532.P10919142986774987665

namespace A393532

/-- `A110610(n+1)-A393145(n+1)` -/
def P10919142986774987665.Spec : Prop :=
  ∀ n, P10919142986774987665.a n = A393532 (n + 1)

end A393532

/-! ## A393532.P14779145651372211314

`(n+1)²+a(n-2)-7` with `a(0)=0, a(1)=1, a(2)=4`
-/

namespace A393532.P14779145651372211314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 4] fun n a =>
  ((n + 1) ^ 2 : ℤ) + (a (n - 2) - 7)

end

end A393532.P14779145651372211314

namespace A393532

/-- `(n+1)²+a(n-2)-7` -/
def P14779145651372211314.Spec : Prop :=
  ∀ n, P14779145651372211314.a n = A393532 (n + 1)

end A393532

/-! ## A393532.P840564277729860994

`∑[∑[2-a(n-1)]+a(n-1)]` with `a(0)=0, a(1)=1, a(2)=3`
-/

namespace A393532.P840564277729860994
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 3] fun n f2 =>
  2 - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 3] fun n f1 =>
  ∑ j ∈ Finset.range (n + 1), f2 j + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A393532.P840564277729860994

namespace A393532

/-- `∑[∑[2-a(n-1)]+a(n-1)]` -/
def P840564277729860994.Spec : Prop :=
  ∀ n, P840564277729860994.a n = A393532 (n + 1)

end A393532

/-! ## A393532.P16603864630488383176

`A006503(n)-A267461(n)`
-/

namespace A393532.P16603864630488383176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006503 n - A267461 n

end

end A393532.P16603864630488383176

namespace A393532

/-- `A006503(n)-A267461(n)` -/
def P16603864630488383176.Spec : Prop :=
  ∀ n, P16603864630488383176.a n = A393532 (n + 1)

end A393532

/-! ## A393532.P292147030637926894

`A116721(n+1)-A065033(n)`
-/

namespace A393532.P292147030637926894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116721 (n + 1) - A065033 n

end

end A393532.P292147030637926894

namespace A393532

/-- `A116721(n+1)-A065033(n)` -/
def P292147030637926894.Spec : Prop :=
  ∀ n, P292147030637926894.a n = A393532 (n + 1)

end A393532

/-! ## A393532.P13308145976468557537

`A110611(n+1)-A131098(n+1)`
-/

namespace A393532.P13308145976468557537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110611 (n + 1) - A131098 (n + 1)

end

end A393532.P13308145976468557537

namespace A393532

/-- `A110611(n+1)-A131098(n+1)` -/
def P13308145976468557537.Spec : Prop :=
  ∀ n, P13308145976468557537.a n = A393532 (n + 1)

end A393532

/-! ## A393532.P17440492842708633128

`A110611(n+1)+A306262(n)-A393145(n+1)`
-/

namespace A393532.P17440492842708633128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110611 (n + 1) + (A306262 n - A393145 (n + 1))

end

end A393532.P17440492842708633128

namespace A393532

/-- `A110611(n+1)+A306262(n)-A393145(n+1)` -/
def P17440492842708633128.Spec : Prop :=
  ∀ n, P17440492842708633128.a n = A393532 (n + 1)

end A393532

/-!
# A393533: Number computed by Wolfram's 3-state 2-symbol Turing machine 589111 when started with n on the tape.

The programs for A393533, there is no canonical definition to state claims against.
-/

/-! ## A393533.P2776016502373286280

`A115378(A236721(n+1))`
-/

namespace A393533.P2776016502373286280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115378 (A236721 (n + 1)).toNat

end

end A393533.P2776016502373286280

/-!
# A393535: G.f. A(x) satisfies: A(x) = 1 + x * A(2*x/(1 - 2*x)) / (1 - 2*x)^2.

The programs for A393535, there is no canonical definition to state claims against.
-/

/-! ## A393535.P1625770306620621129

`A379169(A042833(n))`
-/

namespace A393535.P1625770306620621129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379169 (A042833 n).toNat

end

end A393535.P1625770306620621129

/-!
# A393536: G.f. A(x) satisfies: A(x) = 1 + x * A(2*x/(1 - 2*x)^2) / (1 - 2*x).

The programs for A393536, there is no canonical definition to state claims against.
-/

/-! ## A393536.P13585038746089621923

`A112996(A019453(n))`
-/

namespace A393536.P13585038746089621923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112996 (A019453 n).toNat

end

end A393536.P13585038746089621923

/-!
# A393538: Numerators of the reduced fractions in the reciprocal-addition Pascal triangle, read by rows.

The programs for A393538, there is no canonical definition to state claims against.
-/

/-! ## A393538.P16534685337973830247

`A125936(A173881(n))`
-/

namespace A393538.P16534685337973830247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125936 (A173881 n).toNat

end

end A393538.P16534685337973830247

/-! ## A393538.P3892748669705449674

`A248213(A089447(n))`
-/

namespace A393538.P3892748669705449674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248213 (A089447 n).toNat

end

end A393538.P3892748669705449674

/-! ## A393538.P1556358374017550195

`A175193(A176418(n))`
-/

namespace A393538.P1556358374017550195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175193 (A176418 n).toNat

end

end A393538.P1556358374017550195

/-! ## A393538.P15493511885374504966

`A227779(A176492(n))`
-/

namespace A393538.P15493511885374504966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227779 (A176492 n).toNat

end

end A393538.P15493511885374504966

/-! ## A393538.P3915799629228755772

`A262954(A157640(n))`
-/

namespace A393538.P3915799629228755772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262954 (A157640 n).toNat

end

end A393538.P3915799629228755772

/-!
# A393539: Dimension of the random-to-random subalgebra of the n-th symmetric group algebra.

The programs for A393539, there is no canonical definition to state claims against.
-/

/-! ## A393539.P16094244411727282393

`A263977(A335471(n))`
-/

namespace A393539.P16094244411727282393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263977 (A335471 n).toNat

end

end A393539.P16094244411727282393

/-! ## A393539.P10307123645463764134

`A263977(A128609(n+1))`
-/

namespace A393539.P10307123645463764134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263977 (A128609 (n + 1)).toNat

end

end A393539.P10307123645463764134

/-! ## A393539.P18223360244997649570

`A263977(A320921(n)+∑[A070093(n+1)])`
-/

namespace A393539.P18223360244997649570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070093 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263977 (A320921 n + ∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A393539.P18223360244997649570

/-! ## A393539.P17444059589506342348

`A263977(A003242(n)+A261983(n)-A335470(n))`
-/

namespace A393539.P17444059589506342348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263977 (A003242 n + (A261983 n - A335470 n)).toNat

end

end A393539.P17444059589506342348

/-!
# A393540: Least composite divisible by the sum of two of its distinct prime divisors in exactly n different ways.

The programs for A393540, there is no canonical definition to state claims against.
-/

/-! ## A393540.P12646496919991175739

`filter[A070033(n+1), A169674(#)]`
-/

namespace A393540.P12646496919991175739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070033 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A169674 (f1 j).toNat = 1) n)

end

end A393540.P12646496919991175739

/-! ## A393540.P9695905205995453537

`A112955(lt[A192616(n+1), A100346(n)])`
-/

namespace A393540.P9695905205995453537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192616 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100346 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112955 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A393540.P9695905205995453537

/-!
# A393546: Number of decimal places which are known after n terms of the continued fraction for the bronze ratio.

The programs for A393546, there is no canonical definition to state claims against.
-/

/-! ## A393546.P7908773772227965921

`A342910(A383826(n))+n`
-/

namespace A393546.P7908773772227965921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342910 (A383826 n).toNat + (n : ℤ)

end

end A393546.P7908773772227965921

/-! ## A393546.P12896048751654780223

`n+1-A145575(A000041(n+1))`
-/

namespace A393546.P12896048751654780223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A145575 (A000041 (n + 1)).toNat

end

end A393546.P12896048751654780223

/-! ## A393546.P3252806173627388846

`A000120(A337626(n+1))%2+n`
-/

namespace A393546.P3252806173627388846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000120 (A337626 (n + 1)).toNat) 2 + (n : ℤ)

end

end A393546.P3252806173627388846

/-! ## A393546.P17540762874303382765

`A209593(A295771(n+1))%2+n`
-/

namespace A393546.P17540762874303382765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A209593 (A295771 (n + 1)).toNat) 2 + (n : ℤ)

end

end A393546.P17540762874303382765

/-! ## A393546.P149387860721185127

`A004526(2*n+3)-A079573(n+1)%2`
-/

namespace A393546.P149387860721185127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (2 * n + 3) - Int.tmod (A079573 (n + 1)) 2

end

end A393546.P149387860721185127

/-!
# A393547: a(n) is the length of the finite sequence of positive integers (x_1, x_2, ...), where x_1 = n and, for i >= 1, x_{i+1} = min { k > 0 | x_i + k^2 is a perfect square } if such a k exists; otherwise x_i is the last term of the sequence.

The programs for A393547, there is no canonical definition to state claims against.
-/

/-! ## A393547.P8683324295289119129

`A007947(A394525(n+1)^A000720(n+1))`
-/

namespace A393547.P8683324295289119129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (SequenceMachineLib.roundAway ((A394525 (n + 1) : ℚ) ^ (A000720 (n + 1) : ℤ))).toNat

end

end A393547.P8683324295289119129

/-! ## A393547.P2824533586498525055

`A007947(A394525(n+1)^A167865(3*n+2))`
-/

namespace A393547.P2824533586498525055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (SequenceMachineLib.roundAway ((A394525 (n + 1) : ℚ) ^ (A167865 (3 * n + 2) : ℤ))).toNat

end

end A393547.P2824533586498525055

/-! ## A393547.P7083926571348286321

`A014963(A394525(n+1)%A394502(2*n+3))`
-/

namespace A393547.P7083926571348286321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (Int.tmod (A394525 (n + 1)) (A394502 (2 * n + 3))).toNat

end

end A393547.P7083926571348286321

/-! ## A393547.P13552361688112863086

`A014963(A394525(n+1))%A394508(n+1)`
-/

namespace A393547.P13552361688112863086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A014963 (A394525 (n + 1)).toNat) (A394508 (n + 1))

end

end A393547.P13552361688112863086

/-! ## A393547.P81672671009576430

`A358379(A082662(n+2))`
-/

namespace A393547.P81672671009576430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358379 (A082662 (n + 2)).toNat

end

end A393547.P81672671009576430

/-!
# A393548: Number of total dominating sets in K_{2n,2n,2n} minus a perfect matching.

The programs for A393548, the canonical program `A393548.P262370244966247609` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A393548 has offset 1).

The definition of A393548 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A393548.P262370244966247609

`(4^(n+1)-1)^3+3*(4^(n+1)-1-(n+1))²`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A393548

/-- `(4^(n+1)-1)^3+3*(4^(n+1)-1-(n+1))²` -/
def P262370244966247609.Spec : Prop :=
  ∀ n, P262370244966247609.a n = A393548 (n + 1)

theorem P262370244966247609.correct : P262370244966247609.Spec := by
  intro n
  simp only [A393548, Nat.add_sub_cancel]

end A393548

/-!
# A393549: a(n) is the number of n-digit numbers in which at least one digit occurs more than once.

The programs for A393549, the canonical program `A393549.P16518763056009907851` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A393549 has offset 1).

The definition of A393549 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A393549.P16518763056009907851

`Δ[A011557(n)]-A073531(n+1)`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A393549

/-- `Δ[A011557(n)]-A073531(n+1)` -/
def P16518763056009907851.Spec : Prop :=
  ∀ n, P16518763056009907851.a n = A393549 (n + 1)

theorem P16518763056009907851.correct : P16518763056009907851.Spec := by
  intro n
  simp only [A393549, Nat.add_sub_cancel]

end A393549

/-! ## A393549.P1638747634099594945

`A052268(n+1)-A073531(n+1)`
-/

namespace A393549.P1638747634099594945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052268 (n + 1) - A073531 (n + 1)

end

end A393549.P1638747634099594945

namespace A393549

/-- `A052268(n+1)-A073531(n+1)` -/
def P1638747634099594945.Spec : Prop :=
  ∀ n, P1638747634099594945.a n = A393549 (n + 1)

theorem P1638747634099594945.correct : P1638747634099594945.Spec := by
  intro n
  simp only [A393549, Nat.add_sub_cancel, A393549.P1638747634099594945.a, A393549.P16518763056009907851.f1, A393549.P16518763056009907851.a, A011557, A011557.P11220211478167790856.a, A052268, A052268.P1431609730251872514.a, A073531, A073531.P5950911680790858027.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A393549

/-!
# A393553: Number of dominating sets in K_{2n,2n,2n} minus a perfect matching.

The programs for A393553, the canonical program `A393553.P4582885726841251083` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A393553 has offset 1).

The definition of A393553 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A393553.P4582885726841251083

`3*((n+1)²+n+1-4^(n+1)*(n+2))+64^(n+1)+5`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A393553

/-- `3*((n+1)²+n+1-4^(n+1)*(n+2))+64^(n+1)+5` -/
def P4582885726841251083.Spec : Prop :=
  ∀ n, P4582885726841251083.a n = A393553 (n + 1)

theorem P4582885726841251083.correct : P4582885726841251083.Spec := by
  intro n
  simp only [A393553, Nat.add_sub_cancel]

end A393553

/-!
# A393554: Number of ways, up to rotations and reflections, to distribute n guards on the corners and walls of an equilateral triangle castle so that each wall has an equal number of guards.

The programs for A393554, the canonical program `A393554.P3613193048623243114` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A393554 has offset 0).

The definition of A393554 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A393554.P3613193048623243114

`ogf(1/(1-x^2-2x^3-x^4+2x^5+2x^6+2x^7-x^8-2x^9-x^10+x^12))`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A393554

/-- `ogf(1/(1-x^2-2x^3-x^4+2x^5+2x^6+2x^7-x^8-2x^9-x^10+x^12))` -/
def P3613193048623243114.Spec : Prop :=
  ∀ n, P3613193048623243114.a n = A393554 n

theorem P3613193048623243114.correct : P3613193048623243114.Spec := by
  intro n
  simp only [A393554]

end A393554

/-! ## A393554.P14953028031373062451

`A029252(2*n)`
-/

namespace A393554.P14953028031373062451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029252 (2 * n)

end

end A393554.P14953028031373062451

namespace A393554

/-- `A029252(2*n)` -/
def P14953028031373062451.Spec : Prop :=
  ∀ n, P14953028031373062451.a n = A393554 n

end A393554

/-!
# A393556: Expansion of Product_{i>=1, j>=0} (1 + x^(i * 4^j)) / (1 - x^(i * 4^j)).

The programs for A393556, there is no canonical definition to state claims against.
-/

/-! ## A393556.P8791176523643871245

`A229219(A117869(n))`
-/

namespace A393556.P8791176523643871245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229219 (A117869 n).toNat

end

end A393556.P8791176523643871245

/-! ## A393556.P9025039689243086244

`A377028(A369314(n+4))`
-/

namespace A393556.P9025039689243086244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377028 (A369314 (n + 4)).toNat

end

end A393556.P9025039689243086244

/-! ## A393556.P5514862048691087711

`A232559(A232639(A128588(A232639(A232639(n+1)))))`
-/

namespace A393556.P5514862048691087711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232559 (A232639 (A128588 (A232639 (A232639 (n + 1)).toNat).toNat).toNat).toNat

end

end A393556.P5514862048691087711

/-!
# A393557: Expansion of Product_{i>=1, j>=0} (1 + x^(i * 5^j)) / (1 - x^(i * 5^j)).

The programs for A393557, there is no canonical definition to state claims against.
-/

/-! ## A393557.P10897084184626299493

`row(A248868(A002865(2*(n+1))²))`
-/

namespace A393557.P10897084184626299493
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triRow (A248868 (A002865 (2 * (n + 1)) ^ 2).toNat).toNat

end

end A393557.P10897084184626299493

/-!
# A393558: Expansion of Product_{i>=1, j>=0} (1 + x^(i * 6^j)) / (1 - x^(i * 6^j)).

The programs for A393558, there is no canonical definition to state claims against.
-/

/-! ## A393558.P16765570222356582607

`record[A262966(n)+A000007(A262968(n))]`
-/

namespace A393558.P16765570222356582607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262966 n + A000007 (A262968 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A393558.P16765570222356582607

/-! ## A393558.P15222647264876847699

`record[A262938(3*n)+A000007(A262968(n))]`
-/

namespace A393558.P15222647264876847699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262938 (3 * n) + A000007 (A262968 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A393558.P15222647264876847699

/-! ## A393558.P16703444459996788986

`record[A262966(n)]*A033999(A214198(n))`
-/

namespace A393558.P16703444459996788986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262966 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A033999 (A214198 n).toNat

end

end A393558.P16703444459996788986

/-! ## A393558.P9895273672893574800

`record[A262938(3*n)]*A033999(A214198(n))`
-/

namespace A393558.P9895273672893574800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262938 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A033999 (A214198 n).toNat

end

end A393558.P9895273672893574800

/-! ## A393558.P10789985879245100111

`A263013(A028377(n+2))+A262966(2*n)`
-/

namespace A393558.P10789985879245100111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263013 (A028377 (n + 2)).toNat + A262966 (2 * n)

end

end A393558.P10789985879245100111

/-!
# A393559: Expansion of Product_{i>=1, j>=0} (1 + x^(i * 7^j)) / (1 - x^(i * 7^j)).

The programs for A393559, there is no canonical definition to state claims against.
-/

/-! ## A393559.P8898734452615488229

`A000267(A089093(n+1))`
-/

namespace A393559.P8898734452615488229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000267 (A089093 (n + 1)).toNat

end

end A393559.P8898734452615488229

/-! ## A393559.P4418826215900875983

`A206928(A307673(n+1))`
-/

namespace A393559.P4418826215900875983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206928 (A307673 (n + 1)).toNat

end

end A393559.P4418826215900875983

/-! ## A393559.P15203740845813181293

`A351626(A191317(n+1))`
-/

namespace A393559.P15203740845813181293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351626 (A191317 (n + 1)).toNat

end

end A393559.P15203740845813181293

/-! ## A393559.P11198808272107258247

`A003056(A080929(n)-A366131(n))`
-/

namespace A393559.P11198808272107258247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A080929 n - A366131 n).toNat

end

end A393559.P11198808272107258247

/-! ## A393559.P9914079486100591746

`A375398(A188920(n))+A374633(n+1)`
-/

namespace A393559.P9914079486100591746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375398 (A188920 n).toNat + A374633 (n + 1)

end

end A393559.P9914079486100591746

/-!
# A393562: a(n) is the number of unit squares in the square lattice, divided by 4, that have at least one vertex strictly inside and at least one vertex strictly outside the circle x^2 + y^2 = n.

The programs for A393562, the canonical program `A393562.P13338399434190979828` is in `Seq.B004.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A393562 has offset 0).

The definition of A393562 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A393562.P18103376844437343187

`1+2*floor(sqrt(n))-A000925(n)`
-/

namespace A393562.P18103376844437343187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 + 2 * Nat.sqrt n : ℤ) - A000925 n

end

end A393562.P18103376844437343187

namespace A393562

/-- `1+2*floor(sqrt(n))-A000925(n)` -/
def P18103376844437343187.Spec : Prop :=
  ∀ n, P18103376844437343187.a n = A393562 n

theorem P18103376844437343187.correct : P18103376844437343187.Spec := by
  intro n
  simp only [A393562, Nat.add_sub_cancel, A393562.P18103376844437343187.a, A393562.P13338399434190979828.a, A000196, A000196.P15434771586934192083.a, A000925, A000925.P5258766593392703248.a, A247367, A247367.P4275224030839815486.a, A010052, A010052.P917763524850441347.f1, A010052.P917763524850441347.a, A025426, A025426.P2677414616858277204.f1, A025426.P2677414616858277204.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A393562

/-! ## A393562.P13338399434190979828

`A247367(n)+A000196(n)`

The canonical program, it is in `Seq.B004.C004`.
-/

namespace A393562

/-- `A247367(n)+A000196(n)` -/
def P13338399434190979828.Spec : Prop :=
  ∀ n, P13338399434190979828.a n = A393562 n

theorem P13338399434190979828.correct : P13338399434190979828.Spec := by
  intro n
  simp only [A393562]

end A393562

/-! ## A393562.P5110884559379553771

`A393697(n)+A172471(n)`
-/

namespace A393562.P5110884559379553771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393697 n + A172471 n

end

end A393562.P5110884559379553771

namespace A393562

/-- `A393697(n)+A172471(n)` -/
def P5110884559379553771.Spec : Prop :=
  ∀ n, P5110884559379553771.a n = A393562 n

theorem P5110884559379553771.correct : P5110884559379553771.Spec := by
  intro n
  simp only [A393562, Nat.add_sub_cancel, A393562.P5110884559379553771.a, A393562.P13338399434190979828.a, A000196, A000196.P15434771586934192083.a, A172471, A172471.P3873972067505195853.a, A247367, A247367.P4275224030839815486.a, A393697, A393697.P7831953345102612304.a, A000925, A000925.P5258766593392703248.a, A010052, A010052.P917763524850441347.f1, A010052.P917763524850441347.a, A025426, A025426.P2677414616858277204.f1, A025426.P2677414616858277204.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A393562

/-!
# A393564: a(n) is the number of unit squares in the square lattice, divided by 8, that have 2 vertices strictly inside and 2 vertices strictly outside the circle x^2 + y^2 = n.

The programs for A393564, the canonical program `A393564.P18420932766056836635` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A393564 has offset 0).

The definition of A393564 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A393564.P18420932766056836635

`A273190(n)-A025435(n)`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A393564

/-- `A273190(n)-A025435(n)` -/
def P18420932766056836635.Spec : Prop :=
  ∀ n, P18420932766056836635.a n = A393564 n

theorem P18420932766056836635.correct : P18420932766056836635.Spec := by
  intro n
  simp only [A393564]

end A393564

/-! ## A393564.P9002161449160615522

`A320278(n)-A025441(n)`
-/

namespace A393564.P9002161449160615522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320278 n - A025441 n

end

end A393564.P9002161449160615522

namespace A393564

/-- `A320278(n)-A025441(n)` -/
def P9002161449160615522.Spec : Prop :=
  ∀ n, P9002161449160615522.a n = A393564 n

end A393564

/-! ## A393564.P5555724477635192536

`floor(A393697(2*n)/2)`
-/

namespace A393564.P5555724477635192536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A393697 (2 * n) : ℚ) / 2⌋

end

end A393564.P5555724477635192536

namespace A393564

/-- `floor(A393697(2*n)/2)` -/
def P5555724477635192536.Spec : Prop :=
  ∀ n, P5555724477635192536.a n = A393564 n

end A393564

/-! ## A393564.P462668294094624791

`A209281(2^A393696(2*n))`
-/

namespace A393564.P462668294094624791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209281 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A393696 (2 * n) : ℤ))).toNat

end

end A393564.P462668294094624791

namespace A393564

/-- `A209281(2^A393696(2*n))` -/
def P462668294094624791.Spec : Prop :=
  ∀ n, P462668294094624791.a n = A393564 n

end A393564

/-! ## A393564.P14689744302858665797

`A394301(A393696(A393697(A393698(2*n))))`
-/

namespace A393564.P14689744302858665797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394301 (A393696 (A393697 (A393698 (2 * n)).toNat).toNat).toNat

end

end A393564.P14689744302858665797

namespace A393564

/-- `A394301(A393696(A393697(A393698(2*n))))` -/
def P14689744302858665797.Spec : Prop :=
  ∀ n, P14689744302858665797.a n = A393564 n

end A393564

/-!
# A393565: Expansion of Product_{i>=1, j>=0} (1 + x^(i * 8^j)).

The programs for A393565, there is no canonical definition to state claims against.
-/

/-! ## A393565.P15362642411079669865

`A280663(abs(C(2, A064914(n))-n))`
-/

namespace A393565.P15362642411079669865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280663 |(Nat.choose 2 (A064914 n).toNat : ℤ) - (n : ℤ)|.toNat

end

end A393565.P15362642411079669865

/-! ## A393565.P1625113842301696462

`A280663(n)%A001235(A076031(n+1))`
-/

namespace A393565.P1625113842301696462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A280663 n) (A001235 (A076031 (n + 1)).toNat)

end

end A393565.P1625113842301696462

/-! ## A393565.P17853859264726641220

`A280710(A121739(3*(n+1)))+A280663(n)`
-/

namespace A393565.P17853859264726641220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280710 (A121739 (3 * (n + 1))).toNat + A280663 n

end

end A393565.P17853859264726641220

/-! ## A393565.P8300059571719007685

`A280663(n)%A117416(n)`
-/

namespace A393565.P8300059571719007685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A280663 n) (A117416 n)

end

end A393565.P8300059571719007685

/-! ## A393565.P10273692865802940930

`and(A152388(n+1), A280663(n))`
-/

namespace A393565.P10273692865802940930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A152388 (n + 1)) (A280663 n)

end

end A393565.P10273692865802940930

/-!
# A393566: Number of compositions of n having exactly one part whose multiplicity equals its size.

The programs for A393566, there is no canonical definition to state claims against.
-/

/-! ## A393566.P624641253613306675

`A000196(and(A056272(n), A075029(n+2)))`
-/

namespace A393566.P624641253613306675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (Int.land (A056272 n) (A075029 (n + 2))).toNat

end

end A393566.P624641253613306675

/-!
# A393568: a(1)=1; for n >= 1, a(n+1) = prime(k) where k > a(n) is least k such that prime(k) + k is prime.

The programs for A393568, there is no canonical definition to state claims against.
-/

/-! ## A393568.P15426388935452745682

`A241686(A122909(n))`
-/

namespace A393568.P15426388935452745682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241686 (A122909 n).toNat

end

end A393568.P15426388935452745682

/-!
# A393569: Number of iterations required to reach the fixed point (strictly interleaved state) in the prime-composite merging process starting from {1, 2, ..., n}.

The programs for A393569, there is no canonical definition to state claims against.
-/

/-! ## A393569.P14815063425564219810

`and(A068370(n+1), A166123(n+1))`
-/

namespace A393569.P14815063425564219810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A068370 (n + 1)) (A166123 (n + 1))

end

end A393569.P14815063425564219810

/-! ## A393569.P15042044602863182132

`A280489(n+1)%A027623(n)`
-/

namespace A393569.P15042044602863182132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A280489 (n + 1)) (A027623 n)

end

end A393569.P15042044602863182132

/-! ## A393569.P3423955307876116152

`A268126(n+1)%A129088(n+1)`
-/

namespace A393569.P3423955307876116152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A268126 (n + 1)) (A129088 (n + 1))

end

end A393569.P3423955307876116152

/-! ## A393569.P16206567497379889091

`A081950(n+1)%A278251(n)`
-/

namespace A393569.P16206567497379889091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A081950 (n + 1)) (A278251 n)

end

end A393569.P16206567497379889091

/-! ## A393569.P15019946934565581847

`and(A166123(n+1), A216538(n+1))`
-/

namespace A393569.P15019946934565581847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A166123 (n + 1)) (A216538 (n + 1))

end

end A393569.P15019946934565581847

/-!
# A393570: Number of ordered set partitions of [n] with palindromic block sizes.

The programs for A393570, there is no canonical definition to state claims against.
-/

/-! ## A393570.P16520788231690695441

`A272616(ceil(exp(n-1)))`
-/

namespace A393570.P16520788231690695441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272616 ⌈Real.exp ((n : ℤ) - 1 : ℝ)⌉.toNat

end

end A393570.P16520788231690695441

/-! ## A393570.P16257996173494776056

`A182634(A005648(n))`
-/

namespace A393570.P16257996173494776056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182634 (A005648 n).toNat

end

end A393570.P16257996173494776056

/-!
# A393572: Numbers that are the sum of a square and the reverse of a square.

The programs for A393572, there is no canonical definition to state claims against.
-/

/-! ## A393572.P14992963761040873827

`lt[0, A393705(n)]`
-/

namespace A393572.P14992963761040873827
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393705 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A393572.P14992963761040873827

/-!
# A393576: Greatest common divisors of consecutive 7-smooth numbers.

The programs for A393576, there is no canonical definition to state claims against.
-/

/-! ## A393576.P2248429730080620644

`gcd(A002473(n+1), A002473(n+2))`
-/

namespace A393576.P2248429730080620644
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002473 (n + 1)) (A002473 (n + 2))

end

end A393576.P2248429730080620644

/-! ## A393576.P18029049170695937013

`gcd(A002473(n+1), A086247(n+1))`
-/

namespace A393576.P18029049170695937013
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002473 (n + 1)) (A086247 (n + 1))

end

end A393576.P18029049170695937013

/-! ## A393576.P12551221014754117421

`gcd(A085127(n+1)/4, Δ[A085125(n+1)/2])`
-/

namespace A393576.P12551221014754117421
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A085125 (n + 1) : ℚ) / 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway ((A085127 (n + 1) : ℚ) / 4)) (SequenceMachineLib.roundAway (f1 (n + 1) - f1 n))

end

end A393576.P12551221014754117421

/-! ## A393576.P14121845785436284665

`A302043(gcd(A085125(n+1), A085125(n+2)))`
-/

namespace A393576.P14121845785436284665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302043 (Int.gcd (A085125 (n + 1)) (A085125 (n + 2)))

end

end A393576.P14121845785436284665

/-! ## A393576.P9038558873745802297

`gcd(lt[0, ∑{p}[2*n, 5-#]], A086247(n+1))`
-/

namespace A393576.P9038558873745802297
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), (5 - (p : ℤ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n : ℤ) (A086247 (n + 1))

end

end A393576.P9038558873745802297

/-! ## A393576.P117704642300766892

`gcd(A085127(n+1)/4, runs[A071604(n+1)])`
-/

namespace A393576.P117704642300766892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071604 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway ((A085127 (n + 1) : ℚ) / 4)) ((SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) n : ℕ) : ℤ)

end

end A393576.P117704642300766892

/-!
# A393578: Number of non-isomorphic nilpotent Lie algebras of dimension n over GF(2).

The programs for A393578, there is no canonical definition to state claims against.
-/

/-! ## A393578.P4742875798423498804

`A325391(A052953(n))`
-/

namespace A393578.P4742875798423498804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325391 (A052953 n).toNat

end

end A393578.P4742875798423498804

/-! ## A393578.P3604199456565533611

`A325391(A132831(n))`
-/

namespace A393578.P3604199456565533611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325391 (A132831 n).toNat

end

end A393578.P3604199456565533611

/-! ## A393578.P3410273621816302551

`A325391(A135231(n))`
-/

namespace A393578.P3410273621816302551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325391 (A135231 n).toNat

end

end A393578.P3410273621816302551

/-!
# A393579: a(n) = floor(g*n) mod 3, where g = (1+sqrt(5))/2 is the golden ratio.

The programs for A393579, the canonical program `A393579.P9619749412502138219` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A393579 has offset 1).

The definition of A393579 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A393579.P9619749412502138219

`floor(ϕ*(n+1))%3`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A393579

/-- `floor(ϕ*(n+1))%3` -/
def P9619749412502138219.Spec : Prop :=
  ∀ n, P9619749412502138219.a n = A393579 (n + 1)

theorem P9619749412502138219.correct : P9619749412502138219.Spec := by
  intro n
  simp only [A393579, Nat.add_sub_cancel]

end A393579

/-! ## A393579.P9318957537553754352

`dr(∑[Δ[floor(ϕ*n)]!]%3)`
-/

namespace A393579.P9318957537553754352
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (n : ℝ)⌋

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (((∑ j ∈ Finset.range (n + 1), f1 j) % 3 : ℕ) : ℤ)

end

end A393579.P9318957537553754352

namespace A393579

/-- `dr(∑[Δ[floor(ϕ*n)]!]%3)` -/
def P9318957537553754352.Spec : Prop :=
  ∀ n, (P9318957537553754352.a n : ℤ) = A393579 (n + 1)

end A393579

/-! ## A393579.P12280948686868643988

`dr(ceil((n+1)/ϕ+n)%3)`
-/

namespace A393579.P12280948686868643988
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (Int.tmod ⌈(n + 1 : ℝ) / Real.goldenRatio + (n : ℝ)⌉ 3)

end

end A393579.P12280948686868643988

namespace A393579

/-- `dr(ceil((n+1)/ϕ+n)%3)` -/
def P12280948686868643988.Spec : Prop :=
  ∀ n, (P12280948686868643988.a n : ℤ) = A393579 (n + 1)

end A393579

/-! ## A393579.P8256133450315776167

`floor(((A134863(n+1)%3-3)/2)²)`
-/

namespace A393579.P8256133450315776167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((Int.tmod (A134863 (n + 1)) 3 - 3 : ℚ) / 2) ^ 2⌋

end

end A393579.P8256133450315776167

namespace A393579

/-- `floor(((A134863(n+1)%3-3)/2)²)` -/
def P8256133450315776167.Spec : Prop :=
  ∀ n, P8256133450315776167.a n = A393579 (n + 1)

end A393579

/-! ## A393579.P241548567997119511

`A080425(A195121(n+1))`
-/

namespace A393579.P241548567997119511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080425 (A195121 (n + 1)).toNat

end

end A393579.P241548567997119511

namespace A393579

/-- `A080425(A195121(n+1))` -/
def P241548567997119511.Spec : Prop :=
  ∀ n, P241548567997119511.a n = A393579 (n + 1)

end A393579

/-! ## A393579.P14268985042412751547

`A010872(A000201(n+1))`
-/

namespace A393579.P14268985042412751547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010872 (A000201 (n + 1)).toNat

end

end A393579.P14268985042412751547

namespace A393579

/-- `A010872(A000201(n+1))` -/
def P14268985042412751547.Spec : Prop :=
  ∀ n, P14268985042412751547.a n = A393579 (n + 1)

end A393579

/-! ## A393579.P13530629087632752179

`A010872(A066096(n+1))`
-/

namespace A393579.P13530629087632752179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010872 (A066096 (n + 1)).toNat

end

end A393579.P13530629087632752179

namespace A393579

/-- `A010872(A066096(n+1))` -/
def P13530629087632752179.Spec : Prop :=
  ∀ n, P13530629087632752179.a n = A393579 (n + 1)

end A393579

/-! ## A393579.P7493541650237779081

`A102283(floor(ϕ*(n+1))+5)+1`
-/

namespace A393579.P7493541650237779081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102283 (⌊Real.goldenRatio * (n + 1 : ℝ)⌋ + 5).toNat + 1

end

end A393579.P7493541650237779081

namespace A393579

/-- `A102283(floor(ϕ*(n+1))+5)+1` -/
def P7493541650237779081.Spec : Prop :=
  ∀ n, P7493541650237779081.a n = A393579 (n + 1)

end A393579

/-! ## A393579.P18338228112503769146

`A060572(A075317(n+1))`
-/

namespace A393579.P18338228112503769146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060572 (A075317 (n + 1)).toNat

end

end A393579.P18338228112503769146

namespace A393579

/-- `A060572(A075317(n+1))` -/
def P18338228112503769146.Spec : Prop :=
  ∀ n, P18338228112503769146.a n = A393579 (n + 1)

end A393579

/-! ## A393579.P9111825541657955556

`A060571(A130568(n+1))`
-/

namespace A393579.P9111825541657955556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060571 (A130568 (n + 1)).toNat

end

end A393579.P9111825541657955556

namespace A393579

/-- `A060571(A130568(n+1))` -/
def P9111825541657955556.Spec : Prop :=
  ∀ n, P9111825541657955556.a n = A393579 (n + 1)

end A393579

/-! ## A393579.P13110731958338793997

`A131555(A186500(n+1))`
-/

namespace A393579.P13110731958338793997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131555 (A186500 (n + 1)).toNat

end

end A393579.P13110731958338793997

namespace A393579

/-- `A131555(A186500(n+1))` -/
def P13110731958338793997.Spec : Prop :=
  ∀ n, P13110731958338793997.a n = A393579 (n + 1)

end A393579

/-! ## A393579.P4395610302040846699

`A131555(A186516(n+1))`
-/

namespace A393579.P4395610302040846699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131555 (A186516 (n + 1)).toNat

end

end A393579.P4395610302040846699

namespace A393579

/-- `A131555(A186516(n+1))` -/
def P4395610302040846699.Spec : Prop :=
  ∀ n, P4395610302040846699.a n = A393579 (n + 1)

end A393579

/-! ## A393579.P17570289922409452262

`A080425(A283233(n+1))`
-/

namespace A393579.P17570289922409452262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080425 (A283233 (n + 1)).toNat

end

end A393579.P17570289922409452262

namespace A393579

/-- `A080425(A283233(n+1))` -/
def P17570289922409452262.Spec : Prop :=
  ∀ n, P17570289922409452262.a n = A393579 (n + 1)

end A393579

/-! ## A393579.P7168853151895003123

`A131555(A276854(n+1))`
-/

namespace A393579.P7168853151895003123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131555 (A276854 (n + 1)).toNat

end

end A393579.P7168853151895003123

namespace A393579

/-- `A131555(A276854(n+1))` -/
def P7168853151895003123.Spec : Prop :=
  ∀ n, P7168853151895003123.a n = A393579 (n + 1)

end A393579

/-! ## A393579.P2815145384176333930

`A010872(A276855(n+1))`
-/

namespace A393579.P2815145384176333930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010872 (A276855 (n + 1)).toNat

end

end A393579.P2815145384176333930

namespace A393579

/-- `A010872(A276855(n+1))` -/
def P2815145384176333930.Spec : Prop :=
  ∀ n, P2815145384176333930.a n = A393579 (n + 1)

end A393579

/-! ## A393579.P12620100913775801838

`A010872(floor(ϕ*floor((n+1)*ϕ²))+2*floor((n+1)*ϕ)-(n+1))`
-/

namespace A393579.P12620100913775801838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010872 (⌊Real.goldenRatio * (⌊(n + 1 : ℝ) * Real.goldenRatio ^ 2⌋ : ℝ)⌋ + (2 * ⌊(n + 1 : ℝ) * Real.goldenRatio⌋ - (n + 1 : ℤ))).toNat

end

end A393579.P12620100913775801838

namespace A393579

/-- `A010872(floor(ϕ*floor((n+1)*ϕ²))+2*floor((n+1)*ϕ)-(n+1))` -/
def P12620100913775801838.Spec : Prop :=
  ∀ n, P12620100913775801838.a n = A393579 (n + 1)

end A393579

/-!
# A393581: Numbers k such that the sum of the digits of k raised to the power of their respective positions has unique digits in strictly ascending order.

The programs for A393581, there is no canonical definition to state claims against.
-/

/-! ## A393581.P4190877799330434433

`lt[A210564(A101858(2*n+5)), A005897(3*n+2)]`
-/

namespace A393581.P4190877799330434433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210564 (A101858 (2 * n + 5)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005897 (3 * n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A393581.P4190877799330434433

/-!
# A393582: Largest n-digit Zumkeller number.

The programs for A393582, there is no canonical definition to state claims against.
-/

/-! ## A393582.P16741387522635094479

`xor(A026791(A000522(n)), A173833(n+1))`
-/

namespace A393582.P16741387522635094479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A026791 (A000522 n).toNat) (A173833 (n + 1))

end

end A393582.P16741387522635094479

/-!
# A393584: a(n) is the minimum, over all partitions {X, Y} of {1..2n} with |X| = |Y|, of the maximum number of pairs (x, y) with the same difference x - y for x in X and y in Y.

The programs for A393584, there is no canonical definition to state claims against.
-/

/-! ## A393584.P11808821236866046979

`ceil((n+ϕ)/ϕ²)`
-/

namespace A393584.P11808821236866046979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((n : ℝ) + Real.goldenRatio) / Real.goldenRatio ^ 2⌉

end

end A393584.P11808821236866046979

/-! ## A393584.P18082301245610460434

`floor(n/cosh(ϕ)+ϕ)`
-/

namespace A393584.P18082301245610460434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) / Real.cosh Real.goldenRatio + Real.goldenRatio⌋

end

end A393584.P18082301245610460434

/-! ## A393584.P6186431628850061982

`round(cot(ϕ²/(n+3)))`
-/

namespace A393584.P6186431628850061982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.cot (Real.goldenRatio ^ 2 / (n + 3 : ℝ)))

end

end A393584.P6186431628850061982

/-! ## A393584.P3449638417785627239

`ceil((n-1)/cosh(ϕ))+1`
-/

namespace A393584.P3449638417785627239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((n : ℤ) - 1 : ℝ) / Real.cosh Real.goldenRatio⌉ + 1

end

end A393584.P3449638417785627239

/-! ## A393584.P9370179343004323934

`round(cot(ϕ/(n+3))/ϕ)`
-/

namespace A393584.P9370179343004323934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.cot (Real.goldenRatio / (n + 3 : ℝ)) / Real.goldenRatio)

end

end A393584.P9370179343004323934

/-!
# A393585: The maximum number of distinct products from 1 to n^2 produced by the product of 2 sets, each with n positive integer elements.

The programs for A393585, there is no canonical definition to state claims against.
-/

/-! ## A393585.P7945613433608234370

`A112325(A008264(n))`
-/

namespace A393585.P7945613433608234370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112325 (A008264 n).toNat

end

end A393585.P7945613433608234370

/-! ## A393585.P1013836780577732903

`A170907(n+1)-A244231(n)`
-/

namespace A393585.P1013836780577732903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170907 (n + 1) - A244231 n

end

end A393585.P1013836780577732903

/-! ## A393585.P6005830895328182657

`A063276(n+2)+A061577(n+1)`
-/

namespace A393585.P6005830895328182657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063276 (n + 2) + A061577 (n + 1)

end

end A393585.P6005830895328182657

/-! ## A393585.P3100555351111400896

`A170907(n+1)-A328523(n+1)`
-/

namespace A393585.P3100555351111400896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170907 (n + 1) - A328523 (n + 1)

end

end A393585.P3100555351111400896

/-! ## A393585.P996147978238965801

`A104606(A060546(n+2))+A000969(n)`
-/

namespace A393585.P996147978238965801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104606 (A060546 (n + 2)).toNat + A000969 n

end

end A393585.P996147978238965801

/-!
# A393587: Matula-Goebel numbers of two-leaf rooted trees.

The programs for A393587, there is no canonical definition to state claims against.
-/

/-! ## A393587.P14347681794308326929

`eq[2, A109129(n+1)]+1`
-/

namespace A393587.P14347681794308326929
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109129 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A393587.P14347681794308326929

/-! ## A393587.P15742157093102263372

`eq[2, A109129(A028310(n))]`
-/

namespace A393587.P15742157093102263372
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109129 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A393587.P15742157093102263372

/-! ## A393587.P2026456547341932855

`A020725(eq[2, A109129(n+1)])`
-/

namespace A393587.P2026456547341932855
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109129 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A393587.P2026456547341932855

/-! ## A393587.P18131567883890959289

`A065475(eq[2, A109129(n+1)])`
-/

namespace A393587.P18131567883890959289
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109129 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A393587.P18131567883890959289

/-! ## A393587.P8420043333211988896

`eq[2, A109129(A008578(n+1))]`
-/

namespace A393587.P8420043333211988896
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109129 (A008578 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A393587.P8420043333211988896

/-!
# A393588: Expansion of 1/((1-z)*(1-2*z)*(1-3*z))^3.

The programs for A393588, the canonical program `A393588.P2200628400499465661` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A393588 has offset 0).

The definition of A393588 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 197 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A393588.P2200628400499465661

`∑[∑[∑[A369416(n+4)]]]`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A393588

/-- `∑[∑[∑[A369416(n+4)]]]` -/
def P2200628400499465661.Spec : Prop :=
  ∀ n, P2200628400499465661.a n = A393588 n

theorem P2200628400499465661.correct : P2200628400499465661.Spec := by
  intro n
  simp only [A393588]

end A393588

/-!
# A393589: Expansion of 1/((1-z)*(1-2*z)*(1-3*z))^4.

The programs for A393589, there is no canonical definition to state claims against.
-/

/-! ## A393589.P4182358719366453246

`∑{#}[n, A383841(#)*A383841(n-#)]`
-/

namespace A393589.P4182358719366453246
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A383841 k * A383841 (n - k)

end

end A393589.P4182358719366453246

/-!
# A393591: Greatest integer b such that the sum of the integer digits of n in bases 2..b strictly increases.

The programs for A393591, there is no canonical definition to state claims against.
-/

/-! ## A393591.P3807744011726638375

`A000040(gcd(A005188(2*n+1), A394461(3*(n+1))))`
-/

namespace A393591.P3807744011726638375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (Int.gcd (A005188 (2 * n + 1)) (A394461 (3 * (n + 1))))

end

end A393591.P3807744011726638375

/-! ## A393591.P14591217575988051319

`A072814(A367003(n+1))`
-/

namespace A393591.P14591217575988051319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072814 (A367003 (n + 1)).toNat

end

end A393591.P14591217575988051319

/-! ## A393591.P11644647539875750431

`A179938(A125259(n+2))`
-/

namespace A393591.P11644647539875750431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179938 (A125259 (n + 2)).toNat

end

end A393591.P11644647539875750431

/-! ## A393591.P13955302182678957044

`A258115(A209744(n+1)+A000096(n))`
-/

namespace A393591.P13955302182678957044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258115 (A209744 (n + 1) + A000096 n).toNat

end

end A393591.P13955302182678957044

/-!
# A393593: Number of partitions of n into distinct parts (or odd parts) with n+1 types of each part.

The programs for A393593, there is no canonical definition to state claims against.
-/

/-! ## A393593.P4071127628659265929

`(n+1)*A181315(n)`
-/

namespace A393593.P4071127628659265929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A181315 n

end

end A393593.P4071127628659265929

/-! ## A393593.P6665141794574627876

`A286335(A056220(n+1))`
-/

namespace A393593.P6665141794574627876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286335 (A056220 (n + 1)).toNat

end

end A393593.P6665141794574627876

/-! ## A393593.P14764293905208680088

`A286335(A074148(Δ[n²]))`
-/

namespace A393593.P14764293905208680088
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286335 (A074148 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat

end

end A393593.P14764293905208680088

/-! ## A393593.P10839953457292861686

`A286335(A054000(1+n)+1)`
-/

namespace A393593.P10839953457292861686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286335 (A054000 (1 + n) + 1).toNat

end

end A393593.P10839953457292861686

/-! ## A393593.P17774921311444156388

`A286335(eq[2, A280499(n+1)])`
-/

namespace A393593.P17774921311444156388
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280499 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286335 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A393593.P17774921311444156388

/-! ## A393593.P5166915264334801294

`A286335(A000217(2*n+1)+n)`
-/

namespace A393593.P5166915264334801294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286335 (A000217 (2 * n + 1) + (n : ℤ)).toNat

end

end A393593.P5166915264334801294

/-!
# A393595: Sequence where k is appended after every k^k occurrences of 1, with multiple values following a 1 listed in order.

The programs for A393595, there is no canonical definition to state claims against.
-/

/-! ## A393595.P11426899205324415182

`A066099(A252849(n+1)^A064532(2*n+1))`
-/

namespace A393595.P11426899205324415182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066099 (SequenceMachineLib.roundAway ((A252849 (n + 1) : ℚ) ^ (A064532 (2 * n + 1) : ℤ))).toNat

end

end A393595.P11426899205324415182

/-! ## A393595.P9315318504908198848

`gcd(A091216(A000290(3*n+1)), A250120(2*(n+1)))`
-/

namespace A393595.P9315318504908198848
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A091216 (A000290 (3 * n + 1)).toNat) (A250120 (2 * (n + 1)))

end

end A393595.P9315318504908198848

/-!
# A393597: a(n) is the permanent of the n X n matrix whose generic element M[i,j] is equal to C(n, (j-i) mod n).

The programs for A393597, there is no canonical definition to state claims against.
-/

/-! ## A393597.P11601437910795519488

`A103104(A000079(n))-A293336(n)`
-/

namespace A393597.P11601437910795519488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103104 (A000079 n).toNat - A293336 n

end

end A393597.P11601437910795519488

