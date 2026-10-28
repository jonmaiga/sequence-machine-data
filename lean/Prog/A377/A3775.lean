import SequenceMachineLib.Basic
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C021
import Seq.B000.C025
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C042
import Seq.B000.C044
import Seq.B000.C046
import Seq.B000.C047
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C010
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B010.C000
import Seq.B011.C000
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
# A377500: Number of edge cuts in the n-dipyramidal graph.

The programs for A377500, there is no canonical definition to state claims against.
-/

/-! ## A377500.P9897613633546856803

`Δ[A286057(∏[A005117(n+1)])]`
-/

namespace A377500.P9897613633546856803
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286057 (∏ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A377500.P9897613633546856803

/-!
# A377501: a(n) = 2 + 4^(n - 1) - (2 - sqrt(2))^(n - 1) - (2 + sqrt(2))^(n - 1).

The programs for A377501, the canonical program `A377501.P3614797526391203819` is in `Seq.B000.C047`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A377501 has offset 1).

The definition of A377501 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A377501.P3614797526391203819

`2+4^n-(2-sqrt(2))^n-(2+sqrt(2))^n`

The canonical program, it is in `Seq.B000.C047`.
-/

namespace A377501

/-- `2+4^n-(2-sqrt(2))^n-(2+sqrt(2))^n` -/
def P3614797526391203819.Spec : Prop :=
  ∀ n, P3614797526391203819.a n = (A377501 (n + 1) : ℝ)

end A377501

/-! ## A377501.P9390685350778134424

`ogf((1-7x+14x^2-2x^3)/(1-9x+26x^2-26x^3+8x^4))`
-/

namespace A377501.P9390685350778134424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -7, 14, -2] [1, -9, 26, -26, 8] n

end

end A377501.P9390685350778134424

namespace A377501

/-- `ogf((1-7x+14x^2-2x^3)/(1-9x+26x^2-26x^3+8x^4))` -/
def P9390685350778134424.Spec : Prop :=
  ∀ n, P9390685350778134424.a n = A377501 (n + 1)

end A377501

/-!
# A377503: E.g.f. satisfies A(x) = 1/(1 - x * exp(x) * A(x))^2.

The programs for A377503, the canonical program `A377503.P2145934662081431328` is in `Seq.B000.C047`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A377503 has offset 0).

The definition of A377503 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A377503.P2145934662081431328

`n!*∑{#}[n, #^(n-#)*C(3*#+1, #)/((#+1)*(n-#)!)]`

The canonical program, it is in `Seq.B000.C047`.
-/

namespace A377503

/-- `n!*∑{#}[n, #^(n-#)*C(3*#+1, #)/((#+1)*(n-#)!)]` -/
def P2145934662081431328.Spec : Prop :=
  ∀ n, P2145934662081431328.a n = (A377503 n : ℚ)

end A377503

/-!
# A377504: E.g.f. satisfies A(x) = 1/(1 - x * exp(x) * A(x))^3.

The programs for A377504, the canonical program `A377504.P9387942506463761991` is in `Seq.B000.C047`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A377504 has offset 0).

The definition of A377504 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A377504.P9387942506463761991

`n!*∑{#}[n, #^(n-#)*C(4*#+2, #)/((#+1)*(n-#)!)]`

The canonical program, it is in `Seq.B000.C047`.
-/

namespace A377504

/-- `n!*∑{#}[n, #^(n-#)*C(4*#+2, #)/((#+1)*(n-#)!)]` -/
def P9387942506463761991.Spec : Prop :=
  ∀ n, P9387942506463761991.a n = (A377504 n : ℚ)

end A377504

/-!
# A377506: a(n) is the nearest integer to 1/gamma(x_n), where x_n is the n-th extrema of gamma(x).

The programs for A377506, there is no canonical definition to state claims against.
-/

/-! ## A377506.P8106646536530694201

`round(A127384(2*n)/A007259(n))`
-/

namespace A377506.P8106646536530694201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A127384 (2 * n) : ℚ) / (A007259 n : ℚ))

end

end A377506.P8106646536530694201

/-!
# A377507: Expansion of e.g.f. exp(Sum_{k>=1} phi(k)^2 * x^k/k), where phi is the Euler totient function A000010.

The programs for A377507, there is no canonical definition to state claims against.
-/

/-! ## A377507.P15783608939471390718

`A129314(A148087(n))`
-/

namespace A377507.P15783608939471390718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129314 (A148087 n).toNat

end

end A377507.P15783608939471390718

/-! ## A377507.P14086987804339195821

`A261226(A175836(n+1))`
-/

namespace A377507.P14086987804339195821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261226 (A175836 (n + 1)).toNat

end

end A377507.P14086987804339195821

/-!
# A377508: Expansion of e.g.f. exp(Sum_{k>=1} phi(k)^3 * x^k/k), where phi is the Euler totient function A000010.

The programs for A377508, there is no canonical definition to state claims against.
-/

/-! ## A377508.P7029570198198149837

`A064770(A025168(n)+n)`
-/

namespace A377508.P7029570198198149837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064770 (A025168 n + (n : ℤ)).toNat

end

end A377508.P7029570198198149837

/-! ## A377508.P10242265329761880799

`A064770(A006125(n)*A053577(n+1))`
-/

namespace A377508.P10242265329761880799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064770 (A006125 n * A053577 (n + 1)).toNat

end

end A377508.P10242265329761880799

/-!
# A377509: Expansion of e.g.f. exp(Sum_{k>=1} phi(k)^4 * x^k/k), where phi is the Euler totient function A000010.

The programs for A377509, there is no canonical definition to state claims against.
-/

/-! ## A377509.P18237341528448276831

`A128556(A005439(n))*A318185(n+1)`
-/

namespace A377509.P18237341528448276831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128556 (A005439 n).toNat * A318185 (n + 1)

end

end A377509.P18237341528448276831

/-!
# A377510: a(n) = number of iterations of x -> 2 x + 5 to reach a nonprime, starting with prime(n).

The programs for A377510, there is no canonical definition to state claims against.
-/

/-! ## A377510.P8001233114240654234

`A135010(A057661(3*n+2)*A325349(n))`
-/

namespace A377510.P8001233114240654234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135010 (A057661 (3 * n + 2) * A325349 n).toNat

end

end A377510.P8001233114240654234

/-! ## A377510.P9065268457425584747

`gcd(A120383(n+1), A365819(A302164(n+1)))`
-/

namespace A377510.P9065268457425584747
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A120383 (n + 1)) (A365819 (A302164 (n + 1)).toNat)

end

end A377510.P9065268457425584747

/-! ## A377510.P12100839806914150138

`A115384(gcd(A043291(n+1), A307456(n+2)))`
-/

namespace A377510.P12100839806914150138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115384 (Int.gcd (A043291 (n + 1)) (A307456 (n + 2)))

end

end A377510.P12100839806914150138

/-!
# A377511: a(n) = number of iterations of x -> 2 x + 7 to reach a nonprime, starting with prime(n).

The programs for A377511, there is no canonical definition to state claims against.
-/

/-! ## A377511.P4795465654147477656

`A362424(2*n+1)+A073058(A211681(n+2))`
-/

namespace A377511.P4795465654147477656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362424 (2 * n + 1) + A073058 (A211681 (n + 2)).toNat

end

end A377511.P4795465654147477656

/-! ## A377511.P11524858686569361627

`A000188(A279828(n)+A050704(n+1))`
-/

namespace A377511.P11524858686569361627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (A279828 n + A050704 (n + 1)).toNat

end

end A377511.P11524858686569361627

/-! ## A377511.P18146890571827585914

`A001511(A222730(2*n+3)+A199409(n))`
-/

namespace A377511.P18146890571827585914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A222730 (2 * n + 3) + A199409 n).toNat

end

end A377511.P18146890571827585914

/-! ## A377511.P713751101741748068

`A099244(A054519(3*n)*A125866(n+1))`
-/

namespace A377511.P713751101741748068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099244 (A054519 (3 * n) * A125866 (n + 1)).toNat

end

end A377511.P713751101741748068

/-! ## A377511.P9803645422881829547

`A066099(A324474(n+5)+A028609(3*(n+1)))`
-/

namespace A377511.P9803645422881829547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066099 (A324474 (n + 5) + A028609 (3 * (n + 1))).toNat

end

end A377511.P9803645422881829547

/-!
# A377514: a(n) = number of iterations of x -> 2 x - 7 to reach a nonprime, starting with prime(n+4).

The programs for A377514, there is no canonical definition to state claims against.
-/

/-! ## A377514.P3043086279124962566

`gcd(A357616(A357655(n)), A357654(2*(n+2)))`
-/

namespace A377514.P3043086279124962566
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A357616 (A357655 n).toNat) (A357654 (2 * (n + 2)))

end

end A377514.P3043086279124962566

/-! ## A377514.P11746176811440795042

`A373672(A006093(n+4)+n)`
-/

namespace A377514.P11746176811440795042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373672 (A006093 (n + 4) + (n : ℤ)).toNat

end

end A377514.P11746176811440795042

/-! ## A377514.P12139864368126631099

`A373672(A182986(n+5)+n-1)`
-/

namespace A377514.P12139864368126631099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373672 (A182986 (n + 5) + ((n : ℤ) - 1)).toNat

end

end A377514.P12139864368126631099

/-! ## A377514.P8077012117355658280

`A373672(A065091(n+3)-A024000(n))`
-/

namespace A377514.P8077012117355658280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373672 (A065091 (n + 3) - A024000 n).toNat

end

end A377514.P8077012117355658280

/-! ## A377514.P12596215322878336920

`gcd(A254042(n)-3, A050990(n+1))`
-/

namespace A377514.P12596215322878336920
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A254042 n - 3) (A050990 (n + 1))

end

end A377514.P12596215322878336920

/-!
# A377516: The number of divisors of n that are terms in A276078.

The programs for A377516, there is no canonical definition to state claims against.
-/

/-! ## A377516.P11664909722876152560

`A377519(A327937((n+1)*A368329(n+1)))`
-/

namespace A377516.P11664909722876152560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377519 (A327937 ((n + 1 : ℤ) * A368329 (n + 1)).toNat).toNat

end

end A377516.P11664909722876152560

/-!
# A377517: The sum of the divisors of n that are terms in A276078.

The programs for A377517, there is no canonical definition to state claims against.
-/

/-! ## A377517.P13628507564448189495

`A389451(A327937((n+1)*A368333(n+1)))`
-/

