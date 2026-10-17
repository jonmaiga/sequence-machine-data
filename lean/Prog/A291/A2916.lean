import SequenceMachineLib
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
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B009.C000
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
# A291601: Composite integers k such that 2^d == 2^(k/d) (mod k) for all d|k.

The programs for A291601, there is no canonical definition to state claims against.
-/

/-! ## A291601.P13162375099364849468

`∪[A050217(n+1), A291602(n+1)]`
-/

namespace A291601.P13162375099364849468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050217 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291602 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A291601.P13162375099364849468

/-! ## A291601.P7606314171691037949

`A028310(∪[A050217(n+1), A291612(n+1)])`
-/

namespace A291601.P7606314171691037949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050217 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291612 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A291601.P7606314171691037949

/-! ## A291601.P4774699966852910243

`A028310(∪[A050217(n+1), A291616(n+1)])`
-/

namespace A291601.P4774699966852910243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050217 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291616 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A291601.P4774699966852910243

/-!
# A291605: Numbers k such that 5*10^k + 41 is prime.

The programs for A291605, there is no canonical definition to state claims against.
-/

/-! ## A291605.P5315114794100567255

`A002487(A104498(n+1))+(n+1)/∏{p}[n+1, (n+1)/#]`
-/

namespace A291605.P5315114794100567255
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002487 (A104498 (n + 1)).toNat : ℚ) + (n + 1 : ℚ) / (∏ p ∈ Nat.primeFactors (f1 n), (n + 1 : ℚ) / (p : ℚ))

end

end A291605.P5315114794100567255

/-!
# A291608: Numbers k such that 56*10^k - 3 is prime.

The programs for A291608, there is no canonical definition to state claims against.
-/

/-! ## A291608.P15596310970876011998

`record[A316432(a(n-1)+n-1)]` with `a(0)=0, a(1)=0, a(2)=0, a(3)=1, a(4)=3, a(5)=6, a(6)=10`
-/

namespace A291608.P15596310970876011998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 0, 1, 3, 6, 10] fun n f1 =>
  A316432 (f1 (n - 1) + ((n : ℤ) - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A291608.P15596310970876011998

/-! ## A291608.P16011087830063724852

`eq[A051801(A056967(n)), A059268(n)]`
-/

namespace A291608.P16011087830063724852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051801 (A056967 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A291608.P16011087830063724852

/-!
# A291610: Fixed points of permutations A291603 and A291604.

The programs for A291610, there is no canonical definition to state claims against.
-/

/-! ## A291610.P8493585640765346069

`record[gcd(n+1, A291603(n+1))]`
-/

namespace A291610.P8493585640765346069
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A291603 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A291610.P8493585640765346069

/-! ## A291610.P3910523004324047068

`eq[n+1, A291604(n+1)]+1`
-/

namespace A291610.P3910523004324047068
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291604 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A291610.P3910523004324047068

/-! ## A291610.P1841247825667292632

`eq[n, A291603(A028310(n))]`
-/

namespace A291610.P1841247825667292632
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291603 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A291610.P1841247825667292632

/-! ## A291610.P7379061381718553672

`record[gcd(A000027(n+1), A291604(n+1))]`
-/

namespace A291610.P7379061381718553672
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000027 (n + 1)) (A291604 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A291610.P7379061381718553672

/-! ## A291610.P12999616073667379630

`eq[A000027(n+1), A291603(n+1)]+1`
-/

namespace A291610.P12999616073667379630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291603 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A291610.P12999616073667379630

/-!
# A291612: Carmichael numbers k that satisfy 2^d == 2^(k/d) (mod k) for all d|k and are not Super-Poulet numbers (A050217).

The programs for A291612, there is no canonical definition to state claims against.
-/

/-! ## A291612.P10068934767260968358

`∩[A291602(n+1), A291616(n+1)]`
-/

namespace A291612.P10068934767260968358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291602 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291616 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A291612.P10068934767260968358

/-! ## A291612.P1903830856935101814

`record[A291616(A292127(2*n+1))]`
-/

namespace A291612.P1903830856935101814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291616 (A292127 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A291612.P1903830856935101814

/-! ## A291612.P6631489041723521699

`A291616((n+2)^A123895(n))`
-/

namespace A291612.P6631489041723521699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291616 (SequenceMachineLib.roundAway ((n + 2 : ℚ) ^ (A123895 n : ℤ))).toNat

end

end A291612.P6631489041723521699

/-!
# A291613: G.f. satisfies: A(x - A(x) + A(x)^2) = x^3.

The programs for A291613, there is no canonical definition to state claims against.
-/

/-! ## A291613.P13372697290890590934

`A226190(A373455(n+1))`
-/

namespace A291613.P13372697290890590934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226190 (A373455 (n + 1)).toNat

end

end A291613.P13372697290890590934

/-! ## A291613.P11202806277649715001

`A000006(xor(3, A290280(n)))`
-/

namespace A291613.P11202806277649715001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000006 (Int.xor 3 (A290280 n)).toNat

end

end A291613.P11202806277649715001

/-! ## A291613.P7060177002859644793

`A087069(floor(sqrt(A231494(n))))`
-/

namespace A291613.P7060177002859644793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087069 (Int.sqrt (A231494 n)).toNat

end

end A291613.P7060177002859644793

/-! ## A291613.P7668036538342295472

`A245898(n+1)-A049472(and(n, -2))`
-/

namespace A291613.P7668036538342295472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245898 (n + 1) - A049472 (Int.land (n : ℤ) (-2)).toNat

end

end A291613.P7668036538342295472

/-!
# A291615: Number of primes p < prime(n) such that p is a primitive root modulo prime(n) and also a primitive root modulo prime(p).

The programs for A291615, there is no canonical definition to state claims against.
-/

/-! ## A291615.P16463237434530860149

`A037898(A166119(n+1)+A037888(n+1))`
-/

namespace A291615.P16463237434530860149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037898 (A166119 (n + 1) + A037888 (n + 1)).toNat

end

end A291615.P16463237434530860149

/-! ## A291615.P6813717151823021342

`A037898(A242345(n+1)+A166119(n+1))`
-/

namespace A291615.P6813717151823021342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037898 (A242345 (n + 1) + A166119 (n + 1)).toNat

end

end A291615.P6813717151823021342

/-! ## A291615.P3635209134753769073

`A001221(∑{d}[A005891(n), A076271(#)])`
-/

namespace A291615.P3635209134753769073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005891 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (∑ d ∈ Nat.divisors (f1 n).natAbs, A076271 d).toNat

end

end A291615.P3635209134753769073

/-! ## A291615.P10505204873653110635

`∑{e}[floor(A270995(2*n+1)/A194446(n+1)), #]`
-/

namespace A291615.P10505204873653110635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A270995 (2 * n + 1) : ℚ) / (A194446 (n + 1) : ℚ)⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A291615.P10505204873653110635

/-! ## A291615.P10000313477456844843

`A325759(A151702(A006504(n+1)))`
-/

namespace A291615.P10000313477456844843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325759 (A151702 (A006504 (n + 1)).toNat).toNat

end

end A291615.P10000313477456844843

/-!
# A291616: Carmichael numbers k such that 2^d == 2^(k/d) (mod k) for all d|k.

The programs for A291616, there is no canonical definition to state claims against.
-/

/-! ## A291616.P18339055839309640766

`∩[A002997(n+1), A291601(n+1)]`
-/

namespace A291616.P18339055839309640766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002997 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291601 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A291616.P18339055839309640766

/-!
# A291618: Number x = concat(MSD(x),b) such that MSD(x)*b = d(x), where MSD(x) is the Most Significant Digit of x and d(x) is the number of divisors of x.

The programs for A291618, there is no canonical definition to state claims against.
-/

/-! ## A291618.P12932981031936257317

`eq[A000010(A064553(n+1)), A035930(n)]`
-/

namespace A291618.P12932981031936257317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A064553 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035930 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A291618.P12932981031936257317

/-!
# A291620: Branch term s_n(b), b > 1 of equivalence classes of prime sequences {s_n(k)} for k > 0 derived by records of first differences of Rowland-like recurrences with increasing even start values >= 4.

The programs for A291620, there is no canonical definition to state claims against.
-/

/-! ## A291620.P15138247713853601447

`A094898(A210842(n+2))`
-/

namespace A291620.P15138247713853601447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094898 (A210842 (n + 2)).toNat

end

end A291620.P15138247713853601447

/-! ## A291620.P7469229763958701706

`A094898(Δ[A046939(n+1)])`
-/

namespace A291620.P7469229763958701706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046939 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094898 (f1 (n + 1) - f1 n).toNat

end

end A291620.P7469229763958701706

/-! ## A291620.P11546608953226392162

`A135090((A007895(n)^n)²)`
-/

namespace A291620.P11546608953226392162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135090 ((A007895 n ^ n) ^ 2).toNat

end

end A291620.P11546608953226392162

/-!
# A291621: Numbers ending with a vowel in Danish.

The programs for A291621, there is no canonical definition to state claims against.
-/

/-! ## A291621.P16933070909232329848

`comp[19-A319723(n)]`
-/

namespace A291621.P16933070909232329848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  19 - A319723 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A291621.P16933070909232329848

/-! ## A291621.P674004172254134509

`eq[0, A085246(A085290(2*n+5))]`
-/

namespace A291621.P674004172254134509
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085246 (A085290 (2 * n + 5)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A291621.P674004172254134509

/-! ## A291621.P3868952702060632945

`A156723(A025521(n+1))+n+1`
-/

namespace A291621.P3868952702060632945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156723 (A025521 (n + 1)).toNat + (n + 1 : ℤ)

end

end A291621.P3868952702060632945

/-! ## A291621.P13454463669481623478

`comp[lt[A336402(3*(n+1)), A270421(n+1)]]`
-/

namespace A291621.P13454463669481623478
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336402 (3 * (n + 1))

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270421 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A291621.P13454463669481623478

/-! ## A291621.P8416264710631112303

`∑[A028920(record[A034761(n+1)])]`
-/

namespace A291621.P8416264710631112303
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034761 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028920 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A291621.P8416264710631112303

/-!
# A291622: Number of irredundant sets in the n X n rook complement graph.

The programs for A291622, there is no canonical definition to state claims against.
-/

/-! ## A291622.P16465610782023629734

`A384124(∑[4*(n+1)])`
-/

namespace A291622.P16465610782023629734
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384124 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A291622.P16465610782023629734

/-!
# A291623: Number of maximal irredundant and minimal dominating sets in the n X n rook complement graph.

The programs for A291623, there is no canonical definition to state claims against.
-/

/-! ## A291623.P8114876345050223312

`A384123(∑[4*(n+1)])`
-/

namespace A291623.P8114876345050223312
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384123 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A291623.P8114876345050223312

/-!
# A291625: Numbers k such that 0 is the smallest decimal digit of k^2.

The programs for A291625, the canonical program `A291625.P7967993312240874628` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A291625 has offset 1).

The definition of A291625 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5372 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A291625.P7967993312240874628

`eq[0, ∏{digits}[(n+3)², #]]+3`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A291625

/-- `eq[0, ∏{digits}[(n+3)², #]]+3` -/
def P7967993312240874628.Spec : Prop :=
  ∀ n, (P7967993312240874628.a n : ℤ) = A291625 (n + 1)

theorem P7967993312240874628.correct : P7967993312240874628.Spec := by
  intro n
  simp only [A291625, Nat.add_sub_cancel]

end A291625

/-! ## A291625.P13657707325288318543

`lt[∏{digits}[(n+3)², #], 1]+3`
-/

namespace A291625.P13657707325288318543
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 3) ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x).prod

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n + 3

end

end A291625.P13657707325288318543

namespace A291625

/-- `lt[∏{digits}[(n+3)², #], 1]+3` -/
def P13657707325288318543.Spec : Prop :=
  ∀ n, (P13657707325288318543.a n : ℤ) = A291625 (n + 1)

end A291625

/-! ## A291625.P13817643990624179997

`lt[∏{digits}[n², 2*#], n]`
-/

namespace A291625.P13817643990624179997
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => 2 * x).prod

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A291625.P13817643990624179997

namespace A291625

/-- `lt[∏{digits}[n², 2*#], n]` -/
def P13817643990624179997.Spec : Prop :=
  ∀ n, (P13817643990624179997.a n : ℤ) = A291625 (n + 1)

end A291625

/-! ## A291625.P3616494250706133785

`lt[∏{digits}[n², #]^4, n]`
-/

namespace A291625.P3616494250706133785
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x).prod ^ 4

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A291625.P3616494250706133785

namespace A291625

/-- `lt[∏{digits}[n², #]^4, n]` -/
def P3616494250706133785.Spec : Prop :=
  ∀ n, (P3616494250706133785.a n : ℤ) = A291625 (n + 1)

end A291625

/-! ## A291625.P3969319230228086444

`lt[∏{digits}[n², #²]², n]`
-/

namespace A291625.P3969319230228086444
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x ^ 2).prod ^ 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A291625.P3969319230228086444

namespace A291625

/-- `lt[∏{digits}[n², #²]², n]` -/
def P3969319230228086444.Spec : Prop :=
  ∀ n, (P3969319230228086444.a n : ℤ) = A291625 (n + 1)

end A291625

/-! ## A291625.P6713422890643026214

`lt[A053667(n), atan(n)]`
-/

namespace A291625.P6713422890643026214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053667 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A291625.P6713422890643026214

namespace A291625

/-- `lt[A053667(n), atan(n)]` -/
def P6713422890643026214.Spec : Prop :=
  ∀ n, (P6713422890643026214.a n : ℤ) = A291625 (n + 1)

end A291625

/-! ## A291625.P11235626740551197710

`lt[acot(n), A086008(n)]`
-/

namespace A291625.P11235626740551197710
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (n : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086008 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A291625.P11235626740551197710

namespace A291625

/-- `lt[acot(n), A086008(n)]` -/
def P11235626740551197710.Spec : Prop :=
  ∀ n, (P11235626740551197710.a n : ℤ) = A291625 (n + 1)

end A291625

/-! ## A291625.P3801209599593490783

`eq[∏{digits}[n², #], A000007(n)]`
-/

namespace A291625.P3801209599593490783
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x).prod

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A291625.P3801209599593490783

namespace A291625

/-- `eq[∏{digits}[n², #], A000007(n)]` -/
def P3801209599593490783.Spec : Prop :=
  ∀ n, (P3801209599593490783.a n : ℤ) = A291625 (n + 1)

end A291625

/-! ## A291625.P8296379465669518621

`eq[∏{digits}[n², #], A000038(n)]`
-/

namespace A291625.P8296379465669518621
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x).prod

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A291625.P8296379465669518621

namespace A291625

/-- `eq[∏{digits}[n², #], A000038(n)]` -/
def P8296379465669518621.Spec : Prop :=
  ∀ n, (P8296379465669518621.a n : ℤ) = A291625 (n + 1)

end A291625

/-! ## A291625.P3750621917606508410

`lt[A053667(n+1), 1]+1`
-/

namespace A291625.P3750621917606508410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053667 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A291625.P3750621917606508410

namespace A291625

/-- `lt[A053667(n+1), 1]+1` -/
def P3750621917606508410.Spec : Prop :=
  ∀ n, (P3750621917606508410.a n : ℤ) = A291625 (n + 1)

end A291625

/-! ## A291625.P13350108007958741806

`eq[A000007(n), A053667(n)]`
-/

namespace A291625.P13350108007958741806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053667 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A291625.P13350108007958741806

namespace A291625

/-- `eq[A000007(n), A053667(n)]` -/
def P13350108007958741806.Spec : Prop :=
  ∀ n, (P13350108007958741806.a n : ℤ) = A291625 (n + 1)