namespace A377517.P13628507564448189495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389451 (A327937 ((n + 1 : ℤ) * A368333 (n + 1)).toNat).toNat

end

end A377517.P13628507564448189495

/-!
# A377518: The largest divisor of n that is a term in A207481.

The programs for A377518, there is no canonical definition to state claims against.
-/

/-! ## A377518.P14147503179048020994

`A327936(n+1)*A327937(n+1)`
-/

namespace A377518.P14147503179048020994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327936 (n + 1) * A327937 (n + 1)

end

end A377518.P14147503179048020994

/-! ## A377518.P7560762883733647161

`lcm(A327937(n+1), A365635(n+1))`
-/

namespace A377518.P7560762883733647161
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A327937 (n + 1)) (A365635 (n + 1))

end

end A377518.P7560762883733647161

/-! ## A377518.P113338672723999615

`(n+1)/A368333(n+1)*A365635(n+1)`
-/

namespace A377518.P113338672723999615
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A368333 (n + 1) : ℚ) * (A365635 (n + 1) : ℚ)

end

end A377518.P113338672723999615

/-! ## A377518.P12780656325888056290

`lcm(A365635(A365635(n+1)), A380088(n+1))`
-/

namespace A377518.P12780656325888056290
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A365635 (A365635 (n + 1)).toNat) (A380088 (n + 1))

end

end A377518.P12780656325888056290

/-! ## A377518.P1950990218838945267

`gcd(n+1, A038040(∏{p}[n+1, #²]))`
-/

namespace A377518.P1950990218838945267
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A038040 (∏ p ∈ Nat.primeFactors (f1 n), p ^ 2))

end

end A377518.P1950990218838945267

/-! ## A377518.P15752826989212378355

`A343033(A374009(2*(n+1)))/2`
-/

namespace A377518.P15752826989212378355
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A343033 (A374009 (2 * (n + 1))).toNat : ℚ) / 2

end

end A377518.P15752826989212378355

/-! ## A377518.P3953017725006175159

`(n+1)/A279404(ceil(xor(n, n+1)/4))`
-/

namespace A377518.P3953017725006175159
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A279404 ⌈(Nat.xor n (n + 1) : ℚ) / 4⌉.toNat : ℚ)

end

end A377518.P3953017725006175159

/-!
# A377519: The number of divisors of n that are terms in A207481.

The programs for A377519, there is no canonical definition to state claims against.
-/

/-! ## A377519.P9918687359745862801

`A000005(A377518(n+1))`
-/

namespace A377519.P9918687359745862801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A377518 (n + 1)).toNat

end

end A377519.P9918687359745862801

/-! ## A377519.P1353244919669566765

`A377516(A003961(n+1))`
-/

namespace A377519.P1353244919669566765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377516 (A003961 (n + 1)).toNat

end

end A377519.P1353244919669566765

/-! ## A377519.P6413027856366509901

`A377516(A064988(n+1))`
-/

namespace A377519.P6413027856366509901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377516 (A064988 (n + 1)).toNat

end

end A377519.P6413027856366509901

/-! ## A377519.P8051574723073034250

`A377516(A332818(n+1))`
-/

namespace A377519.P8051574723073034250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377516 (A332818 (n + 1)).toNat

end

end A377519.P8051574723073034250

/-! ## A377519.P2408853719790833517

`A377516(A348746(n+1))`
-/

namespace A377519.P2408853719790833517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377516 (A348746 (n + 1)).toNat

end

end A377519.P2408853719790833517

/-!
# A377520: The sum of the divisors of n that are terms in A207481.

The programs for A377520, there is no canonical definition to state claims against.
-/

/-! ## A377520.P8681768772115062968

`A000203(A377518(n+1))`
-/

namespace A377520.P8681768772115062968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A377518 (n + 1)).toNat

end

end A377520.P8681768772115062968

/-! ## A377520.P9283255967641547035

`∑{d}[A377518(n+1), #]`
-/

namespace A377520.P9283255967641547035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377518 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A377520.P9283255967641547035

/-! ## A377520.P3532673395443205691

`∑{d}[lcm(A327937(n+1), A365635(n+1)), #]`
-/

namespace A377520.P3532673395443205691
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A327937 (n + 1)) (A365635 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), d

end

end A377520.P3532673395443205691

/-! ## A377520.P4707816981222004929

`A284341(A377518(n+1)%A096346(n))`
-/

namespace A377520.P4707816981222004929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284341 (Int.tmod (A377518 (n + 1)) (A096346 n)).toNat

end

end A377520.P4707816981222004929

/-! ## A377520.P11005366983044263586

`A284341(A377518(n+1))%A048931(n+1)`
-/

namespace A377520.P11005366983044263586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A284341 (A377518 (n + 1)).toNat) (A048931 (n + 1))

end

end A377520.P11005366983044263586

/-!
# A377521: Antidiagonal sums of A343053.

The programs for A377521, the canonical program `A377521.P13371372747639045375` is in `Seq.B000.C047`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A377521 has offset 0).

The definition of A377521 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A377521.P13371372747639045375

`ogf((15x^3+18x^4-11x^5-19x^6+9x^7+7x^8-3x^9)/(1-2x-2x^2+6x^3-6x^5+2x^6+2x^7-x^8))`

The canonical program, it is in `Seq.B000.C047`.
-/

namespace A377521

/-- `ogf((15x^3+18x^4-11x^5-19x^6+9x^7+7x^8-3x^9)/(1-2x-2x^2+6x^3-6x^5+2x^6+2x^7-x^8))` -/
def P13371372747639045375.Spec : Prop :=
  ∀ n, P13371372747639045375.a n = A377521 n

theorem P13371372747639045375.correct : P13371372747639045375.Spec := by
  intro n
  simp only [A377521]

end A377521

/-! ## A377521.P16006590263111569562

`∑[A261099(A000666(n))]`
-/

namespace A377521.P16006590263111569562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261099 (A000666 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A377521.P16006590263111569562

namespace A377521

/-- `∑[A261099(A000666(n))]` -/
def P16006590263111569562.Spec : Prop :=
  ∀ n, P16006590263111569562.a n = A377521 n

end A377521

/-!
# A377524: Number of steps for n to reach the minimum of its final cycle under iterations of the map (A123684): x->(3x-1)/2 if x odd, x/2 otherwise; or -1 if this never happens.

The programs for A377524, there is no canonical definition to state claims against.
-/

/-! ## A377524.P7661872375977290701

`A135730(n+1)-A378833(n+1)`
-/

namespace A377524.P7661872375977290701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135730 (n + 1) - A378833 (n + 1)

end

end A377524.P7661872375977290701

/-!
# A377525: Records in A376281.

The programs for A377525, there is no canonical definition to state claims against.
-/

/-! ## A377525.P10893940629821263258

`lt[A328600(A289439(n+2)), A124769(n)]`
-/

namespace A377525.P10893940629821263258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328600 (A289439 (n + 2)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124769 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A377525.P10893940629821263258

/-! ## A377525.P12543369167161705761

`lt[A000110(A221490(n+1)), A140387(n+1)]`
-/

namespace A377525.P12543369167161705761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 (A221490 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140387 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A377525.P12543369167161705761

/-! ## A377525.P5857602394776145738

`lt[A255063(n), A028338(A000203(n+1))]`
-/

namespace A377525.P5857602394776145738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255063 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028338 (A000203 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A377525.P5857602394776145738

/-! ## A377525.P14131830570614344093

`lt[A323093(n), A139709(A106737(n))]`
-/

namespace A377525.P14131830570614344093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323093 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139709 (A106737 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A377525.P14131830570614344093

/-! ## A377525.P565667244403074631

`lt[A289439(n+2), A049108(A170871(n))]`
-/

namespace A377525.P565667244403074631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289439 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049108 (A170871 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A377525.P565667244403074631

/-!
# A377526: E.g.f. satisfies A(x) = 1 + x*exp(x)*A(x)^5.

The programs for A377526, the canonical program `A377526.P11432041147347472810` is in `Seq.B000.C047`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A377526 has offset 0).

The definition of A377526 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A377526.P11432041147347472810

`n!*∑{#}[n, #^(n-#)*C(5*#, #)/((4*#+1)*(n-#)!)]`

The canonical program, it is in `Seq.B000.C047`.
-/

namespace A377526

/-- `n!*∑{#}[n, #^(n-#)*C(5*#, #)/((4*#+1)*(n-#)!)]` -/
def P11432041147347472810.Spec : Prop :=
  ∀ n, P11432041147347472810.a n = (A377526 n : ℚ)

end A377526

/-! ## A377526.P814985087653497356

`n!*∑{#}[n, #^(n-#)*A002294(#)/(n-#)!]`
-/

namespace A377526.P814985087653497356
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℚ) * (∑ k ∈ Finset.range (f1 n + 1), (k : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (A002294 k : ℚ) / (Nat.factorial ((n : ℤ) - (k : ℤ)).toNat : ℚ))

end

end A377526.P814985087653497356

namespace A377526

/-- `n!*∑{#}[n, #^(n-#)*A002294(#)/(n-#)!]` -/
def P814985087653497356.Spec : Prop :=
  ∀ n, P814985087653497356.a n = (A377526 n : ℚ)

end A377526

/-!
# A377527: E.g.f. satisfies A(x) = 1/(1 - x * exp(x) * A(x)^2)^2.

The programs for A377527, the canonical program `A377527.P18040726619704910838` is in `Seq.B000.C047`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A377527 has offset 0).

The definition of A377527 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A377527.P18040726619704910838

`n!*∑{#}[n, #^(n-#)*C(5*#+1, #)/((2*#+1)*(n-#)!)]`

The canonical program, it is in `Seq.B000.C047`.
-/

namespace A377527

/-- `n!*∑{#}[n, #^(n-#)*C(5*#+1, #)/((2*#+1)*(n-#)!)]` -/
def P18040726619704910838.Spec : Prop :=
  ∀ n, P18040726619704910838.a n = (A377527 n : ℚ)

end A377527

/-!
# A377528: E.g.f. satisfies A(x) = 1/(1 - x * exp(x) * A(x))^4.

The programs for A377528, the canonical program `A377528.P758394794469658143` is in `Seq.B000.C047`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A377528 has offset 0).

The definition of A377528 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A377528.P758394794469658143

`n!*∑{#}[n, #^(n-#)*C(5*#+3, #)/((#+1)*(n-#)!)]`

The canonical program, it is in `Seq.B000.C047`.
-/

namespace A377528

/-- `n!*∑{#}[n, #^(n-#)*C(5*#+3, #)/((#+1)*(n-#)!)]` -/
def P758394794469658143.Spec : Prop :=
  ∀ n, P758394794469658143.a n = (A377528 n : ℚ)

end A377528

/-!
# A377529: Expansion of e.g.f. 1/(1 - x * exp(x))^2.

The programs for A377529, the canonical program `A377529.P2070546644138276754` is in `Seq.B000.C047`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A377529 has offset 0).

The definition of A377529 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A377529.P2070546644138276754

`n!*∑{#}[n, (#+1)*#^(n-#)/(n-#)!]`

The canonical program, it is in `Seq.B000.C047`.
-/

namespace A377529

/-- `n!*∑{#}[n, (#+1)*#^(n-#)/(n-#)!]` -/
def P2070546644138276754.Spec : Prop :=
  ∀ n, P2070546644138276754.a n = (A377529 n : ℚ)

end A377529

/-! ## A377529.P125440047108584537

`A380841(∑[n+2]+3)`
-/

namespace A377529.P125440047108584537
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380841 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A377529.P125440047108584537

namespace A377529

/-- `A380841(∑[n+2]+3)` -/
def P125440047108584537.Spec : Prop :=
  ∀ n, P125440047108584537.a n = A377529 n

end A377529

/-! ## A377529.P11432586063944703338

`record[A380841(comp[A000124(n)])]`
-/

namespace A377529.P11432586063944703338
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380841 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A377529.P11432586063944703338

namespace A377529

/-- `record[A380841(comp[A000124(n)])]` -/
def P11432586063944703338.Spec : Prop :=
  ∀ n, P11432586063944703338.a n = A377529 n

end A377529

/-! ## A377529.P13282733320981622737

`record[A380841(A000124(n)+1)]`
-/

namespace A377529.P13282733320981622737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380841 (A000124 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A377529.P13282733320981622737

namespace A377529

/-- `record[A380841(A000124(n)+1)]` -/
def P13282733320981622737.Spec : Prop :=
  ∀ n, P13282733320981622737.a n = A377529 n

end A377529

/-! ## A377529.P6800859676487249870

`record[A380841(A000217(n)+2)]`
-/

namespace A377529.P6800859676487249870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380841 (A000217 n + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A377529.P6800859676487249870

namespace A377529

/-- `record[A380841(A000217(n)+2)]` -/
def P6800859676487249870.Spec : Prop :=
  ∀ n, P6800859676487249870.a n = A377529 n

end A377529

/-!
# A377530: Expansion of e.g.f. 1/(1 - x * exp(x))^3.

The programs for A377530, the canonical program `A377530.P5726957287255158406` is in `Seq.B000.C047`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A377530 has offset 0).

The definition of A377530 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A377530.P5726957287255158406

`n!*∑{#}[n, #^(n-#)*C(#+2, 2)/(n-#)!]`

The canonical program, it is in `Seq.B000.C047`.
-/

namespace A377530

/-- `n!*∑{#}[n, #^(n-#)*C(#+2, 2)/(n-#)!]` -/
def P5726957287255158406.Spec : Prop :=
  ∀ n, P5726957287255158406.a n = (A377530 n : ℚ)

end A377530

/-! ## A377530.P3212806431916326762

`A380841(A167614(n+2))`
-/

namespace A377530.P3212806431916326762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380841 (A167614 (n + 2)).toNat

end

end A377530.P3212806431916326762

namespace A377530

/-- `A380841(A167614(n+2))` -/
def P3212806431916326762.Spec : Prop :=
  ∀ n, P3212806431916326762.a n = A377530 n

end A377530

/-! ## A377530.P12309226515705659832

`A380841(eq[3, A002262(n)])`
-/

namespace A377530.P12309226515705659832
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380841 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A377530.P12309226515705659832

namespace A377530

/-- `A380841(eq[3, A002262(n)])` -/
def P12309226515705659832.Spec : Prop :=
  ∀ n, P12309226515705659832.a n = A377530 n

end A377530

/-! ## A377530.P5840097675477574827

`A380841(A340266(n+2)+1)`
-/

namespace A377530.P5840097675477574827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380841 (A340266 (n + 2) + 1).toNat

end

end A377530.P5840097675477574827

namespace A377530

/-- `A380841(A340266(n+2)+1)` -/
def P5840097675477574827.Spec : Prop :=
  ∀ n, P5840097675477574827.a n = A377530 n

end A377530

/-!
# A377531: Expansion of e.g.f. 1/(1 - x^2 * exp(x))^2.

The programs for A377531, the canonical program `A377531.P9579178354041718234` is in `Seq.B000.C047`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A377531 has offset 0).

The definition of A377531 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A377531.P9579178354041718234

`n!*∑{#}[floor(n/2), (#+1)*#^(n-2*#)/(n-2*#)!]`

The canonical program, it is in `Seq.B000.C047`.
-/

namespace A377531

/-- `n!*∑{#}[floor(n/2), (#+1)*#^(n-2*#)/(n-2*#)!]` -/
def P9579178354041718234.Spec : Prop :=
  ∀ n, P9579178354041718234.a n = (A377531 n : ℚ)

end A377531

/-! ## A377531.P14576238664659118571

`A304442(A010844(n))*A347895(n)`
-/

namespace A377531.P14576238664659118571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304442 (A010844 n).toNat * A347895 n

end

end A377531.P14576238664659118571

namespace A377531

/-- `A304442(A010844(n))*A347895(n)` -/
def P14576238664659118571.Spec : Prop :=
  ∀ n, P14576238664659118571.a n = A377531 n

end A377531

/-!
# A377532: Expansion of e.g.f. 1/(1 - x^2 * exp(x))^3.

The programs for A377532, the canonical program `A377532.P16946365921816221958` is in `Seq.B000.C047`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A377532 has offset 0).

The definition of A377532 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A377532.P16946365921816221958

`n!*∑{#}[floor(n/2), #^(n-2*#)*C(#+2, 2)/(n-2*#)!]`

The canonical program, it is in `Seq.B000.C047`.
-/

namespace A377532

/-- `n!*∑{#}[floor(n/2), #^(n-2*#)*C(#+2, 2)/(n-2*#)!]` -/
def P16946365921816221958.Spec : Prop :=
  ∀ n, P16946365921816221958.a n = (A377532 n : ℚ)

end A377532

/-! ## A377532.P13165644875887912320

`A131294(A000309(n))*A357683(n)`
-/

namespace A377532.P13165644875887912320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131294 (A000309 n).toNat * A357683 n

end

end A377532.P13165644875887912320

namespace A377532

/-- `A131294(A000309(n))*A357683(n)` -/
def P13165644875887912320.Spec : Prop :=
  ∀ n, P13165644875887912320.a n = A377532 n

end A377532

/-!
# A377533: Expansion of e.g.f. 1/(1 - x * exp(x^2))^2.

The programs for A377533, the canonical program `A377533.P7214422428112628668` is in `Seq.B000.C047`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A377533 has offset 0).

The definition of A377533 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A377533.P7214422428112628668

`n!*∑{#}[floor(n/2), (n-2*#+1)*(n-2*#)^#/#!]`

The canonical program, it is in `Seq.B000.C047`.
-/

namespace A377533

/-- `n!*∑{#}[floor(n/2), (n-2*#+1)*(n-2*#)^#/#!]` -/
def P7214422428112628668.Spec : Prop :=
  ∀ n, P7214422428112628668.a n = (A377533 n : ℚ)

end A377533

/-! ## A377533.P12144490187635448163

`A000142(n)*A003002(A236002(n))`
-/

namespace A377533.P12144490187635448163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A003002 (A236002 n).toNat

end

end A377533.P12144490187635448163

namespace A377533

/-- `A000142(n)*A003002(A236002(n))` -/
def P12144490187635448163.Spec : Prop :=
  ∀ n, P12144490187635448163.a n = A377533 n

end A377533

/-! ## A377533.P10607874587083461584

`A003002(A236002(n))*A052399(n)`
-/

namespace A377533.P10607874587083461584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003002 (A236002 n).toNat * A052399 n

end

end A377533.P10607874587083461584

namespace A377533

/-- `A003002(A236002(n))*A052399(n)` -/
def P10607874587083461584.Spec : Prop :=
  ∀ n, P10607874587083461584.a n = A377533 n

end A377533

/-!
# A377534: Expansion of e.g.f. 1/(1 - x * exp(x^2))^3.

The programs for A377534, the canonical program `A377534.P16870111522635471285` is in `Seq.B000.C047`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A377534 has offset 0).

The definition of A377534 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A377534.P16870111522635471285

`n!*∑{#}[floor(n/2), (n-2*#)^#*C(n-2*#+2, 2)/#!]`

The canonical program, it is in `Seq.B000.C047`.
-/

namespace A377534

/-- `n!*∑{#}[floor(n/2), (n-2*#)^#*C(n-2*#+2, 2)/#!]` -/
def P16870111522635471285.Spec : Prop :=
  ∀ n, P16870111522635471285.a n = (A377534 n : ℚ)

end A377534

/-! ## A377534.P3102780299977500048

`A032766(∑[A361649(n)])`
-/

namespace A377534.P3102780299977500048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361649 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A377534.P3102780299977500048

namespace A377534

/-- `A032766(∑[A361649(n)])` -/
def P3102780299977500048.Spec : Prop :=
  ∀ n, P3102780299977500048.a n = A377534 n

end A377534

/-!
# A377535: First term of n-th differences of the sequence x^(x-1) for x >= 1.

The programs for A377535, there is no canonical definition to state claims against.
-/

/-! ## A377535.P3913366580667055473

`∑{#}[n, (-1)^(n-#)*C(n, #)*(#+1)^#]`
-/

namespace A377535.P3913366580667055473
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (-1 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (Nat.choose n k : ℚ) * ((k + 1) ^ k : ℚ)

end

end A377535.P3913366580667055473

/-! ## A377535.P4774567001943385131

`A277474(n+1)+A277474(n)`
-/

namespace A377535.P4774567001943385131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277474 (n + 1) + A277474 n

end

end A377535.P4774567001943385131

/-! ## A377535.P5420221292584902428

`A377763(∑[n])`
-/

namespace A377535.P5420221292584902428
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377763 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A377535.P5420221292584902428

/-! ## A377535.P560783714918635957

`or(A320332(n), A377763(A000217(n)))`
-/

namespace A377535.P560783714918635957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A320332 n) (A377763 (A000217 n).toNat)