end A291625

/-! ## A291625.P1515282016091846549

`eq[A000038(n), A053667(n)]`
-/

namespace A291625.P1515282016091846549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053667 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A291625.P1515282016091846549

namespace A291625

/-- `eq[A000038(n), A053667(n)]` -/
def P1515282016091846549.Spec : Prop :=
  ∀ n, (P1515282016091846549.a n : ℤ) = A291625 (n + 1)

end A291625

/-! ## A291625.P58038998407398007

`eq[A045534(n), A053667(n)]`
-/

namespace A291625.P58038998407398007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045534 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053667 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A291625.P58038998407398007

namespace A291625

/-- `eq[A045534(n), A053667(n)]` -/
def P58038998407398007.Spec : Prop :=
  ∀ n, (P58038998407398007.a n : ℤ) = A291625 (n + 1)

end A291625

/-! ## A291625.P15469288346418665439

`eq[A053667(n), A066156(n)]`
-/

namespace A291625.P15469288346418665439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053667 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066156 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A291625.P15469288346418665439

namespace A291625

/-- `eq[A053667(n), A066156(n)]` -/
def P15469288346418665439.Spec : Prop :=
  ∀ n, (P15469288346418665439.a n : ℤ) = A291625 (n + 1)

end A291625

/-! ## A291625.P7426665236327124351

`eq[A053667(n), A105348(n)]`
-/

namespace A291625.P7426665236327124351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053667 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105348 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A291625.P7426665236327124351

namespace A291625

/-- `eq[A053667(n), A105348(n)]` -/
def P7426665236327124351.Spec : Prop :=
  ∀ n, (P7426665236327124351.a n : ℤ) = A291625 (n + 1)

end A291625

/-! ## A291625.P5690537864530384136

`eq[A053667(n), A130706(n)]`
-/

namespace A291625.P5690537864530384136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053667 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130706 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A291625.P5690537864530384136

namespace A291625

/-- `eq[A053667(n), A130706(n)]` -/
def P5690537864530384136.Spec : Prop :=
  ∀ n, (P5690537864530384136.a n : ℤ) = A291625 (n + 1)

end A291625

/-! ## A291625.P690594139134917260

`eq[A053667(n), A130713(n)]`
-/

namespace A291625.P690594139134917260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053667 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130713 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A291625.P690594139134917260

namespace A291625

/-- `eq[A053667(n), A130713(n)]` -/
def P690594139134917260.Spec : Prop :=
  ∀ n, (P690594139134917260.a n : ℤ) = A291625 (n + 1)

end A291625

/-! ## A291625.P1052810677906497631

`eq[A053667(n), A143645(n)]`
-/

namespace A291625.P1052810677906497631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053667 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143645 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A291625.P1052810677906497631

namespace A291625

/-- `eq[A053667(n), A143645(n)]` -/
def P1052810677906497631.Spec : Prop :=
  ∀ n, (P1052810677906497631.a n : ℤ) = A291625 (n + 1)

end A291625

/-! ## A291625.P1588514297113586692

`eq[A053667(n), A143721(n)]`
-/

namespace A291625.P1588514297113586692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053667 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143721 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A291625.P1588514297113586692

namespace A291625

/-- `eq[A053667(n), A143721(n)]` -/
def P1588514297113586692.Spec : Prop :=
  ∀ n, (P1588514297113586692.a n : ℤ) = A291625 (n + 1)

end A291625

/-! ## A291625.P7709708807375091368

`eq[A053667(n), A143722(n)]`
-/

namespace A291625.P7709708807375091368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053667 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143722 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A291625.P7709708807375091368

namespace A291625

/-- `eq[A053667(n), A143722(n)]` -/
def P7709708807375091368.Spec : Prop :=
  ∀ n, (P7709708807375091368.a n : ℤ) = A291625 (n + 1)

end A291625

/-!
# A291626: Numbers k such that 1 is the smallest decimal digit of k^2.

The programs for A291626, the canonical program `A291626.P17454017761634681857` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A291626 has offset 1).

The definition of A291626 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2974 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A291626.P16445702375959548600

`eq[1, A028908(n)%10]`
-/

namespace A291626.P16445702375959548600
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028908 n) 10

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A291626.P16445702375959548600

namespace A291626

/-- `eq[1, A028908(n)%10]` -/
def P16445702375959548600.Spec : Prop :=
  ∀ n, (P16445702375959548600.a n : ℤ) = A291626 (n + 1)

end A291626

/-! ## A291626.P8173902193875404923

`lt[A086008(n), tanh(A086009(n))]`
-/

namespace A291626.P8173902193875404923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086008 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.tanh (A086009 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A291626.P8173902193875404923

namespace A291626

/-- `lt[A086008(n), tanh(A086009(n))]` -/
def P8173902193875404923.Spec : Prop :=
  ∀ n, (P8173902193875404923.a n : ℤ) = A291626 (n + 1)

end A291626

/-! ## A291626.P17454017761634681857

`lt[1, A053667(n)*A086009(n)+1]`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A291626

/-- `lt[1, A053667(n)*A086009(n)+1]` -/
def P17454017761634681857.Spec : Prop :=
  ∀ n, (P17454017761634681857.a n : ℤ) = A291626 (n + 1)

theorem P17454017761634681857.correct : P17454017761634681857.Spec := by
  intro n
  simp only [A291626, Nat.add_sub_cancel]

end A291626

/-! ## A291626.P3704996383264354463

`lt[A000007(n), A053667(n)*A086009(n)]`
-/

namespace A291626.P3704996383264354463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053667 n * A086009 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A291626.P3704996383264354463

namespace A291626

/-- `lt[A000007(n), A053667(n)*A086009(n)]` -/
def P3704996383264354463.Spec : Prop :=
  ∀ n, (P3704996383264354463.a n : ℤ) = A291626 (n + 1)

end A291626

/-! ## A291626.P8365338574643739233

`lt[A000038(n), A053667(n)*A086009(n)]`
-/

namespace A291626.P8365338574643739233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053667 n * A086009 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A291626.P8365338574643739233

namespace A291626

/-- `lt[A000038(n), A053667(n)*A086009(n)]` -/
def P8365338574643739233.Spec : Prop :=
  ∀ n, (P8365338574643739233.a n : ℤ) = A291626 (n + 1)

end A291626

/-! ## A291626.P11116337714628047655

`lt[A000038(A053667(n)), A086009(n)]`
-/

namespace A291626.P11116337714628047655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (A053667 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086009 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A291626.P11116337714628047655

namespace A291626

/-- `lt[A000038(A053667(n)), A086009(n)]` -/
def P11116337714628047655.Spec : Prop :=
  ∀ n, (P11116337714628047655.a n : ℤ) = A291626 (n + 1)

end A291626

/-!
# A291627: Numbers k such that 2 is the smallest decimal digit of k^2.

The programs for A291627, there is no canonical definition to state claims against.
-/

/-! ## A291627.P3881113074018745062

`eq[2, A028908(n)%5]`
-/

namespace A291627.P3881113074018745062
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028908 n) 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A291627.P3881113074018745062

/-! ## A291627.P2396716361397462741

`eq[2, A054054(n²)]`
-/

namespace A291627.P2396716361397462741
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054054 (n ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A291627.P2396716361397462741

/-! ## A291627.P8943759121549060048

`eq[2, val(A086066(n²), 2)]`
-/

namespace A291627.P8943759121549060048
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A086066 (n ^ 2)).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A291627.P8943759121549060048

/-! ## A291627.P4479881633810086849

`eq[2, val(A348783(n²), 5)]`
-/

namespace A291627.P4479881633810086849
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A348783 (n ^ 2)).toNat 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A291627.P4479881633810086849

/-! ## A291627.P7321532540171637377

`eq[2, A054054(n*(n+2)+1)]+1`
-/

namespace A291627.P7321532540171637377
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054054 (n * (n + 2) + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A291627.P7321532540171637377

/-!
# A291628: Numbers k such that 3 is the smallest decimal digit of k^2.

The programs for A291628, there is no canonical definition to state claims against.
-/

/-! ## A291628.P13264725283477422782

`eq[3, A028908(n)%5]`
-/

namespace A291628.P13264725283477422782
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028908 n) 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A291628.P13264725283477422782

/-!
# A291629: Numbers k such that 4 is the smallest decimal digit of k^2.

The programs for A291629, there is no canonical definition to state claims against.
-/

/-! ## A291629.P1043444083995128424

`eq[4, A028908(n)%10]`
-/

namespace A291629.P1043444083995128424
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028908 n) 10

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A291629.P1043444083995128424

/-! ## A291629.P14543437098644834889

`eq[4, A054054(n²)]`
-/

namespace A291629.P14543437098644834889
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054054 (n ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A291629.P14543437098644834889

/-! ## A291629.P2755593321461236592

`eq[4, val(A348783(n²), 5)]`
-/

namespace A291629.P2755593321461236592
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A348783 (n ^ 2)).toNat 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A291629.P2755593321461236592

/-! ## A291629.P14655949735113859740

`eq[3, val(A086066(n²), 2)-1]`
-/

namespace A291629.P14655949735113859740
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (A086066 (n ^ 2)).toNat 2 : ℤ) - 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A291629.P14655949735113859740

/-! ## A291629.P4733081440822623859

`eq[4, A054054(n*(n+2)+1)]+1`
-/

namespace A291629.P4733081440822623859
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054054 (n * (n + 2) + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A291629.P4733081440822623859

/-!
# A291631: Numbers k such that 6 is the smallest decimal digit of k^2.

The programs for A291631, there is no canonical definition to state claims against.
-/

/-! ## A291631.P15372534107839480216

`A175471(lt[A000032(n+2), A317206(n)])`
-/

namespace A291631.P15372534107839480216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317206 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175471 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A291631.P15372534107839480216

/-!
# A291632: Column 1 of A122832.

The programs for A291632, the canonical program `A291632.P11985089398796829925` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A291632 has offset 0).

The definition of A291632 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 103 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A291632.P4207497508316914746

`Δ[a(n-1)+2*(n-1)*a(n-2)]/2` with `a(0)=1, a(1)=1`
-/

namespace A291632.P4207497508316914746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  f1 (n - 1) + 2 * (((n : ℤ) - 1) * f1 (n - 2))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / 2

end

end A291632.P4207497508316914746

namespace A291632

/-- `Δ[a(n-1)+2*(n-1)*a(n-2)]/2` -/
def P4207497508316914746.Spec : Prop :=
  ∀ n, P4207497508316914746.a n = (A291632 n : ℚ)

end A291632

/-! ## A291632.P9262959591169741565

`Δ[A047974(n)/2]`
-/

namespace A291632.P9262959591169741565
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A047974 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A291632.P9262959591169741565

namespace A291632

/-- `Δ[A047974(n)/2]` -/
def P9262959591169741565.Spec : Prop :=
  ∀ n, P9262959591169741565.a n = (A291632 n : ℚ)

end A291632

/-! ## A291632.P7525544287999559095

`A018191(n)-A047974(n)`
-/

namespace A291632.P7525544287999559095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018191 n - A047974 n

end

end A291632.P7525544287999559095

namespace A291632

/-- `A018191(n)-A047974(n)` -/
def P7525544287999559095.Spec : Prop :=
  ∀ n, P7525544287999559095.a n = A291632 n

end A291632

/-! ## A291632.P11985089398796829925

`n*A122832(A161680(n))`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A291632

/-- `n*A122832(A161680(n))` -/
def P11985089398796829925.Spec : Prop :=
  ∀ n, P11985089398796829925.a n = A291632 n

theorem P11985089398796829925.correct : P11985089398796829925.Spec := by
  intro n
  simp only [A291632]

end A291632

/-! ## A291632.P12624144269296724177

`lcm(n, A122832(A000124(n)))`
-/

namespace A291632.P12624144269296724177
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (A122832 (A000124 n).toNat)

end

end A291632.P12624144269296724177

namespace A291632

/-- `lcm(n, A122832(A000124(n)))` -/
def P12624144269296724177.Spec : Prop :=
  ∀ n, (P12624144269296724177.a n : ℤ) = A291632 n

end A291632

/-! ## A291632.P4080230898298275654

`A047974(n+1)%A018191(n)`
-/

namespace A291632.P4080230898298275654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A047974 (n + 1)) (A018191 n)

end

end A291632.P4080230898298275654

namespace A291632

/-- `A047974(n+1)%A018191(n)` -/
def P4080230898298275654.Spec : Prop :=
  ∀ n, P4080230898298275654.a n = A291632 n

end A291632

/-! ## A291632.P663332661083947669

`n*A122832(A000217(n)-n)`
-/

namespace A291632.P663332661083947669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A122832 (A000217 n - (n : ℤ)).toNat

end

end A291632.P663332661083947669

namespace A291632

/-- `n*A122832(A000217(n)-n)` -/
def P663332661083947669.Spec : Prop :=
  ∀ n, P663332661083947669.a n = A291632 n

end A291632

/-! ## A291632.P8232901259599417246

`Δ[A122832(A000217(n))/2]`
-/

namespace A291632.P8232901259599417246
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A122832 (A000217 n).toNat : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A291632.P8232901259599417246

namespace A291632

/-- `Δ[A122832(A000217(n))/2]` -/
def P8232901259599417246.Spec : Prop :=
  ∀ n, P8232901259599417246.a n = (A291632 n : ℚ)

end A291632

/-! ## A291632.P2032753228551946508

`A018191(n)-A293669(∑[n+2]-1)`
-/

namespace A291632.P2032753228551946508
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018191 n - A293669 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A291632.P2032753228551946508

namespace A291632

/-- `A018191(n)-A293669(∑[n+2]-1)` -/
def P2032753228551946508.Spec : Prop :=
  ∀ n, P2032753228551946508.a n = A291632 n

end A291632

/-! ## A291632.P13788544727886805964

`A018191(n)-or(1, A261764(A133263(n)))`
-/

namespace A291632.P13788544727886805964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018191 n - Int.lor 1 (A261764 (A133263 n).toNat)

end

end A291632.P13788544727886805964

namespace A291632

/-- `A018191(n)-or(1, A261764(A133263(n)))` -/
def P13788544727886805964.Spec : Prop :=
  ∀ n, P13788544727886805964.a n = A291632 n

end A291632

/-!
# A291633: Numbers k such that it is possible to form a palindrome by concatenating all the binary strings from 1 to k.

The programs for A291633, there is no canonical definition to state claims against.
-/

/-! ## A291633.P5002813519385105162

`∩[A032866(n+1), A360320(n+1)]`
-/

namespace A291633.P5002813519385105162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032866 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360320 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A291633.P5002813519385105162

/-!
# A291634: Number of primitive sequences n = b_1 < b_2 < ... < b_t = A006255(n) such that b_1*b_2*...*b_t is a perfect square.

The programs for A291634, there is no canonical definition to state claims against.
-/

/-! ## A291634.P14913133842046842996

`A175772(A255491(n+1)%A006530(n+1))`
-/

namespace A291634.P14913133842046842996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175772 (Int.tmod (A255491 (n + 1)) (A006530 (n + 1))).toNat

end

end A291634.P14913133842046842996

/-!
# A291636: Matula-Goebel numbers of lone-child-avoiding rooted trees.

The programs for A291636, there is no canonical definition to state claims against.
-/

/-! ## A291636.P6451728381746967363

`A000720(A322385(n+1))`
-/

namespace A291636.P6451728381746967363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A322385 (n + 1)).toNat

end

end A291636.P6451728381746967363

/-! ## A291636.P2351957835437863878

`record[A003963(A322386(n+1))]`
-/