end

end A377535.P560783714918635957

/-! ## A377535.P7150394039235734148

`A377763(A000217(n))%A090024(n+2)`
-/

namespace A377535.P7150394039235734148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A377763 (A000217 n).toNat) (A090024 (n + 2))

end

end A377535.P7150394039235734148

/-!
# A377536: Integers that are the arithmetic mean of two distinct Fibonacci numbers (A000045).

The programs for A377536, there is no canonical definition to state claims against.
-/

/-! ## A377536.P8545439738678755898

`eq[1, A025147(A304101(2*n))]`
-/

namespace A377536.P8545439738678755898
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025147 (A304101 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A377536.P8545439738678755898

/-! ## A377536.P2426114512591635349

`lt[1, A359514(2*n)]`
-/

namespace A377536.P2426114512591635349
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359514 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A377536.P2426114512591635349

/-! ## A377536.P1813595529352268083

`record[A289440(A059389(n+1))]`
-/

namespace A377536.P1813595529352268083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289440 (A059389 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A377536.P1813595529352268083

/-! ## A377536.P14262456686076551170

`record[A289441(A084176(n+4))]`
-/

namespace A377536.P14262456686076551170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289441 (A084176 (n + 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A377536.P14262456686076551170

/-! ## A377536.P16619306526707856096

`eq[A007895(2*n)!, A007895(2*n)]`
-/

namespace A377536.P16619306526707856096
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A007895 (2 * n)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007895 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A377536.P16619306526707856096

/-!
# A377537: a(n) is the number of positive integers that have n prime factors and these are all <= n.

The programs for A377537, the canonical program `A377537.P11278541041156194446` is in `Seq.B001.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A377537 has offset 1).

The definition of A377537 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A377537.P11278541041156194446

`C(A000720(n+1)+n+1-1, n+1)`

The canonical program, it is in `Seq.B001.C013`.
-/

namespace A377537

/-- `C(A000720(n+1)+n+1-1, n+1)` -/
def P11278541041156194446.Spec : Prop :=
  ∀ n, (P11278541041156194446.a n : ℤ) = A377537 (n + 1)

theorem P11278541041156194446.correct : P11278541041156194446.Spec := by
  intro n
  simp only [A377537, Nat.add_sub_cancel]

end A377537

/-! ## A377537.P12302867549382455240

`C(A095117(n+1)-1, n+1)`
-/

namespace A377537.P12302867549382455240
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A095117 (n + 1) - 1).toNat (n + 1)

end

end A377537.P12302867549382455240

namespace A377537

/-- `C(A095117(n+1)-1, n+1)` -/
def P12302867549382455240.Spec : Prop :=
  ∀ n, (P12302867549382455240.a n : ℤ) = A377537 (n + 1)

end A377537

/-! ## A377537.P18352638478492098908

`C(A000720(n+1)+n, n+1)`
-/

namespace A377537.P18352638478492098908
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A000720 (n + 1) + (n : ℤ)).toNat (n + 1)

end

end A377537.P18352638478492098908

namespace A377537

/-- `C(A000720(n+1)+n, n+1)` -/
def P18352638478492098908.Spec : Prop :=
  ∀ n, (P18352638478492098908.a n : ℤ) = A377537 (n + 1)

theorem P18352638478492098908.correct : P18352638478492098908.Spec := by
  intro n
  simp only [A377537, Nat.add_sub_cancel, A377537.P18352638478492098908.a, A377537.P11278541041156194446.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A377537

/-! ## A377537.P13133853094133825813

`C(n-A065855(n+1)+n, n+1)`
-/

namespace A377537.P13133853094133825813
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ((n : ℤ) - A065855 (n + 1) + (n : ℤ)).toNat (n + 1)

end

end A377537.P13133853094133825813

namespace A377537

/-- `C(n-A065855(n+1)+n, n+1)` -/
def P13133853094133825813.Spec : Prop :=
  ∀ n, (P13133853094133825813.a n : ℤ) = A377537 (n + 1)

theorem P13133853094133825813.correct : P13133853094133825813.Spec := by
  intro n
  simp only [A377537, Nat.add_sub_cancel, A377537.P13133853094133825813.a, A377537.P11278541041156194446.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A065855, A065855.P16805213270251966039.a, A062298, A062298.P8226643735375377344.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A377537

/-! ## A377537.P12094581923770260606

`C(comp[A000040(n+1)-1+n], n+1)`
-/

namespace A377537.P12094581923770260606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - 1 + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n) (n + 1)

end

end A377537.P12094581923770260606

namespace A377537

/-- `C(comp[A000040(n+1)-1+n], n+1)` -/
def P12094581923770260606.Spec : Prop :=
  ∀ n, (P12094581923770260606.a n : ℤ) = A377537 (n + 1)

end A377537

/-! ## A377537.P1970714706587513381

`C(∑{d}[n+1, A062778(#)]+n, A271478(2*(n+1)))`
-/

namespace A377537.P1970714706587513381
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ d ∈ Nat.divisors (f1 n), A062778 d + (n : ℤ)).toNat (A271478 (2 * (n + 1))).toNat

end

end A377537.P1970714706587513381

namespace A377537

/-- `C(∑{d}[n+1, A062778(#)]+n, A271478(2*(n+1)))` -/
def P1970714706587513381.Spec : Prop :=
  ∀ n, (P1970714706587513381.a n : ℤ) = A377537 (n + 1)

end A377537

/-!
# A377540: Numbers k such that at least one of the numbers 6k-1 or 6k+1 is prime.

The programs for A377540, the canonical program `A377540.P8485193340030685808` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A377540 has offset 1).

The definition of A377540 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A377540.P8485193340030685808

`eq[1, A161996(n+1)]+1`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A377540

/-- `eq[1, A161996(n+1)]+1` -/
def P8485193340030685808.Spec : Prop :=
  ∀ n, (P8485193340030685808.a n : ℤ) = A377540 (n + 1)

theorem P8485193340030685808.correct : P8485193340030685808.Spec := by
  intro n
  simp only [A377540, Nat.add_sub_cancel]

end A377540

/-! ## A377540.P13737615395266620587

`∪[A024898(n+1), A024899(n+1)]`
-/

namespace A377540.P13737615395266620587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024898 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024899 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A377540.P13737615395266620587

namespace A377540

/-- `∪[A024898(n+1), A024899(n+1)]` -/
def P13737615395266620587.Spec : Prop :=
  ∀ n, (P13737615395266620587.a n : ℤ) = A377540 (n + 1)

end A377540

/-! ## A377540.P3742555937671090528

`∪[A024899(n+1), A121763(n+1)]`
-/

namespace A377540.P3742555937671090528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024899 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121763 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A377540.P3742555937671090528

namespace A377540

/-- `∪[A024899(n+1), A121763(n+1)]` -/
def P3742555937671090528.Spec : Prop :=
  ∀ n, (P3742555937671090528.a n : ℤ) = A377540 (n + 1)

end A377540

/-! ## A377540.P3097060485495953604

`∪[A024898(n+1), A121765(n+1)]`
-/

namespace A377540.P3097060485495953604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024898 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121765 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A377540.P3097060485495953604

namespace A377540

/-- `∪[A024898(n+1), A121765(n+1)]` -/
def P3097060485495953604.Spec : Prop :=
  ∀ n, (P3097060485495953604.a n : ℤ) = A377540 (n + 1)

end A377540

/-! ## A377540.P13618522948240529571

`comp[A171696(n+1)]`
-/

namespace A377540.P13618522948240529571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171696 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A377540.P13618522948240529571

namespace A377540

/-- `comp[A171696(n+1)]` -/
def P13618522948240529571.Spec : Prop :=
  ∀ n, (P13618522948240529571.a n : ℤ) = A377540 (n + 1)

end A377540

/-! ## A377540.P11398748551744882041

`record[abs(A353460(n+1))]`
-/

namespace A377540.P11398748551744882041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A353460 (n + 1)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A377540.P11398748551744882041

namespace A377540

/-- `record[abs(A353460(n+1))]` -/
def P11398748551744882041.Spec : Prop :=
  ∀ n, P11398748551744882041.a n = A377540 (n + 1)

end A377540

/-! ## A377540.P13724438733345028827

`record[-A353460(n+3)]`
-/

namespace A377540.P13724438733345028827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A353460 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A377540.P13724438733345028827

namespace A377540

/-- `record[-A353460(n+3)]` -/
def P13724438733345028827.Spec : Prop :=
  ∀ n, P13724438733345028827.a n = A377540 (n + 1)

end A377540

/-! ## A377540.P9322180743082460630

`filter[A038459(n+1), A161996(#)]`
-/

namespace A377540.P9322180743082460630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038459 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A161996 (f1 j).toNat = 1) n)

end

end A377540.P9322180743082460630

namespace A377540

/-- `filter[A038459(n+1), A161996(#)]` -/
def P9322180743082460630.Spec : Prop :=
  ∀ n, P9322180743082460630.a n = A377540 (n + 1)

end A377540

/-! ## A377540.P1129145383095748372

`A002264(A104280(n+1))`
-/

namespace A377540.P1129145383095748372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A104280 (n + 1)).toNat

end

end A377540.P1129145383095748372

namespace A377540

/-- `A002264(A104280(n+1))` -/
def P1129145383095748372.Spec : Prop :=
  ∀ n, P1129145383095748372.a n = A377540 (n + 1)

end A377540

/-! ## A377540.P12249676790747044118

`A151842(A104279(n+1))`
-/

namespace A377540.P12249676790747044118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151842 (A104279 (n + 1)).toNat

end

end A377540.P12249676790747044118

namespace A377540

/-- `A151842(A104279(n+1))` -/
def P12249676790747044118.Spec : Prop :=
  ∀ n, P12249676790747044118.a n = A377540 (n + 1)

end A377540

/-! ## A377540.P3621537150297211246

`record[A290982(p?[2*n+1])]`
-/

namespace A377540.P3621537150297211246
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290982 (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A377540.P3621537150297211246

namespace A377540

/-- `record[A290982(p?[2*n+1])]` -/
def P3621537150297211246.Spec : Prop :=
  ∀ n, P3621537150297211246.a n = A377540 (n + 1)

end A377540

/-! ## A377540.P8060919710779309920

`A008615(A049591(n+1))`
-/

namespace A377540.P8060919710779309920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (A049591 (n + 1)).toNat

end

end A377540.P8060919710779309920

namespace A377540

/-- `A008615(A049591(n+1))` -/
def P8060919710779309920.Spec : Prop :=
  ∀ n, P8060919710779309920.a n = A377540 (n + 1)

end A377540

/-! ## A377540.P7935365552914170298

`A008615(A107987(n+1))`
-/

namespace A377540.P7935365552914170298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (A107987 (n + 1)).toNat

end

end A377540.P7935365552914170298

namespace A377540

/-- `A008615(A107987(n+1))` -/
def P7935365552914170298.Spec : Prop :=
  ∀ n, P7935365552914170298.a n = A377540 (n + 1)

end A377540

/-! ## A377540.P10396966267908660240

`A152467(A136798(n+1))`
-/

namespace A377540.P10396966267908660240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152467 (A136798 (n + 1)).toNat

end

end A377540.P10396966267908660240

namespace A377540

/-- `A152467(A136798(n+1))` -/
def P10396966267908660240.Spec : Prop :=
  ∀ n, P10396966267908660240.a n = A377540 (n + 1)

end A377540

/-! ## A377540.P15848886416870299686

`A230196(A297925(n+1))`
-/

namespace A377540.P15848886416870299686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230196 (A297925 (n + 1)).toNat

end

end A377540.P15848886416870299686

namespace A377540

/-- `A230196(A297925(n+1))` -/
def P15848886416870299686.Spec : Prop :=
  ∀ n, P15848886416870299686.a n = A377540 (n + 1)

end A377540

/-! ## A377540.P17294266460755087067

`A011960(A025584(n+2))`
-/

namespace A377540.P17294266460755087067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011960 (A025584 (n + 2)).toNat

end

end A377540.P17294266460755087067

namespace A377540

/-- `A011960(A025584(n+2))` -/
def P17294266460755087067.Spec : Prop :=
  ∀ n, P17294266460755087067.a n = A377540 (n + 1)

end A377540

/-! ## A377540.P14833642966887875902

`A008615(A067774(n+2))`
-/

namespace A377540.P14833642966887875902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (A067774 (n + 2)).toNat

end

end A377540.P14833642966887875902

namespace A377540

/-- `A008615(A067774(n+2))` -/
def P14833642966887875902.Spec : Prop :=
  ∀ n, P14833642966887875902.a n = A377540 (n + 1)

end A377540

/-!
# A377541: E.g.f. satisfies A(x) = 1/(1 - x * exp(x*A(x)))^2.

The programs for A377541, there is no canonical definition to state claims against.
-/

/-! ## A377541.P13556082555082606333

`A331027(A050872(n+1))`
-/

namespace A377541.P13556082555082606333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331027 (A050872 (n + 1)).toNat

end

end A377541.P13556082555082606333

/-!
# A377543: a(n) = least prime > a(n - 1)*a(n - 3)/a(n - 2), with a(1) = 2, a(2) = 3, a(3) = 5.

The programs for A377543, there is no canonical definition to state claims against.
-/

/-! ## A377543.P16930404440974756575

`A000040(∑[A160427(3*n+1)%2])`
-/

namespace A377543.P16930404440974756575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A160427 (3 * n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A377543.P16930404440974756575

/-! ## A377543.P3871306385270463184

`A000040(A004525(n+3)%A214415(3*(n+1)))`
-/

namespace A377543.P3871306385270463184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (Int.tmod (A004525 (n + 3)) (A214415 (3 * (n + 1)))).toNat

end

end A377543.P3871306385270463184

/-! ## A377543.P6260812490255191198

`A000040(A004525(n+3))%A001770(2*n+3)`
-/

namespace A377543.P6260812490255191198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (A004525 (n + 3)).toNat) (A001770 (2 * n + 3))

end

end A377543.P6260812490255191198

/-!
# A377544: a(n) = least prime > (5/3)*a(n - 1)*a(n - 3)/a(n - 2), with a(1) = 2, a(2) = 3, a(3) = 5.

The programs for A377544, there is no canonical definition to state claims against.
-/

/-! ## A377544.P17121492068212369627

`eq[A000002(A368100(n+1)), A003415(n)]`
-/

namespace A377544.P17121492068212369627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000002 (A368100 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A377544.P17121492068212369627

/-! ## A377544.P12977969735556447868

`A000040(lt[A000700(n), A248218(n+1)])`
-/

namespace A377544.P12977969735556447868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000700 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248218 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A377544.P12977969735556447868

/-! ## A377544.P4128432296634616241

`A124590(lt[A000700(n), A248218(n+1)])`
-/

namespace A377544.P4128432296634616241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000700 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248218 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124590 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A377544.P4128432296634616241

/-! ## A377544.P6630136980539036552

`A042988(lt[A009947(n), 5])`
-/

namespace A377544.P6630136980539036552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009947 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042988 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A377544.P6630136980539036552

/-! ## A377544.P3735884730997794501

`A042988(lt[A024327(n+1), 2])`
-/

namespace A377544.P3735884730997794501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024327 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042988 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A377544.P3735884730997794501

/-!
# A377545: E.g.f. satisfies A(x) = 1/(1 - x * exp(x*A(x)))^3.

The programs for A377545, there is no canonical definition to state claims against.
-/

/-! ## A377545.P8927698744014020090

`A046100(∑[A209937(n+1)])`
-/

namespace A377545.P8927698744014020090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209937 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046100 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A377545.P8927698744014020090

/-!
# A377546: Expansion of e.g.f. (1/x) * Series_Reversion( x*(1 - x*exp(x))^2 ).

The programs for A377546, there is no canonical definition to state claims against.
-/

/-! ## A377546.P14211572193995817801

`or(A084947(n), A362837(A192474(n+1)))`
-/

namespace A377546.P14211572193995817801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A084947 n) (A362837 (A192474 (n + 1)).toNat)

end

end A377546.P14211572193995817801

/-!
# A377550: E.g.f. satisfies A(x) = 1 + x*A(x)*exp(x*A(x)^4).

The programs for A377550, there is no canonical definition to state claims against.
-/

/-! ## A377550.P10245070788401438898

`A070667(A183240(n))`
-/

namespace A377550.P10245070788401438898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070667 (A183240 n).toNat

end

end A377550.P10245070788401438898

/-!
# A377551: E.g.f. satisfies A(x) = 1/(1 - x * exp(x*A(x)))^4.

The programs for A377551, there is no canonical definition to state claims against.
-/

/-! ## A377551.P2303841622938911736

`A054076(A132186(n))*A347450(n+1)`
-/

namespace A377551.P2303841622938911736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054076 (A132186 n).toNat * A347450 (n + 1)

end

end A377551.P2303841622938911736

/-!
# A377552: E.g.f. satisfies A(x) = 1/(1 - x * exp(x*A(x)^2))^2.

The programs for A377552, there is no canonical definition to state claims against.
-/

/-! ## A377552.P3278110760591710360

`A106252(A213110(n))+n`
-/

namespace A377552.P3278110760591710360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106252 (A213110 n).toNat + (n : ℤ)

end

end A377552.P3278110760591710360

/-!
# A377553: Expansion of e.g.f. (1/x) * Series_Reversion( x/(1 + x*exp(x))^2 ).

The programs for A377553, the canonical program `A377553.P15723654490220082521` is in `Seq.B000.C047`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A377553 has offset 0).

The definition of A377553 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A377553.P15723654490220082521

`n!/(n+1)*∑{#}[n, #^(n-#)*C(2*n+2, #)/(n-#)!]`

The canonical program, it is in `Seq.B000.C047`.
-/

namespace A377553

/-- `n!/(n+1)*∑{#}[n, #^(n-#)*C(2*n+2, #)/(n-#)!]` -/
def P15723654490220082521.Spec : Prop :=
  ∀ n, P15723654490220082521.a n = (A377553 n : ℚ)

end A377553

/-!
# A377554: Expansion of e.g.f. (1/x) * Series_Reversion( x/(1 + x*exp(x))^3 ).

The programs for A377554, the canonical program `A377554.P9109042365597171914` is in `Seq.B000.C047`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A377554 has offset 0).

The definition of A377554 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A377554.P9109042365597171914

`n!/(n+1)*∑{#}[n, #^(n-#)*C(3*n+3, #)/(n-#)!]`

The canonical program, it is in `Seq.B000.C047`.
-/

namespace A377554

/-- `n!/(n+1)*∑{#}[n, #^(n-#)*C(3*n+3, #)/(n-#)!]` -/
def P9109042365597171914.Spec : Prop :=
  ∀ n, P9109042365597171914.a n = (A377554 n : ℚ)

end A377554

/-!
# A377555: E.g.f.: exp(Sum_{n>=1} A038500(n) * x^n).

The programs for A377555, there is no canonical definition to state claims against.
-/

/-! ## A377555.P17234164181206986038

`A373880(A002110(n))+A098367(n)`
-/

namespace A377555.P17234164181206986038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373880 (A002110 n).toNat + A098367 n

end

end A377555.P17234164181206986038

/-!
# A377556: E.g.f.: exp(Sum_{n>=1} A006519(n) * x^n).

The programs for A377556, there is no canonical definition to state claims against.
-/

/-! ## A377556.P1352638645474070373

`A077171(a(n-1))` with `a(0)=1, a(1)=1, a(2)=5`
-/

namespace A377556.P1352638645474070373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 5] fun n a =>
  A077171 (a (n - 1)).toNat

end

end A377556.P1352638645474070373

/-!
# A377561: Numbers k such that 24k - 1 and 24k + 1 are a pair of twin primes in A115591.

The programs for A377561, there is no canonical definition to state claims against.
-/

/-! ## A377561.P9813086052445949313

`(A367318(n+1)+1)/24`
-/

namespace A377561.P9813086052445949313
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A367318 (n + 1) + 1 : ℚ) / 24

end

end A377561.P9813086052445949313

/-! ## A377561.P12842162771946530672

`A194698(A367318(n+1))`
-/

namespace A377561.P12842162771946530672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194698 (A367318 (n + 1)).toNat

end

end A377561.P12842162771946530672

/-!
# A377562: Numbers that have twice as many infinitary divisors as noninfinitary divisors.

The programs for A377562, the canonical program `A377562.P10117225115385376914` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A377562 has offset 1).

The definition of A377562 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A377562.P10117225115385376914

`eq[2, A159918(A000005(n+1))]+1`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A377562

/-- `eq[2, A159918(A000005(n+1))]+1` -/
def P10117225115385376914.Spec : Prop :=
  ∀ n, (P10117225115385376914.a n : ℤ) = A377562 (n + 1)

theorem P10117225115385376914.correct : P10117225115385376914.Spec := by
  intro n
  simp only [A377562, Nat.add_sub_cancel]