namespace A291636.P2351957835437863878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (A322386 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A291636.P2351957835437863878

/-! ## A291636.P2123738103590348964

`A000720(p?[A322386(n+1)])`
-/

namespace A291636.P2123738103590348964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322386 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A291636.P2123738103590348964

/-! ## A291636.P8675529354479273177

`A003963(p?[A322385(n+1)])`
-/

namespace A291636.P8675529354479273177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322385 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A291636.P8675529354479273177

/-! ## A291636.P1274153712373651023

`A003963(p?[A322386(n+1)])`
-/

namespace A291636.P1274153712373651023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322386 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A291636.P1274153712373651023

/-! ## A291636.P5082325716546776985

`A049084(p?[A322386(n+1)])`
-/

namespace A291636.P5082325716546776985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322386 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A291636.P5082325716546776985

/-! ## A291636.P16491980689207250985

`A055396(p?[A322386(n+1)])`
-/

namespace A291636.P16491980689207250985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322386 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A291636.P16491980689207250985

/-! ## A291636.P11002307867674612044

`A056239(p?[A322386(n+1)])`
-/

namespace A291636.P11002307867674612044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322386 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A291636.P11002307867674612044

/-! ## A291636.P15407825094133086990

`A061395(p?[A322386(n+1)])`
-/

namespace A291636.P15407825094133086990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322386 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A291636.P15407825094133086990

/-! ## A291636.P3354834297661330300

`filter[A322386(n+1), A005171(#)]`
-/

namespace A291636.P3354834297661330300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322386 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A291636.P3354834297661330300

/-!
# A291637: Carmichael numbers (A002997) that are super-Poulet numbers (A050217).

The programs for A291637, there is no canonical definition to state claims against.
-/

/-! ## A291637.P4868020808187716392

`∩[A178997(n+1), A291616(n+1)]`
-/

namespace A291637.P4868020808187716392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178997 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291616 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A291637.P4868020808187716392

/-! ## A291637.P8732172334212230876

`∩[A178997(n+1), A328935(n+1)]`
-/

namespace A291637.P8732172334212230876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178997 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328935 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A291637.P8732172334212230876

/-!
# A291639: Numbers k such that 0 is the smallest decimal digit of k^3.

The programs for A291639, the canonical program `A291639.P12290553793458585906` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A291639 has offset 1).

The definition of A291639 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6506 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A291639.P13669855994207224144

`lt[A053668(n)², n]`
-/

namespace A291639.P13669855994207224144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053668 n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A291639.P13669855994207224144

namespace A291639

/-- `lt[A053668(n)², n]` -/
def P13669855994207224144.Spec : Prop :=
  ∀ n, (P13669855994207224144.a n : ℤ) = A291639 (n + 1)

end A291639

/-! ## A291639.P12290553793458585906

`lt[1, n*A269250(n)]`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A291639

/-- `lt[1, n*A269250(n)]` -/
def P12290553793458585906.Spec : Prop :=
  ∀ n, (P12290553793458585906.a n : ℤ) = A291639 (n + 1)

theorem P12290553793458585906.correct : P12290553793458585906.Spec := by
  intro n
  simp only [A291639, Nat.add_sub_cancel]

end A291639

/-! ## A291639.P5154964814902541625

`lt[n*A333206(n), n]`
-/

namespace A291639.P5154964814902541625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A333206 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A291639.P5154964814902541625

namespace A291639

/-- `lt[n*A333206(n), n]` -/
def P5154964814902541625.Spec : Prop :=
  ∀ n, (P5154964814902541625.a n : ℤ) = A291639 (n + 1)

end A291639

/-! ## A291639.P14241329914906186017

`lt[A053668(n+1), 1]+1`
-/

namespace A291639.P14241329914906186017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053668 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A291639.P14241329914906186017

namespace A291639

/-- `lt[A053668(n+1), 1]+1` -/
def P14241329914906186017.Spec : Prop :=
  ∀ n, (P14241329914906186017.a n : ℤ) = A291639 (n + 1)

end A291639

/-! ## A291639.P11073638775696262505

`lt[A333206(n+1), 1]+1`
-/

namespace A291639.P11073638775696262505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333206 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A291639.P11073638775696262505

namespace A291639

/-- `lt[A333206(n+1), 1]+1` -/
def P11073638775696262505.Spec : Prop :=
  ∀ n, (P11073638775696262505.a n : ℤ) = A291639 (n + 1)

end A291639

/-! ## A291639.P9341828726500081342

`eq[A000038(n), A053668(n)]`
-/

namespace A291639.P9341828726500081342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053668 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A291639.P9341828726500081342

namespace A291639

/-- `eq[A000038(n), A053668(n)]` -/
def P9341828726500081342.Spec : Prop :=
  ∀ n, (P9341828726500081342.a n : ℤ) = A291639 (n + 1)

end A291639

/-! ## A291639.P6674156636547333449

`eq[A000038(n), A333206(n)]`
-/

namespace A291639.P6674156636547333449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333206 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A291639.P6674156636547333449

namespace A291639

/-- `eq[A000038(n), A333206(n)]` -/
def P6674156636547333449.Spec : Prop :=
  ∀ n, (P6674156636547333449.a n : ℤ) = A291639 (n + 1)

end A291639

/-! ## A291639.P10521537309354804846

`lt[A000038(n), A269250(n)]`
-/

namespace A291639.P10521537309354804846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269250 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A291639.P10521537309354804846

namespace A291639

/-- `lt[A000038(n), A269250(n)]` -/
def P10521537309354804846.Spec : Prop :=
  ∀ n, (P10521537309354804846.a n : ℤ) = A291639 (n + 1)

end A291639

/-! ## A291639.P1407977268121069189

`eq[1, A086008(a(A269250(n)))]` with `a(0)=2`
-/

namespace A291639.P1407977268121069189
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f2 =>
  A086008 (f2 (A269250 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A291639.P1407977268121069189

namespace A291639

/-- `eq[1, A086008(a(A269250(n)))]` -/
def P1407977268121069189.Spec : Prop :=
  ∀ n, (P1407977268121069189.a n : ℤ) = A291639 (n + 1)

end A291639

/-! ## A291639.P10913263870815950366

`eq[1, A269250(a(A269250(n)))]` with `a(0)=2`
-/

namespace A291639.P10913263870815950366
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f2 =>
  A269250 (f2 (A269250 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A291639.P10913263870815950366

namespace A291639

/-- `eq[1, A269250(a(A269250(n)))]` -/
def P10913263870815950366.Spec : Prop :=
  ∀ n, (P10913263870815950366.a n : ℤ) = A291639 (n + 1)

end A291639

/-! ## A291639.P18143553490965681039

`lt[∏{digits}[n^3, #²], n]`
-/

namespace A291639.P18143553490965681039
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x ^ 2).prod

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A291639.P18143553490965681039

namespace A291639

/-- `lt[∏{digits}[n^3, #²], n]` -/
def P18143553490965681039.Spec : Prop :=
  ∀ n, (P18143553490965681039.a n : ℤ) = A291639 (n + 1)

end A291639

/-! ## A291639.P11420342061657676824

`eq[A000007(n), A053668(n)]`
-/

namespace A291639.P11420342061657676824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053668 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A291639.P11420342061657676824

namespace A291639

/-- `eq[A000007(n), A053668(n)]` -/
def P11420342061657676824.Spec : Prop :=
  ∀ n, (P11420342061657676824.a n : ℤ) = A291639 (n + 1)

end A291639

/-! ## A291639.P15545827989305932250

`eq[A053668(n), A066156(n)]`
-/

namespace A291639.P15545827989305932250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053668 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066156 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A291639.P15545827989305932250

namespace A291639

/-- `eq[A053668(n), A066156(n)]` -/
def P15545827989305932250.Spec : Prop :=
  ∀ n, (P15545827989305932250.a n : ℤ) = A291639 (n + 1)

end A291639

/-! ## A291639.P16462417517058516397

`eq[A053668(n), A130706(n)]`
-/

namespace A291639.P16462417517058516397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053668 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130706 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A291639.P16462417517058516397

namespace A291639

/-- `eq[A053668(n), A130706(n)]` -/
def P16462417517058516397.Spec : Prop :=
  ∀ n, (P16462417517058516397.a n : ℤ) = A291639 (n + 1)

end A291639

/-! ## A291639.P2300765631447703137

`eq[A053668(n), A130713(n)]`
-/

namespace A291639.P2300765631447703137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053668 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130713 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A291639.P2300765631447703137

namespace A291639

/-- `eq[A053668(n), A130713(n)]` -/
def P2300765631447703137.Spec : Prop :=
  ∀ n, (P2300765631447703137.a n : ℤ) = A291639 (n + 1)

end A291639

/-! ## A291639.P10933743684732449572

`eq[A053668(n), A143090(n)]`
-/

namespace A291639.P10933743684732449572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053668 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143090 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A291639.P10933743684732449572

namespace A291639

/-- `eq[A053668(n), A143090(n)]` -/
def P10933743684732449572.Spec : Prop :=
  ∀ n, (P10933743684732449572.a n : ℤ) = A291639 (n + 1)

end A291639

/-! ## A291639.P13132560495425244407

`eq[A053668(n), A143645(n)]`
-/

namespace A291639.P13132560495425244407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053668 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143645 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A291639.P13132560495425244407

namespace A291639

/-- `eq[A053668(n), A143645(n)]` -/
def P13132560495425244407.Spec : Prop :=
  ∀ n, (P13132560495425244407.a n : ℤ) = A291639 (n + 1)

end A291639

/-! ## A291639.P7848470841776966907

`eq[A053668(n), A143721(n)]`
-/

namespace A291639.P7848470841776966907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053668 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143721 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A291639.P7848470841776966907

namespace A291639

/-- `eq[A053668(n), A143721(n)]` -/
def P7848470841776966907.Spec : Prop :=
  ∀ n, (P7848470841776966907.a n : ℤ) = A291639 (n + 1)

end A291639

/-! ## A291639.P14617644448043799566

`eq[A053668(n), A143722(n)]`
-/

namespace A291639.P14617644448043799566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053668 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143722 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A291639.P14617644448043799566

namespace A291639

/-- `eq[A053668(n), A143722(n)]` -/
def P14617644448043799566.Spec : Prop :=
  ∀ n, (P14617644448043799566.a n : ℤ) = A291639 (n + 1)

end A291639

/-! ## A291639.P15230470386638599246

`eq[A053668(n), A143723(n)]`
-/

namespace A291639.P15230470386638599246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053668 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143723 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A291639.P15230470386638599246

namespace A291639

/-- `eq[A053668(n), A143723(n)]` -/
def P15230470386638599246.Spec : Prop :=
  ∀ n, (P15230470386638599246.a n : ℤ) = A291639 (n + 1)

end A291639

/-!
# A291640: Numbers k such that 1 is the smallest decimal digit of k^3.

The programs for A291640, the canonical program `A291640.P2193196825498604768` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A291640 has offset 1).

The definition of A291640 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2682 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A291640.P11472436735498201006

`eq[1, A333206(n)]`
-/

namespace A291640.P11472436735498201006
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333206 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A291640.P11472436735498201006

namespace A291640

/-- `eq[1, A333206(n)]` -/
def P11472436735498201006.Spec : Prop :=
  ∀ n, (P11472436735498201006.a n : ℤ) = A291640 (n + 1)

end A291640

/-! ## A291640.P11892618209812357845

`eq[1, A032554(n)%10]`
-/

namespace A291640.P11892618209812357845
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A032554 n) 10

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A291640.P11892618209812357845

namespace A291640

/-- `eq[1, A032554(n)%10]` -/
def P11892618209812357845.Spec : Prop :=
  ∀ n, (P11892618209812357845.a n : ℤ) = A291640 (n + 1)

end A291640

/-! ## A291640.P2193196825498604768

`lt[A269250(n), tanh(A269241(n))]`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A291640

/-- `lt[A269250(n), tanh(A269241(n))]` -/
def P2193196825498604768.Spec : Prop :=
  ∀ n, (P2193196825498604768.a n : ℤ) = A291640 (n + 1)

theorem P2193196825498604768.correct : P2193196825498604768.Spec := by
  intro n
  simp only [A291640, Nat.add_sub_cancel]

end A291640

/-! ## A291640.P10324178968628029388

`lt[A333206(n), A000038(A269250(n))]`
-/

namespace A291640.P10324178968628029388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333206 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (A269250 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A291640.P10324178968628029388

namespace A291640

/-- `lt[A333206(n), A000038(A269250(n))]` -/
def P10324178968628029388.Spec : Prop :=
  ∀ n, (P10324178968628029388.a n : ℤ) = A291640 (n + 1)

end A291640

/-! ## A291640.P14083674141788087022

`lt[A036529(A269250(n)²), A269241(n)]`
-/

namespace A291640.P14083674141788087022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036529 (A269250 n ^ 2).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269241 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A291640.P14083674141788087022

namespace A291640

/-- `lt[A036529(A269250(n)²), A269241(n)]` -/
def P14083674141788087022.Spec : Prop :=
  ∀ n, (P14083674141788087022.a n : ℤ) = A291640 (n + 1)

end A291640

/-!
# A291641: Numbers k such that 2 is the smallest decimal digit of k^3.

The programs for A291641, the canonical program `A291641.P4805494574019733392` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A291641 has offset 1).

The definition of A291641 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 630 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A291641.P4805494574019733392

`eq[2, A333206(n)]`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A291641

/-- `eq[2, A333206(n)]` -/
def P4805494574019733392.Spec : Prop :=
  ∀ n, (P4805494574019733392.a n : ℤ) = A291641 (n + 1)

theorem P4805494574019733392.correct : P4805494574019733392.Spec := by
  intro n
  simp only [A291641, Nat.add_sub_cancel]

end A291641

/-! ## A291641.P17875784861944530457

`eq[2, A032554(n)%5]`
-/

namespace A291641.P17875784861944530457
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A032554 n) 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A291641.P17875784861944530457

namespace A291641

/-- `eq[2, A032554(n)%5]` -/
def P17875784861944530457.Spec : Prop :=
  ∀ n, (P17875784861944530457.a n : ℤ) = A291641 (n + 1)

end A291641

/-!
# A291642: Numbers k such that 3 is the smallest decimal digit of k^3.

The programs for A291642, the canonical program `A291642.P13038753502478863596` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A291642 has offset 1).

The definition of A291642 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 149 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A291642.P13038753502478863596

`eq[3, A333206(n)]`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A291642

/-- `eq[3, A333206(n)]` -/
def P13038753502478863596.Spec : Prop :=
  ∀ n, (P13038753502478863596.a n : ℤ) = A291642 (n + 1)

theorem P13038753502478863596.correct : P13038753502478863596.Spec := by
  intro n
  simp only [A291642, Nat.add_sub_cancel]

end A291642

/-! ## A291642.P440045508398546300

`eq[3, A032554(n)%10]`
-/

namespace A291642.P440045508398546300
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A032554 n) 10

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A291642.P440045508398546300

namespace A291642

/-- `eq[3, A032554(n)%10]` -/
def P440045508398546300.Spec : Prop :=
  ∀ n, (P440045508398546300.a n : ℤ) = A291642 (n + 1)

end A291642

/-!
# A291643: Numbers k such that 4 is the smallest decimal digit of k^3.

The programs for A291643, there is no canonical definition to state claims against.
-/

/-! ## A291643.P7806502116748495502

`eq[4, A333206(n)]`
-/

namespace A291643.P7806502116748495502
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333206 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A291643.P7806502116748495502

/-!
# A291648: a(n) is the number of simple graphs of order n having at most one cycle (such graphs are called "at most unicyclic graphs").

The programs for A291648, there is no canonical definition to state claims against.
-/