end A377562

/-! ## A377562.P10654001999081219245

`eq[3, A212181(n+1)]+1`
-/

namespace A377562.P10654001999081219245
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212181 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A377562.P10654001999081219245

namespace A377562

/-- `eq[3, A212181(n+1)]+1` -/
def P10654001999081219245.Spec : Prop :=
  ∀ n, (P10654001999081219245.a n : ℤ) = A377562 (n + 1)

end A377562

/-! ## A377562.P13923338980497227221

`eq[4, A193349(n+1)]+1`
-/

namespace A377562.P13923338980497227221
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193349 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A377562.P13923338980497227221

namespace A377562

/-- `eq[4, A193349(n+1)]+1` -/
def P13923338980497227221.Spec : Prop :=
  ∀ n, (P13923338980497227221.a n : ℤ) = A377562 (n + 1)

end A377562

/-! ## A377562.P14643368862566511173

`eq[1, A025480(A032741(n))]`
-/

namespace A377562.P14643368862566511173
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A032741 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A377562.P14643368862566511173

namespace A377562

/-- `eq[1, A025480(A032741(n))]` -/
def P14643368862566511173.Spec : Prop :=
  ∀ n, (P14643368862566511173.a n : ℤ) = A377562 (n + 1)

end A377562

/-! ## A377562.P12393005042894578286

`eq[2, A250470(A145154(n))]`
-/

namespace A377562.P12393005042894578286
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250470 (A145154 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A377562.P12393005042894578286

namespace A377562

/-- `eq[2, A250470(A145154(n))]` -/
def P12393005042894578286.Spec : Prop :=
  ∀ n, (P12393005042894578286.a n : ℤ) = A377562 (n + 1)

end A377562

/-! ## A377562.P7834469556845159583

`eq[2, A000120(A145154(n)²)]`
-/

namespace A377562.P7834469556845159583
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A145154 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A377562.P7834469556845159583

namespace A377562

/-- `eq[2, A000120(A145154(n)²)]` -/
def P7834469556845159583.Spec : Prop :=
  ∀ n, (P7834469556845159583.a n : ℤ) = A377562 (n + 1)

end A377562

/-! ## A377562.P13809249886602928938

`lt[A270388(A046643(n+1)+1), 1]+1`
-/

namespace A377562.P13809249886602928938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270388 (A046643 (n + 1) + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A377562.P13809249886602928938

namespace A377562

/-- `lt[A270388(A046643(n+1)+1), 1]+1` -/
def P13809249886602928938.Spec : Prop :=
  ∀ n, (P13809249886602928938.a n : ℤ) = A377562 (n + 1)

end A377562

/-!
# A377563: Numbers that have fewer infinitary divisors than noninfinitary divisors.

The programs for A377563, the canonical program `A377563.P16938085652731499524` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A377563 has offset 1).

The definition of A377563 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 718 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A377563.P16938085652731499524

`lt[1, A372332(n+1)]+1`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A377563

/-- `lt[1, A372332(n+1)]+1` -/
def P16938085652731499524.Spec : Prop :=
  ∀ n, (P16938085652731499524.a n : ℤ) = A377563 (n + 1)

theorem P16938085652731499524.correct : P16938085652731499524.Spec := by
  intro n
  simp only [A377563, Nat.add_sub_cancel]

end A377563

/-! ## A377563.P13956316240236999424

`lt[2, A372331(n+1)]+1`
-/

namespace A377563.P13956316240236999424
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372331 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A377563.P13956316240236999424

namespace A377563

/-- `lt[2, A372331(n+1)]+1` -/
def P13956316240236999424.Spec : Prop :=
  ∀ n, (P13956316240236999424.a n : ℤ) = A377563 (n + 1)

end A377563

/-! ## A377563.P4702943757936779481

`lt[2, A342507(A032741(n)+1)]`
-/

namespace A377563.P4702943757936779481
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342507 (A032741 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A377563.P4702943757936779481

namespace A377563

/-- `lt[2, A342507(A032741(n)+1)]` -/
def P4702943757936779481.Spec : Prop :=
  ∀ n, (P4702943757936779481.a n : ℤ) = A377563 (n + 1)

end A377563

/-! ## A377563.P11559363477742409015

`∩[A387180(n+1), A389499(n+1)]`
-/

namespace A377563.P11559363477742409015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387180 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389499 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A377563.P11559363477742409015

namespace A377563

/-- `∩[A387180(n+1), A389499(n+1)]` -/
def P11559363477742409015.Spec : Prop :=
  ∀ n, (P11559363477742409015.a n : ℤ) = A377563 (n + 1)

end A377563

/-! ## A377563.P15550062915219896294

`∩[A377316(n+1), A389499(n+1)]`
-/

namespace A377563.P15550062915219896294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377316 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389499 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A377563.P15550062915219896294

namespace A377563

/-- `∩[A377316(n+1), A389499(n+1)]` -/
def P15550062915219896294.Spec : Prop :=
  ∀ n, (P15550062915219896294.a n : ℤ) = A377563 (n + 1)

end A377563

/-!
# A377565: a(n) is the least multiple of n with more decimal digits than n.

The programs for A377565, the canonical program `A377565.P6887549586258778470` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A377565 has offset 1).

The definition of A377565 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A377565.P6887549586258778470

`(n+1)*A097327(n+1)`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A377565

/-- `(n+1)*A097327(n+1)` -/
def P6887549586258778470.Spec : Prop :=
  ∀ n, P6887549586258778470.a n = A377565 (n + 1)

theorem P6887549586258778470.correct : P6887549586258778470.Spec := by
  intro n
  simp only [A377565, Nat.add_sub_cancel]

end A377565

/-! ## A377565.P6598366915608265280

`A109940(n+1)+1+n`
-/

namespace A377565.P6598366915608265280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109940 (n + 1) + 1 + (n : ℤ)

end

end A377565.P6598366915608265280

namespace A377565

/-- `A109940(n+1)+1+n` -/
def P6598366915608265280.Spec : Prop :=
  ∀ n, P6598366915608265280.a n = A377565 (n + 1)

theorem P6598366915608265280.correct : P6598366915608265280.Spec := by
  intro n
  simp only [A377565, Nat.add_sub_cancel, A377565.P6598366915608265280.a, A377565.P6887549586258778470.a, A097327, A097327.P3677544989114888276.a, A109940, A109940.P11561411005126974692.a, A097326, A097326.P10021405022841991495.a, A055642, A055642.P2478179801723442865.a, A196563, A196563.P12192156625480906411.a, A196564, A196564.P8945567313368503187.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A377565

/-! ## A377565.P1002064013605246096

`(n+1)*(A097326(n+1)+1)`
-/

namespace A377565.P1002064013605246096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A097326 (n + 1) + 1)

end

end A377565.P1002064013605246096

namespace A377565

/-- `(n+1)*(A097326(n+1)+1)` -/
def P1002064013605246096.Spec : Prop :=
  ∀ n, P1002064013605246096.a n = A377565 (n + 1)

end A377565

/-! ## A377565.P1240173456726822908

`ceil(10^(A004216(n+1)+1)/(n+1))*(n+1)`
-/

namespace A377565.P1240173456726822908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(10 : ℚ) ^ (A004216 (n + 1) + 1 : ℤ) / (n + 1 : ℚ)⌉ * (n + 1 : ℤ)

end

end A377565.P1240173456726822908

namespace A377565

/-- `ceil(10^(A004216(n+1)+1)/(n+1))*(n+1)` -/
def P1240173456726822908.Spec : Prop :=
  ∀ n, P1240173456726822908.a n = A377565 (n + 1)

end A377565

/-! ## A377565.P9161813886905873501

`A020725(A109940(n+1)+n)`
-/

namespace A377565.P9161813886905873501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A109940 (n + 1) + (n : ℤ)).toNat

end

end A377565.P9161813886905873501

namespace A377565

/-- `A020725(A109940(n+1)+n)` -/
def P9161813886905873501.Spec : Prop :=
  ∀ n, P9161813886905873501.a n = A377565 (n + 1)

end A377565

/-! ## A377565.P9222625961576815886

`(n+1)*A052038(A020338(n+1))+1+n`
-/

namespace A377565.P9222625961576815886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A052038 (A020338 (n + 1)).toNat + 1 + (n : ℤ)

end

end A377565.P9222625961576815886

namespace A377565

/-- `(n+1)*A052038(A020338(n+1))+1+n` -/
def P9222625961576815886.Spec : Prop :=
  ∀ n, P9222625961576815886.a n = A377565 (n + 1)

end A377565

/-!
# A377569: Number of simple graphs such that each connected component is nonseparable and the number of vertices minus the number of connected components equals n.

The programs for A377569, there is no canonical definition to state claims against.
-/

/-! ## A377569.P17260600011029483756

`A236960(n+1)-A364272(A377572(n))`
-/

namespace A377569.P17260600011029483756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236960 (n + 1) - A364272 (A377572 n).toNat

end

end A377569.P17260600011029483756

/-! ## A377569.P12314336174616223324

`A029931(A051240(n))*A293548(2*n)`
-/

namespace A377569.P12314336174616223324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029931 (A051240 n).toNat * A293548 (2 * n)

end

end A377569.P12314336174616223324

/-! ## A377569.P12187320130042233118

`A365663(A365663(n+2)+A365662(3*n))`
-/

namespace A377569.P12187320130042233118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365663 (A365663 (n + 2) + A365662 (3 * n)).toNat

end

end A377569.P12187320130042233118

/-!
# A377570: a(n) = round((H(n) + exp(H(n))*log(H(n)) + sigma(n))/2).

The programs for A377570, there is no canonical definition to state claims against.
-/

/-! ## A377570.P10460632034545454648

`A110654(A057641(n+1))+A000203(n+1)`
-/

namespace A377570.P10460632034545454648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A057641 (n + 1)).toNat + A000203 (n + 1)

end

end A377570.P10460632034545454648

/-!
# A377573: Cogrowth sequence for the 14-element dihedral group D7 = <S,T | S^7, T^2, (ST)^2>.

The programs for A377573, the canonical program `A377573.P12843555955694303188` is in `Seq.B000.C047`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A377573 has offset 0).

The definition of A377573 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A377573.P12843555955694303188

`ogf((1-x-3x^2+2x^3+x^4)/(1-x-4x^2+3x^3+2x^4))`

The canonical program, it is in `Seq.B000.C047`.
-/

namespace A377573

/-- `ogf((1-x-3x^2+2x^3+x^4)/(1-x-4x^2+3x^3+2x^4))` -/
def P12843555955694303188.Spec : Prop :=
  ∀ n, P12843555955694303188.a n = A377573 n

theorem P12843555955694303188.correct : P12843555955694303188.Spec := by
  intro n
  simp only [A377573]

end A377573

/-! ## A377573.P10716120878224455127

`A094052(abs(1-n))`
-/

namespace A377573.P10716120878224455127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094052 |1 - (n : ℤ)|.toNat

end

end A377573.P10716120878224455127

namespace A377573

/-- `A094052(abs(1-n))` -/
def P10716120878224455127.Spec : Prop :=
  ∀ n, P10716120878224455127.a n = A377573 n

end A377573

/-! ## A377573.P7051518902142996903

`ceil(A094659(n)/2)`
-/

namespace A377573.P7051518902142996903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A094659 n : ℚ) / 2⌉

end

end A377573.P7051518902142996903

namespace A377573

/-- `ceil(A094659(n)/2)` -/
def P7051518902142996903.Spec : Prop :=
  ∀ n, P7051518902142996903.a n = A377573 n

end A377573

/-! ## A377573.P13482938970939705630

`A094659(n)/A036453(n+1)`
-/

namespace A377573.P13482938970939705630
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A094659 n : ℚ) / (A036453 (n + 1) : ℚ)

end

end A377573.P13482938970939705630

namespace A377573

/-- `A094659(n)/A036453(n+1)` -/
def P13482938970939705630.Spec : Prop :=
  ∀ n, P13482938970939705630.a n = (A377573 n : ℚ)

end A377573

/-! ## A377573.P813982753499975070

`A094659(n)/A104435(n+1)`
-/

namespace A377573.P813982753499975070
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A094659 n : ℚ) / (A104435 (n + 1) : ℚ)

end

end A377573.P813982753499975070

namespace A377573

/-- `A094659(n)/A104435(n+1)` -/
def P813982753499975070.Spec : Prop :=
  ∀ n, P813982753499975070.a n = (A377573 n : ℚ)

end A377573

/-! ## A377573.P18132385692339206152

`A094659(n)/A020639(A008574(n))`
-/

namespace A377573.P18132385692339206152
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A094659 n : ℚ) / (A020639 (A008574 n).toNat : ℚ)

end

end A377573.P18132385692339206152

namespace A377573

/-- `A094659(n)/A020639(A008574(n))` -/
def P18132385692339206152.Spec : Prop :=
  ∀ n, P18132385692339206152.a n = (A377573 n : ℚ)

end A377573

/-! ## A377573.P17976310166717588257

`A094659(n)/A020639(A000010(n+1))`
-/

namespace A377573.P17976310166717588257
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A094659 n : ℚ) / (A020639 (A000010 (n + 1)).toNat : ℚ)

end

end A377573.P17976310166717588257

namespace A377573

/-- `A094659(n)/A020639(A000010(n+1))` -/
def P17976310166717588257.Spec : Prop :=
  ∀ n, P17976310166717588257.a n = (A377573 n : ℚ)

end A377573

/-! ## A377573.P5120423265439283505

`A094659(n)/A057467(A057467(n+1))`
-/

namespace A377573.P5120423265439283505
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A094659 n : ℚ) / (A057467 (A057467 (n + 1)).toNat : ℚ)

end

end A377573.P5120423265439283505

namespace A377573

/-- `A094659(n)/A057467(A057467(n+1))` -/
def P5120423265439283505.Spec : Prop :=
  ∀ n, P5120423265439283505.a n = (A377573 n : ℚ)

end A377573

/-!
# A377574: E.g.f. satisfies A(x) = (1 + x * exp(x) * A(x))^2.

The programs for A377574, the canonical program `A377574.P13948254939633196890` is in `Seq.B000.C047`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A377574 has offset 0).

The definition of A377574 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A377574.P13948254939633196890

`n!*∑{#}[n, #^(n-#)*C(2*#+2, #)/((#+1)*(n-#)!)]`

The canonical program, it is in `Seq.B000.C047`.
-/

namespace A377574

/-- `n!*∑{#}[n, #^(n-#)*C(2*#+2, #)/((#+1)*(n-#)!)]` -/
def P13948254939633196890.Spec : Prop :=
  ∀ n, P13948254939633196890.a n = (A377574 n : ℚ)

end A377574

/-!
# A377575: E.g.f. satisfies A(x) = (1 + x * exp(x) * A(x))^3.

The programs for A377575, there is no canonical definition to state claims against.
-/

/-! ## A377575.P4457658960203039765

`A209197(n+1)-A046079(A003024(n+1))`
-/

namespace A377575.P4457658960203039765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209197 (n + 1) - A046079 (A003024 (n + 1)).toNat

end

end A377575.P4457658960203039765

/-!
# A377576: E.g.f. satisfies A(x) = (1 + x * exp(x) * A(x))^4.

The programs for A377576, the canonical program `A377576.P11587896979789703645` is in `Seq.B000.C047`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A377576 has offset 0).

The definition of A377576 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A377576.P11587896979789703645

`n!*∑{#}[n, #^(n-#)*C(4*#+4, #)/((#+1)*(n-#)!)]`

The canonical program, it is in `Seq.B000.C047`.
-/

namespace A377576

/-- `n!*∑{#}[n, #^(n-#)*C(4*#+4, #)/((#+1)*(n-#)!)]` -/
def P11587896979789703645.Spec : Prop :=
  ∀ n, P11587896979789703645.a n = (A377576 n : ℚ)

end A377576

/-!
# A377577: E.g.f. satisfies A(x) = (1 + x * exp(x) * A(x)^2)^2.

The programs for A377577, the canonical program `A377577.P5536802686136639501` is in `Seq.B000.C047`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A377577 has offset 0).

The definition of A377577 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A377577.P5536802686136639501

`n!*∑{#}[n, #^(n-#)*C(4*#+2, #)/((2*#+1)*(n-#)!)]`

The canonical program, it is in `Seq.B000.C047`.
-/

namespace A377577

/-- `n!*∑{#}[n, #^(n-#)*C(4*#+2, #)/((2*#+1)*(n-#)!)]` -/
def P5536802686136639501.Spec : Prop :=
  ∀ n, P5536802686136639501.a n = (A377577 n : ℚ)

end A377577

/-!
# A377578: E.g.f. satisfies A(x) = (1 + x * exp(x*A(x)))^3.

The programs for A377578, there is no canonical definition to state claims against.
-/

/-! ## A377578.P8189406666844425989

`A287727(n^(n+1)+1)`
-/

namespace A377578.P8189406666844425989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287727 (n ^ (n + 1) + 1)

end

end A377578.P8189406666844425989

/-!
# A377579: E.g.f. satisfies A(x) = (1 + x * exp(x*A(x)))^4.

The programs for A377579, there is no canonical definition to state claims against.
-/

/-! ## A377579.P2757955989135088983

`A366579(n)+A004526(A047053(n))`
-/

namespace A377579.P2757955989135088983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366579 n + A004526 (A047053 n).toNat

end

end A377579.P2757955989135088983

/-!
# A377580: E.g.f. satisfies A(x) = (1 + x * exp(x*A(x)^2))^2.

The programs for A377580, there is no canonical definition to state claims against.
-/

/-! ## A377580.P16253230290441714550

`A266403(A106182(n²))`
-/

namespace A377580.P16253230290441714550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266403 (A106182 (n ^ 2)).toNat

end

end A377580.P16253230290441714550

/-!
# A377581: E.g.f. satisfies A(x) = 1 + x * exp(x*A(x)^4).

The programs for A377581, there is no canonical definition to state claims against.
-/

/-! ## A377581.P10297528091185621519

`A086460(n^(n+1))`
-/

namespace A377581.P10297528091185621519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086460 (n ^ (n + 1))

end

end A377581.P10297528091185621519

/-!
# A377582: Expansion of e.g.f. (1 + x * exp(x))^3.

The programs for A377582, the canonical program `A377582.P16905933276642354327` is in `Seq.B000.C047`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A377582 has offset 0).

The definition of A377582 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A377582.P16905933276642354327

`n!*∑{#}[n, #^(n-#)*C(3, #)/(n-#)!]`

The canonical program, it is in `Seq.B000.C047`.
-/

namespace A377582

/-- `n!*∑{#}[n, #^(n-#)*C(3, #)/(n-#)!]` -/
def P16905933276642354327.Spec : Prop :=
  ∀ n, P16905933276642354327.a n = (A377582 n : ℚ)

end A377582

/-! ## A377582.P12272583365028101422

`∑[A364443(∑[A003242(3*n)])]`
-/

namespace A377582.P12272583365028101422
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003242 (3 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364443 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A377582.P12272583365028101422

namespace A377582

/-- `∑[A364443(∑[A003242(3*n)])]` -/
def P12272583365028101422.Spec : Prop :=
  ∀ n, P12272583365028101422.a n = A377582 n

end A377582

/-!
# A377583: Expansion of e.g.f. (1 + x * exp(x))^4.

The programs for A377583, the canonical program `A377583.P506616900429348352` is in `Seq.B000.C047`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A377583 has offset 0).

The definition of A377583 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A377583.P506616900429348352

`n!*∑{#}[n, #^(n-#)*C(4, #)/(n-#)!]`

The canonical program, it is in `Seq.B000.C047`.
-/

namespace A377583

/-- `n!*∑{#}[n, #^(n-#)*C(4, #)/(n-#)!]` -/
def P506616900429348352.Spec : Prop :=
  ∀ n, P506616900429348352.a n = (A377583 n : ℚ)

end A377583

/-!
# A377584: E.g.f.: exp(Sum_{k>=1} A326305(k) * x^k/k).

The programs for A377584, there is no canonical definition to state claims against.
-/

/-! ## A377584.P44524905450894635

`A119653(a(n-1))` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A377584.P44524905450894635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  A119653 (a (n - 1)).toNat

end

end A377584.P44524905450894635

/-! ## A377584.P17703711871648916680