/-! ## A291648.P8600983506432739816

`A112325(A173765(n+1))`
-/

namespace A291648.P8600983506432739816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112325 (A173765 (n + 1)).toNat

end

end A291648.P8600983506432739816

/-! ## A291648.P5254900986979382564

`∑[A280277(A056239(n!))]`
-/

namespace A291648.P5254900986979382564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280277 (A056239 (Nat.factorial n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A291648.P5254900986979382564

/-! ## A291648.P9341823519452997639

`A046155(A307488(n))+A001318(n)`
-/

namespace A291648.P9341823519452997639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046155 (A307488 n).toNat + A001318 n

end

end A291648.P9341823519452997639

/-! ## A291648.P16600969510063529238

`A023193(A294500(n)+A160942(n+1))`
-/

namespace A291648.P16600969510063529238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023193 (A294500 n + A160942 (n + 1)).toNat

end

end A291648.P16600969510063529238

/-!
# A291649: Expansion of Product_{k>=1} (1 + x^(k^2))^(k^2).

The programs for A291649, there is no canonical definition to state claims against.
-/

/-! ## A291649.P7758852019381497390

`lcm(A015070(n)!, A291696(n))`
-/

namespace A291649.P7758852019381497390
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (Nat.factorial (A015070 n).toNat : ℤ) (A291696 n)

end

end A291649.P7758852019381497390

/-! ## A291649.P15367224047577762419

`abs(A291696(n)%p?[A348526(n)])`
-/

namespace A291649.P15367224047577762419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348526 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (A291696 n) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))|

end

end A291649.P15367224047577762419

/-! ## A291649.P11051446932877614338

`abs(A291696(n))%A003174(n+1)`
-/

namespace A291649.P11051446932877614338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod |A291696 n| (A003174 (n + 1))

end

end A291649.P11051446932877614338

/-! ## A291649.P9975117008604840968

`gcd(A000038(A010022(n)), A291696(n))`
-/

namespace A291649.P9975117008604840968
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 (A010022 n).toNat) (A291696 n)

end

end A291649.P9975117008604840968

/-!
# A291651: a(n) = [x^n] (1/(1 + x/(1 + x^2/(1 + x^3/(1 + x^4/(1 + x^5/(1 + ...)))))))^n, a continued fraction.

The programs for A291651, there is no canonical definition to state claims against.
-/

/-! ## A291651.P3134528227015343948

`A286509(∑[4*n])`
-/

namespace A291651.P3134528227015343948
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286509 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A291651.P3134528227015343948

/-! ## A291651.P11972827335682847615

`A286509(A046092(n))+(4*n)%2`
-/

namespace A291651.P11972827335682847615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286509 (A046092 n).toNat + ((4 * n % 2 : ℕ) : ℤ)

end

end A291651.P11972827335682847615

/-! ## A291651.P13052195622448191387

`A286509(A046092(n))%A199484(n)`
-/

namespace A291651.P13052195622448191387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A286509 (A046092 n).toNat) (A199484 n)

end

end A291651.P13052195622448191387

/-! ## A291651.P7908713837697761285

`A286509(A046092(n))+val(A054034(n+1), 10)`
-/

namespace A291651.P7908713837697761285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286509 (A046092 n).toNat + (SequenceMachineLib.valuation (A054034 (n + 1)).toNat 10 : ℤ)

end

end A291651.P7908713837697761285

/-! ## A291651.P282614479902213008

`A286509(A046092(n))+A010051(A024675(n+1))`
-/

namespace A291651.P282614479902213008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286509 (A046092 n).toNat + A010051 (A024675 (n + 1)).toNat

end

end A291651.P282614479902213008

/-! ## A291651.P6511641119142805265

`A286509(A046092(n))+A010051(A082522(n+1))`
-/

namespace A291651.P6511641119142805265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286509 (A046092 n).toNat + A010051 (A082522 (n + 1)).toNat

end

end A291651.P6511641119142805265

/-! ## A291651.P16177380634402994167

`A001222(A045319(n+1))*A286509(A046092(n))`
-/

namespace A291651.P16177380634402994167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A045319 (n + 1)).toNat * A286509 (A046092 n).toNat

end

end A291651.P16177380634402994167

/-! ## A291651.P1696406296917566741

`A001222(A180948(n+1))*A286509(A046092(n))`
-/

namespace A291651.P1696406296917566741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A180948 (n + 1)).toNat * A286509 (A046092 n).toNat

end

end A291651.P1696406296917566741

/-! ## A291651.P12908627983593101456

`A001222(A033302(n+4))*A286509(A046092(n))`
-/

namespace A291651.P12908627983593101456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A033302 (n + 4)).toNat * A286509 (A046092 n).toNat

end

end A291651.P12908627983593101456

/-! ## A291651.P7913839797117831455

`A286509(A046092(n))^A001222(A008578(n+1))`
-/

namespace A291651.P7913839797117831455
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A286509 (A046092 n).toNat : ℚ) ^ (A001222 (A008578 (n + 1)).toNat : ℤ)

end

end A291651.P7913839797117831455

/-!
# A291652: Square array A(n,k), n>=0, k>=0, read by antidiagonals, where column k is the expansion of k-th power of continued fraction 1/(1 - x/(1 - x^2/(1 - x^3/(1 - x^4/(1 - x^5/(1 - ...)))))).

The programs for A291652, there is no canonical definition to state claims against.
-/

/-! ## A291652.P2297788176070390360

`A167749(A061579(n)%A056242(n+1))`
-/

namespace A291652.P2297788176070390360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167749 (Int.tmod (A061579 n) (A056242 (n + 1))).toNat

end

end A291652.P2297788176070390360

/-! ## A291652.P3941301579352273230

`A167749(∑[2*n]%comp[∑[n]])`
-/

namespace A291652.P3941301579352273230
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167749 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A291652.P3941301579352273230

/-! ## A291652.P9100431865595037921

`A167749(∑[char[∑[n]]]²-(n+1))`
-/

namespace A291652.P9100431865595037921
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167749 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - (n + 1))

end

end A291652.P9100431865595037921

/-! ## A291652.P6649779366864908665

`A167749(A061579(n))^ceil(acot(n))`
-/

namespace A291652.P6649779366864908665
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167749 (A061579 n).toNat : ℚ) ^ (⌈SequenceMachineLib.acot (n : ℝ)⌉ : ℤ)

end

end A291652.P6649779366864908665

/-! ## A291652.P4848404870673750663

`or(A000007(n), A167749(A061579(n)))`
-/

namespace A291652.P4848404870673750663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A167749 (A061579 n).toNat)

end

end A291652.P4848404870673750663

/-! ## A291652.P1205311651565071567

`A167749(A061579(n))^A014963(4*n+2)`
-/

namespace A291652.P1205311651565071567
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167749 (A061579 n).toNat : ℚ) ^ (A014963 (4 * n + 2) : ℤ)

end

end A291652.P1205311651565071567

/-! ## A291652.P17629511923462312710

`A167749(A061579(n))+A001222(gcd(n, n+1))`
-/

namespace A291652.P17629511923462312710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167749 (A061579 n).toNat + A001222 (Nat.gcd n (n + 1))

end

end A291652.P17629511923462312710

/-! ## A291652.P2670593479087069456

`A001221(A069217(n+2))*A167749(A061579(n))`
-/

namespace A291652.P2670593479087069456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A069217 (n + 2)).toNat * A167749 (A061579 n).toNat

end

end A291652.P2670593479087069456

/-! ## A291652.P10122960134135161621

`A167749(A061579(n))%A160040(n+1)`
-/

namespace A291652.P10122960134135161621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A167749 (A061579 n).toNat) (A160040 (n + 1))

end

end A291652.P10122960134135161621

/-!
# A291653: a(n) = [x^n] (1/(1 - x/(1 - x^2/(1 - x^3/(1 - x^4/(1 - x^5/(1 - ...)))))))^n, a continued fraction.

The programs for A291653, there is no canonical definition to state claims against.
-/

/-! ## A291653.P15105733737438796536

`A291652(∑[4*n])`
-/

namespace A291653.P15105733737438796536
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291652 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A291653.P15105733737438796536

/-! ## A291653.P4199827578862698996

`A291652(A046092(n))%(7^n+2)`
-/

namespace A291653.P4199827578862698996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A291652 (A046092 n).toNat) (7 ^ n + 2 : ℤ)

end

end A291653.P4199827578862698996

/-! ## A291653.P15554588823875264857

`or(A000007(n), A291652(A046092(n)))`
-/

namespace A291653.P15554588823875264857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A291652 (A046092 n).toNat)

end

end A291653.P15554588823875264857

/-! ## A291653.P349466984339367497

`abs(A000038(n)-A291652(A046092(n)))`
-/

namespace A291653.P349466984339367497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000038 n - A291652 (A046092 n).toNat|

end

end A291653.P349466984339367497

/-! ## A291653.P16454898160067311697

`A291652(A046092(n))+A000007(n+1)`
-/

namespace A291653.P16454898160067311697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291652 (A046092 n).toNat + A000007 (n + 1)

end

end A291653.P16454898160067311697

/-! ## A291653.P17564543145646174618

`A057427(n+1)*A291652(A046092(n))`
-/

namespace A291653.P17564543145646174618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (n + 1) * A291652 (A046092 n).toNat

end

end A291653.P17564543145646174618

/-! ## A291653.P7607237721675534345

`A093178(2*n)*A291652(A046092(n))`
-/

namespace A291653.P7607237721675534345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 (2 * n) * A291652 (A046092 n).toNat

end

end A291653.P7607237721675534345

/-! ## A291653.P2765050562455930021

`A291652(A046092(n))+A010051((n+1)²)`
-/

namespace A291653.P2765050562455930021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291652 (A046092 n).toNat + A010051 ((n + 1) ^ 2)

end

end A291653.P2765050562455930021

/-! ## A291653.P2437119054896170845

`A007318(n²%(n+1))*A291652(A046092(n))`
-/

namespace A291653.P2437119054896170845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (n ^ 2 % (n + 1)) * A291652 (A046092 n).toNat

end

end A291653.P2437119054896170845

/-! ## A291653.P4860314883998017969

`A291652(A046092(n))+A085121(A055672(n))`
-/

namespace A291653.P4860314883998017969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291652 (A046092 n).toNat + A085121 (A055672 n).toNat

end

end A291653.P4860314883998017969

/-!
# A291655: Expansion of Product_{k>=1} 1/(1-x^(k^2))^(k^2).

The programs for A291655, there is no canonical definition to state claims against.
-/

/-! ## A291655.P16110570406697847947

`∑[A285132(n)%A053658(n+1)]`
-/

namespace A291655.P16110570406697847947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A285132 n) (A053658 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A291655.P16110570406697847947

/-! ## A291655.P1229443891759700322

`∑[A285132(n)]%A173481(n+1)`
-/

namespace A291655.P1229443891759700322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285132 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A173481 (n + 1))

end

end A291655.P1229443891759700322

/-! ## A291655.P12214448156449434385

`∑[A285132(n)%A046691(A005902(n))]`
-/

namespace A291655.P12214448156449434385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A285132 n) (A046691 (A005902 n).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A291655.P12214448156449434385

/-! ## A291655.P12542999116932386978

`A000038(A002417(n+1))+∑[A285132(n)]`
-/

namespace A291655.P12542999116932386978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285132 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (A002417 (n + 1)).toNat + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A291655.P12542999116932386978

/-! ## A291655.P9586103899580309874

`A089868(∑[A285132(n)])`
-/

namespace A291655.P9586103899580309874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285132 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089868 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A291655.P9586103899580309874

/-!
# A291657: Primes p such that p is a primitive root modulo prime(p).

The programs for A291657, there is no canonical definition to state claims against.
-/

/-! ## A291657.P12804485234224151357

`p?[A242750(n+1)]`
-/

namespace A291657.P12804485234224151357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242750 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A291657.P12804485234224151357

/-! ## A291657.P10863384425448615524

`record[A006530(A242750(n+2))]`
-/

namespace A291657.P10863384425448615524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A242750 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A291657.P10863384425448615524

/-! ## A291657.P12416291679791712289

`filter[A242750(n+1), A010051(#)]`
-/

namespace A291657.P12416291679791712289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242750 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A291657.P12416291679791712289

/-! ## A291657.P13621224665606756019

`filter[A242750(n+1), A302777(#)]`
-/

namespace A291657.P13621224665606756019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242750 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A302777 (f1 j).toNat = 1) n)

end

end A291657.P13621224665606756019

/-! ## A291657.P14636781198712133972

`filter[A242750(n+2), A355937(#)]`
-/

namespace A291657.P14636781198712133972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242750 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355937 (f1 j).toNat = 1) n)

end

end A291657.P14636781198712133972

/-! ## A291657.P2174812395494676287

`∩[A000040(n+1), A242750(n+1)]`
-/

namespace A291657.P2174812395494676287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242750 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A291657.P2174812395494676287

/-! ## A291657.P15839751825296230662

`∩[A000430(n+1), A242750(n+1)]`
-/

namespace A291657.P15839751825296230662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000430 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242750 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A291657.P15839751825296230662

/-! ## A291657.P4301448582118337606

`∩[A009087(n+1), A242750(n+1)]`
-/

namespace A291657.P4301448582118337606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009087 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242750 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A291657.P4301448582118337606

/-! ## A291657.P12903939837657528963

`∩[A045319(n+1), A242750(n+1)]`
-/

namespace A291657.P12903939837657528963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242750 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A291657.P12903939837657528963

/-! ## A291657.P13667060215568867606

`∩[A050376(n+1), A242750(n+1)]`
-/

namespace A291657.P13667060215568867606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050376 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242750 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A291657.P13667060215568867606

/-! ## A291657.P3207084509815076349

`∩[A175787(n+1), A242750(n+1)]`
-/

namespace A291657.P3207084509815076349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175787 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242750 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A291657.P3207084509815076349

/-! ## A291657.P4836229820875867154

`∩[A182986(n+1), A242750(n+1)]`
-/

namespace A291657.P4836229820875867154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242750 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A291657.P4836229820875867154

/-! ## A291657.P8230711151048158799

`∩[A189710(n+1), A242750(n+1)]`
-/

namespace A291657.P8230711151048158799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189710 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242750 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A291657.P8230711151048158799

/-! ## A291657.P18027091569520913688

`∩[A242750(n+1), A348283(n+1)]`
-/

namespace A291657.P18027091569520913688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242750 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348283 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A291657.P18027091569520913688

/-! ## A291657.P13156824344113586288

`filter[A242750(n+2), A080339(#)]`
-/

namespace A291657.P13156824344113586288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242750 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A291657.P13156824344113586288

/-! ## A291657.P7682605525913778668

`p?[A000720(A242752(n+1))]`
-/

namespace A291657.P7682605525913778668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A242752 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A291657.P7682605525913778668

/-! ## A291657.P3146970042093194151

`p?[A061395(p?[A242752(n+1)])]`
-/

namespace A291657.P3146970042093194151
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242752 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A291657.P3146970042093194151

/-! ## A291657.P7817176099136013161

`∩[A242750(n+1), A385492(n+1)]`
-/

namespace A291657.P7817176099136013161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242750 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385492 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A291657.P7817176099136013161

/-!
# A291658: a(n) is the sum of all integers from 5^n to 5^(n+1)-1.

The programs for A291658, the canonical program `A291658.P1958480704682328772` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A291658 has offset 0).

The definition of A291658 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A291658.P1958480704682328772

`30*a(n-1)-125*a(n-2)` with `a(0)=10, a(1)=290`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A291658

/-- `30*a(n-1)-125*a(n-2)` -/
def P1958480704682328772.Spec : Prop :=
  ∀ n, P1958480704682328772.a n = A291658 n