`A108954((n+1)^(n-1))`
-/

namespace A377584.P17703711871648916680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108954 (SequenceMachineLib.roundAway ((n + 1 : ℚ) ^ ((n : ℤ) - 1 : ℤ))).toNat

end

end A377584.P17703711871648916680

/-!
# A377585: E.g.f.: exp(Sum_{k>=1} A057660(k) * x^k).

The programs for A377585, there is no canonical definition to state claims against.
-/

/-! ## A377585.P97433833260358514

`A005355(A062886(n))`
-/

namespace A377585.P97433833260358514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005355 (A062886 n).toNat

end

end A377585.P97433833260358514

/-!
# A377590: Numbers k neither squarefree nor prime powers such that there exist no numbers m <= k such that rad(m) | k and Omega(m) > Omega(k), where rad = A007947 and Omega = A001222.

The programs for A377590, there is no canonical definition to state claims against.
-/

/-! ## A377590.P3721552901954173906

`∩[A122145(n+1), A399864(n+1)]`
-/

namespace A377590.P3721552901954173906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399864 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A377590.P3721552901954173906

/-! ## A377590.P14870674676950707008

`∩[A013929(n+1), A399864(n+1)]`
-/

namespace A377590.P14870674676950707008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013929 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399864 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A377590.P14870674676950707008

/-! ## A377590.P7477168416131083043

`filter[A399864(n+1), A355447(#)]`
-/

namespace A377590.P7477168416131083043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399864 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355447 (f1 j).toNat = 1) n)

end

end A377590.P7477168416131083043

/-! ## A377590.P3806460107046638919

`filter[A399864(n+1), A087049(#)]`
-/

namespace A377590.P3806460107046638919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399864 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A087049 (f1 j).toNat = 1) n)

end

end A377590.P3806460107046638919

/-! ## A377590.P7555945161883597697

`filter[A399864(n+1), A345952(#)]`
-/

namespace A377590.P7555945161883597697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399864 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A345952 (f1 j).toNat = 1) n)

end

end A377590.P7555945161883597697

/-! ## A377590.P8558492669023950822

`∩[A344586(n+1), A399864(n+1)]`
-/

namespace A377590.P8558492669023950822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344586 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399864 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A377590.P8558492669023950822

/-! ## A377590.P18362318435434620270

`∩[A284342(n+1), A399864(n+1)]`
-/

namespace A377590.P18362318435434620270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284342 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399864 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A377590.P18362318435434620270

/-! ## A377590.P18231223384306553750

`∩[A069168(n+1), A399864(n+1)]`
-/

namespace A377590.P18231223384306553750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069168 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399864 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A377590.P18231223384306553750

/-! ## A377590.P18003969324960806223

`∩[A359468(n+1), A399864(n+1)]`
-/

namespace A377590.P18003969324960806223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359468 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399864 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A377590.P18003969324960806223

/-! ## A377590.P4309426244412482741

`∩[A126706(n+1), A399864(n+1)]`
-/

namespace A377590.P4309426244412482741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126706 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399864 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A377590.P4309426244412482741

/-! ## A377590.P14847251061824423862

`∩[A049199(n+1), A399864(n+1)]`
-/

namespace A377590.P14847251061824423862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049199 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399864 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A377590.P14847251061824423862

/-! ## A377590.P8722571933122356943

`∩[A080756(n+1), A399864(n+1)]`
-/

namespace A377590.P8722571933122356943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080756 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399864 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A377590.P8722571933122356943

/-! ## A377590.P13655141900646468740

`∩[A162966(n+1), A399864(n+1)]`
-/

namespace A377590.P13655141900646468740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162966 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399864 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A377590.P13655141900646468740

/-! ## A377590.P14509533018634831626

`∩[A244723(n+1), A399864(n+1)]`
-/

namespace A377590.P14509533018634831626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244723 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399864 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A377590.P14509533018634831626

/-! ## A377590.P16781863086925724306

`∩[A255199(n+1), A399864(n+1)]`
-/

namespace A377590.P16781863086925724306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255199 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399864 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A377590.P16781863086925724306

/-! ## A377590.P15140741682275483000

`∩[A363597(n+1), A399864(n+1)]`
-/

namespace A377590.P15140741682275483000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363597 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399864 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A377590.P15140741682275483000

/-! ## A377590.P276416047863616229

`filter[A399864(n+1), A107078(#)]`
-/

namespace A377590.P276416047863616229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399864 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A107078 (f1 j).toNat = 1) n)

end

end A377590.P276416047863616229

/-!
# A377591: Powerful numbers k that are not prime powers such that there exist no numbers m <= k such that rad(m) | k and Omega(m) > Omega(k), where rad = A007947 and Omega = A001222.

The programs for A377591, there is no canonical definition to state claims against.
-/

/-! ## A377591.P9411794625212554890

`∩[A001694(n+1), A377590(n+1)]`
-/

namespace A377591.P9411794625212554890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001694 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377590 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A377591.P9411794625212554890

/-! ## A377591.P10288959831730746163

`∩[A062739(n+1), A377590(n+1)]`
-/

namespace A377591.P10288959831730746163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062739 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377590 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A377591.P10288959831730746163

/-! ## A377591.P2011619028142965333

`∩[A192636(n+1), A377590(n+1)]`
-/

namespace A377591.P2011619028142965333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192636 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377590 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A377591.P2011619028142965333

/-! ## A377591.P4056306873990405043

`∩[A286708(n+1), A377590(n+1)]`
-/

namespace A377591.P4056306873990405043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286708 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377590 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A377591.P4056306873990405043

/-! ## A377591.P6604977136763669483

`∩[A335851(n+1), A377590(n+1)]`
-/

namespace A377591.P6604977136763669483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335851 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377590 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A377591.P6604977136763669483

/-! ## A377591.P6955227059518814328

`∩[A363217(n+1), A377590(n+1)]`
-/

namespace A377591.P6955227059518814328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363217 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377590 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A377591.P6955227059518814328

/-! ## A377591.P6145350251319847639

`∩[A369417(n+1), A377590(n+1)]`
-/

namespace A377591.P6145350251319847639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369417 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377590 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A377591.P6145350251319847639

/-! ## A377591.P12596071931996999846

`∩[A369636(n+1), A377590(n+1)]`
-/

namespace A377591.P12596071931996999846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369636 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377590 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A377591.P12596071931996999846

/-! ## A377591.P2552628818396601464

`∩[A377590(n+1), A387420(n+1)]`
-/

namespace A377591.P2552628818396601464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377590 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387420 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A377591.P2552628818396601464

/-!
# A377595: E.g.f. satisfies A(x) = exp( x * A(x) / (1-x) ) / (1-x).

The programs for A377595, the canonical program `A377595.P14827278755057377660` is in `Seq.B000.C047`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A377595 has offset 0).

The definition of A377595 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A377595.P14827278755057377660

`n!*∑{#}[n, (#+1)^(#-1)*C(n+#, n-#)/#!]`

The canonical program, it is in `Seq.B000.C047`.
-/

namespace A377595

/-- `n!*∑{#}[n, (#+1)^(#-1)*C(n+#, n-#)/#!]` -/
def P14827278755057377660.Spec : Prop :=
  ∀ n, P14827278755057377660.a n = (A377595 n : ℚ)

end A377595

/-!
# A377596: a(n) = (a(n-1) + a(n-2))^5 for n>=2 where a(0) = 0, a(1) = 1.

The programs for A377596, the canonical program `A377596.P6032089116386094869` is in `Seq.B001.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A377596 has offset 0).

The definition of A377596 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A377596.P6032089116386094869

`A112980(n)^5`

The canonical program, it is in `Seq.B001.C013`.
-/

namespace A377596

/-- `A112980(n)^5` -/
def P6032089116386094869.Spec : Prop :=
  ∀ n, P6032089116386094869.a n = A377596 n

theorem P6032089116386094869.correct : P6032089116386094869.Spec := by
  intro n
  simp only [A377596]

end A377596

/-!
# A377597: Table read by antidiagonals: T(n,k) = (n*k)!/(n^k*k!), n >=1, k >= 0.

The programs for A377597, the canonical program `A377597.P13162241821770383703` is in `Seq.B000.C047`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A377597 has offset 1).

The definition of A377597 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A377597.P13162241821770383703

`((col(n)+1)*(row(n)-col(n)))!/((col(n)+1)^(row(n)-col(n))*(row(n)-col(n))!)`

The canonical program, it is in `Seq.B000.C047`.
-/

namespace A377597

/-- `((col(n)+1)*(row(n)-col(n)))!/((col(n)+1)^(row(n)-col(n))*(row(n)-col(n))!)` -/
def P13162241821770383703.Spec : Prop :=
  ∀ n, P13162241821770383703.a n = (A377597 (n + 1) : ℚ)

end A377597

/-! ## A377597.P6982867834113584439

`A369997(A057202(n+1)-A121373(n))`
-/

namespace A377597.P6982867834113584439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369997 (A057202 (n + 1) - A121373 n).toNat

end

end A377597.P6982867834113584439

namespace A377597

/-- `A369997(A057202(n+1)-A121373(n))` -/
def P6982867834113584439.Spec : Prop :=
  ∀ n, P6982867834113584439.a n = A377597 (n + 1)

end A377597

/-!
# A377599: E.g.f. satisfies A(x) = exp( x * A(x) / (1-x)^2 ) / (1-x).

The programs for A377599, the canonical program `A377599.P6016843763715936111` is in `Seq.B000.C047`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A377599 has offset 0).

The definition of A377599 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A377599.P6016843763715936111

`n!*∑{#}[n, (#+1)^(#-1)*C(n+2*#, n-#)/#!]`

The canonical program, it is in `Seq.B000.C047`.
-/

namespace A377599

/-- `n!*∑{#}[n, (#+1)^(#-1)*C(n+2*#, n-#)/#!]` -/
def P6016843763715936111.Spec : Prop :=
  ∀ n, P6016843763715936111.a n = (A377599 n : ℚ)

end A377599

/-! ## A377599.P6228246892109458950

`A367789(n)+n*a(n-1)` with `a(0)=1`
-/

namespace A377599.P6228246892109458950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A367789 n + (n : ℤ) * a (n - 1)

end

end A377599.P6228246892109458950

namespace A377599

/-- `A367789(n)+n*a(n-1)` -/
def P6228246892109458950.Spec : Prop :=
  ∀ n, P6228246892109458950.a n = A377599 n

end A377599