theorem P1958480704682328772.correct : P1958480704682328772.Spec := by
  intro n
  simp only [A291658]

end A291658

/-! ## A291658.P11223316331711315097

`5^n/2*(5^(n+2)-5^n-4)`
-/

namespace A291658.P11223316331711315097
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 ^ n : ℚ) / 2 * ((5 ^ (n + 2) : ℤ) - (5 ^ n : ℤ) - 4 : ℚ)

end

end A291658.P11223316331711315097

namespace A291658

/-- `5^n/2*(5^(n+2)-5^n-4)` -/
def P11223316331711315097.Spec : Prop :=
  ∀ n, P11223316331711315097.a n = (A291658 n : ℚ)

end A291658

/-! ## A291658.P13980673542511479213

`A162729(n+1)-A162729(n)`
-/

namespace A291658.P13980673542511479213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162729 (n + 1) - A162729 n

end

end A291658.P13980673542511479213

namespace A291658

/-- `A162729(n+1)-A162729(n)` -/
def P13980673542511479213.Spec : Prop :=
  ∀ n, P13980673542511479213.a n = A291658 n

end A291658

/-! ## A291658.P8612128181420001793

`Δ[C(5^n, 2)]`
-/

namespace A291658.P8612128181420001793
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (5 ^ n) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A291658.P8612128181420001793

namespace A291658

/-- `Δ[C(5^n, 2)]` -/
def P8612128181420001793.Spec : Prop :=
  ∀ n, P8612128181420001793.a n = A291658 n

end A291658

/-! ## A291658.P875188511827386051

`Δ[A162729(n)]`
-/

namespace A291658.P875188511827386051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162729 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A291658.P875188511827386051

namespace A291658

/-- `Δ[A162729(n)]` -/
def P875188511827386051.Spec : Prop :=
  ∀ n, P875188511827386051.a n = A291658 n

end A291658

/-! ## A291658.P5315149027573083328

`record[Δ[C(A056451(n), 2)]]`
-/

namespace A291658.P5315149027573083328
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A056451 n).toNat 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A291658.P5315149027573083328

namespace A291658

/-- `record[Δ[C(A056451(n), 2)]]` -/
def P5315149027573083328.Spec : Prop :=
  ∀ n, P5315149027573083328.a n = A291658 n

end A291658

/-! ## A291658.P528250653259615604

`A020729(2*n+1)+A020729(2*n)-A020699(n+1)`
-/

namespace A291658.P528250653259615604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020729 (2 * n + 1) + (A020729 (2 * n) - A020699 (n + 1))

end

end A291658.P528250653259615604

namespace A291658

/-- `A020729(2*n+1)+A020729(2*n)-A020699(n+1)` -/
def P528250653259615604.Spec : Prop :=
  ∀ n, P528250653259615604.a n = A291658 n

end A291658

/-!
# A291660: a(n) = 2*a(n-1) - a(n-2) + a(n-4) for n>3, a(0)=2, a(1)=3, a(2)=5, a(3)=7, a sequence related to Lucas numbers.

The programs for A291660, the canonical program `A291660.P2948201270418205663` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A291660 has offset 0).

The definition of A291660 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*a(n-1)-a(n-2)+a(n-4)` (program `A291660.P2948201270418205663`, by `A291660.P2948201270418205663.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A291660.P2948201270418205663

`2*a(n-1)-a(n-2)+a(n-4)` with `a(0)=2, a(1)=3, a(2)=5, a(3)=7`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A291660

/-- `2*a(n-1)-a(n-2)+a(n-4)` -/
def P2948201270418205663.Spec : Prop :=
  ∀ n, P2948201270418205663.a n = A291660 n

theorem P2948201270418205663.correct : P2948201270418205663.Spec := by
  intro n
  simp only [A291660]

end A291660

/-! ## A291660.P17420798655214434252

`A286350(n)+A000032(n)`
-/

namespace A291660.P17420798655214434252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286350 n + A000032 n

end

end A291660.P17420798655214434252

namespace A291660

/-- `A286350(n)+A000032(n)` -/
def P17420798655214434252.Spec : Prop :=
  ∀ n, P17420798655214434252.a n = A291660 n

end A291660

/-! ## A291660.P7942548854512035691

`A292616(n)-A292521(n)`
-/

namespace A291660.P7942548854512035691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292616 n - A292521 n

end

end A291660.P7942548854512035691

namespace A291660

/-- `A292616(n)-A292521(n)` -/
def P7942548854512035691.Spec : Prop :=
  ∀ n, P7942548854512035691.a n = A291660 n

end A291660

/-! ## A291660.P9153398369253045632

`∑[A212804(n)+A005252(n)]`
-/

namespace A291660.P9153398369253045632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n + A005252 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A291660.P9153398369253045632

namespace A291660

/-- `∑[A212804(n)+A005252(n)]` -/
def P9153398369253045632.Spec : Prop :=
  ∀ n, P9153398369253045632.a n = A291660 n

end A291660

/-! ## A291660.P17488143588214050664

`A020695(n)-Δ[A005252(n)]`
-/

namespace A291660.P17488143588214050664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005252 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020695 n - (f1 (n + 1) - f1 n)

end

end A291660.P17488143588214050664

namespace A291660

/-- `A020695(n)-Δ[A005252(n)]` -/
def P17488143588214050664.Spec : Prop :=
  ∀ n, P17488143588214050664.a n = A291660 n

end A291660

/-! ## A291660.P1473325179851457567

`A226956(n)+A000045(n+2)`
-/

namespace A291660.P1473325179851457567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226956 n + A000045 (n + 2)

end

end A291660.P1473325179851457567

namespace A291660

/-- `A226956(n)+A000045(n+2)` -/
def P1473325179851457567.Spec : Prop :=
  ∀ n, P1473325179851457567.a n = A291660 n

end A291660

/-! ## A291660.P16851434682793336979

`A001612(n)+A286350(n)-1`
-/

namespace A291660.P16851434682793336979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001612 n + (A286350 n - 1)

end

end A291660.P16851434682793336979

namespace A291660

/-- `A001612(n)+A286350(n)-1` -/
def P16851434682793336979.Spec : Prop :=
  ∀ n, P16851434682793336979.a n = A291660 n

end A291660

/-! ## A291660.P16845702022471560434

`A286311(n)+2*A226956(n)`
-/

namespace A291660.P16845702022471560434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286311 n + 2 * A226956 n

end

end A291660.P16845702022471560434

namespace A291660

/-- `A286311(n)+2*A226956(n)` -/
def P16845702022471560434.Spec : Prop :=
  ∀ n, P16845702022471560434.a n = A291660 n

end A291660

/-! ## A291660.P13709708002291028523

`A024490(n+2)+A000045(n+1)`
-/

namespace A291660.P13709708002291028523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024490 (n + 2) + A000045 (n + 1)

end

end A291660.P13709708002291028523

namespace A291660

/-- `A024490(n+2)+A000045(n+1)` -/
def P13709708002291028523.Spec : Prop :=
  ∀ n, P13709708002291028523.a n = A291660 n

end A291660

/-! ## A291660.P11123029263503767655

`A079977(2*n)+A024490(n+2)`
-/

namespace A291660.P11123029263503767655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079977 (2 * n) + A024490 (n + 2)

end

end A291660.P11123029263503767655

namespace A291660

/-- `A079977(2*n)+A024490(n+2)` -/
def P11123029263503767655.Spec : Prop :=
  ∀ n, P11123029263503767655.a n = A291660 n

end A291660

/-! ## A291660.P2518635249893436197

`A000071(n+1)+A024490(n+2)+1`
-/

namespace A291660.P2518635249893436197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (n + 1) + (A024490 (n + 2) + 1)

end

end A291660.P2518635249893436197

namespace A291660

/-- `A000071(n+1)+A024490(n+2)+1` -/
def P2518635249893436197.Spec : Prop :=
  ∀ n, P2518635249893436197.a n = A291660 n

end A291660

/-! ## A291660.P8428366941956643059

`A174619(2*(n+1))+A000045(n+1)`
-/

namespace A291660.P8428366941956643059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174619 (2 * (n + 1)) + A000045 (n + 1)

end

end A291660.P8428366941956643059

namespace A291660

/-- `A174619(2*(n+1))+A000045(n+1)` -/
def P8428366941956643059.Spec : Prop :=
  ∀ n, P8428366941956643059.a n = A291660 n

end A291660

/-! ## A291660.P7755277507680468892

`A174619(2*n+1)+A024490(n+2)`
-/

namespace A291660.P7755277507680468892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174619 (2 * n + 1) + A024490 (n + 2)

end

end A291660.P7755277507680468892

namespace A291660

/-- `A174619(2*n+1)+A024490(n+2)` -/
def P7755277507680468892.Spec : Prop :=
  ∀ n, P7755277507680468892.a n = A291660 n

end A291660

/-! ## A291660.P3704086434935280279

`A174619(2*(n+1))+A079977(2*n)`
-/

namespace A291660.P3704086434935280279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174619 (2 * (n + 1)) + A079977 (2 * n)

end

end A291660.P3704086434935280279

namespace A291660

/-- `A174619(2*(n+1))+A079977(2*n)` -/
def P3704086434935280279.Spec : Prop :=
  ∀ n, P3704086434935280279.a n = A291660 n

end A291660

/-! ## A291660.P16363249437487722987

`A174619(2*n+1)+A174619(2*(n+1))`
-/

namespace A291660.P16363249437487722987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174619 (2 * n + 1) + A174619 (2 * (n + 1))

end

end A291660.P16363249437487722987

namespace A291660

/-- `A174619(2*n+1)+A174619(2*(n+1))` -/
def P16363249437487722987.Spec : Prop :=
  ∀ n, P16363249437487722987.a n = A291660 n

end A291660

/-! ## A291660.P5463098798713291613

`A024490(n+3)+A226956(n)-A005252(n)`
-/

namespace A291660.P5463098798713291613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024490 (n + 3) + (A226956 n - A005252 n)

end

end A291660.P5463098798713291613

namespace A291660

/-- `A024490(n+3)+A226956(n)-A005252(n)` -/
def P5463098798713291613.Spec : Prop :=
  ∀ n, P5463098798713291613.a n = A291660 n

end A291660

/-! ## A291660.P2174653090044201312

`A024490(n+2)+A024490(n+3)-A226956(n+1)`
-/

namespace A291660.P2174653090044201312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024490 (n + 2) + (A024490 (n + 3) - A226956 (n + 1))

end

end A291660.P2174653090044201312

namespace A291660

/-- `A024490(n+2)+A024490(n+3)-A226956(n+1)` -/
def P2174653090044201312.Spec : Prop :=
  ∀ n, P2174653090044201312.a n = A291660 n

end A291660

/-! ## A291660.P1393537078759907730

`A226956(n)+Δ[A001911(n)]`
-/

namespace A291660.P1393537078759907730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001911 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226956 n + (f1 (n + 1) - f1 n)

end

end A291660.P1393537078759907730

namespace A291660

/-- `A226956(n)+Δ[A001911(n)]` -/
def P1393537078759907730.Spec : Prop :=
  ∀ n, P1393537078759907730.a n = A291660 n

end A291660

/-! ## A291660.P16821596327165105265

`A286350(n)+Δ[A001610(n)]`
-/

namespace A291660.P16821596327165105265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001610 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286350 n + (f1 (n + 1) - f1 n)

end

end A291660.P16821596327165105265

namespace A291660

/-- `A286350(n)+Δ[A001610(n)]` -/
def P16821596327165105265.Spec : Prop :=
  ∀ n, P16821596327165105265.a n = A291660 n

end A291660

/-!
# A291662: Number of ordered rooted trees with 2n non-root nodes such that the maximal outdegree equals n.

The programs for A291662, the canonical program `A291662.P18141742761416750643` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A291662 has offset 0).

The definition of A291662 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 123 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A291662.P1223363772291351095

`A303259(2*n)`
-/

namespace A291662.P1223363772291351095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303259 (2 * n)

end

end A291662.P1223363772291351095

namespace A291662

/-- `A303259(2*n)` -/
def P1223363772291351095.Spec : Prop :=
  ∀ n, P1223363772291351095.a n = A291662 n

end A291662

/-! ## A291662.P18141742761416750643

`A165817(n)-n`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A291662

/-- `A165817(n)-n` -/
def P18141742761416750643.Spec : Prop :=
  ∀ n, P18141742761416750643.a n = A291662 n

theorem P18141742761416750643.correct : P18141742761416750643.Spec := by
  intro n
  simp only [A291662]

end A291662

/-! ## A291662.P14527723697932059291

`ceil(A227726(n)/2-n)`
-/

namespace A291662.P14527723697932059291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A227726 n : ℚ) / 2 - (n : ℚ)⌉

end

end A291662.P14527723697932059291

namespace A291662

/-- `ceil(A227726(n)/2-n)` -/
def P14527723697932059291.Spec : Prop :=
  ∀ n, P14527723697932059291.a n = A291662 n

end A291662

/-! ## A291662.P10647439823228902611

`A081204(A004273(n))-n`
-/

namespace A291662.P10647439823228902611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081204 (A004273 n).toNat - (n : ℤ)

end

end A291662.P10647439823228902611

namespace A291662

/-- `A081204(A004273(n))-n` -/
def P10647439823228902611.Spec : Prop :=
  ∀ n, P10647439823228902611.a n = A291662 n

end A291662

/-! ## A291662.P3504030818222244898

`and(-1, A303259(A005843(n)))`
-/

namespace A291662.P3504030818222244898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A303259 (A005843 n).toNat)

end

end A291662.P3504030818222244898

namespace A291662

/-- `and(-1, A303259(A005843(n)))` -/
def P3504030818222244898.Spec : Prop :=
  ∀ n, P3504030818222244898.a n = A291662 n

end A291662

/-! ## A291662.P15924334847336755272

`A005809(n)-(A025174(n)+n)`
-/

namespace A291662.P15924334847336755272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005809 n - (A025174 n + (n : ℤ))

end

end A291662.P15924334847336755272

namespace A291662

/-- `A005809(n)-(A025174(n)+n)` -/
def P15924334847336755272.Spec : Prop :=
  ∀ n, P15924334847336755272.a n = A291662 n

end A291662

/-! ## A291662.P10997297978027432538

`A065942(2*n)-A025174(n)-n`
-/

namespace A291662.P10997297978027432538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065942 (2 * n) - A025174 n - (n : ℤ)

end

end A291662.P10997297978027432538

namespace A291662

/-- `A065942(2*n)-A025174(n)-n` -/
def P10997297978027432538.Spec : Prop :=
  ∀ n, P10997297978027432538.a n = A291662 n

end A291662

/-! ## A291662.P7058259041039932873

`A318160(2*n+1)/(2*n+1)-n`
-/

namespace A291662.P7058259041039932873
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A318160 (2 * n + 1) : ℚ) / (2 * n + 1 : ℚ) - (n : ℚ)

end

end A291662.P7058259041039932873

namespace A291662

/-- `A318160(2*n+1)/(2*n+1)-n` -/
def P7058259041039932873.Spec : Prop :=
  ∀ n, P7058259041039932873.a n = (A291662 n : ℚ)

end A291662

/-! ## A291662.P5519251873616735949

`C(abs(1-3*n), n)-n`
-/

namespace A291662.P5519251873616735949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose |1 - (3 * n : ℤ)|.toNat n : ℤ) - (n : ℤ)

end

end A291662.P5519251873616735949

namespace A291662

/-- `C(abs(1-3*n), n)-n` -/
def P5519251873616735949.Spec : Prop :=
  ∀ n, P5519251873616735949.a n = A291662 n

end A291662

/-! ## A291662.P14995125125618350732

`record[C(∑[2*n]%(2*n+1), n)]-n`
-/

namespace A291662.P14995125125618350732
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ((∑ j ∈ Finset.range (n + 1), f2 j) % (2 * n + 1)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℤ) - (n : ℤ)

end

end A291662.P14995125125618350732

namespace A291662

/-- `record[C(∑[2*n]%(2*n+1), n)]-n` -/
def P14995125125618350732.Spec : Prop :=
  ∀ n, P14995125125618350732.a n = A291662 n

end A291662

/-! ## A291662.P4299052391001139514

`record[C(n+1, gcd(2*n+1, ∑[n²]))]-n`
-/

namespace A291662.P4299052391001139514
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) (Nat.gcd (2 * n + 1) (∑ j ∈ Finset.range (n + 1), f2 j))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℤ) - (n : ℤ)

end

end A291662.P4299052391001139514

namespace A291662

/-- `record[C(n+1, gcd(2*n+1, ∑[n²]))]-n` -/
def P4299052391001139514.Spec : Prop :=
  ∀ n, P4299052391001139514.a n = A291662 n

end A291662

/-! ## A291662.P15319093623825126567

`record[C(A014682(n), n)]-n`
-/

namespace A291662.P15319093623825126567
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A014682 n).toNat n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℤ) - (n : ℤ)

end

end A291662.P15319093623825126567

namespace A291662

/-- `record[C(A014682(n), n)]-n` -/
def P15319093623825126567.Spec : Prop :=
  ∀ n, P15319093623825126567.a n = A291662 n

end A291662

/-! ## A291662.P2205185341353117535

`record[C(A173732(n), n)]-n`
-/

namespace A291662.P2205185341353117535
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A173732 n).toNat n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℤ) - (n : ℤ)

end

end A291662.P2205185341353117535

namespace A291662

/-- `record[C(A173732(n), n)]-n` -/
def P2205185341353117535.Spec : Prop :=
  ∀ n, P2205185341353117535.a n = A291662 n

end A291662

/-! ## A291662.P1933127165109291394

`record[C(A324245(n), n)]-n`
-/

namespace A291662.P1933127165109291394
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A324245 n).toNat n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℤ) - (n : ℤ)

end

end A291662.P1933127165109291394

namespace A291662

/-- `record[C(A324245(n), n)]-n` -/
def P1933127165109291394.Spec : Prop :=
  ∀ n, P1933127165109291394.a n = A291662 n

end A291662

/-! ## A291662.P13151199332238636201

`record[C(n, A342369(n))]-n`
-/

namespace A291662.P13151199332238636201
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (A342369 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℤ) - (n : ℤ)

end

end A291662.P13151199332238636201

namespace A291662

/-- `record[C(n, A342369(n))]-n` -/
def P13151199332238636201.Spec : Prop :=
  ∀ n, P13151199332238636201.a n = A291662 n

end A291662

/-!
# A291663: Numbers beginning with a vowel in Danish.

The programs for A291663, there is no canonical definition to state claims against.
-/

/-! ## A291663.P10226695946025112338

`eq[A028242(n), A092454(A008616(n))]`
-/

namespace A291663.P10226695946025112338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092454 (A008616 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A291663.P10226695946025112338

/-! ## A291663.P5700887156316073600

`record[A306277(n+1)-A006983(n+1)]`
-/

namespace A291663.P5700887156316073600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306277 (n + 1) - A006983 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A291663.P5700887156316073600

/-! ## A291663.P14654365235125153192

`record[A273669(n+1)-A178688(n+1)]`
-/

namespace A291663.P14654365235125153192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273669 (n + 1) - A178688 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A291663.P14654365235125153192

/-! ## A291663.P14472790602761943357

`A235089(n+1)-A103663(A103663(n))`
-/

namespace A291663.P14472790602761943357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235089 (n + 1) - A103663 (A103663 n).toNat

end

end A291663.P14472790602761943357

/-! ## A291663.P9920734093105685312

`A306277(n+1)-A374017(A106585(3*n))`
-/

namespace A291663.P9920734093105685312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306277 (n + 1) - A374017 (A106585 (3 * n)).toNat

end

end A291663.P9920734093105685312

/-!
# A291665: a(n) = binomial(n, 2^floor(log_2(n))).

The programs for A291665, the canonical program `A291665.P10294910210138216861` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A291665 has offset 1).

The definition of A291665 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 374 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A291665.P10294910210138216861

`A014421(A173537(n+2))`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A291665

/-- `A014421(A173537(n+2))` -/
def P10294910210138216861.Spec : Prop :=
  ∀ n, P10294910210138216861.a n = A291665 (n + 1)

theorem P10294910210138216861.correct : P10294910210138216861.Spec := by
  intro n
  simp only [A291665, Nat.add_sub_cancel]

end A291665

/-! ## A291665.P5399758112121882321

`C(n+1, 2^floor(log2(n+1)))`
-/

namespace A291665.P5399758112121882321
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) (2 ^ Nat.log 2 (n + 1))

end

end A291665.P5399758112121882321

namespace A291665

/-- `C(n+1, 2^floor(log2(n+1)))` -/
def P5399758112121882321.Spec : Prop :=
  ∀ n, (P5399758112121882321.a n : ℤ) = A291665 (n + 1)

end A291665

/-! ## A291665.P1920516178049184423

`round(sqrt(C(n+1, A053644(n+1))²+1))`
-/

namespace A291665.P1920516178049184423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (Nat.choose (n + 1) (A053644 (n + 1)).toNat ^ 2 + 1 : ℝ))

end

end A291665.P1920516178049184423

namespace A291665

/-- `round(sqrt(C(n+1, A053644(n+1))²+1))` -/
def P1920516178049184423.Spec : Prop :=
  ∀ n, P1920516178049184423.a n = A291665 (n + 1)

end A291665

/-! ## A291665.P15301075802768343692

`A014475(lt[A014475(3*n+1), n+2]+1)`
-/

namespace A291665.P15301075802768343692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014475 (3 * n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014475 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A291665.P15301075802768343692

namespace A291665

/-- `A014475(lt[A014475(3*n+1), n+2]+1)` -/
def P15301075802768343692.Spec : Prop :=
  ∀ n, P15301075802768343692.a n = A291665 (n + 1)

end A291665

/-! ## A291665.P7272576955870621785

`A007318(∑[n]+2^floor(log2(n+1))+n+1)`
-/

namespace A291665.P7272576955870621785
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j + (2 ^ Nat.log 2 (n + 1) + (n + 1)))

end

end A291665.P7272576955870621785

namespace A291665

/-- `A007318(∑[n]+2^floor(log2(n+1))+n+1)` -/
def P7272576955870621785.Spec : Prop :=
  ∀ n, P7272576955870621785.a n = A291665 (n + 1)

end A291665

/-! ## A291665.P13748589222353873710

`A051159(A179865(2*(n+2))+A062383(n+1))`
-/

namespace A291665.P13748589222353873710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051159 (A179865 (2 * (n + 2)) + A062383 (n + 1)).toNat

end

end A291665.P13748589222353873710

namespace A291665

/-- `A051159(A179865(2*(n+2))+A062383(n+1))` -/
def P13748589222353873710.Spec : Prop :=
  ∀ n, P13748589222353873710.a n = A291665 (n + 1)

end A291665

/-!
# A291666: Expansion of Product_{k>=1} ((1 + x^(k^2)) / (1 - x^(k^2)))^(k^2).

The programs for A291666, there is no canonical definition to state claims against.
-/

/-! ## A291666.P4862502705996261084

`A325248(A212607(n))`
-/

namespace A291666.P4862502705996261084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325248 (A212607 n).toNat

end

end A291666.P4862502705996261084

/-! ## A291666.P9709644344832295988

`∑[A004526(2^A291649(n))]`
-/

namespace A291666.P9709644344832295988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A291649 n : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A291666.P9709644344832295988

/-! ## A291666.P13273334307357988647

`A325248(A311759(n)+A000217(n))`
-/

namespace A291666.P13273334307357988647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325248 (A311759 n + A000217 n).toNat

end

end A291666.P13273334307357988647

/-!
# A291667: Expansion of Product_{k>=1} ((1 + x^(k^2)) / (1 - x^(k^2)))^k.

The programs for A291667, there is no canonical definition to state claims against.
-/

/-! ## A291667.P6130175430339870832

`∑[A023815(n)%A102806(n+1)]`
-/

namespace A291667.P6130175430339870832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A023815 n) (A102806 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A291667.P6130175430339870832

/-! ## A291667.P17080242707708678660

`A013943(lcm(A020903(n+1), A244401(n+6)))`
-/

namespace A291667.P17080242707708678660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013943 (Int.lcm (A020903 (n + 1)) (A244401 (n + 6)))

end

end A291667.P17080242707708678660

/-!
# A291668: Numbers k such that 0 is the smallest decimal digit of k^4.

The programs for A291668, the canonical program `A291668.P10878814247837126676` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A291668 has offset 1).

The definition of A291668 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7849 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A291668.P10878814247837126676

`lt[∏{digits}[n²², #]², n]`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A291668

/-- `lt[∏{digits}[n²², #]², n]` -/
def P10878814247837126676.Spec : Prop :=
  ∀ n, (P10878814247837126676.a n : ℤ) = A291668 (n + 1)

theorem P10878814247837126676.correct : P10878814247837126676.Spec := by
  intro n
  simp only [A291668, Nat.add_sub_cancel]

end A291668

/-! ## A291668.P10185945065256774825

`eq[∏{digits}[A000583(n), #], A000007(n)]`
-/

namespace A291668.P10185945065256774825
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000583 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f2 n).natAbs).map fun (x : ℕ) => x).prod

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A291668.P10185945065256774825

namespace A291668

/-- `eq[∏{digits}[A000583(n), #], A000007(n)]` -/
def P10185945065256774825.Spec : Prop :=
  ∀ n, (P10185945065256774825.a n : ℤ) = A291668 (n + 1)

end A291668

/-! ## A291668.P14210423402117970337

`eq[∏{digits}[A000583(n), #], A000038(n)]`
-/

namespace A291668.P14210423402117970337
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000583 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f2 n).natAbs).map fun (x : ℕ) => x).prod

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A291668.P14210423402117970337

namespace A291668

/-- `eq[∏{digits}[A000583(n), #], A000038(n)]` -/
def P14210423402117970337.Spec : Prop :=
  ∀ n, (P14210423402117970337.a n : ℤ) = A291668 (n + 1)

end A291668

/-! ## A291668.P5602161510811606358

`eq[∏{digits}[A002523(n), #], A000038(n)]`
-/

namespace A291668.P5602161510811606358
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002523 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f2 n).natAbs).map fun (x : ℕ) => x).prod

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A291668.P5602161510811606358

namespace A291668

/-- `eq[∏{digits}[A002523(n), #], A000038(n)]` -/
def P5602161510811606358.Spec : Prop :=
  ∀ n, (P5602161510811606358.a n : ℤ) = A291668 (n + 1)

end A291668

/-!
# A291669: Numbers k such that 1 is the smallest decimal digit of k^4.

The programs for A291669, there is no canonical definition to state claims against.
-/

/-! ## A291669.P2246509622268318805

`eq[1, A028908(n²)%5]`
-/

namespace A291669.P2246509622268318805
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028908 (n ^ 2)) 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A291669.P2246509622268318805

/-! ## A291669.P17837049845807738356

`record[A000188(A291626(n+1))]`
-/

namespace A291669.P17837049845807738356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (A291626 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A291669.P17837049845807738356

/-!
# A291671: Numbers k such that 3 is the smallest decimal digit of k^4.

The programs for A291671, there is no canonical definition to state claims against.
-/

/-! ## A291671.P955189556800463417

`A154362(∑[A154380(n+6)])`
-/

namespace A291671.P955189556800463417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154380 (n + 6)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154362 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A291671.P955189556800463417

/-!
# A291675: a(n) = a(n-1) + 2*a(n-2) + 8*Fibonacci(n) + 2*Fibonacci(n-1); a(1) = 4, a(2) = 14.

The programs for A291675, there is no canonical definition to state claims against.
-/

/-! ## A291675.P5713169073055508172

`A000041(3*n+4)-A346702(A270831(2*n+1))`
-/

namespace A291675.P5713169073055508172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (3 * n + 4) - A346702 (A270831 (2 * n + 1)).toNat

end

end A291675.P5713169073055508172

/-!
# A291676: Main diagonal of A291656.

The programs for A291676, there is no canonical definition to state claims against.
-/

/-! ## A291676.P13876724817727420930

`A291656(∑[4*n])`
-/

namespace A291676.P13876724817727420930
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291656 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A291676.P13876724817727420930

/-! ## A291676.P17285770997141562022

`lcm(A053735(n), A291656(A046092(n)))`
-/

namespace A291676.P17285770997141562022
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A053735 n) (A291656 (A046092 n).toNat)

end

end A291676.P17285770997141562022

/-! ## A291676.P14719299090936831365

`or(A048735(n), A291656(A046092(n)))`
-/

namespace A291676.P14719299090936831365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A048735 n) (A291656 (A046092 n).toNat)

end

end A291676.P14719299090936831365

/-!
# A291677: Number of permutations p of [2n] such that 0p has exactly n alternating runs.

The programs for A291677, there is no canonical definition to state claims against.
-/

/-! ## A291677.P4000304737354308229

`A303160(2*n)`
-/

namespace A291677.P4000304737354308229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303160 (2 * n)

end

end A291677.P4000304737354308229

/-! ## A291677.P8089882228474625434

`A186370(A065033((2*n)²))`
-/

namespace A291677.P8089882228474625434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186370 (A065033 ((2 * n) ^ 2)).toNat

end

end A291677.P8089882228474625434

/-! ## A291677.P3998835276608386731

`A186370(2*(A132411(n)+1))`
-/

namespace A291677.P3998835276608386731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186370 (2 * (A132411 n + 1)).toNat

end

end A291677.P3998835276608386731

/-! ## A291677.P12996507995454127730

`A303160(A005843(n))/A007318(∑[n])`
-/

namespace A291677.P12996507995454127730
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A303160 (A005843 n).toNat : ℚ) / (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A291677.P12996507995454127730

/-! ## A291677.P15385868035760352490

`A186370(A132411(n)+A132411(n)+2)`
-/

namespace A291677.P15385868035760352490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186370 (A132411 n + (A132411 n + 2)).toNat

end

end A291677.P15385868035760352490

/-!
# A291678: Square array A(n,k), n >= 0, k >= 0, read by antidiagonals, where column k is the expansion of k-th power of continued fraction 1 + x/(1 + x^2/(1 + x^3/(1 + x^4/(1 + x^5/(1 + ...))))).

The programs for A291678, there is no canonical definition to state claims against.
-/

/-! ## A291678.P5161730641812806085

`A045847(n)-A007814(A112492(n))`
-/

namespace A291678.P5161730641812806085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045847 n - A007814 (A112492 n).toNat

end

end A291678.P5161730641812806085

/-! ## A291678.P8843576153138079295

`A052553(n)-A007814(A057004(n+1))`
-/

namespace A291678.P8843576153138079295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052553 n - A007814 (A057004 (n + 1)).toNat

end

end A291678.P8843576153138079295

/-! ## A291678.P2710597555066535498

`A290054(n)-A007814(A057004(n+1))`
-/

namespace A291678.P2710597555066535498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290054 n - A007814 (A057004 (n + 1)).toNat

end

end A291678.P2710597555066535498

/-! ## A291678.P10867036534765727032

`A290430(n)-A007814(A057004(n+1))`
-/

namespace A291678.P10867036534765727032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290430 n - A007814 (A057004 (n + 1)).toNat

end

end A291678.P10867036534765727032

/-! ## A291678.P4767252504247930132

`A052553(n)-A102683(A084919(n+1))`
-/

namespace A291678.P4767252504247930132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052553 n - A102683 (A084919 (n + 1)).toNat

end

end A291678.P4767252504247930132

/-!
# A291679: Main diagonal of A291678.

The programs for A291679, there is no canonical definition to state claims against.
-/

/-! ## A291679.P18189817355831187920

`A291678(∑[4*n])`
-/

namespace A291679.P18189817355831187920
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291678 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A291679.P18189817355831187920

/-! ## A291679.P283126550395079110

`A291678(2*(n²+n))+char[36]`
-/

namespace A291679.P283126550395079110
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  36

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291678 (2 * (n ^ 2 + n)) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A291679.P283126550395079110

/-! ## A291679.P6950207602435362953

`A291678(2*(n²+n))%A000045(n+5)²`
-/

namespace A291679.P6950207602435362953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A291678 (2 * (n ^ 2 + n))) (A000045 (n + 5) ^ 2)

end

end A291679.P6950207602435362953

/-! ## A291679.P2428136199501684

`A291678(2*(n²+n))^A014963(4*n+2)`
-/

namespace A291679.P2428136199501684
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A291678 (2 * (n ^ 2 + n)) : ℚ) ^ (A014963 (4 * n + 2) : ℤ)

end

end A291679.P2428136199501684

/-! ## A291679.P10698714418072351678

`A291678(2*(n²+n))^and(1, A000040(n+1))`
-/

namespace A291679.P10698714418072351678
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A291678 (2 * (n ^ 2 + n)) : ℚ) ^ (Int.land 1 (A000040 (n + 1)) : ℤ)

end

end A291679.P10698714418072351678

/-!
# A291680: Number T(n,k) of permutations p of [n] such that in 0p the largest up-jump equals k and no down-jump is larger than 2; triangle T(n,k), n>=0, 0<=k<=n, read by rows.

The programs for A291680, there is no canonical definition to state claims against.
-/

/-! ## A291680.P6471472169859019430

`A117707(lcm(A260340(n), A342981(n)))`
-/

namespace A291680.P6471472169859019430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117707 (Int.lcm (A260340 n) (A342981 n))

end

end A291680.P6471472169859019430

/-! ## A291680.P16079359883975737875

`A330240(A256117(n))+A299905(n)²`
-/

namespace A291680.P16079359883975737875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330240 (A256117 n).toNat + A299905 n ^ 2

end

end A291680.P16079359883975737875

/-! ## A291680.P7913540044334299095

`A117707((A299905(n)+1)*A342981(n))`
-/

namespace A291680.P7913540044334299095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117707 ((A299905 n + 1) * A342981 n).toNat

end

end A291680.P7913540044334299095

/-! ## A291680.P6099316867523545289

`A306605(A180000(n))+A048993(n)`
-/

namespace A291680.P6099316867523545289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306605 (A180000 n).toNat + A048993 n

end

end A291680.P6099316867523545289

/-! ## A291680.P12938520764437724373

`A273528(n+1)-A325799(A008458(n))`
-/

namespace A291680.P12938520764437724373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273528 (n + 1) - A325799 (A008458 n).toNat

end

end A291680.P12938520764437724373

/-!
# A291681: First differences of A067046.

The programs for A291681, the canonical program `A291681.P5930894285660804942` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A291681 has offset 1).

The definition of A291681 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A067046, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A291681.P5930894285660804942

`A067046(n+2)-A067046(n+1)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A291681

/-- `A067046(n+2)-A067046(n+1)` -/
def P5930894285660804942.Spec : Prop :=
  ∀ n, P5930894285660804942.a n = A291681 (n + 1)

theorem P5930894285660804942.correct : P5930894285660804942.Spec := by
  intro n
  simp only [A291681, Nat.add_sub_cancel]

end A291681

/-! ## A291681.P14229858705620309207

`Δ[C(n+3, 3)/gcd(2, n+1)]`
-/

namespace A291681.P14229858705620309207
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 3) 3 : ℚ) / (Nat.gcd 2 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A291681.P14229858705620309207

namespace A291681

/-- `Δ[C(n+3, 3)/gcd(2, n+1)]` -/
def P14229858705620309207.Spec : Prop :=
  ∀ n, P14229858705620309207.a n = (A291681 (n + 1) : ℚ)

end A291681

/-! ## A291681.P7595733601577430429

`lcm(2, (n+2)²)/2-a(n-1)` with `a(0)=1`
-/

namespace A291681.P7595733601577430429
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (Nat.lcm 2 ((n + 2) ^ 2) : ℚ) / 2 - a (n - 1)

end

end A291681.P7595733601577430429

namespace A291681

/-- `lcm(2, (n+2)²)/2-a(n-1)` -/
def P7595733601577430429.Spec : Prop :=
  ∀ n, P7595733601577430429.a n = (A291681 (n + 1) : ℚ)

end A291681

/-! ## A291681.P7496415094954525455

`(n+2)*gcd(n+2, ∑[n+1])-a(n-1)` with `a(0)=1`
-/

namespace A291681.P7496415094954525455
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ((n + 2) * Nat.gcd (n + 2) (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ) - a (n - 1)

end

end A291681.P7496415094954525455

namespace A291681

/-- `(n+2)*gcd(n+2, ∑[n+1])-a(n-1)` -/
def P7496415094954525455.Spec : Prop :=
  ∀ n, P7496415094954525455.a n = A291681 (n + 1)

end A291681

/-! ## A291681.P251984882212841377

`Δ[lcm(2, n+3)*∑[n+1]]/6`
-/

namespace A291681.P251984882212841377
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 (n + 3) * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℚ) / 6

end

end A291681.P251984882212841377

namespace A291681

/-- `Δ[lcm(2, n+3)*∑[n+1]]/6` -/
def P251984882212841377.Spec : Prop :=
  ∀ n, P251984882212841377.a n = (A291681 (n + 1) : ℚ)

end A291681

/-! ## A291681.P15143881673710238683

`Δ[∑[∑[n+1]]/(2-∑[(-1)^n])]`
-/

namespace A291681.P15143881673710238683
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℚ) / ((2 - ∑ j ∈ Finset.range (n + 1), f4 j : ℤ) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A291681.P15143881673710238683

namespace A291681

/-- `Δ[∑[∑[n+1]]/(2-∑[(-1)^n])]` -/
def P15143881673710238683.Spec : Prop :=
  ∀ n, P15143881673710238683.a n = (A291681 (n + 1) : ℚ)

end A291681

/-! ## A291681.P11883579788232497820

`A129194(n+2)-a(n-1)` with `a(0)=1`
-/

namespace A291681.P11883579788232497820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A129194 (n + 2) - a (n - 1)

end

end A291681.P11883579788232497820

namespace A291681

/-- `A129194(n+2)-a(n-1)` -/
def P11883579788232497820.Spec : Prop :=
  ∀ n, P11883579788232497820.a n = A291681 (n + 1)

end A291681

/-! ## A291681.P17734561676849215754

`A026741((n+2)²)-a(n-1)` with `a(0)=1`
-/

namespace A291681.P17734561676849215754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A026741 ((n + 2) ^ 2) - a (n - 1)

end

end A291681.P17734561676849215754

namespace A291681

/-- `A026741((n+2)²)-a(n-1)` -/
def P17734561676849215754.Spec : Prop :=
  ∀ n, P17734561676849215754.a n = A291681 (n + 1)

end A291681

/-! ## A291681.P17649232907517205080

`A062828((n+2)²)-a(n-1)` with `a(0)=1`
-/

namespace A291681.P17649232907517205080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A062828 ((n + 2) ^ 2) - a (n - 1)

end

end A291681.P17649232907517205080

namespace A291681

/-- `A062828((n+2)²)-a(n-1)` -/
def P17649232907517205080.Spec : Prop :=
  ∀ n, P17649232907517205080.a n = A291681 (n + 1)

end A291681

/-!
# A291683: Number of permutations p of [n] such that in 0p the largest up-jump equals 2 and no down-jump is larger than 2.

The programs for A291683, there is no canonical definition to state claims against.
-/

/-! ## A291683.P1048456644799221161

`A356832(n)-1`
-/

namespace A291683.P1048456644799221161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356832 n - 1

end

end A291683.P1048456644799221161

/-! ## A291683.P2618951429171889599

`A356692(∑[n])-1`
-/

namespace A291683.P2618951429171889599
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356692 (∑ j ∈ Finset.range (n + 1), f1 j) - 1

end

end A291683.P2618951429171889599

/-! ## A291683.P1534780941792606930

`A291680(A133263(n))`
-/

namespace A291683.P1534780941792606930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291680 (A133263 n).toNat

end

end A291683.P1534780941792606930

/-! ## A291683.P15952377453339596478

`A291680(A238531(n+1))`
-/

namespace A291683.P15952377453339596478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291680 (A238531 (n + 1)).toNat

end

end A291683.P15952377453339596478

/-! ## A291683.P7459923438803001407

`A291680(A065475(∑[n]+1))`
-/

namespace A291683.P7459923438803001407
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291680 (A065475 (∑ j ∈ Finset.range (n + 1), f1 j + 1)).toNat

end

end A291683.P7459923438803001407

/-! ## A291683.P16221547478619924424

`A291680(A089071(n+1)+n)`
-/

namespace A291683.P16221547478619924424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291680 (A089071 (n + 1) + (n : ℤ)).toNat

end

end A291683.P16221547478619924424

/-! ## A291683.P18420235693966347268

`A291680(∑[A019590(n+1)+n])`
-/

namespace A291683.P18420235693966347268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019590 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291680 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A291683.P18420235693966347268

/-! ## A291683.P10181248688678515545

`A291680(A054977(n)+A000124(n))`
-/

namespace A291683.P10181248688678515545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291680 (A054977 n + A000124 n).toNat

end

end A291683.P10181248688678515545

/-! ## A291683.P12045876834753755506

`A291680(2-(A054977(n)-A000124(n)))`
-/

namespace A291683.P12045876834753755506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291680 (2 - (A054977 n - A000124 n)).toNat

end

end A291683.P12045876834753755506

/-! ## A291683.P4142385375321258139

`A291680(A000124(n)+char[A301851(n+1)])`
-/

namespace A291683.P4142385375321258139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301851 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291680 (A000124 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)).toNat

end

end A291683.P4142385375321258139

/-!
# A291684: Number T(n,k) of permutations p of [n] such that 0p has a nonincreasing jump sequence beginning with k; triangle T(n,k), n>=0, 0<=k<=n, read by rows.

The programs for A291684, there is no canonical definition to state claims against.
-/

/-! ## A291684.P4350066310551915045

`A255270(A134868(2*n+3)*A270882(n))`
-/

namespace A291684.P4350066310551915045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255270 (A134868 (2 * n + 3) * A270882 n).toNat

end

end A291684.P4350066310551915045

/-! ## A291684.P10740951882522070316

`A083893(6^A276727(n))`
-/

namespace A291684.P10740951882522070316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083893 (SequenceMachineLib.roundAway ((6 : ℚ) ^ (A276727 n : ℤ))).toNat

end

end A291684.P10740951882522070316

/-! ## A291684.P14465953918254025637

`A178771(A270880(n))+char[12]`
-/

namespace A291684.P14465953918254025637
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178771 (A270880 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A291684.P14465953918254025637

/-! ## A291684.P16563863886934051323

`A276727(n)-A016389(A176561(n))`
-/

namespace A291684.P16563863886934051323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276727 n - A016389 (A176561 n).toNat

end

end A291684.P16563863886934051323

/-! ## A291684.P3277465081220180240

`A178487(A064989(n+1)*A267480(n))`
-/

namespace A291684.P3277465081220180240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178487 (A064989 (n + 1) * A267480 n).toNat

end

end A291684.P3277465081220180240

/-!
# A291685: Number of permutations p of [n] such that 0p has a nonincreasing jump sequence.

The programs for A291685, there is no canonical definition to state claims against.
-/

/-! ## A291685.P5514564312285481984

`A291684(∑[n+2])`
-/

namespace A291685.P5514564312285481984
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291684 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A291685.P5514564312285481984

/-! ## A291685.P15659582148382343498

`A291684(A000096(n+1))+C(n, n+1)`
-/

namespace A291685.P15659582148382343498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291684 (A000096 (n + 1)).toNat + (Nat.choose n (n + 1) : ℤ)

end

end A291685.P15659582148382343498

/-! ## A291685.P17043392566567353827

`or(A000007(n), A291684(A000096(n+1)))`
-/

namespace A291685.P17043392566567353827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A291684 (A000096 (n + 1)).toNat)

end

end A291685.P17043392566567353827

/-! ## A291685.P6100777270096722792

`A291684(A000096(n+1))^A057428(n)²`
-/

namespace A291685.P6100777270096722792
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A291684 (A000096 (n + 1)).toNat : ℚ) ^ (A057428 n ^ 2 : ℤ)

end

end A291685.P6100777270096722792

/-! ## A291685.P9836211549384086735

`A291684(A000096(n+1))/gcd(3, A000079(n))`
-/

namespace A291685.P9836211549384086735
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A291684 (A000096 (n + 1)).toNat : ℚ) / (Int.gcd 3 (A000079 n) : ℚ)

end

end A291685.P9836211549384086735

/-! ## A291685.P11715901565997213459

`A007318(A000096(n))*A291684(A000096(n+1))`
-/

namespace A291685.P11715901565997213459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A000096 n).toNat * A291684 (A000096 (n + 1)).toNat

end

end A291685.P11715901565997213459

/-! ## A291685.P11303088886869099164

`A000007(n)+record[A291684(A049777(n+1))]`
-/

namespace A291685.P11303088886869099164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291684 (A049777 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A291685.P11303088886869099164

/-! ## A291685.P13416552964507853583

`A014963(A000217(n+4))*A291684(A000096(n+1))`
-/

namespace A291685.P13416552964507853583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A000217 (n + 4)).toNat * A291684 (A000096 (n + 1)).toNat

end

end A291685.P13416552964507853583

/-! ## A291685.P13618853184650989124

`A291684(A000217(2*n+1))+A291684(A000096(n+1))`
-/

namespace A291685.P13618853184650989124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291684 (A000217 (2 * n + 1)).toNat + A291684 (A000096 (n + 1)).toNat

end

end A291685.P13618853184650989124

/-!
# A291686: Numbers whose prime indices other than 1 are distinct prime numbers.

The programs for A291686, the canonical program `A291686.P6064042284927362278` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A291686 has offset 1).

The definition of A291686 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A291686.P6064042284927362278

`eq[A005087(n+1), A302242(n+1)]+1`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A291686

/-- `eq[A005087(n+1), A302242(n+1)]+1` -/
def P6064042284927362278.Spec : Prop :=
  ∀ n, (P6064042284927362278.a n : ℤ) = A291686 (n + 1)

theorem P6064042284927362278.correct : P6064042284927362278.Spec := by
  intro n
  simp only [A291686, Nat.add_sub_cancel]

end A291686

/-! ## A291686.P6651084626680344044

`lt[A302242(n+1), A001221(2*(n+1))]+1`
-/

namespace A291686.P6651084626680344044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302242 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A291686.P6651084626680344044

namespace A291686

/-- `lt[A302242(n+1), A001221(2*(n+1))]+1` -/
def P6651084626680344044.Spec : Prop :=
  ∀ n, (P6651084626680344044.a n : ℤ) = A291686 (n + 1)

end A291686

/-! ## A291686.P10440113024232707707

`eq[A001222(A301957(n+1)), A302242(n+1)]+1`
-/

namespace A291686.P10440113024232707707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A301957 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302242 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A291686.P10440113024232707707

namespace A291686

/-- `eq[A001222(A301957(n+1)), A302242(n+1)]+1` -/
def P10440113024232707707.Spec : Prop :=
  ∀ n, (P10440113024232707707.a n : ℤ) = A291686 (n + 1)

end A291686

/-! ## A291686.P12356960501161996310

`eq[A257994(A055231(n+1)), A302242(n+1)]+1`
-/

namespace A291686.P12356960501161996310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257994 (A055231 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302242 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A291686.P12356960501161996310

namespace A291686

/-- `eq[A257994(A055231(n+1)), A302242(n+1)]+1` -/
def P12356960501161996310.Spec : Prop :=
  ∀ n, (P12356960501161996310.a n : ℤ) = A291686 (n + 1)

end A291686

/-! ## A291686.P15068742146369715625

`eq[A279952(n+1), A302242(n+1)]+1`
-/

namespace A291686.P15068742146369715625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279952 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302242 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A291686.P15068742146369715625

namespace A291686

/-- `eq[A279952(n+1), A302242(n+1)]+1` -/
def P15068742146369715625.Spec : Prop :=
  ∀ n, (P15068742146369715625.a n : ℤ) = A291686 (n + 1)

end A291686

/-! ## A291686.P6011894609643465296

`filter[A302540(n+1), A353627(#)]`
-/

namespace A291686.P6011894609643465296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302540 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353627 (f1 j).toNat = 1) n)

end

end A291686.P6011894609643465296

namespace A291686

/-- `filter[A302540(n+1), A353627(#)]` -/
def P6011894609643465296.Spec : Prop :=
  ∀ n, P6011894609643465296.a n = A291686 (n + 1)

end A291686

/-! ## A291686.P12573908912250025855

`∩[A122132(n+1), A302540(n+1)]`
-/

namespace A291686.P12573908912250025855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122132 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302540 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A291686.P12573908912250025855

namespace A291686

/-- `∩[A122132(n+1), A302540(n+1)]` -/
def P12573908912250025855.Spec : Prop :=
  ∀ n, (P12573908912250025855.a n : ℤ) = A291686 (n + 1)

end A291686

/-!
# A291687: Primes of the form k!4+4, where k!4 is the quadruple factorial number (A007662).

The programs for A291687, there is no canonical definition to state claims against.
-/

/-! ## A291687.P9944121741588532667

`A007662(A291122(n+2))+4`
-/

namespace A291687.P9944121741588532667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007662 (A291122 (n + 2)).toNat + 4

end

end A291687.P9944121741588532667

/-!
# A291688: Number of permutations p of [2n] such that 0p has a nonincreasing jump sequence beginning with n.

The programs for A291688, there is no canonical definition to state claims against.
-/

/-! ## A291688.P6364695573555255831

`A303204(2*n)`
-/

namespace A291688.P6364695573555255831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303204 (2 * n)

end

end A291688.P6364695573555255831

/-! ## A291688.P7776561366870641972

`or(A000007(n), A303204(A005843(n)))`
-/

namespace A291688.P7776561366870641972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A303204 (A005843 n).toNat)

end

end A291688.P7776561366870641972

/-! ## A291688.P4411680000803596227

`A303204(A005843(n))+char[A017477(n)]`
-/

namespace A291688.P4411680000803596227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017477 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303204 (A005843 n).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A291688.P4411680000803596227

/-! ## A291688.P1699768774628532615

`A303204(A005843(n))^(A052709(n)%2)`
-/

namespace A291688.P1699768774628532615
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A303204 (A005843 n).toNat : ℚ) ^ (Int.tmod (A052709 n) 2 : ℤ)

end

end A291688.P1699768774628532615

/-! ## A291688.P12829764881218772336

`A303204(A005843(n))+char[A234807(n+1)]`
-/

namespace A291688.P12829764881218772336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234807 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303204 (A005843 n).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A291688.P12829764881218772336

/-! ## A291688.P1283303710649916260

`A303204(A005843(n))+char[A234814(n+1)]`
-/

namespace A291688.P1283303710649916260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234814 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303204 (A005843 n).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A291688.P1283303710649916260

/-! ## A291688.P13858579587665728350

`A303204(A005843(n))+char[A234816(n+1)]`
-/

namespace A291688.P13858579587665728350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234816 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303204 (A005843 n).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A291688.P13858579587665728350

/-! ## A291688.P3924208584744172284

`A303204(A005843(n))+char[A234818(n+1)]`
-/

namespace A291688.P3924208584744172284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234818 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303204 (A005843 n).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A291688.P3924208584744172284

/-! ## A291688.P16767538915018133398

`A303204(A005843(n))/A032741(A000040(n+1))`
-/

namespace A291688.P16767538915018133398
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A303204 (A005843 n).toNat : ℚ) / (A032741 (A000040 (n + 1)).toNat : ℚ)

end

end A291688.P16767538915018133398

/-! ## A291688.P13321093611064935350

`A303204(A005843(n))/A300826(A006530(n+1))`
-/

namespace A291688.P13321093611064935350
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A303204 (A005843 n).toNat : ℚ) / (A300826 (A006530 (n + 1)).toNat : ℚ)

end

end A291688.P13321093611064935350

/-!
# A291689: Numbers n such that n^2 +- n +- 1 are all composite.

The programs for A291689, there is no canonical definition to state claims against.
-/

/-! ## A291689.P5393598953084708346

`eq[1, A291654(n+1)]+1`
-/

namespace A291689.P5393598953084708346
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291654 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A291689.P5393598953084708346

/-! ## A291689.P16716125384155880380

`eq[1, A291654(gcd(n, C(2, n)))]`
-/

namespace A291689.P16716125384155880380
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291654 (Nat.gcd n (Nat.choose 2 n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A291689.P16716125384155880380

/-! ## A291689.P4670495237251560857

`eq[1, A291654(A028310(n))]`
-/

namespace A291689.P4670495237251560857
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291654 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A291689.P4670495237251560857

/-! ## A291689.P14098365206775629861

`A020725(eq[1, A291654(n+1)])`
-/

namespace A291689.P14098365206775629861
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291654 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A291689.P14098365206775629861

/-! ## A291689.P2000824556367738309

`eq[1, A291654(A169585(n)+n)]`
-/

namespace A291689.P2000824556367738309
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291654 (A169585 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A291689.P2000824556367738309

/-! ## A291689.P1199082982095746098

`eq[1, A291654(A233583(n+1))]`
-/

namespace A291689.P1199082982095746098
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291654 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A291689.P1199082982095746098

/-!
# A291691: Primes p such that gpf(lpf(2^p - 1) - 1) = p.

The programs for A291691, there is no canonical definition to state claims against.
-/

/-! ## A291691.P15893250132657142911

`record[gcd(A000040(n+1), A292238(n+1))]`
-/

namespace A291691.P15893250132657142911
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000040 (n + 1)) (A292238 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A291691.P15893250132657142911

/-! ## A291691.P6844944844618045240

`∩[A065722(n+1), A235986(n+1)]`
-/

namespace A291691.P6844944844618045240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065722 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235986 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A291691.P6844944844618045240

/-! ## A291691.P15262248287814171820

`∩[A039201(n+1), A371694(n+1)]`
-/

namespace A291691.P15262248287814171820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039201 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371694 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A291691.P15262248287814171820

/-! ## A291691.P10692101974032620103

`∩[A160544(n+1), A371694(n+1)]`
-/

namespace A291691.P10692101974032620103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160544 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371694 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A291691.P10692101974032620103

/-! ## A291691.P15388066060452958485

`∩[A188459(n+1), A371694(n+1)]`
-/

namespace A291691.P15388066060452958485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188459 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371694 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A291691.P15388066060452958485

/-!
# A291693: Expansion of Product_{k>=1} (1 + x^q(k)), where q(k) = [x^k] Product_{k>=1} (1 + x^k).

The programs for A291693, there is no canonical definition to state claims against.
-/

/-! ## A291693.P6006611716124646240

`A362914(A055998(n)+A020654(n+2))`
-/

namespace A291693.P6006611716124646240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362914 (A055998 n + A020654 (n + 2)).toNat

end

end A291693.P6006611716124646240

/-! ## A291693.P15908454988158203558

`A121902(A166814(n+2))`
-/

namespace A291693.P15908454988158203558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121902 (A166814 (n + 2)).toNat

end

end A291693.P15908454988158203558

/-! ## A291693.P1961857122412947059

`A360010(A365664(n)+A326540(3*n+4))`
-/

namespace A291693.P1961857122412947059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360010 (A365664 (n + 10) + A326540 (3 * n + 4)).toNat

end

end A291693.P1961857122412947059

/-! ## A291693.P9811873577082315290

`A204560(A004320(n+1))`
-/

namespace A291693.P9811873577082315290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204560 (A004320 (n + 1)).toNat

end

end A291693.P9811873577082315290

/-! ## A291693.P7663969973342194461

`A300287(A219499(n+1))`
-/

namespace A291693.P7663969973342194461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300287 (A219499 (n + 1)).toNat

end

end A291693.P7663969973342194461

/-!
# A291694: Array of Markov triples (x,y,z) sorted by z, read by rows.

The programs for A291694, there is no canonical definition to state claims against.
-/

/-! ## A291694.P8110895083168655508

`A128330(A351372(n+1))`
-/

namespace A291694.P8110895083168655508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128330 (A351372 (n + 1)).toNat

end

end A291694.P8110895083168655508

/-! ## A291694.P2894817841092872345

`A237265(A351372(n+1)²)`
-/

namespace A291694.P2894817841092872345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237265 (A351372 (n + 1) ^ 2).toNat

end

end A291694.P2894817841092872345

/-! ## A291694.P813135647573363467

`A319951(A351372(n+1)+1)`
-/

namespace A291694.P813135647573363467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319951 (A351372 (n + 1) + 1).toNat

end

end A291694.P813135647573363467

/-! ## A291694.P11845594716817331035

`A237265(A351372(n+1)*A351372(n+1))`
-/

namespace A291694.P11845594716817331035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237265 (A351372 (n + 1) * A351372 (n + 1)).toNat

end

end A291694.P11845594716817331035

/-! ## A291694.P12032945320099614797

`A270362(A351372(n+1))%A038372(3*n+5)`
-/

namespace A291694.P12032945320099614797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A270362 (A351372 (n + 1)).toNat) (A038372 (3 * n + 5))

end

end A291694.P12032945320099614797

/-!
# A291697: a(n) = [x^n] Product_{k>=0} ((1 + x^(2*k+1))/(1 - x^(2*k+1)))^n.

The programs for A291697, there is no canonical definition to state claims against.
-/

/-! ## A291697.P14105297733964639013

`A289522(∑[4*n])`
-/

namespace A291697.P14105297733964639013
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289522 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A291697.P14105297733964639013

/-! ## A291697.P5904713383635483509

`record[A289522(A128099(n))]`
-/

namespace A291697.P5904713383635483509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289522 (A128099 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A291697.P5904713383635483509

/-!
# A291698: a(n) = [x^n] Product_{k>=1} (1 + n*x^k).

The programs for A291698, there is no canonical definition to state claims against.
-/

/-! ## A291698.P14798165999870995190

`A286957(∑[4*n])`
-/

namespace A291698.P14798165999870995190
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286957 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A291698.P14798165999870995190

/-! ## A291698.P10158760425891485035

`abs(1-A286957(A106232(n+1)))+1`
-/

namespace A291698.P10158760425891485035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A286957 (A106232 (n + 1)).toNat| + 1

end

end A291698.P10158760425891485035

/-! ## A291698.P8258631069964400524

`A286957(A106232(n+1))%A074554(n)`
-/

namespace A291698.P8258631069964400524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A286957 (A106232 (n + 1)).toNat) (A074554 n)

end

end A291698.P8258631069964400524

/-! ## A291698.P7610147150535646946

`gcd(A151933(n), A286957(A106232(n+1)))`
-/

namespace A291698.P7610147150535646946
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A151933 n) (A286957 (A106232 (n + 1)).toNat)

end

end A291698.P7610147150535646946

/-! ## A291698.P755304480537392169

`or(A000007(n), A286957(A106232(n+1)))`
-/

namespace A291698.P755304480537392169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A286957 (A106232 (n + 1)).toNat)

end

end A291698.P755304480537392169

/-! ## A291698.P18303230133573289337

`A286957(A106232(n+1))^A007318(C(n, n+2))`
-/

namespace A291698.P18303230133573289337
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A286957 (A106232 (n + 1)).toNat : ℚ) ^ (A007318 (Nat.choose n (n + 2)) : ℤ)

end

end A291698.P18303230133573289337

/-! ## A291698.P12318298415712377510

`A344094(n)/n^n`
-/

namespace A291698.P12318298415712377510
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A344094 n : ℚ) / (n ^ n : ℚ)

end

end A291698.P12318298415712377510

/-! ## A291698.P865479410089602235

`A000009(n)/A292305(n)*A344094(n)`
-/

namespace A291698.P865479410089602235
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000009 n : ℚ) / (A292305 n : ℚ) * (A344094 n : ℚ)

end

end A291698.P865479410089602235

/-!
# A291699: a(n) = n^n*(2*n)!/(n!*(n + 1)!).

The programs for A291699, the canonical program `A291699.P7038191437602574427` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A291699 has offset 0).

The definition of A291699 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A291699.P7038191437602574427

`A000312(n)*A000108(n)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A291699

/-- `A000312(n)*A000108(n)` -/
def P7038191437602574427.Spec : Prop :=
  ∀ n, P7038191437602574427.a n = A291699 n

theorem P7038191437602574427.correct : P7038191437602574427.Spec := by
  intro n
  simp only [A291699]

end A291699

/-! ## A291699.P5811439258520934333

`n^n*(2*n)!/(n!*(n+1)!)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A291699.P5811439258520934333
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n ^ n * Nat.factorial (2 * n) : ℚ) / (Nat.factorial n * Nat.factorial (n + 1) : ℚ)

end

end A291699.P5811439258520934333

namespace A291699

/-- `n^n*(2*n)!/(n!*(n+1)!)` -/
def P5811439258520934333.Spec : Prop :=
  ∀ n, P5811439258520934333.a n = (A291699 n : ℚ)

end A291699

/-! ## A291699.P15826654655135948380

`C(2*n, n)/(n+1)*n^n`
-/

namespace A291699.P15826654655135948380
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (2 * n) n : ℚ) / (n + 1 : ℚ) * (n ^ n : ℚ)

end

end A291699.P15826654655135948380

namespace A291699

/-- `C(2*n, n)/(n+1)*n^n` -/
def P15826654655135948380.Spec : Prop :=
  ∀ n, P15826654655135948380.a n = (A291699 n : ℚ)

end A291699

/-! ## A291699.P17027661081258567519

`abs(n^n*A168491(n))`
-/

namespace A291699.P17027661081258567519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n ^ n : ℤ) * A168491 n|

end

end A291699.P17027661081258567519

namespace A291699

/-- `abs(n^n*A168491(n))` -/
def P17027661081258567519.Spec : Prop :=
  ∀ n, P17027661081258567519.a n = A291699 n

end A291699

/-! ## A291699.P8822488763309765666

`n^n*A008313(n²)`
-/

namespace A291699.P8822488763309765666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ n : ℤ) * A008313 (n ^ 2)

end

end A291699.P8822488763309765666

namespace A291699

/-- `n^n*A008313(n²)` -/
def P8822488763309765666.Spec : Prop :=
  ∀ n, P8822488763309765666.a n = A291699 n

end A291699

