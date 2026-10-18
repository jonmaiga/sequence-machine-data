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
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C034
import Seq.B000.C035
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
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
# A235300: Number of (n+1) X (10+1) 0..3 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 3 (constant-stress 1 X 1 tilings).

The programs for A235300, there is no canonical definition to state claims against.
-/

/-! ## A235300.P15021811203044287290

`A235301(A374011(n+1))`
-/

namespace A235300.P15021811203044287290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235301 (A374011 (n + 1)).toNat

end

end A235300.P15021811203044287290

/-! ## A235300.P4191371278595610880

`A235301(A167499(n+8)+5)`
-/

namespace A235300.P4191371278595610880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235301 (A167499 (n + 8) + 5).toNat

end

end A235300.P4191371278595610880

/-! ## A235300.P15844141077169159742

`A235301(A000217(n+9)+10)`
-/

namespace A235300.P15844141077169159742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235301 (A000217 (n + 9) + 10).toNat

end

end A235300.P15844141077169159742

/-! ## A235300.P14831509550819222574

`A235301(eq[9, A002262(n)]+1)`
-/

namespace A235300.P14831509550819222574
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235301 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A235300.P14831509550819222574

/-! ## A235300.P9242731309391871948

`A235301(eq[11, A131818(n+1)])`
-/

namespace A235300.P9242731309391871948
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235301 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A235300.P9242731309391871948

/-!
# A235301: T(n,k) is the number of (n+1) X (k+1) 0..3 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 3 (constant-stress 1 X 1 tilings).

The programs for A235301, there is no canonical definition to state claims against.
-/

/-! ## A235301.P15070065752261420997

`A235017(n+1)+A000120(A186962(n+1))`
-/

namespace A235301.P15070065752261420997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235017 (n + 1) + A000120 (A186962 (n + 1)).toNat

end

end A235301.P15070065752261420997

/-!
# A235302: Number of (n+1) X (n+1) 0..5 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 6 (constant-stress 1 X 1 tilings).

The programs for A235302, there is no canonical definition to state claims against.
-/

/-! ## A235302.P7193650969375976587

`A235310(∑[4*n]+1)`
-/

namespace A235302.P7193650969375976587
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235310 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A235302.P7193650969375976587

/-! ## A235302.P6869342020862021484

`lcm(2, A235310(A001844(n)))`
-/

namespace A235302.P6869342020862021484
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A235310 (A001844 n).toNat)

end

end A235302.P6869342020862021484

/-! ## A235302.P10976589835375478859

`or(2, A235310(∑[A008574(n)]))`
-/

namespace A235302.P10976589835375478859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (A235310 (∑ j ∈ Finset.range (n + 1), f1 j).toNat)

end

end A235302.P10976589835375478859

/-! ## A235302.P15189943507127583201

`record[A003982(n)*A235310(n+1)]`
-/

namespace A235302.P15189943507127583201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A235310 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235302.P15189943507127583201

/-! ## A235302.P2987295993222062262

`record[gcd(A114327(n), A235310(n+1))]`
-/

namespace A235302.P2987295993222062262
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114327 n) (A235310 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235302.P2987295993222062262

/-!
# A235303: Number of (n+1) X (1+1) 0..5 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 6 (constant-stress 1 X 1 tilings).

The programs for A235303, there is no canonical definition to state claims against.
-/

/-! ## A235303.P8227777700324314711

`A235304(n+1)-(A235272(n+1)+A235271(n+1))`
-/

namespace A235303.P8227777700324314711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235304 (n + 1) - (A235272 (n + 1) + A235271 (n + 1))

end

end A235303.P8227777700324314711

/-! ## A235303.P11376913495394850842

`A235313(n+1)-(A235312(n+1)+A235304(n+1))`
-/

namespace A235303.P11376913495394850842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235313 (n + 1) - (A235312 (n + 1) + A235304 (n + 1))

end

end A235303.P11376913495394850842

/-! ## A235303.P14637162457982415528

`A235304(n+1)-(A235280(∑[n]+1)+A235272(n+1))`
-/

namespace A235303.P14637162457982415528
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235304 (n + 1) - (A235280 (∑ j ∈ Finset.range (n + 1), f1 j + 1) + A235272 (n + 1))

end

end A235303.P14637162457982415528

/-! ## A235303.P6997103303482602010

`A235304(n+1)-(A235272(n+1)+record[A235280(n+1)])`
-/

namespace A235303.P6997103303482602010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235280 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235304 (n + 1) - (A235272 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A235303.P6997103303482602010

/-! ## A235303.P14613289765224835409

`A235310(∑[n]+1)`
-/

namespace A235303.P14613289765224835409
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235310 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A235303.P14613289765224835409

/-!
# A235304: Number of (n+1) X (2+1) 0..5 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 6 (constant-stress 1 X 1 tilings).

The programs for A235304, there is no canonical definition to state claims against.
-/

/-! ## A235304.P1871018874428282152

`A235271(n+1)+A235303(n+1)+A235272(n+1)`
-/

namespace A235304.P1871018874428282152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235271 (n + 1) + (A235303 (n + 1) + A235272 (n + 1))

end

end A235304.P1871018874428282152

/-! ## A235304.P520793958382999755

`A235305(n+1)-(A235273(n+1)+A235272(n+1))`
-/

namespace A235304.P520793958382999755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235305 (n + 1) - (A235273 (n + 1) + A235272 (n + 1))

end

end A235304.P520793958382999755

/-! ## A235304.P10109826787565748376

`A235313(n+1)-(A235312(n+1)+A235303(n+1))`
-/

namespace A235304.P10109826787565748376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235313 (n + 1) - (A235312 (n + 1) + A235303 (n + 1))

end

end A235304.P10109826787565748376

/-! ## A235304.P10488700477512062807

`A235314(n+1)-(A235313(n+1)+A235305(n+1))`
-/

namespace A235304.P10488700477512062807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235314 (n + 1) - (A235313 (n + 1) + A235305 (n + 1))

end

end A235304.P10488700477512062807

/-! ## A235304.P461898432714390762

`A235272(n+1)+A235303(n+1)+A235280(∑[n]+1)`
-/

namespace A235304.P461898432714390762
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235272 (n + 1) + (A235303 (n + 1) + A235280 (∑ j ∈ Finset.range (n + 1), f1 j + 1))

end

end A235304.P461898432714390762

/-!
# A235305: Number of (n+1) X (3+1) 0..5 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 6 (constant-stress 1 X 1 tilings).

The programs for A235305, there is no canonical definition to state claims against.
-/

/-! ## A235305.P7976823841916601317

`A235272(n+1)+A235304(n+1)+A235273(n+1)`
-/

namespace A235305.P7976823841916601317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235272 (n + 1) + (A235304 (n + 1) + A235273 (n + 1))

end

end A235305.P7976823841916601317

/-! ## A235305.P9836040944022483589

`A235314(n+1)-(A235313(n+1)+A235304(n+1))`
-/

namespace A235305.P9836040944022483589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235314 (n + 1) - (A235313 (n + 1) + A235304 (n + 1))

end

end A235305.P9836040944022483589

/-! ## A235305.P11845524023110408743

`A235272(n+1)+A235304(n+1)+A235280(∑[n+2]+4)`
-/

namespace A235305.P11845524023110408743
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235272 (n + 1) + (A235304 (n + 1) + A235280 (∑ j ∈ Finset.range (n + 1), f1 j + 4))

end

end A235305.P11845524023110408743

/-! ## A235305.P17705798092903951551

`A235310(∑[n+2]+4)`
-/

namespace A235305.P17705798092903951551
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235310 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A235305.P17705798092903951551

/-! ## A235305.P3984522151463778790

`lcm(2, A235310(A167614(n+1)))`
-/

namespace A235305.P3984522151463778790
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A235310 (A167614 (n + 1)).toNat)

end

end A235305.P3984522151463778790

/-!
# A235306: Number of (n+1) X (4+1) 0..5 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 6 (constant-stress 1 X 1 tilings).

The programs for A235306, there is no canonical definition to state claims against.
-/

/-! ## A235306.P10827588666135860679

`A235310(∑[n+3]+7)`
-/

namespace A235306.P10827588666135860679
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235310 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A235306.P10827588666135860679

/-! ## A235306.P6511859866784985957

`lcm(2, A235310(A027379(n+1)+7))`
-/

namespace A235306.P6511859866784985957
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A235310 (A027379 (n + 1) + 7).toNat)

end

end A235306.P6511859866784985957

/-! ## A235306.P16586750638391564633

`A007318(C(2, n))*A235310(A027379(n+1)+7)`
-/

namespace A235306.P16586750638391564633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A235310 (A027379 (n + 1) + 7).toNat

end

end A235306.P16586750638391564633

/-! ## A235306.P13115376484405560856

`A000041(C(2, n+2))*A235310(A027379(n+1)+7)`
-/

namespace A235306.P13115376484405560856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose 2 (n + 2)) * A235310 (A027379 (n + 1) + 7).toNat

end

end A235306.P13115376484405560856

/-! ## A235306.P7411940621329775807

`A007318(val(n+1, 7))*A235310(A027379(n+1)+7)`
-/

namespace A235306.P7411940621329775807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.valuation (n + 1) 7) * A235310 (A027379 (n + 1) + 7).toNat

end

end A235306.P7411940621329775807

/-!
# A235307: Number of (n+1) X (5+1) 0..5 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 6 (constant-stress 1 X 1 tilings).

The programs for A235307, there is no canonical definition to state claims against.
-/

/-! ## A235307.P4000469799492416371

`A235310(A374005(n+1))`
-/

namespace A235307.P4000469799492416371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235310 (A374005 (n + 1)).toNat

end

end A235307.P4000469799492416371

/-! ## A235307.P5426494041503099128

`A235310(A167499(n+3))`
-/

namespace A235307.P5426494041503099128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235310 (A167499 (n + 3)).toNat

end

end A235307.P5426494041503099128

/-! ## A235307.P10314926308419120255

`A235310(A155212(n)+13)`
-/

namespace A235307.P10314926308419120255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235310 (A155212 n + 13).toNat

end

end A235307.P10314926308419120255

/-! ## A235307.P16112383530673737862

`A235310(A056000(n)+15)`
-/

namespace A235307.P16112383530673737862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235310 (A056000 n + 15).toNat

end

end A235307.P16112383530673737862

/-! ## A235307.P13761577835224567604

`A235310(A000124(n+4)+4)`
-/

namespace A235307.P13761577835224567604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235310 (A000124 (n + 4) + 4).toNat

end

end A235307.P13761577835224567604

/-!
# A235308: Number of (n+1) X (6+1) 0..5 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 6 (constant-stress 1 X 1 tilings).

The programs for A235308, there is no canonical definition to state claims against.
-/

/-! ## A235308.P8585953721939026314

`A235310(A374007(n+1))`
-/

namespace A235308.P8585953721939026314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235310 (A374007 (n + 1)).toNat

end

end A235308.P8585953721939026314

/-! ## A235308.P2293579175464015385

`A235310(A000124(n+5)+5)`
-/

namespace A235308.P2293579175464015385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235310 (A000124 (n + 5) + 5).toNat

end

end A235308.P2293579175464015385

/-! ## A235308.P15318798254044492534

`A235310(A000096(n+4)+7)`
-/

namespace A235308.P15318798254044492534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235310 (A000096 (n + 4) + 7).toNat

end

end A235308.P15318798254044492534

/-! ## A235308.P8208374016388037550

`A235310(A000217(n+5)+6)`
-/

namespace A235308.P8208374016388037550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235310 (A000217 (n + 5) + 6).toNat

end

end A235308.P8208374016388037550

/-! ## A235308.P12135784370638099390

`A235310(A046691(n+3)+10)`
-/

namespace A235308.P12135784370638099390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235310 (A046691 (n + 3) + 10).toNat

end

end A235308.P12135784370638099390

/-!
# A235309: Number of (n+1) X (7+1) 0..5 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 6 (constant-stress 1 X 1 tilings).

The programs for A235309, there is no canonical definition to state claims against.
-/

/-! ## A235309.P9262249819183728847

`A235310(A374008(n+1))`
-/

namespace A235309.P9262249819183728847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235310 (A374008 (n + 1)).toNat

end

end A235309.P9262249819183728847

/-! ## A235309.P327367767681837402

`A235310(A056119(n)+28)`
-/

namespace A235309.P327367767681837402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235310 (A056119 n + 28).toNat

end

end A235309.P327367767681837402

/-! ## A235309.P9653082842958446626

`A235310(A167499(n+5)+2)`
-/

namespace A235309.P9653082842958446626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235310 (A167499 (n + 5) + 2).toNat

end

end A235309.P9653082842958446626

/-! ## A235309.P377638709222955089

`A235310(A167614(n+5)+4)`
-/

namespace A235309.P377638709222955089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235310 (A167614 (n + 5) + 4).toNat

end

end A235309.P377638709222955089

/-! ## A235309.P7575281898537230915

`A235310(A000124(n+6)+6)`
-/

namespace A235309.P7575281898537230915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235310 (A000124 (n + 6) + 6).toNat

end

end A235309.P7575281898537230915

/-!
# A235310: T(n,k) is the number of (n+1) X (k+1) 0..5 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 6 (constant-stress 1 X 1 tilings).

The programs for A235310, there is no canonical definition to state claims against.
-/

/-! ## A235310.P8570993929845845181

`A235303(A002024(n+1)^A059592(n))`
-/

namespace A235310.P8570993929845845181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235303 (SequenceMachineLib.roundAway ((A002024 (n + 1) : ℚ) ^ (A059592 n : ℤ))).toNat

end

end A235310.P8570993929845845181

/-! ## A235310.P418807119860487985

`A235303(A002024(n+1)^A102423(n))`
-/

namespace A235310.P418807119860487985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235303 (SequenceMachineLib.roundAway ((A002024 (n + 1) : ℚ) ^ (A102423 n : ℤ))).toNat

end

end A235310.P418807119860487985

/-! ## A235310.P16881429918756538321

`A235303(A214046(n+1)^A059592(n))`
-/

namespace A235310.P16881429918756538321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235303 (SequenceMachineLib.roundAway ((A214046 (n + 1) : ℚ) ^ (A059592 n : ℤ))).toNat

end

end A235310.P16881429918756538321

/-!
# A235311: Number of (n+1) X (n+1) 0..6 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 7 (constant-stress 1 X 1 tilings).

The programs for A235311, there is no canonical definition to state claims against.
-/

/-! ## A235311.P5461299720243759280

`A235319(∑[4*n]+1)`
-/

namespace A235311.P5461299720243759280
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235319 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A235311.P5461299720243759280

/-! ## A235311.P17758401952761571321

`lcm(2, A235319(A001844(n)))`
-/

namespace A235311.P17758401952761571321
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A235319 (A001844 n).toNat)

end

end A235311.P17758401952761571321

/-! ## A235311.P2233614797093648789

`record[gcd(A114327(n), A235319(n+1))]`
-/

namespace A235311.P2233614797093648789
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114327 n) (A235319 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235311.P2233614797093648789

/-! ## A235311.P11437380382621980123

`A235319(A001844(n))^A007318(∑[n])`
-/

namespace A235311.P11437380382621980123
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A235319 (A001844 n).toNat : ℚ) ^ (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ)

end

end A235311.P11437380382621980123

/-! ## A235311.P17281513556692780318

`A235319(A001844(n))/A007318(C(2, n))`
-/

namespace A235311.P17281513556692780318
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A235319 (A001844 n).toNat : ℚ) / (A007318 (Nat.choose 2 n) : ℚ)

end

end A235311.P17281513556692780318

/-!
# A235312: Number of (n+1) X (1+1) 0..6 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 7 (constant-stress 1 X 1 tilings).

The programs for A235312, there is no canonical definition to state claims against.
-/

/-! ## A235312.P5450781958447963903

`A235313(n+1)-(A235304(n+1)+A235303(n+1))`
-/

namespace A235312.P5450781958447963903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235313 (n + 1) - (A235304 (n + 1) + A235303 (n + 1))

end

end A235312.P5450781958447963903

/-! ## A235312.P4078034763003205157

`A235313(n+1)-(A235304(n+1)+record[A235310(n+1)])`
-/

namespace A235312.P4078034763003205157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235310 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235313 (n + 1) - (A235304 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A235312.P4078034763003205157

/-! ## A235312.P13120614301936609524

`A235319(∑[n]+1)`
-/

namespace A235312.P13120614301936609524
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235319 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A235312.P13120614301936609524

/-! ## A235312.P3026853766357326554

`record[A235319(n+1)]`
-/

namespace A235312.P3026853766357326554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235319 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235312.P3026853766357326554

/-! ## A235312.P15560586080784032655

`lcm(2, A235319(A000124(n)))`
-/

namespace A235312.P15560586080784032655
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A235319 (A000124 n).toNat)

end

end A235312.P15560586080784032655

/-!
# A235313: Number of (n+1) X (2+1) 0..6 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 7 (constant-stress 1 X 1 tilings).

The programs for A235313, there is no canonical definition to state claims against.
-/

/-! ## A235313.P5913046469404464876

`A235303(n+1)+A235312(n+1)+A235304(n+1)`
-/

namespace A235313.P5913046469404464876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235303 (n + 1) + (A235312 (n + 1) + A235304 (n + 1))

end

end A235313.P5913046469404464876

/-! ## A235313.P3156490981708742151

`A235314(n+1)-(A235305(n+1)+A235304(n+1))`
-/

namespace A235313.P3156490981708742151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235314 (n + 1) - (A235305 (n + 1) + A235304 (n + 1))

end

end A235313.P3156490981708742151

/-! ## A235313.P3798169377570286880

`A235303(n+1)+A235319(∑[n]+1)+A235304(n+1)`
-/

namespace A235313.P3798169377570286880
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235303 (n + 1) + (A235319 (∑ j ∈ Finset.range (n + 1), f1 j + 1) + A235304 (n + 1))

end

end A235313.P3798169377570286880

/-! ## A235313.P14483322650500463619

`A235303(n+1)+A235304(n+1)+record[A235319(n+1)]`
-/

namespace A235313.P14483322650500463619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235319 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235303 (n + 1) + (A235304 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A235313.P14483322650500463619

/-! ## A235313.P14266285410592460720

`A235319(∑[n+1]+2)`
-/

namespace A235313.P14266285410592460720
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235319 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A235313.P14266285410592460720

/-!
# A235314: Number of (n+1) X (3+1) 0..6 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 7 (constant-stress 1 X 1 tilings).

The programs for A235314, there is no canonical definition to state claims against.
-/

/-! ## A235314.P9524179564648568042

`A235304(n+1)+A235313(n+1)+A235305(n+1)`
-/

namespace A235314.P9524179564648568042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235304 (n + 1) + (A235313 (n + 1) + A235305 (n + 1))

end

end A235314.P9524179564648568042

/-! ## A235314.P4058400693035173884

`A235319(∑[n+1]+2)+A235305(n+1)+A235304(n+1)`
-/

namespace A235314.P4058400693035173884
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235319 (∑ j ∈ Finset.range (n + 1), f1 j + 2) + (A235305 (n + 1) + A235304 (n + 1))

end

end A235314.P4058400693035173884

/-! ## A235314.P12662619133148369999

`A235319(∑[n+2]+4)`
-/

namespace A235314.P12662619133148369999
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235319 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A235314.P12662619133148369999

/-! ## A235314.P13482245857040788020

`lcm(2, A235319(A167614(n+1)))`
-/

namespace A235314.P13482245857040788020
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A235319 (A167614 (n + 1)).toNat)

end

end A235314.P13482245857040788020

/-! ## A235314.P2058632271563164613

`lcm(4, A235319(A000096(n+1)+4))`
-/

namespace A235314.P2058632271563164613
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 4 (A235319 (A000096 (n + 1) + 4).toNat)

end

end A235314.P2058632271563164613

/-!
# A235315: Number of (n+1) X (4+1) 0..6 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 7 (constant-stress 1 X 1 tilings).

The programs for A235315, there is no canonical definition to state claims against.
-/

/-! ## A235315.P2615893597547635810

`A235319(∑[n+3]+7)`
-/

namespace A235315.P2615893597547635810
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235319 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A235315.P2615893597547635810

/-! ## A235315.P2500251159377908227

`and(-1, A235319(A141214(n+1)))`
-/

namespace A235315.P2500251159377908227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A235319 (A141214 (n + 1)).toNat)

end

end A235315.P2500251159377908227

/-!
# A235316: Number of (n+1) X (5+1) 0..6 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 7 (constant-stress 1 X 1 tilings).

The programs for A235316, there is no canonical definition to state claims against.
-/

/-! ## A235316.P17942440181771487599

`A235319(A374005(n+1))`
-/

namespace A235316.P17942440181771487599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235319 (A374005 (n + 1)).toNat

end

end A235316.P17942440181771487599

/-! ## A235316.P6866722194439450433

`A235319(A167499(n+3))`
-/

namespace A235316.P6866722194439450433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235319 (A167499 (n + 3)).toNat

end

end A235316.P6866722194439450433

/-! ## A235316.P4254803459765434135

`A235319(A155212(n)+13)`
-/

namespace A235316.P4254803459765434135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235319 (A155212 n + 13).toNat

end

end A235316.P4254803459765434135

/-! ## A235316.P9745705093400768649

`A235319(A056000(n)+15)`
-/

namespace A235316.P9745705093400768649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235319 (A056000 n + 15).toNat

end

end A235316.P9745705093400768649

/-! ## A235316.P15313620435646249398

`A235319(eq[7, A066657(n)])`
-/

namespace A235316.P15313620435646249398
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235319 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A235316.P15313620435646249398

/-!
# A235317: Number of (n+1) X (6+1) 0..6 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 7 (constant-stress 1 X 1 tilings).

The programs for A235317, there is no canonical definition to state claims against.
-/

/-! ## A235317.P6235681541636384836

`A235319(A374007(n+1))`
-/

namespace A235317.P6235681541636384836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235319 (A374007 (n + 1)).toNat

end

end A235317.P6235681541636384836

/-! ## A235317.P4362374972956147748

`A235319(A166136(n+4))`
-/

namespace A235317.P4362374972956147748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235319 (A166136 (n + 4)).toNat

end

end A235317.P4362374972956147748

/-! ## A235317.P17544860158937845725

`A235319(∑[A020710(n)]+16)`
-/

namespace A235317.P17544860158937845725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020710 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235319 (∑ j ∈ Finset.range (n + 1), f1 j + 16).toNat

end

end A235317.P17544860158937845725

/-! ## A235317.P13356809914766183776

`A235319(A167614(n+4)+3)`
-/

namespace A235317.P13356809914766183776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235319 (A167614 (n + 4) + 3).toNat

end

end A235317.P13356809914766183776

/-! ## A235317.P8888679574595519203

`A235319(A000124(n+5)+5)`
-/

namespace A235317.P8888679574595519203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235319 (A000124 (n + 5) + 5).toNat

end

end A235317.P8888679574595519203

/-!
# A235318: Number of (n+1) X (7+1) 0..6 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 7 (constant-stress 1 X 1 tilings).

The programs for A235318, there is no canonical definition to state claims against.
-/

/-! ## A235318.P9152358083417720552

`A235319(A374008(n+1))`
-/

namespace A235318.P9152358083417720552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235319 (A374008 (n + 1)).toNat

end

end A235318.P9152358083417720552

/-! ## A235318.P11999341312787952562

`A235319(A056119(n)+28)`
-/

namespace A235318.P11999341312787952562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235319 (A056119 n + 28).toNat

end

end A235318.P11999341312787952562

/-! ## A235318.P4591248175127766486

`A235319(A166136(n+5)+1)`
-/

namespace A235318.P4591248175127766486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235319 (A166136 (n + 5) + 1).toNat

end

end A235318.P4591248175127766486

/-! ## A235318.P2043434770684669640

`A235319(A167499(n+5)+2)`
-/

namespace A235318.P2043434770684669640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235319 (A167499 (n + 5) + 2).toNat

end

end A235318.P2043434770684669640

/-! ## A235318.P4630022042324074439

`A235319(A000124(n+6)+6)`
-/

namespace A235318.P4630022042324074439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235319 (A000124 (n + 6) + 6).toNat

end

end A235318.P4630022042324074439

/-!
# A235319: T(n,k) is the number of (n+1) X (k+1) 0..6 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 7 (constant-stress 1 X 1 tilings).

The programs for A235319, there is no canonical definition to state claims against.
-/

/-! ## A235319.P3900687531079592813

`A235312(A002024(n+1)^A059592(n))`
-/

namespace A235319.P3900687531079592813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235312 (SequenceMachineLib.roundAway ((A002024 (n + 1) : ℚ) ^ (A059592 n : ℤ))).toNat

end

end A235319.P3900687531079592813

/-! ## A235319.P16358956551346562712

`A235312(A002024(n+1)^A102423(n))`
-/

namespace A235319.P16358956551346562712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235312 (SequenceMachineLib.roundAway ((A002024 (n + 1) : ℚ) ^ (A102423 n : ℤ))).toNat

end

end A235319.P16358956551346562712

/-! ## A235319.P10091227994708636913

`A235312(A214046(n+1)^A059592(n))`
-/

namespace A235319.P10091227994708636913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235312 (SequenceMachineLib.roundAway ((A214046 (n + 1) : ℚ) ^ (A059592 n : ℤ))).toNat

end

end A235319.P10091227994708636913

/-!
# A235320: The number of length n sequences on {0,1,2} such that there are an equal number of 0's and 1's or there are an equal number of 0's and 2's.

The programs for A235320, there is no canonical definition to state claims against.
-/

/-! ## A235320.P11149489059290286714

`A284565(5^n)`
-/

namespace A235320.P11149489059290286714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284565 (5 ^ n)

end

end A235320.P11149489059290286714

/-! ## A235320.P5822738705483565072

`A000360(2*5^n)`
-/

namespace A235320.P5822738705483565072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000360 (2 * 5 ^ n)

end

end A235320.P5822738705483565072

/-!
# A235321: E.g.f. satisfies: A'(x) = A(x)^4 * A(-x)^2 with A(0) = 1.

The programs for A235321, there is no canonical definition to state claims against.
-/

/-! ## A235321.P15364558321134326039

`A065361(∏[-or(1, -2^n)])`
-/

namespace A235321.P15364558321134326039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.lor 1 (-(2 ^ n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065361 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A235321.P15364558321134326039

/-! ## A235321.P4469972262974988458

`A065361(A005329(n))`
-/

namespace A235321.P4469972262974988458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065361 (A005329 n).toNat

end

end A235321.P4469972262974988458

/-!
# A235322: E.g.f. satisfies: A'(x) = A(x)^4 * A(-x) with A(0) = 1.

The programs for A235322, there is no canonical definition to state claims against.
-/

/-! ## A235322.P6095704098307957777

`A004396(∑[A235131(n)])`
-/

namespace A235322.P6095704098307957777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235131 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A235322.P6095704098307957777

/-! ## A235322.P15273154539880002128

`or(1, A324382(A069271(n)))`
-/

namespace A235322.P15273154539880002128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A324382 (A069271 n).toNat)

end

end A235322.P15273154539880002128

/-!
# A235323: Squared sum of the distinct prime factors of n, i.e., sopf(n)^2.

The programs for A235323, the canonical program `A235323.P2646876308871874381` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A235323 has offset 1).

The definition of A235323 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008472, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A235323.P2646876308871874381

`A008472(n+1)²`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A235323

/-- `A008472(n+1)²` -/
def P2646876308871874381.Spec : Prop :=
  ∀ n, P2646876308871874381.a n = A235323 (n + 1)

theorem P2646876308871874381.correct : P2646876308871874381.Spec := by
  intro n
  simp only [A235323, Nat.add_sub_cancel]

end A235323

/-! ## A235323.P359943568555481352

`∑{p}[n+1, #]²`
-/

namespace A235323.P359943568555481352
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ p ∈ Nat.primeFactors (f1 n), p) ^ 2

end

end A235323.P359943568555481352

namespace A235323

/-- `∑{p}[n+1, #]²` -/
def P359943568555481352.Spec : Prop :=
  ∀ n, (P359943568555481352.a n : ℤ) = A235323 (n + 1)

end A235323

/-! ## A235323.P18407839421618487975

`∑{p}[n+1, #]^2`
-/

namespace A235323.P18407839421618487975
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ p ∈ Nat.primeFactors (f1 n), p) ^ 2

end

end A235323.P18407839421618487975

namespace A235323

/-- `∑{p}[n+1, #]^2` -/
def P18407839421618487975.Spec : Prop :=
  ∀ n, (P18407839421618487975.a n : ℤ) = A235323 (n + 1)

end A235323

/-! ## A235323.P17117061845741416261

`∑{p}[n+1, #]*∑{p}[n+1, #]`
-/

namespace A235323.P17117061845741416261
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ p ∈ Nat.primeFactors (f1 n), p) * (∑ p ∈ Nat.primeFactors (f2 n), p)

end

end A235323.P17117061845741416261

namespace A235323

/-- `∑{p}[n+1, #]*∑{p}[n+1, #]` -/
def P17117061845741416261.Spec : Prop :=
  ∀ n, (P17117061845741416261.a n : ℤ) = A235323 (n + 1)

end A235323

/-! ## A235323.P17448261397166134405

`Δ[A024924(n)]²`
-/

namespace A235323.P17448261397166134405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024924 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A235323.P17448261397166134405

namespace A235323

/-- `Δ[A024924(n)]²` -/
def P17448261397166134405.Spec : Prop :=
  ∀ n, P17448261397166134405.a n = A235323 (n + 1)

end A235323

/-! ## A235323.P2395365052497319745

`A000290(∑{p}[n+1, #])`
-/

namespace A235323.P2395365052497319745
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (∑ p ∈ Nat.primeFactors (f1 n), p)

end

end A235323.P2395365052497319745

namespace A235323

/-- `A000290(∑{p}[n+1, #])` -/
def P2395365052497319745.Spec : Prop :=
  ∀ n, P2395365052497319745.a n = A235323 (n + 1)

end A235323

/-! ## A235323.P7785643437602204829

`A073395(∏{p}[n+1, #])`
-/

namespace A235323.P7785643437602204829
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073395 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A235323.P7785643437602204829

namespace A235323

/-- `A073395(∏{p}[n+1, #])` -/
def P7785643437602204829.Spec : Prop :=
  ∀ n, P7785643437602204829.a n = A235323 (n + 1)

end A235323

/-! ## A235323.P14617612460583262578

`A074373(∏{p}[n+1, #])`
-/

namespace A235323.P14617612460583262578
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074373 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A235323.P14617612460583262578

namespace A235323

/-- `A074373(∏{p}[n+1, #])` -/
def P14617612460583262578.Spec : Prop :=
  ∀ n, P14617612460583262578.a n = A235323 (n + 1)

end A235323

/-! ## A235323.P3744928634037821493

`(1-A074372(n+1))²`
-/

namespace A235323.P3744928634037821493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A074372 (n + 1)) ^ 2

end

end A235323.P3744928634037821493

namespace A235323

/-- `(1-A074372(n+1))²` -/
def P3744928634037821493.Spec : Prop :=
  ∀ n, P3744928634037821493.a n = A235323 (n + 1)

end A235323

/-! ## A235323.P10290384909470524811

`(1-A075653(n+1)+n)²`
-/

namespace A235323.P10290384909470524811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A075653 (n + 1) + (n : ℤ)) ^ 2

end

end A235323.P10290384909470524811

namespace A235323

/-- `(1-A075653(n+1)+n)²` -/
def P10290384909470524811.Spec : Prop :=
  ∀ n, P10290384909470524811.a n = A235323 (n + 1)

end A235323

/-! ## A235323.P18029943635579346072

`(1-A076694(n+1)+n)²`
-/

namespace A235323.P18029943635579346072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A076694 (n + 1) + (n : ℤ)) ^ 2

end

end A235323.P18029943635579346072

namespace A235323

/-- `(1-A076694(n+1)+n)²` -/
def P18029943635579346072.Spec : Prop :=
  ∀ n, P18029943635579346072.a n = A235323 (n + 1)

end A235323

/-! ## A235323.P17764671331685459458

`(2-A254340(n+1)+n)²`
-/

namespace A235323.P17764671331685459458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A254340 (n + 1) + (n : ℤ)) ^ 2

end

end A235323.P17764671331685459458

namespace A235323

/-- `(2-A254340(n+1)+n)²` -/
def P17764671331685459458.Spec : Prop :=
  ∀ n, P17764671331685459458.a n = A235323 (n + 1)

end A235323

/-! ## A235323.P11829081538893416382

`A073395(A007947(n+1))`
-/

namespace A235323.P11829081538893416382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073395 (A007947 (n + 1)).toNat

end

end A235323.P11829081538893416382

namespace A235323

/-- `A073395(A007947(n+1))` -/
def P11829081538893416382.Spec : Prop :=
  ∀ n, P11829081538893416382.a n = A235323 (n + 1)

end A235323

/-! ## A235323.P15198827392734566048

`A000290(A074372(n+1)-1)`
-/

namespace A235323.P15198827392734566048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (A074372 (n + 1) - 1).toNat

end

end A235323.P15198827392734566048

namespace A235323

/-- `A000290(A074372(n+1)-1)` -/
def P15198827392734566048.Spec : Prop :=
  ∀ n, P15198827392734566048.a n = A235323 (n + 1)

end A235323

/-! ## A235323.P9118343839361137742

`(A024924(n+1)-A024924(n))²`
-/

namespace A235323.P9118343839361137742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A024924 (n + 1) - A024924 n) ^ 2

end

end A235323.P9118343839361137742

namespace A235323

/-- `(A024924(n+1)-A024924(n))²` -/
def P9118343839361137742.Spec : Prop :=
  ∀ n, P9118343839361137742.a n = A235323 (n + 1)

end A235323

/-! ## A235323.P116881161628757440

`(A055631(n+1)+A001221(n+1))²`
-/

namespace A235323.P116881161628757440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A055631 (n + 1) + A001221 (n + 1)) ^ 2

end

end A235323.P116881161628757440

namespace A235323

/-- `(A055631(n+1)+A001221(n+1))²` -/
def P116881161628757440.Spec : Prop :=
  ∀ n, P116881161628757440.a n = A235323 (n + 1)

end A235323

/-! ## A235323.P3216335540219075939

`(A001222(n+1)-A008474(n+1))²`
-/

namespace A235323.P3216335540219075939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001222 (n + 1) - A008474 (n + 1)) ^ 2

end

end A235323.P3216335540219075939

namespace A235323

/-- `(A001222(n+1)-A008474(n+1))²` -/
def P3216335540219075939.Spec : Prop :=
  ∀ n, P3216335540219075939.a n = A235323 (n + 1)

end A235323

/-! ## A235323.P8338378233946444768

`(A000203(n+1)-A023890(n+1))²`
-/

namespace A235323.P8338378233946444768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) - A023890 (n + 1)) ^ 2

end

end A235323.P8338378233946444768

namespace A235323

/-- `(A000203(n+1)-A023890(n+1))²` -/
def P8338378233946444768.Spec : Prop :=
  ∀ n, P8338378233946444768.a n = A235323 (n + 1)

end A235323

/-! ## A235323.P10333879715335384812

`(A351843(n+1)/A000203(n+1))²`
-/

namespace A235323.P10333879715335384812
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A351843 (n + 1) : ℚ) / (A000203 (n + 1) : ℚ)) ^ 2

end

end A235323.P10333879715335384812

namespace A235323

/-- `(A351843(n+1)/A000203(n+1))²` -/
def P10333879715335384812.Spec : Prop :=
  ∀ n, P10333879715335384812.a n = (A235323 (n + 1) : ℚ)

end A235323

/-!
# A235324: Sum of all parts of all partitions of n into an even number of parts minus the sum of all parts of all partitions of n into an odd number of parts.

The programs for A235324, there is no canonical definition to state claims against.
-/

/-! ## A235324.P7874994035239293550

`(n+1)*A081362(n+1)`
-/

namespace A235324.P7874994035239293550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A081362 (n + 1)

end

end A235324.P7874994035239293550

/-! ## A235324.P15030946322429990774

`Δ[-A001057(n)]*A000700(n+1)`
-/

namespace A235324.P15030946322429990774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A001057 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A000700 (n + 1)

end

end A235324.P15030946322429990774

/-! ## A235324.P16077096165121057816

`(A001057(n)-A001057(n+1))*A000700(n+1)`
-/

namespace A235324.P16077096165121057816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001057 n - A001057 (n + 1)) * A000700 (n + 1)

end

end A235324.P16077096165121057816

/-! ## A235324.P15548286555922382347

`(A000034(n)-A000034(n+1))*A330373(n+1)`
-/

namespace A235324.P15548286555922382347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000034 n - A000034 (n + 1)) * A330373 (n + 1)

end

end A235324.P15548286555922382347

/-! ## A235324.P945185322015630762

`A000700(n+1)*A127365(2*(n+1))`
-/

namespace A235324.P945185322015630762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000700 (n + 1) * A127365 (2 * (n + 1))

end

end A235324.P945185322015630762

/-! ## A235324.P14874862345447680502

`(n+1)*A320835(A000040(n+1))`
-/

namespace A235324.P14874862345447680502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A320835 (A000040 (n + 1)).toNat

end

end A235324.P14874862345447680502

/-! ## A235324.P568057343025724254

`(n+1)*A284993(∑[n+2])`
-/

namespace A235324.P568057343025724254
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A284993 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A235324.P568057343025724254

/-!
# A235325: Number of ordered pairs of endofunctions f,g on a set of n elements satisfying f(f(x)) = g(g(g(x))).

The programs for A235325, there is no canonical definition to state claims against.
-/

/-! ## A235325.P10092866883658672717

`A216345(C((1-n)²+n, n))`
-/

namespace A235325.P10092866883658672717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216345 (Nat.choose ((1 - (n : ℤ)) ^ 2 + (n : ℤ)).toNat n)

end

end A235325.P10092866883658672717

/-!
# A235326: Number of ordered pairs of endofunctions f,g on a set of n elements satisfying f(f(f(x))) = g(g(g(x))).

The programs for A235326, there is no canonical definition to state claims against.
-/

/-! ## A235326.P11742271375537676824

`A295300(A355128(n))`
-/

namespace A235326.P11742271375537676824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295300 (A355128 n).toNat

end

end A235326.P11742271375537676824

/-!
# A235327: Number of ordered pairs of endofunctions f, g on a set of n elements satisfying f(f(x)) = g(g(x)).

The programs for A235327, there is no canonical definition to state claims against.
-/

/-! ## A235327.P1384796361000014389

`A315396(C(∑[n], n+1))`
-/

namespace A235327.P1384796361000014389
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315396 (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) (n + 1))

end

end A235327.P1384796361000014389

/-!
# A235328: Number of ordered pairs of endofunctions (f,g) on a set of n elements satisfying f(x) = g(f(f(x))).

The programs for A235328, there is no canonical definition to state claims against.
-/

/-! ## A235328.P12051403517763659229

`A351790(∑[4*n])`
-/

namespace A235328.P12051403517763659229
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351790 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A235328.P12051403517763659229

/-!
# A235329: E.g.f. satisfies: A'(x) = A(x)^3 / A(-x) with A(0) = 1.

The programs for A235329, there is no canonical definition to state claims against.
-/

/-! ## A235329.P12340017342497883475

`A300236(∑[∑[A067297(n)]])`
-/

namespace A235329.P12340017342497883475
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067297 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300236 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A235329.P12340017342497883475

/-!
# A235331: Numbers with odious squares.

The programs for A235331, the canonical program `A235331.P5537662126552978437` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A235331 has offset 1).

The definition of A235331 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A235001, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A235331.P5537662126552978437

`sqrt(A235001(n+1))`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A235331

/-- `sqrt(A235001(n+1))` -/
def P5537662126552978437.Spec : Prop :=
  ∀ n, P5537662126552978437.a n = (A235331 (n + 1) : ℝ)

end A235331

/-! ## A235331.P13697845872149498502

`lt[0, A228039(n)]`
-/

namespace A235331.P13697845872149498502
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228039 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A235331.P13697845872149498502

namespace A235331

/-- `lt[0, A228039(n)]` -/
def P13697845872149498502.Spec : Prop :=
  ∀ n, (P13697845872149498502.a n : ℤ) = A235331 (n + 1)

end A235331

/-! ## A235331.P17071266143180179842

`comp[A298879(n+1)]`
-/

namespace A235331.P17071266143180179842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298879 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A235331.P17071266143180179842

namespace A235331

/-- `comp[A298879(n+1)]` -/
def P17071266143180179842.Spec : Prop :=
  ∀ n, (P17071266143180179842.a n : ℤ) = A235331 (n + 1)

end A235331

/-! ## A235331.P7156997562350099362

`eq[1, A228039(2*n)]`
-/

namespace A235331.P7156997562350099362
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228039 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A235331.P7156997562350099362

namespace A235331

/-- `eq[1, A228039(2*n)]` -/
def P7156997562350099362.Spec : Prop :=
  ∀ n, (P7156997562350099362.a n : ℤ) = A235331 (n + 1)

end A235331

/-! ## A235331.P16581441580632462024

`record[(n+1)*A228039(n+1)]`
-/

namespace A235331.P16581441580632462024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A228039 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235331.P16581441580632462024

namespace A235331

/-- `record[(n+1)*A228039(n+1)]` -/
def P16581441580632462024.Spec : Prop :=
  ∀ n, P16581441580632462024.a n = A235331 (n + 1)

end A235331

/-! ## A235331.P13363611149086448060

`filter[n+1, A228039(#)]`
-/

namespace A235331.P13363611149086448060
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A228039 (f1 j) = 1) n)

end

end A235331.P13363611149086448060

namespace A235331

/-- `filter[n+1, A228039(#)]` -/
def P13363611149086448060.Spec : Prop :=
  ∀ n, (P13363611149086448060.a n : ℤ) = A235331 (n + 1)

end A235331

/-! ## A235331.P6432052545581010203

`eq[0, A059841(A159918(n))]`
-/

namespace A235331.P6432052545581010203
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (A159918 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A235331.P6432052545581010203

namespace A235331

/-- `eq[0, A059841(A159918(n))]` -/
def P6432052545581010203.Spec : Prop :=
  ∀ n, (P6432052545581010203.a n : ℤ) = A235331 (n + 1)

end A235331

/-! ## A235331.P9698973439344883445

`eq[2, A020639(A159918(n)+1)]`
-/

namespace A235331.P9698973439344883445
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A159918 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A235331.P9698973439344883445

namespace A235331

/-- `eq[2, A020639(A159918(n)+1)]` -/
def P9698973439344883445.Spec : Prop :=
  ∀ n, (P9698973439344883445.a n : ℤ) = A235331 (n + 1)

end A235331

/-! ## A235331.P13192103557971346500

`eq[2, A000032(A268389((n+1)²))]+1`
-/

namespace A235331.P13192103557971346500
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (A268389 ((n + 1) ^ 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A235331.P13192103557971346500

namespace A235331

/-- `eq[2, A000032(A268389((n+1)²))]+1` -/
def P13192103557971346500.Spec : Prop :=
  ∀ n, (P13192103557971346500.a n : ℤ) = A235331 (n + 1)

end A235331

/-! ## A235331.P3443230260754355725

`eq[1, A010060(A004652(n))]`
-/

namespace A235331.P3443230260754355725
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (A004652 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A235331.P3443230260754355725

namespace A235331

/-- `eq[1, A010060(A004652(n))]` -/
def P3443230260754355725.Spec : Prop :=
  ∀ n, (P3443230260754355725.a n : ℤ) = A235331 (n + 1)

end A235331

/-! ## A235331.P15511567659085884079

`eq[1, A000925(A001316(n²))]`
-/

namespace A235331.P15511567659085884079
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000925 (A001316 (n ^ 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A235331.P15511567659085884079

namespace A235331

/-- `eq[1, A000925(A001316(n²))]` -/
def P15511567659085884079.Spec : Prop :=
  ∀ n, (P15511567659085884079.a n : ℤ) = A235331 (n + 1)

end A235331

/-! ## A235331.P15150835565255527237

`lt[2, A221076(log2(A001316(n²)))]`
-/

namespace A235331.P15150835565255527237
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221076 (SequenceMachineLib.roundAway (Real.logb 2 (A001316 (n ^ 2) : ℝ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A235331.P15150835565255527237

namespace A235331

/-- `lt[2, A221076(log2(A001316(n²)))]` -/
def P15150835565255527237.Spec : Prop :=
  ∀ n, (P15150835565255527237.a n : ℤ) = A235331 (n + 1)

end A235331

/-! ## A235331.P11598536468651728889

`lt[A059448(A001316(n²)+1), 1]`
-/

namespace A235331.P11598536468651728889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059448 (A001316 (n ^ 2) + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A235331.P11598536468651728889

namespace A235331

/-- `lt[A059448(A001316(n²)+1), 1]` -/
def P11598536468651728889.Spec : Prop :=
  ∀ n, (P11598536468651728889.a n : ℤ) = A235331 (n + 1)

end A235331

/-! ## A235331.P950818703480099830

`eq[2, A001285(A008811(n))]`
-/

namespace A235331.P950818703480099830
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001285 (A008811 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A235331.P950818703480099830

namespace A235331

/-- `eq[2, A001285(A008811(n))]` -/
def P950818703480099830.Spec : Prop :=
  ∀ n, (P950818703480099830.a n : ℤ) = A235331 (n + 1)

end A235331

/-! ## A235331.P11901544684113823568

`lt[2, A180938((gcd(n, C(2, n))+1)*(n+1))]+1`
-/

namespace A235331.P11901544684113823568
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180938 ((Nat.gcd n (Nat.choose 2 n) + 1) * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A235331.P11901544684113823568

namespace A235331

/-- `lt[2, A180938((gcd(n, C(2, n))+1)*(n+1))]+1` -/
def P11901544684113823568.Spec : Prop :=
  ∀ n, (P11901544684113823568.a n : ℤ) = A235331 (n + 1)

end A235331

/-! ## A235331.P14692426631974658160

`eq[1, A010060(A000982(n))]`
-/

namespace A235331.P14692426631974658160
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (A000982 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A235331.P14692426631974658160

namespace A235331

/-- `eq[1, A010060(A000982(n))]` -/
def P14692426631974658160.Spec : Prop :=
  ∀ n, (P14692426631974658160.a n : ℤ) = A235331 (n + 1)

end A235331

/-!
# A235332: a(n) = n*(9*n + 25)/2 + 6.

The programs for A235332, the canonical program `A235332.P8550538995341026631` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A235332 has offset 0).

The definition of A235332 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A235332.P8550538995341026631

`n*(9*n+25)/2+6`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A235332

/-- `n*(9*n+25)/2+6` -/
def P8550538995341026631.Spec : Prop :=
  ∀ n, P8550538995341026631.a n = (A235332 n : ℚ)

end A235332

/-! ## A235332.P1797430259932414931

`∑[a(n-1)+9]` with `a(0)=6, a(1)=17`
-/

namespace A235332.P1797430259932414931
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [6, 17] fun n f1 =>
  f1 (n - 1) + 9

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A235332.P1797430259932414931

namespace A235332

/-- `∑[a(n-1)+9]` -/
def P1797430259932414931.Spec : Prop :=
  ∀ n, (P1797430259932414931.a n : ℤ) = A235332 n

end A235332

/-! ## A235332.P16498968498521139503

`abs(C(3*n+5, 2)-4-n)`
-/

namespace A235332.P16498968498521139503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(Nat.choose (3 * n + 5) 2 : ℤ) - 4 - (n : ℤ)|

end

end A235332.P16498968498521139503

namespace A235332

/-- `abs(C(3*n+5, 2)-4-n)` -/
def P16498968498521139503.Spec : Prop :=
  ∀ n, P16498968498521139503.a n = A235332 n

end A235332

/-! ## A235332.P12972483700922022606

`floor(8*(n+1)+a(n-1)+n)` with `a(0)=6`

`floor` is left out, it is the identity on integers.
-/

namespace A235332.P12972483700922022606
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [6] fun n a =>
  8 * (n + 1) + (a (n - 1) + n)

end

end A235332.P12972483700922022606

namespace A235332

/-- `floor(8*(n+1)+a(n-1)+n)` -/
def P12972483700922022606.Spec : Prop :=
  ∀ n, (P12972483700922022606.a n : ℤ) = A235332 n

end A235332

/-! ## A235332.P1076816250750368188

`Δ[(C(n+2, 2)+(1-n)²)*(n+3)]`
-/

namespace A235332.P1076816250750368188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.choose (n + 2) 2 : ℤ) + (1 - (n : ℤ)) ^ 2) * (n + 3 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A235332.P1076816250750368188

namespace A235332

/-- `Δ[(C(n+2, 2)+(1-n)²)*(n+3)]` -/
def P1076816250750368188.Spec : Prop :=
  ∀ n, P1076816250750368188.a n = A235332 n

end A235332

/-! ## A235332.P5446206325782841435

`abs(2-∑[A017257(n)])`
-/

namespace A235332.P5446206325782841435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017257 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - ∑ j ∈ Finset.range (n + 1), f1 j|

end

end A235332.P5446206325782841435

namespace A235332

/-- `abs(2-∑[A017257(n)])` -/
def P5446206325782841435.Spec : Prop :=
  ∀ n, P5446206325782841435.a n = A235332 n

end A235332

/-! ## A235332.P1427620638690250140

`∑[A017353(n)-abs(1-n)]`
-/

namespace A235332.P1427620638690250140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017353 n - |1 - (n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A235332.P1427620638690250140

namespace A235332

/-- `∑[A017353(n)-abs(1-n)]` -/
def P1427620638690250140.Spec : Prop :=
  ∀ n, P1427620638690250140.a n = A235332 n

end A235332

/-! ## A235332.P2948606996159157364

`abs(2-∑[A017365(n)-n])`
-/

namespace A235332.P2948606996159157364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017365 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - ∑ j ∈ Finset.range (n + 1), f1 j|

end

end A235332.P2948606996159157364

namespace A235332

/-- `abs(2-∑[A017365(n)-n])` -/
def P2948606996159157364.Spec : Prop :=
  ∀ n, P2948606996159157364.a n = A235332 n

end A235332

/-! ## A235332.P14608542672323458566

`abs(1-n-A062725(n+1))`
-/

namespace A235332.P14608542672323458566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (n : ℤ) - A062725 (n + 1)|

end

end A235332.P14608542672323458566

namespace A235332

/-- `abs(1-n-A062725(n+1))` -/
def P14608542672323458566.Spec : Prop :=
  ∀ n, P14608542672323458566.a n = A235332 n

end A235332

/-! ## A235332.P4529203722790938412

`∑[(3*n+2)*A157532(n+1)+2]`
-/

namespace A235332.P4529203722790938412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n + 2 : ℤ) * A157532 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A235332.P4529203722790938412

namespace A235332

/-- `∑[(3*n+2)*A157532(n+1)+2]` -/
def P4529203722790938412.Spec : Prop :=
  ∀ n, P4529203722790938412.a n = A235332 n

end A235332

/-! ## A235332.P427543232801718103

`A216110(n+1)%A179436(n)`
-/

namespace A235332.P427543232801718103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A216110 (n + 1)) (A179436 n)

end

end A235332.P427543232801718103

namespace A235332

/-- `A216110(n+1)%A179436(n)` -/
def P427543232801718103.Spec : Prop :=
  ∀ n, P427543232801718103.a n = A235332 n

end A235332

/-! ## A235332.P5344031986379049643

`∑[A017365(n)-(A000038(n)+n)]`
-/

namespace A235332.P5344031986379049643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017365 n - (A000038 n + (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A235332.P5344031986379049643

namespace A235332

/-- `∑[A017365(n)-(A000038(n)+n)]` -/
def P5344031986379049643.Spec : Prop :=
  ∀ n, P5344031986379049643.a n = A235332 n

end A235332

/-! ## A235332.P5308450397902364729

`∑[A171463(n+1)+Δ[A007742(n)]]`
-/

namespace A235332.P5308450397902364729
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007742 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171463 (n + 1) + (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A235332.P5308450397902364729

namespace A235332

/-- `∑[A171463(n+1)+Δ[A007742(n)]]` -/
def P5308450397902364729.Spec : Prop :=
  ∀ n, P5308450397902364729.a n = A235332 n

end A235332

/-! ## A235332.P14107090406236308213

`abs(2-A062728(n+1))`
-/

namespace A235332.P14107090406236308213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - A062728 (n + 1)|

end

end A235332.P14107090406236308213

namespace A235332

/-- `abs(2-A062728(n+1))` -/
def P14107090406236308213.Spec : Prop :=
  ∀ n, P14107090406236308213.a n = A235332 n

end A235332

/-! ## A235332.P11325241609680442409

`abs(3-A081267(n+1))`
-/

namespace A235332.P11325241609680442409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |3 - A081267 (n + 1)|

end

end A235332.P11325241609680442409

namespace A235332

/-- `abs(3-A081267(n+1))` -/
def P11325241609680442409.Spec : Prop :=
  ∀ n, P11325241609680442409.a n = A235332 n

end A235332

/-! ## A235332.P8951535456745671456

`Δ[A050509(n)-3*n]`
-/

namespace A235332.P8951535456745671456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050509 n - (3 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A235332.P8951535456745671456

namespace A235332

/-- `Δ[A050509(n)-3*n]` -/
def P8951535456745671456.Spec : Prop :=
  ∀ n, P8951535456745671456.a n = A235332 n

end A235332

/-! ## A235332.P4271939237752850149

`abs(2-(A064225(n+1)+n))`
-/

namespace A235332.P4271939237752850149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - (A064225 (n + 1) + (n : ℤ))|

end

end A235332.P4271939237752850149

namespace A235332

/-- `abs(2-(A064225(n+1)+n))` -/
def P4271939237752850149.Spec : Prop :=
  ∀ n, P4271939237752850149.a n = A235332 n

end A235332

/-! ## A235332.P16748079234443181252

`A235537(2*n)`
-/

namespace A235332.P16748079234443181252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235537 (2 * n)

end

end A235332.P16748079234443181252

namespace A235332

/-- `A235537(2*n)` -/
def P16748079234443181252.Spec : Prop :=
  ∀ n, P16748079234443181252.a n = A235332 n

end A235332

/-!
# A235333: a(n) is the smallest k such that Sum_{i=0..k} 1/A001316(i) >= n.

The programs for A235333, there is no canonical definition to state claims against.
-/

/-! ## A235333.P16160609248938883205

`A175313(n+1)-A216321(A192677(n))`
-/

namespace A235333.P16160609248938883205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175313 (n + 1) - A216321 (A192677 n).toNat

end

end A235333.P16160609248938883205

/-! ## A235333.P11192605501071786115

`A184015(n+1)+A008683(A280377(n+1)+1)`
-/

namespace A235333.P11192605501071786115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184015 (n + 1) + A008683 (A280377 (n + 1) + 1).toNat

end

end A235333.P11192605501071786115

/-! ## A235333.P4024929573827051063

`∑[∑{e}[A333052(n+1), #]]-A350785(A073093(2*n+1))`
-/

namespace A235333.P4024929573827051063
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333052 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A350785 (A073093 (2 * n + 1)).toNat

end

end A235333.P4024929573827051063

/-! ## A235333.P2293895381697863057

`A320226(2*n+1)-A011629(A367414(n))`
-/

namespace A235333.P2293895381697863057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320226 (2 * n + 1) - A011629 (A367414 n).toNat

end

end A235333.P2293895381697863057

/-!
# A235334: Numbers n such that for any positive integers (a, b), if a * b = n then a + b is a square.

The programs for A235334, there is no canonical definition to state claims against.
-/

/-! ## A235334.P10730918199896152233

`A000466(∩[A168497(n+1), n²])`
-/

namespace A235334.P10730918199896152233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168497 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000466 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n)

end

end A235334.P10730918199896152233

/-!
# A235336: Numbers having evil number of 1's in their binary representation.

The programs for A235336, the canonical program `A235336.P14959383341618179848` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A235336 has offset 0).

The definition of A235336 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A235336.P10168648279738228983

`lt[0, A359464(A001316(n))]`
-/

namespace A235336.P10168648279738228983
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359464 (A001316 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A235336.P10168648279738228983

namespace A235336

/-- `lt[0, A359464(A001316(n))]` -/
def P10168648279738228983.Spec : Prop :=
  ∀ n, (P10168648279738228983.a n : ℤ) = A235336 n

end A235336

/-! ## A235336.P14959383341618179848

`eq[1, A001285(log2(A001316(n)))]`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A235336

/-- `eq[1, A001285(log2(A001316(n)))]` -/
def P14959383341618179848.Spec : Prop :=
  ∀ n, (P14959383341618179848.a n : ℤ) = A235336 n

theorem P14959383341618179848.correct : P14959383341618179848.Spec := by
  intro n
  simp only [A235336]

end A235336

/-! ## A235336.P17017283256537872377

`eq[1, A268676(log2(A001316(n)))]`
-/

namespace A235336.P17017283256537872377
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268676 (SequenceMachineLib.roundAway (Real.logb 2 (A001316 n : ℝ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A235336.P17017283256537872377

namespace A235336

/-- `eq[1, A268676(log2(A001316(n)))]` -/
def P17017283256537872377.Spec : Prop :=
  ∀ n, (P17017283256537872377.a n : ℤ) = A235336 n

end A235336

/-! ## A235336.P6444380004919440284

`eq[2, gcd(2, A054868(n))]`
-/

namespace A235336.P6444380004919440284
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A054868 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A235336.P6444380004919440284

namespace A235336

/-- `eq[2, gcd(2, A054868(n))]` -/
def P6444380004919440284.Spec : Prop :=
  ∀ n, (P6444380004919440284.a n : ℤ) = A235336 n

end A235336

/-! ## A235336.P8244548351904841547

`lt[2, gcd(15, A000120(n))^3]`
-/

namespace A235336.P8244548351904841547
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 15 (A000120 n) ^ 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A235336.P8244548351904841547

namespace A235336

/-- `lt[2, gcd(15, A000120(n))^3]` -/
def P8244548351904841547.Spec : Prop :=
  ∀ n, (P8244548351904841547.a n : ℤ) = A235336 n

end A235336

/-! ## A235336.P14687646217272624027

`eq[0, A010060(A000120(n))]`
-/

namespace A235336.P14687646217272624027
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (A000120 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A235336.P14687646217272624027

namespace A235336

/-- `eq[0, A010060(A000120(n))]` -/
def P14687646217272624027.Spec : Prop :=
  ∀ n, (P14687646217272624027.a n : ℤ) = A235336 n

end A235336

/-! ## A235336.P8865357338939410784

`eq[1, A268676(2*A000120(n))]`
-/

namespace A235336.P8865357338939410784
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268676 (2 * A000120 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A235336.P8865357338939410784

namespace A235336

/-- `eq[1, A268676(2*A000120(n))]` -/
def P8865357338939410784.Spec : Prop :=
  ∀ n, (P8865357338939410784.a n : ℤ) = A235336 n

end A235336

/-! ## A235336.P18405313976043675050

`lt[A005590(2*A000120(n)), 1]`
-/

namespace A235336.P18405313976043675050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005590 (2 * A000120 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A235336.P18405313976043675050

namespace A235336

/-- `lt[A005590(2*A000120(n)), 1]` -/
def P18405313976043675050.Spec : Prop :=
  ∀ n, (P18405313976043675050.a n : ℤ) = A235336 n

end A235336

/-! ## A235336.P11586995394296276827

`eq[2, A020639(A000120(A000120(n))+2)]`
-/

namespace A235336.P11586995394296276827
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A000120 (A000120 n).toNat + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A235336.P11586995394296276827

namespace A235336

/-- `eq[2, A020639(A000120(A000120(n))+2)]` -/
def P11586995394296276827.Spec : Prop :=
  ∀ n, (P11586995394296276827.a n : ℤ) = A235336 n

end A235336

/-! ## A235336.P15259563376008818334

`eq[2, A000120(A000120(n))+A000038(n)]`
-/

namespace A235336.P15259563376008818334
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A000120 n).toNat + A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A235336.P15259563376008818334

namespace A235336

/-- `eq[2, A000120(A000120(n))+A000038(n)]` -/
def P15259563376008818334.Spec : Prop :=
  ∀ n, (P15259563376008818334.a n : ℤ) = A235336 n

end A235336

/-! ## A235336.P4156360030712158724

`eq[A000120(A000120(n)), A107393(2*n)]`
-/

namespace A235336.P4156360030712158724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A000120 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107393 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A235336.P4156360030712158724

namespace A235336

/-- `eq[A000120(A000120(n)), A107393(2*n)]` -/
def P4156360030712158724.Spec : Prop :=
  ∀ n, (P4156360030712158724.a n : ℤ) = A235336 n

end A235336

/-! ## A235336.P15047956013237864448

`eq[2*A054868(A000120(n)), A054868(n)]`
-/

namespace A235336.P15047956013237864448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A054868 (A000120 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054868 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A235336.P15047956013237864448

namespace A235336

/-- `eq[2*A054868(A000120(n)), A054868(n)]` -/
def P15047956013237864448.Spec : Prop :=
  ∀ n, (P15047956013237864448.a n : ℤ) = A235336 n

end A235336

/-! ## A235336.P9242958778763579363

`eq[n*A000120(A000120(n)), A005843(n)]`
-/

namespace A235336.P9242958778763579363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000120 (A000120 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A235336.P9242958778763579363

namespace A235336

/-- `eq[n*A000120(A000120(n)), A005843(n)]` -/
def P9242958778763579363.Spec : Prop :=
  ∀ n, (P9242958778763579363.a n : ℤ) = A235336 n

end A235336

/-! ## A235336.P10565770601151317838

`eq[1, A001221(A131762(A131762(n)-1))]`
-/

namespace A235336.P10565770601151317838
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A131762 (A131762 n - 1).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A235336.P10565770601151317838

namespace A235336

/-- `eq[1, A001221(A131762(A131762(n)-1))]` -/
def P10565770601151317838.Spec : Prop :=
  ∀ n, (P10565770601151317838.a n : ℤ) = A235336 n

end A235336

/-! ## A235336.P718137699822059331

`lt[A268676(A000120(n)), A157532(n+1)]`
-/

namespace A235336.P718137699822059331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268676 (A000120 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157532 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A235336.P718137699822059331

namespace A235336

/-- `lt[A268676(A000120(n)), A157532(n+1)]` -/
def P718137699822059331.Spec : Prop :=
  ∀ n, (P718137699822059331.a n : ℤ) = A235336 n

end A235336

/-! ## A235336.P5435287134331701062

`eq[2*A057427(n), A000120(A000120(n))]`
-/

namespace A235336.P5435287134331701062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A057427 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A000120 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A235336.P5435287134331701062

namespace A235336

/-- `eq[2*A057427(n), A000120(A000120(n))]` -/
def P5435287134331701062.Spec : Prop :=
  ∀ n, (P5435287134331701062.a n : ℤ) = A235336 n

end A235336

/-! ## A235336.P7250690658422017638

`eq[1, A268676(A324467(n)/3)]`
-/

namespace A235336.P7250690658422017638
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268676 (SequenceMachineLib.roundAway ((A324467 n : ℚ) / 3)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A235336.P7250690658422017638

namespace A235336

/-- `eq[1, A268676(A324467(n)/3)]` -/
def P7250690658422017638.Spec : Prop :=
  ∀ n, (P7250690658422017638.a n : ℤ) = A235336 n

end A235336

/-! ## A235336.P12140935927103149776

`eq[1, A001221(A131762(A131762(2*n+1)))]`
-/

namespace A235336.P12140935927103149776
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A131762 (A131762 (2 * n + 1)).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A235336.P12140935927103149776

namespace A235336

/-- `eq[1, A001221(A131762(A131762(2*n+1)))]` -/
def P12140935927103149776.Spec : Prop :=
  ∀ n, (P12140935927103149776.a n : ℤ) = A235336 n

end A235336

/-! ## A235336.P2277275921200445507

`lt[A054868(n)%2*A099196(A005408(n)), 1]`
-/

namespace A235336.P2277275921200445507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A054868 n) 2 * A099196 (A005408 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A235336.P2277275921200445507

namespace A235336

/-- `lt[A054868(n)%2*A099196(A005408(n)), 1]` -/
def P2277275921200445507.Spec : Prop :=
  ∀ n, (P2277275921200445507.a n : ℤ) = A235336 n

end A235336

/-!
# A235337: Number of integer lattice points inside the square ABCD with side length n>0 with A(-n*sqrt(2)/2| 0), B(n*sqrt(2)/2| 0), C(0| n*sqrt(2)/2) and D(-n*sqrt(2)/2| 0).

The programs for A235337, the canonical program `A235337.P13547820392319958820` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A235337 has offset 1).

The definition of A235337 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A235337.P7584042468224536953

`(or(1, floor((n+1)*sqrt(2)))²+1)/2`
-/

namespace A235337.P7584042468224536953
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lor 1 ⌊(n + 1 : ℝ) * Real.sqrt (2 : ℝ)⌋ ^ 2 + 1 : ℚ) / 2

end

end A235337.P7584042468224536953

namespace A235337

/-- `(or(1, floor((n+1)*sqrt(2)))²+1)/2` -/
def P7584042468224536953.Spec : Prop :=
  ∀ n, P7584042468224536953.a n = (A235337 (n + 1) : ℚ)

end A235337

/-! ## A235337.P18253843553932811907

`A046092(floor((n+1)/sqrt(2)))+1`
-/

namespace A235337.P18253843553932811907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046092 ⌊(n + 1 : ℝ) / Real.sqrt (2 : ℝ)⌋.toNat + 1

end

end A235337.P18253843553932811907

namespace A235337

/-- `A046092(floor((n+1)/sqrt(2)))+1` -/
def P18253843553932811907.Spec : Prop :=
  ∀ n, P18253843553932811907.a n = A235337 (n + 1)

end A235337

/-! ## A235337.P14113134938517632509

`((1-A099188(n+1))²+1)/2`
-/

namespace A235337.P14113134938517632509
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((1 - A099188 (n + 1)) ^ 2 + 1 : ℚ) / 2

end

end A235337.P14113134938517632509

namespace A235337

/-- `((1-A099188(n+1))²+1)/2` -/
def P14113134938517632509.Spec : Prop :=
  ∀ n, P14113134938517632509.a n = (A235337 (n + 1) : ℚ)

end A235337

/-! ## A235337.P14417284073897269223

`((A188376(n+1)-n)²+1)/2`
-/

namespace A235337.P14417284073897269223
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A188376 (n + 1) - (n : ℤ)) ^ 2 + 1 : ℚ) / 2

end

end A235337.P14417284073897269223

namespace A235337

/-- `((A188376(n+1)-n)²+1)/2` -/
def P14417284073897269223.Spec : Prop :=
  ∀ n, P14417284073897269223.a n = (A235337 (n + 1) : ℚ)

end A235337

/-! ## A235337.P13547820392319958820

`A001844(A049472(n+1))`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A235337

/-- `A001844(A049472(n+1))` -/
def P13547820392319958820.Spec : Prop :=
  ∀ n, P13547820392319958820.a n = A235337 (n + 1)

theorem P13547820392319958820.correct : P13547820392319958820.Spec := by
  intro n
  simp only [A235337, Nat.add_sub_cancel]

end A235337

/-! ## A235337.P6429711720253715852

`A031878(A099188(n+1))`
-/

namespace A235337.P6429711720253715852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031878 (A099188 (n + 1)).toNat

end

end A235337.P6429711720253715852

namespace A235337

/-- `A031878(A099188(n+1))` -/
def P6429711720253715852.Spec : Prop :=
  ∀ n, P6429711720253715852.a n = A235337 (n + 1)

end A235337

/-! ## A235337.P17083146961165330525

`A001844(∑[Δ[A049472(n)]²])`
-/

namespace A235337.P17083146961165330525
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049472 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001844 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A235337.P17083146961165330525

namespace A235337

/-- `A001844(∑[Δ[A049472(n)]²])` -/
def P17083146961165330525.Spec : Prop :=
  ∀ n, P17083146961165330525.a n = A235337 (n + 1)

end A235337

/-! ## A235337.P2114836618562573926

`2*A165900(A049474(n+1))+3`
-/

namespace A235337.P2114836618562573926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A165900 (A049474 (n + 1)).toNat + 3

end

end A235337.P2114836618562573926

namespace A235337

/-- `2*A165900(A049474(n+1))+3` -/
def P2114836618562573926.Spec : Prop :=
  ∀ n, P2114836618562573926.a n = A235337 (n + 1)

end A235337

/-! ## A235337.P9259819648254696853

`A001844(A003152(n+1)-(n+1))`
-/

namespace A235337.P9259819648254696853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001844 (A003152 (n + 1) - (n + 1 : ℤ)).toNat

end

end A235337.P9259819648254696853

namespace A235337

/-- `A001844(A003152(n+1)-(n+1))` -/
def P9259819648254696853.Spec : Prop :=
  ∀ n, P9259819648254696853.a n = A235337 (n + 1)

end A235337

/-! ## A235337.P3496028172926062583

`A049472(n+1)*A099188(n+1)+1`
-/

namespace A235337.P3496028172926062583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049472 (n + 1) * A099188 (n + 1) + 1

end

end A235337.P3496028172926062583

namespace A235337

/-- `A049472(n+1)*A099188(n+1)+1` -/
def P3496028172926062583.Spec : Prop :=
  ∀ n, P3496028172926062583.a n = A235337 (n + 1)

end A235337

/-! ## A235337.P9774275037998604078

`A049472(n+1)²+A049474(n+1)²`
-/

namespace A235337.P9774275037998604078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049472 (n + 1) ^ 2 + A049474 (n + 1) ^ 2

end

end A235337.P9774275037998604078

namespace A235337

/-- `A049472(n+1)²+A049474(n+1)²` -/
def P9774275037998604078.Spec : Prop :=
  ∀ n, P9774275037998604078.a n = A235337 (n + 1)

end A235337

/-! ## A235337.P17837678321938632421

`A005408(A049472(n+1)+A049472(n+1)²)`
-/

namespace A235337.P17837678321938632421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A049472 (n + 1) + A049472 (n + 1) ^ 2).toNat

end

end A235337.P17837678321938632421

namespace A235337

/-- `A005408(A049472(n+1)+A049472(n+1)²)` -/
def P17837678321938632421.Spec : Prop :=
  ∀ n, P17837678321938632421.a n = A235337 (n + 1)

end A235337

/-! ## A235337.P252995200680010675

`A000982(A109613(A103128((n+1)²)))`
-/

namespace A235337.P252995200680010675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000982 (A109613 (A103128 ((n + 1) ^ 2)).toNat).toNat

end

end A235337.P252995200680010675

namespace A235337

/-- `A000982(A109613(A103128((n+1)²)))` -/
def P252995200680010675.Spec : Prop :=
  ∀ n, P252995200680010675.a n = A235337 (n + 1)

end A235337

/-! ## A235337.P16130713139705449622

`A236283(A109613(A103128((n+1)*(n+1))))`
-/

namespace A235337.P16130713139705449622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236283 (A109613 (A103128 ((n + 1) * (n + 1))).toNat).toNat

end

end A235337.P16130713139705449622

namespace A235337

/-- `A236283(A109613(A103128((n+1)*(n+1))))` -/
def P16130713139705449622.Spec : Prop :=
  ∀ n, P16130713139705449622.a n = A235337 (n + 1)

end A235337

/-!
# A235340: a(n) = 10*binomial(11*n+10,n)/(11*n+10).

The programs for A235340, there is no canonical definition to state claims against.
-/

/-! ## A235340.P4554342833355322245

`C(11*n+9, n)/(n+1)`
-/

namespace A235340.P4554342833355322245
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (11 * n + 9) n : ℚ) / (n + 1 : ℚ)

end

end A235340.P4554342833355322245

/-!
# A235341: Positive integers a such that there exist b, c with 1/a + 1/b + 1/c = 1/3 and a >= b >= c.

The programs for A235341, there is no canonical definition to state claims against.
-/

/-! ## A235341.P9160761474099756890

`A228363(A038988(n+1)+n+1)`
-/

namespace A235341.P9160761474099756890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228363 (A038988 (n + 1) + (n + 1 : ℤ)).toNat

end

end A235341.P9160761474099756890

/-! ## A235341.P15162035101525591022

`lt[A000322(A224708(n+1)), A366852(n)]`
-/

namespace A235341.P15162035101525591022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000322 (A224708 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366852 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A235341.P15162035101525591022

/-!
# A235342: Sum of exponents in the (unique) factorization of n as a ratio of p! terms, p prime.

The programs for A235342, there is no canonical definition to state claims against.
-/

/-! ## A235342.P14579987829669494733

`∑{d}[n+1, A236441(#)]`
-/

namespace A235342.P14579987829669494733
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A236441 d

end

end A235342.P14579987829669494733

/-! ## A235342.P14255633402316897961

`A067132(n+1)-A303828(A108951(n+1))`
-/

namespace A235342.P14255633402316897961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067132 (n + 1) - A303828 (A108951 (n + 1)).toNat

end

end A235342.P14255633402316897961

/-!
# A235343: a(n) = |{0 < k < n: f(n,k) - 1, f(n,k) + 1 and q(f(n,k)) + 1 are all prime with f(n,k) = phi(k) + phi(n-k)/4}|, where phi(.) is Euler's totient function, and q(.) is the strict partition function (A000009).

The programs for A235343, there is no canonical definition to state claims against.
-/

/-! ## A235343.P10093877342407527090

`A236456(n+1)+A121373(A225748(2*(n+2)))`
-/

namespace A235343.P10093877342407527090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236456 (n + 1) + A121373 (A225748 (2 * (n + 2))).toNat

end

end A235343.P10093877342407527090

/-!
# A235344: Numbers m with m - 1, m + 1 and q(m) + 1 all prime, where q(.) is the strict partition function (A000009).

The programs for A235344, there is no canonical definition to state claims against.
-/

/-! ## A235344.P7438706023685203735

`A014574(A228050(n+1)+A026300(2*n+1))`
-/

namespace A235344.P7438706023685203735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014574 (A228050 (n + 1) + A026300 (2 * n + 1)).toNat

end

end A235344.P7438706023685203735

/-! ## A235344.P9065703037011589924

`record[A362296(A239510(n+1)%A089870(2*(n+1))+2)]`
-/

namespace A235344.P9065703037011589924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362296 (Int.tmod (A239510 (n + 1)) (A089870 (2 * (n + 1))) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235344.P9065703037011589924

/-!
# A235345: E.g.f. satisfies: A'(x) = A(x)^4 / A(-x) with A(0) = 1.

The programs for A235345, there is no canonical definition to state claims against.
-/

/-! ## A235345.P13303200297380538787

`A005408(A243426(n)-A095766(n+1))`
-/

namespace A235345.P13303200297380538787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A243426 n - A095766 (n + 1)).toNat

end

end A235345.P13303200297380538787

/-! ## A235345.P9262184834497751472

`A005408(A191686(n+1)-A226996(n))`
-/

namespace A235345.P9262184834497751472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A191686 (n + 1) - A226996 n).toNat

end

end A235345.P9262184834497751472

/-!
# A235347: Series reversion of x*(1-3*x^2)/(1-x^2) in odd-order powers.

The programs for A235347, there is no canonical definition to state claims against.
-/

/-! ## A235347.P18113528166900749294

`abs(A235352(n))`
-/

namespace A235347.P18113528166900749294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A235352 n|

end

end A235347.P18113528166900749294

/-! ## A235347.P17188463086566927612

`A056594(2*n)*A235352(n)`
-/

namespace A235347.P17188463086566927612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (2 * n) * A235352 n

end

end A235347.P17188463086566927612

/-! ## A235347.P16123375272118970593

`(A004442(n)-n)*A235352(n)`
-/

namespace A235347.P16123375272118970593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004442 n - (n : ℤ)) * A235352 n

end

end A235347.P16123375272118970593

/-! ## A235347.P15565871280776864332

`gcd(A015689(2*n+1), A235352(n))`
-/

namespace A235347.P15565871280776864332
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A015689 (2 * n + 1)) (A235352 n)

end

end A235347.P15565871280776864332

/-! ## A235347.P7558190053792515075

`gcd(A015689(A004273(n))², A235352(n))`
-/

namespace A235347.P7558190053792515075
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A015689 (A004273 n).toNat ^ 2) (A235352 n)

end

end A235347.P7558190053792515075

/-!
# A235348: Series reversion of x*(1-2*x-5*x^2)/(1-x^2).

The programs for A235348, there is no canonical definition to state claims against.
-/

/-! ## A235348.P2286166989827553896

`A278081(A002874(n))`
-/

namespace A235348.P2286166989827553896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278081 (A002874 n).toNat

end

end A235348.P2286166989827553896

/-!
# A235349: Series reversion of x*(1-x-2*x^2)/(1-x).

The programs for A235349, there is no canonical definition to state claims against.
-/

/-! ## A235349.P16032738085255940925

`and(A004442(A267527(n)), A337643(n+1))`
-/

namespace A235349.P16032738085255940925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A004442 (A267527 n).toNat) (A337643 (n + 1))

end

end A235349.P16032738085255940925

/-!
# A235350: Series reversion of x*(1-2*x-x^2)/(1-x^2).

The programs for A235350, there is no canonical definition to state claims against.
-/

/-! ## A235350.P10132605307456277475

`A302032(abs(Δ[A366364(n)]))`
-/

namespace A235350.P10132605307456277475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366364 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302032 |f1 (n + 1) - f1 n|.toNat

end

end A235350.P10132605307456277475

/-! ## A235350.P11878449924957859553

`A004525(abs(Δ[A366364(n)]))`
-/

namespace A235350.P11878449924957859553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366364 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 |f1 (n + 1) - f1 n|.toNat

end

end A235350.P11878449924957859553

/-!
# A235351: Series reversion of x*(1-3*x-2*x^2)/(1-x).

The programs for A235351, there is no canonical definition to state claims against.
-/

/-! ## A235351.P15963685137074148232

`A333348(A111537(n))`
-/

namespace A235351.P15963685137074148232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333348 (A111537 n).toNat

end

end A235351.P15963685137074148232

/-! ## A235351.P15576316436650590913

`n*A103254(A001710(n))`
-/

namespace A235351.P15576316436650590913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A103254 (A001710 n).toNat

end

end A235351.P15576316436650590913

/-!
# A235352: Series reversion of x*(1+3*x^2)/(1+x^2) in odd-power terms.

The programs for A235352, there is no canonical definition to state claims against.
-/

/-! ## A235352.P5860743435220006130

`A033999(n)*A235347(n)`
-/

namespace A235352.P5860743435220006130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A235347 n

end

end A235352.P5860743435220006130

/-! ## A235352.P14039487911972100738

`A009001(2*n)*A235347(n)`
-/

namespace A235352.P14039487911972100738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009001 (2 * n) * A235347 n

end

end A235352.P14039487911972100738

/-! ## A235352.P2937584687901819378

`A056594(2*n)*A235347(n)`
-/

namespace A235352.P2937584687901819378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (2 * n) * A235347 n

end

end A235352.P2937584687901819378

/-! ## A235352.P4925745609976273691

`A121238(n²+5)*A235347(n)`
-/

namespace A235352.P4925745609976273691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121238 (n ^ 2 + 5) * A235347 n

end

end A235352.P4925745609976273691

/-! ## A235352.P16854602896968245985

`(-1)^A229522(3*n+2)*A235347(n)`
-/

namespace A235352.P16854602896968245985
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (A229522 (3 * n + 2) : ℤ) * (A235347 n : ℚ)

end

end A235352.P16854602896968245985

/-!
# A235353: Numbers m such that phi(m) and tau(m) divide m, where phi = A000010 and tau = A000005.

The programs for A235353, there is no canonical definition to state claims against.
-/

/-! ## A235353.P9943589676097594295

`∩[A007694(n+1), A033950(n+1)]`
-/

namespace A235353.P9943589676097594295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007694 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033950 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A235353.P9943589676097594295

/-! ## A235353.P7934499260408901335

`filter[A007694(n+1), A336040(#)]`
-/

namespace A235353.P7934499260408901335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007694 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A336040 (f1 j).toNat = 1) n)

end

end A235353.P7934499260408901335

/-! ## A235353.P457225942625700403

`filter[A358308(n+1), A336040(#)]`
-/

namespace A235353.P457225942625700403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358308 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A336040 (f1 j).toNat = 1) n)

end

end A235353.P457225942625700403

/-! ## A235353.P11732902280654693527

`record[A122377(A007694(n+1))]`
-/

namespace A235353.P11732902280654693527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122377 (A007694 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235353.P11732902280654693527

/-! ## A235353.P16501942383630307658

`filter[A360940(n+1), A336040(#)]`
-/

namespace A235353.P16501942383630307658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360940 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A336040 (f1 j).toNat = 1) n)

end

end A235353.P16501942383630307658

/-!
# A235354: Minimal k > 1 such that the base-k representation of the n-th prime, read in decimal, is also prime.

The programs for A235354, there is no canonical definition to state claims against.
-/

/-! ## A235354.P8845489923252357598

`A386929(A000040(n+1))`
-/

namespace A235354.P8845489923252357598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386929 (A000040 (n + 1)).toNat

end

end A235354.P8845489923252357598

/-! ## A235354.P775977263410732536

`A386929(A008578(n+2))`
-/

namespace A235354.P775977263410732536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386929 (A008578 (n + 2)).toNat

end

end A235354.P775977263410732536

/-! ## A235354.P1505367373465590067

`A386929(A182986(n+2))`
-/

namespace A235354.P1505367373465590067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386929 (A182986 (n + 2)).toNat

end

end A235354.P1505367373465590067

/-! ## A235354.P10214136249003766788

`A388299(∏{p}[A000040(n+1), #])`
-/

namespace A235354.P10214136249003766788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388299 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A235354.P10214136249003766788

/-! ## A235354.P3255550314911736880

`A388299(and(-1, A000040(n+1)))`
-/

namespace A235354.P3255550314911736880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388299 (Int.land (-1) (A000040 (n + 1))).toNat

end

end A235354.P3255550314911736880

/-! ## A235354.P9543164650593057297

`A388299(A007949(3*n+2)+A000040(n+1))`
-/

namespace A235354.P9543164650593057297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388299 (A007949 (3 * n + 2) + A000040 (n + 1)).toNat

end

end A235354.P9543164650593057297

/-!
# A235355: 0 followed by the sum of (1),(2), (3,4),(5,6), (7,8,9),(10,11,12) from the natural numbers.

The programs for A235355, the canonical program `A235355.P11702172220660516247` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A235355 has offset 0).

The definition of A235355 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A235355.P11702172220660516247

`4*a(n-2)-6*a(n-4)+4*a(n-6)-a(n-8)` with `a(0)=0, a(1)=1, a(2)=2, a(3)=7, a(4)=11, a(5)=24, a(6)=33, a(7)=58`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A235355

/-- `4*a(n-2)-6*a(n-4)+4*a(n-6)-a(n-8)` -/
def P11702172220660516247.Spec : Prop :=
  ∀ n, P11702172220660516247.a n = A235355 n

theorem P11702172220660516247.correct : P11702172220660516247.Spec := by
  intro n
  simp only [A235355]

end A235355

/-! ## A235355.P9050126856132363646

`∑[ceil(lcm(2, n²)/4)]`
-/

namespace A235355.P9050126856132363646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.lcm 2 (n ^ 2) : ℚ) / 4⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A235355.P9050126856132363646

namespace A235355

/-- `∑[ceil(lcm(2, n²)/4)]` -/
def P9050126856132363646.Spec : Prop :=
  ∀ n, P9050126856132363646.a n = A235355 n

end A235355

/-! ## A235355.P2544429164854558895

`Δ[C(floor((n/2)²)+1, 2)]`
-/

namespace A235355.P2544429164854558895
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (⌊((n : ℚ) / 2) ^ 2⌋ + 1).toNat 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A235355.P2544429164854558895

namespace A235355

/-- `Δ[C(floor((n/2)²)+1, 2)]` -/
def P2544429164854558895.Spec : Prop :=
  ∀ n, P2544429164854558895.a n = A235355 n

end A235355

/-! ## A235355.P10260062278474451209

`∑[A147685(n)]`
-/

namespace A235355.P10260062278474451209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147685 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A235355.P10260062278474451209

namespace A235355

/-- `∑[A147685(n)]` -/
def P10260062278474451209.Spec : Prop :=
  ∀ n, P10260062278474451209.a n = A235355 n

end A235355

/-! ## A235355.P5686783263077704119

`A002817(n)/or(1, n)`
-/

namespace A235355.P5686783263077704119
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002817 n : ℚ) / (Nat.lor 1 n : ℚ)

end

end A235355.P5686783263077704119

namespace A235355

/-- `A002817(n)/or(1, n)` -/
def P5686783263077704119.Spec : Prop :=
  ∀ n, P5686783263077704119.a n = (A235355 n : ℚ)

end A235355

/-! ## A235355.P14016005701315429907

`∑[∑[n]-A354280(n)]`
-/

namespace A235355.P14016005701315429907
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - A354280 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A235355.P14016005701315429907

namespace A235355

/-- `∑[∑[n]-A354280(n)]` -/
def P14016005701315429907.Spec : Prop :=
  ∀ n, P14016005701315429907.a n = A235355 n

end A235355

/-! ## A235355.P13252611616475558200

`∑[lcm(2, A000982(n))/2]`
-/

namespace A235355.P13252611616475558200
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A000982 n) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A235355.P13252611616475558200

namespace A235355

/-- `∑[lcm(2, A000982(n))/2]` -/
def P13252611616475558200.Spec : Prop :=
  ∀ n, P13252611616475558200.a n = (A235355 n : ℚ)

end A235355

/-! ## A235355.P16012021916644138501

`∑[A006003(n)]/or(1, n)`
-/

namespace A235355.P16012021916644138501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006003 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (Nat.lor 1 n : ℚ)

end

end A235355.P16012021916644138501

namespace A235355

/-- `∑[A006003(n)]/or(1, n)` -/
def P16012021916644138501.Spec : Prop :=
  ∀ n, P16012021916644138501.a n = (A235355 n : ℚ)

end A235355

/-! ## A235355.P15092844910973241355

`Δ[A099392(n+1)²/8]`
-/

namespace A235355.P15092844910973241355
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A099392 (n + 1) ^ 2 : ℚ) / 8

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A235355.P15092844910973241355

namespace A235355

/-- `Δ[A099392(n+1)²/8]` -/
def P15092844910973241355.Spec : Prop :=
  ∀ n, P15092844910973241355.a n = (A235355 n : ℚ)

end A235355

/-! ## A235355.P9742411979146048981

`A109900(n)-A123596(n)`
-/

namespace A235355.P9742411979146048981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109900 n - A123596 n

end

end A235355.P9742411979146048981

namespace A235355

/-- `A109900(n)-A123596(n)` -/
def P9742411979146048981.Spec : Prop :=
  ∀ n, P9742411979146048981.a n = A235355 n

end A235355

/-! ## A235355.P13252637678034461988

`A002817(n)/A109613(n)`
-/

namespace A235355.P13252637678034461988
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002817 n : ℚ) / (A109613 n : ℚ)

end

end A235355.P13252637678034461988

namespace A235355

/-- `A002817(n)/A109613(n)` -/
def P13252637678034461988.Spec : Prop :=
  ∀ n, P13252637678034461988.a n = (A235355 n : ℚ)

end A235355

/-! ## A235355.P11503063983276523590

`∑[A000982(n)/A040001(n)]`
-/

namespace A235355.P11503063983276523590
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000982 n : ℚ) / (A040001 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A235355.P11503063983276523590

namespace A235355

/-- `∑[A000982(n)/A040001(n)]` -/
def P11503063983276523590.Spec : Prop :=
  ∀ n, P11503063983276523590.a n = (A235355 n : ℚ)

end A235355

/-! ## A235355.P6518333809191755225

`∑[A006003(n)]/A109613(n)`
-/

namespace A235355.P6518333809191755225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006003 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A109613 n : ℚ)

end

end A235355.P6518333809191755225

namespace A235355

/-- `∑[A006003(n)]/A109613(n)` -/
def P6518333809191755225.Spec : Prop :=
  ∀ n, P6518333809191755225.a n = (A235355 n : ℚ)

end A235355

/-! ## A235355.P1455215892917630582

`A001621(n)/A063210(n+1)`
-/

namespace A235355.P1455215892917630582
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001621 n : ℚ) / (A063210 (n + 1) : ℚ)

end

end A235355.P1455215892917630582

namespace A235355

/-- `A001621(n)/A063210(n+1)` -/
def P1455215892917630582.Spec : Prop :=
  ∀ n, P1455215892917630582.a n = (A235355 n : ℚ)

end A235355

/-! ## A235355.P1617485655372297565

`A001621(n)/A168276(n+1)`
-/

namespace A235355.P1617485655372297565
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001621 n : ℚ) / (A168276 (n + 1) : ℚ)

end

end A235355.P1617485655372297565

namespace A235355

/-- `A001621(n)/A168276(n+1)` -/
def P1617485655372297565.Spec : Prop :=
  ∀ n, P1617485655372297565.a n = (A235355 n : ℚ)

end A235355

/-! ## A235355.P7522153336872651047

`A000124(n)/2*A110654(n)`
-/

namespace A235355.P7522153336872651047
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000124 n : ℚ) / 2 * (A110654 n : ℚ)

end

end A235355.P7522153336872651047

namespace A235355

/-- `A000124(n)/2*A110654(n)` -/
def P7522153336872651047.Spec : Prop :=
  ∀ n, P7522153336872651047.a n = (A235355 n : ℚ)

end A235355

/-! ## A235355.P8059163080580414476

`A002817(n)/(A059841(n)+n)`
-/

namespace A235355.P8059163080580414476
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002817 n : ℚ) / (A059841 n + (n : ℤ) : ℚ)

end

end A235355.P8059163080580414476

namespace A235355

/-- `A002817(n)/(A059841(n)+n)` -/
def P8059163080580414476.Spec : Prop :=
  ∀ n, P8059163080580414476.a n = (A235355 n : ℚ)

end A235355

/-! ## A235355.P7359892545641278546

`∑[A006003(n)]/(A052928(n)+1)`
-/

namespace A235355.P7359892545641278546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006003 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A052928 n + 1 : ℚ)

end

end A235355.P7359892545641278546

namespace A235355

/-- `∑[A006003(n)]/(A052928(n)+1)` -/
def P7359892545641278546.Spec : Prop :=
  ∀ n, P7359892545641278546.a n = (A235355 n : ℚ)

end A235355

/-! ## A235355.P3432813493039005836

`A028724(n+1)+A028724(n+1)+A001318(n)`
-/

namespace A235355.P3432813493039005836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028724 (n + 1) + (A028724 (n + 1) + A001318 n)

end

end A235355.P3432813493039005836

namespace A235355

/-- `A028724(n+1)+A028724(n+1)+A001318(n)` -/
def P3432813493039005836.Spec : Prop :=
  ∀ n, P3432813493039005836.a n = A235355 n

end A235355

/-! ## A235355.P5948521351588720025

`A000217(A110654(n))+A002620(n)*A110654(n)`
-/

namespace A235355.P5948521351588720025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A110654 n).toNat + A002620 n * A110654 n

end

end A235355.P5948521351588720025

namespace A235355

/-- `A000217(A110654(n))+A002620(n)*A110654(n)` -/
def P5948521351588720025.Spec : Prop :=
  ∀ n, P5948521351588720025.a n = A235355 n

end A235355

/-!
# A235356: Primes of the form q(m) + 1 with m - 1 and m + 1 both prime, where q(.) is the strict partition function (A000009).

The programs for A235356, there is no canonical definition to state claims against.
-/

/-! ## A235356.P9084276797285202443

`A000009(A235344(n+1))+1`
-/

namespace A235356.P9084276797285202443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 (A235344 (n + 1)).toNat + 1

end

end A235356.P9084276797285202443

/-! ## A235356.P15362569699643035802

`A052839(A235344(n+1))`
-/

namespace A235356.P15362569699643035802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052839 (A235344 (n + 1)).toNat

end

end A235356.P15362569699643035802

/-! ## A235356.P7095040687617917920

`A081360(A235344(n+1))+A001221(A001248(n+1))`
-/

namespace A235356.P7095040687617917920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081360 (A235344 (n + 1)).toNat + A001221 (A001248 (n + 1)).toNat

end

end A235356.P7095040687617917920

/-! ## A235356.P5285354650023133562

`A081360(A235344(n+1))+A001221(A001359(n+1))`
-/

namespace A235356.P5285354650023133562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081360 (A235344 (n + 1)).toNat + A001221 (A001359 (n + 1)).toNat

end

end A235356.P5285354650023133562

/-! ## A235356.P15952294354229100686

`A081360(A235344(n+1))+A001221(A006093(n+1)+1)`
-/

namespace A235356.P15952294354229100686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081360 (A235344 (n + 1)).toNat + A001221 (A006093 (n + 1) + 1).toNat

end

end A235356.P15952294354229100686

/-!
# A235357: 

The programs for A235357, there is no canonical definition to state claims against.
-/

/-! ## A235357.P14072207911845855812

`A000009(A235346(n+1))-1`
-/

namespace A235357.P14072207911845855812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 (A235346 (n + 1)).toNat - 1

end

end A235357.P14072207911845855812

/-!
# A235358: a(n) = |{0 < k < n: g(n,k) - 1, g(n,k) + 1 and q(g(n,k)) - 1 are all prime with g(n,k) = phi(k) + phi(n-k)/8}|, where phi(.) is Euler's totient function and q(.) is the strict partition function (A000009).

The programs for A235358, there is no canonical definition to state claims against.
-/

/-! ## A235358.P2872362997047964765

`A353481(A353484(2*(n+2))+A353426(n))`
-/

namespace A235358.P2872362997047964765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353481 (A353484 (2 * (n + 2)) + A353426 n).toNat

end

end A235358.P2872362997047964765

/-! ## A235358.P17971974616073748032

`floor(A117217(A323840(n))/10)`
-/

namespace A235358.P17971974616073748032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A117217 (A323840 n).toNat : ℚ) / 10⌋

end

end A235358.P17971974616073748032

/-! ## A235358.P16404647018137208802

`∑{e}[A117217(A323840(n)), A001221(#)]`
-/

namespace A235358.P16404647018137208802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117217 (A323840 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A001221 (Nat.factorization (f1 n).natAbs p)

end

end A235358.P16404647018137208802

/-! ## A235358.P17395318264678051737

`A123740(A030624(2*n+5)*A250120(n)+1)`
-/

namespace A235358.P17395318264678051737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123740 (A030624 (2 * n + 5) * A250120 n + 1).toNat

end

end A235358.P17395318264678051737

/-! ## A235358.P4539282360797101553

`A280720(A217844(n+2))`
-/

namespace A235358.P4539282360797101553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280720 (A217844 (n + 2)).toNat

end

end A235358.P4539282360797101553

/-!
# A235359: E.g.f. satisfies: A'(x) = A(x)^5 * A(-x)^3 with A(0) = 1.

The programs for A235359, there is no canonical definition to state claims against.
-/

/-! ## A235359.P3430664405096007387

`A000010(A000105(n)*A318125(n))`
-/

namespace A235359.P3430664405096007387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A000105 n * A318125 n).toNat

end

end A235359.P3430664405096007387

/-! ## A235359.P7949085925415313059

`A000010(A007558(n)*A318125(n))`
-/

namespace A235359.P7949085925415313059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A007558 n * A318125 n).toNat

end

end A235359.P7949085925415313059

/-! ## A235359.P18283436764631423283

`A000010(A326780(n)*A327475(n))`
-/

namespace A235359.P18283436764631423283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A326780 n * A327475 n).toNat

end

end A235359.P18283436764631423283

/-!
# A235360: E.g.f. satisfies: A'(x) = A(x)^5 * A(-x)^2 with A(0) = 1.

The programs for A235360, there is no canonical definition to state claims against.
-/

/-! ## A235360.P11669419096362992036

`A073737(A307821(n+1)+A241405(n+1))`
-/

namespace A235360.P11669419096362992036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073737 (A307821 (n + 1) + A241405 (n + 1)).toNat

end

end A235360.P11669419096362992036

/-!
# A235361: Floor((n + Pi)^2).

The programs for A235361, the canonical program `A235361.P4427022806474368347` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A235361 has offset 0).

The definition of A235361 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor((n+π)²)` (program `A235361.P4427022806474368347`, by `A235361.P4427022806474368347.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A235361.P4427022806474368347

`floor((n+π)²)`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A235361

/-- `floor((n+π)²)` -/
def P4427022806474368347.Spec : Prop :=
  ∀ n, P4427022806474368347.a n = A235361 n

theorem P4427022806474368347.correct : P4427022806474368347.Spec := by
  intro n
  simp only [A235361]

end A235361

/-! ## A235361.P13455076954739800443

`ceil((4*atan(1)+n)²)-1`
-/

namespace A235361.P13455076954739800443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(4 * Real.arctan (1 : ℝ) + (n : ℝ)) ^ 2⌉ - 1

end

end A235361.P13455076954739800443

namespace A235361

/-- `ceil((4*atan(1)+n)²)-1` -/
def P13455076954739800443.Spec : Prop :=
  ∀ n, P13455076954739800443.a n = A235361 n

end A235361

/-! ## A235361.P11790025737079943851

`or(floor((4*atan(1)+n)²), A000007(n))`
-/

namespace A235361.P11790025737079943851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ⌊(4 * Real.arctan (1 : ℝ) + (n : ℝ)) ^ 2⌋ (A000007 n)

end

end A235361.P11790025737079943851

namespace A235361

/-- `or(floor((4*atan(1)+n)²), A000007(n))` -/
def P11790025737079943851.Spec : Prop :=
  ∀ n, P11790025737079943851.a n = A235361 n

end A235361

/-! ## A235361.P3927837240416061492

`floor((4*atan(1)+n)²)%A046302(n+2)`
-/

namespace A235361.P3927837240416061492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊(4 * Real.arctan (1 : ℝ) + (n : ℝ)) ^ 2⌋ (A046302 (n + 2))

end

end A235361.P3927837240416061492

namespace A235361

/-- `floor((4*atan(1)+n)²)%A046302(n+2)` -/
def P3927837240416061492.Spec : Prop :=
  ∀ n, P3927837240416061492.a n = A235361 n

end A235361

/-! ## A235361.P14590972065707236392

`floor((4*atan(1)+n)²)*A057979(2*n)`
-/

namespace A235361.P14590972065707236392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(4 * Real.arctan (1 : ℝ) + (n : ℝ)) ^ 2⌋ * A057979 (2 * n)

end

end A235361.P14590972065707236392

namespace A235361

/-- `floor((4*atan(1)+n)²)*A057979(2*n)` -/
def P14590972065707236392.Spec : Prop :=
  ∀ n, P14590972065707236392.a n = A235361 n

end A235361

/-! ## A235361.P5114696158747532393

`A000027(floor((n+π)^2))`
-/

namespace A235361.P5114696158747532393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 ⌊((n : ℝ) + Real.pi) ^ 2⌋.toNat

end

end A235361.P5114696158747532393

namespace A235361

/-- `A000027(floor((n+π)^2))` -/
def P5114696158747532393.Spec : Prop :=
  ∀ n, P5114696158747532393.a n = A235361 n

end A235361

/-! ## A235361.P17915638596016217630

`A014681(A014681(floor((4*atan(1)+n)²)))`
-/

namespace A235361.P17915638596016217630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (A014681 ⌊(4 * Real.arctan (1 : ℝ) + (n : ℝ)) ^ 2⌋.toNat).toNat

end

end A235361.P17915638596016217630

namespace A235361

/-- `A014681(A014681(floor((4*atan(1)+n)²)))` -/
def P17915638596016217630.Spec : Prop :=
  ∀ n, P17915638596016217630.a n = A235361 n

end A235361

/-! ## A235361.P14727916716176887539

`A004525(A005843(floor((4*atan(1)+n)²)))`
-/

namespace A235361.P14727916716176887539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A005843 ⌊(4 * Real.arctan (1 : ℝ) + (n : ℝ)) ^ 2⌋.toNat).toNat

end

end A235361.P14727916716176887539

namespace A235361

/-- `A004525(A005843(floor((4*atan(1)+n)²)))` -/
def P14727916716176887539.Spec : Prop :=
  ∀ n, P14727916716176887539.a n = A235361 n

end A235361

/-!
# A235363: (1 + Sum_{k=1..m-1} k^(m-1)) (mod m), for m = 1, 3, 5, 7, 9, ...

The programs for A235363, there is no canonical definition to state claims against.
-/

/-! ## A235363.P6179427881516278629

`A201560(Δ[n²])`
-/

namespace A235363.P6179427881516278629
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201560 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A235363.P6179427881516278629

/-! ## A235363.P2094099639428230537

`and(-1, A201560(comp[2*n]))`
-/

namespace A235363.P2094099639428230537
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A201560 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n))

end

end A235363.P2094099639428230537

/-! ## A235363.P8078140584080264593

`or(char[4], A201560(2*n+1))`
-/

namespace A235363.P8078140584080264593
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A201560 (2 * n + 1))

end

end A235363.P8078140584080264593

/-! ## A235363.P4287351388500754502

`(A204187(Δ[n²])+1)%Δ[n²]`
-/

namespace A235363.P4287351388500754502
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A204187 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 1) ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

end

end A235363.P4287351388500754502

/-! ## A235363.P1157367120237886971

`A219540(2*n+1)%(2*(n+1))`
-/

namespace A235363.P1157367120237886971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A219540 (2 * n + 1)) (2 * (n + 1) : ℤ)

end

end A235363.P1157367120237886971

/-! ## A235363.P10223259959151228104

`A188134(4*A201560(comp[2*n]))`
-/

namespace A235363.P10223259959151228104
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188134 (4 * A201560 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)).toNat

end

end A235363.P10223259959151228104

/-! ## A235363.P2953930098012540309

`∑{d}[A201560(comp[2*n]), A000010(#)]`
-/

namespace A235363.P2953930098012540309
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201560 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A235363.P2953930098012540309

/-! ## A235363.P549730900554052950

`filter[A201560(2*n+1), A267579(#)]`
-/

namespace A235363.P549730900554052950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201560 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267579 (f1 j).toNat = 1) n)

end

end A235363.P549730900554052950

/-! ## A235363.P1342017962639562904

`filter[A201560(2*n+1), A267683(#)]`
-/

namespace A235363.P1342017962639562904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201560 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267683 (f1 j).toNat = 1) n)

end

end A235363.P1342017962639562904

/-! ## A235363.P17743163499597246418

`filter[A201560(2*n+1), A267813(#)]`
-/

namespace A235363.P17743163499597246418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201560 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267813 (f1 j).toNat = 1) n)

end

end A235363.P17743163499597246418

/-! ## A235363.P16542173450606776082

`A201560(comp[2*n])%∑[A000041(n)]`
-/

namespace A235363.P16542173450606776082
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A201560 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)) (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A235363.P16542173450606776082

/-! ## A235363.P14252032013290581135

`A201560(2*n+1)+A000007(n+1)`
-/

namespace A235363.P14252032013290581135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201560 (2 * n + 1) + A000007 (n + 1)

end

end A235363.P14252032013290581135

/-! ## A235363.P3121080946934415302

`A201560(2*n+1)%A000040(n+1)`
-/

namespace A235363.P3121080946934415302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A201560 (2 * n + 1)) (A000040 (n + 1))

end

end A235363.P3121080946934415302

/-! ## A235363.P987041085123156371

`A000041(C(2, n))*A201560(2*n+1)`
-/

namespace A235363.P987041085123156371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose 2 n) * A201560 (2 * n + 1)

end

end A235363.P987041085123156371

/-! ## A235363.P12605845506894663968

`A014963(∑[n+1])*A201560(comp[2*n])`
-/

namespace A235363.P12605845506894663968
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (∑ j ∈ Finset.range (n + 1), f1 j) * A201560 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A235363.P12605845506894663968

/-! ## A235363.P3047243212632173841

`A000041(val(n+1, 40))*A201560(comp[2*n])`
-/

namespace A235363.P3047243212632173841
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (SequenceMachineLib.valuation (n + 1) 40) * A201560 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A235363.P3047243212632173841

/-! ## A235363.P16049530297416575887

`A007318(and(1, -n))*A201560(n+1+n)`
-/

namespace A235363.P16049530297416575887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Int.land 1 (-(n : ℤ))).toNat * A201560 (n + 1 + n)

end

end A235363.P16049530297416575887

/-! ## A235363.P4710721256131452986

`A064284(A008621(n))*A201560(comp[2*n])`
-/

namespace A235363.P4710721256131452986
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064284 (A008621 n).toNat * A201560 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A235363.P4710721256131452986

/-!
# A235364: Twin primes p, p+2 such that p+1 is a Giuga number.

The programs for A235364, there is no canonical definition to state claims against.
-/

/-! ## A235364.P13130020407699421451

`A007850(∑[log2(gcd(2, n))])-(-1)^n`
-/

namespace A235364.P13130020407699421451
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Nat.gcd 2 n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007850 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat - (-1) ^ n

end

end A235364.P13130020407699421451

/-!
# A235365: Smallest odd prime factor of 3^n + 1, for n > 1.

The programs for A235365, there is no canonical definition to state claims against.
-/

/-! ## A235365.P11889962432553990221

`A020639(∑[3*a(n-1)]/gcd(2, n+1))` with `a(0)=5, a(1)=9`
-/

namespace A235365.P11889962432553990221
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [5, 9] fun n f1 =>
  3 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (SequenceMachineLib.roundAway (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / (Nat.gcd 2 (n + 1) : ℚ))).toNat

end

end A235365.P11889962432553990221

/-! ## A235365.P6535437246633347600

`p?[A020639(A167205(n))]`
-/

namespace A235365.P6535437246633347600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A167205 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A235365.P6535437246633347600

/-! ## A235365.P16676000428479188926

`A020639(A167205(n+2))`
-/

namespace A235365.P16676000428479188926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A167205 (n + 2)).toNat

end

end A235365.P16676000428479188926

/-!
# A235366: Smallest odd prime factor of 3^n - 1.

The programs for A235366, there is no canonical definition to state claims against.
-/

/-! ## A235366.P4477695060913049288

`A143663(A153678(n+2)+1)`
-/

namespace A235366.P4477695060913049288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143663 (A153678 (n + 2) + 1).toNat

end

end A235366.P4477695060913049288

/-!
# A235367: Sum of positive even numbers up to n^2.

The programs for A235367, the canonical program `A235367.P13030772834267686239` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A235367 has offset 1).

The definition of A235367 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A235367.P13030772834267686239

`A110660((n+1)²)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A235367

/-- `A110660((n+1)²)` -/
def P13030772834267686239.Spec : Prop :=
  ∀ n, P13030772834267686239.a n = A235367 (n + 1)

theorem P13030772834267686239.correct : P13030772834267686239.Spec := by
  intro n
  simp only [A235367, Nat.add_sub_cancel]

end A235367

/-! ## A235367.P3571809964282927302

`floor((or(1, (n+1)²)/2)²)`
-/

namespace A235367.P3571809964282927302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((Nat.lor 1 ((n + 1) ^ 2) : ℚ) / 2) ^ 2⌋

end

end A235367.P3571809964282927302

namespace A235367

/-- `floor((or(1, (n+1)²)/2)²)` -/
def P3571809964282927302.Spec : Prop :=
  ∀ n, P3571809964282927302.a n = A235367 (n + 1)

end A235367

/-! ## A235367.P3647150659490758785

`round((or(1, (n+1)²)/2)²)`
-/

namespace A235367.P3647150659490758785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((Nat.lor 1 ((n + 1) ^ 2) : ℚ) / 2) ^ 2)

end

end A235367.P3647150659490758785

namespace A235367

/-- `round((or(1, (n+1)²)/2)²)` -/
def P3647150659490758785.Spec : Prop :=
  ∀ n, P3647150659490758785.a n = A235367 (n + 1)

end A235367

/-! ## A235367.P16788579526910944601

`2*C(∑[n%2+n]+1, 2)`
-/

namespace A235367.P16788579526910944601
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2 + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j + 1) 2

end

end A235367.P16788579526910944601

namespace A235367

/-- `2*C(∑[n%2+n]+1, 2)` -/
def P16788579526910944601.Spec : Prop :=
  ∀ n, (P16788579526910944601.a n : ℤ) = A235367 (n + 1)

end A235367

/-! ## A235367.P12939246082818156351

`2*C(ceil(n²/2)+1+n, 2)`
-/

namespace A235367.P12939246082818156351
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.choose (⌈(n ^ 2 : ℚ) / 2⌉ + 1 + (n : ℤ)).toNat 2

end

end A235367.P12939246082818156351

namespace A235367

/-- `2*C(ceil(n²/2)+1+n, 2)` -/
def P12939246082818156351.Spec : Prop :=
  ∀ n, (P12939246082818156351.a n : ℤ) = A235367 (n + 1)

end A235367

/-! ## A235367.P10018228991330999929

`∑[2*(n²+1+n)*round(n/2)]`
-/

namespace A235367.P10018228991330999929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n ^ 2 + 1 + n : ℤ) * SequenceMachineLib.roundAway ((n : ℚ) / 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A235367.P10018228991330999929

namespace A235367

/-- `∑[2*(n²+1+n)*round(n/2)]` -/
def P10018228991330999929.Spec : Prop :=
  ∀ n, P10018228991330999929.a n = A235367 (n + 1)

end A235367

/-! ## A235367.P8000624089760802566

`floor((A080335(n)/2)²)`
-/

namespace A235367.P8000624089760802566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((A080335 n : ℚ) / 2) ^ 2⌋

end

end A235367.P8000624089760802566

namespace A235367

/-- `floor((A080335(n)/2)²)` -/
def P8000624089760802566.Spec : Prop :=
  ∀ n, P8000624089760802566.a n = A235367 (n + 1)

end A235367

/-! ## A235367.P16750333065290855394

`floor(((char[A268670(n+1)]+(n+1)²)/2)²)`
-/

namespace A235367.P16750333065290855394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268670 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((((if ∃ j, f1 j = (n : ℤ) then 1 else 0) + (n + 1) ^ 2 : ℕ) : ℚ) / 2) ^ 2⌋

end

end A235367.P16750333065290855394

namespace A235367

/-- `floor(((char[A268670(n+1)]+(n+1)²)/2)²)` -/
def P16750333065290855394.Spec : Prop :=
  ∀ n, P16750333065290855394.a n = A235367 (n + 1)

end A235367

/-! ## A235367.P4180590378258444399

`(A080335(n)+1)*A002620(n+1)`
-/

namespace A235367.P4180590378258444399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A080335 n + 1) * A002620 (n + 1)

end

end A235367.P4180590378258444399

namespace A235367

/-- `(A080335(n)+1)*A002620(n+1)` -/
def P4180590378258444399.Spec : Prop :=
  ∀ n, P4180590378258444399.a n = A235367 (n + 1)

end A235367

/-! ## A235367.P12534559184347880577

`(A000982(n)+n)*A080827(n+1)`
-/

namespace A235367.P12534559184347880577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000982 n + (n : ℤ)) * A080827 (n + 1)

end

end A235367.P12534559184347880577

namespace A235367

/-- `(A000982(n)+n)*A080827(n+1)` -/
def P12534559184347880577.Spec : Prop :=
  ∀ n, P12534559184347880577.a n = A235367 (n + 1)

end A235367

/-! ## A235367.P6864869966954824333

`A099392(n+2)²-A099392(n+2)`
-/

namespace A235367.P6864869966954824333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099392 (n + 2) ^ 2 - A099392 (n + 2)

end

end A235367.P6864869966954824333

namespace A235367

/-- `A099392(n+2)²-A099392(n+2)` -/
def P6864869966954824333.Spec : Prop :=
  ∀ n, P6864869966954824333.a n = A235367 (n + 1)

end A235367

/-! ## A235367.P5071739523144091014

`2*(A212892(n+1)+A002620(n+1))`
-/

namespace A235367.P5071739523144091014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A212892 (n + 1) + A002620 (n + 1))

end

end A235367.P5071739523144091014

namespace A235367

/-- `2*(A212892(n+1)+A002620(n+1))` -/
def P5071739523144091014.Spec : Prop :=
  ∀ n, P5071739523144091014.a n = A235367 (n + 1)

end A235367

/-! ## A235367.P16411901448881289858

`(A158388(n)+A080476(n+1))*A080476(n+1)`
-/

namespace A235367.P16411901448881289858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A158388 n + A080476 (n + 1)) * A080476 (n + 1)

end

end A235367.P16411901448881289858

namespace A235367

/-- `(A158388(n)+A080476(n+1))*A080476(n+1)` -/
def P16411901448881289858.Spec : Prop :=
  ∀ n, P16411901448881289858.a n = A235367 (n + 1)

end A235367

/-! ## A235367.P1759305246192784940

`A007590(n+1)*A080827(n+1)`
-/

namespace A235367.P1759305246192784940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007590 (n + 1) * A080827 (n + 1)

end

end A235367.P1759305246192784940

namespace A235367

/-- `A007590(n+1)*A080827(n+1)` -/
def P1759305246192784940.Spec : Prop :=
  ∀ n, P1759305246192784940.a n = A235367 (n + 1)

end A235367

/-! ## A235367.P17066127820991982055

`A000982(n+1)*A097063(n+1)`
-/

namespace A235367.P17066127820991982055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000982 (n + 1) * A097063 (n + 1)

end

end A235367.P17066127820991982055

namespace A235367

/-- `A000982(n+1)*A097063(n+1)` -/
def P17066127820991982055.Spec : Prop :=
  ∀ n, P17066127820991982055.a n = A235367 (n + 1)

end A235367

/-! ## A235367.P182853772041343065

`A002620(n+1)*A248800(n+1)`
-/

namespace A235367.P182853772041343065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (n + 1) * A248800 (n + 1)

end

end A235367.P182853772041343065

namespace A235367

/-- `A002620(n+1)*A248800(n+1)` -/
def P182853772041343065.Spec : Prop :=
  ∀ n, P182853772041343065.a n = A235367 (n + 1)

end A235367

/-! ## A235367.P8018760291251098095

`A007590(n+1)*A099392(n+2)`
-/

namespace A235367.P8018760291251098095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007590 (n + 1) * A099392 (n + 2)

end

end A235367.P8018760291251098095

namespace A235367

/-- `A007590(n+1)*A099392(n+2)` -/
def P8018760291251098095.Spec : Prop :=
  ∀ n, P8018760291251098095.a n = A235367 (n + 1)

end A235367

/-! ## A235367.P7407713094336562961

`A037270(n+1)-A000982(n+1)²`
-/

namespace A235367.P7407713094336562961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037270 (n + 1) - A000982 (n + 1) ^ 2

end

end A235367.P7407713094336562961

namespace A235367

/-- `A037270(n+1)-A000982(n+1)²` -/
def P7407713094336562961.Spec : Prop :=
  ∀ n, P7407713094336562961.a n = A235367 (n + 1)

end A235367

/-! ## A235367.P5052928582428839257

`A166515(2*n)+A166515(2*n)²`
-/

namespace A235367.P5052928582428839257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166515 (2 * n) + A166515 (2 * n) ^ 2

end

end A235367.P5052928582428839257

namespace A235367

/-- `A166515(2*n)+A166515(2*n)²` -/
def P5052928582428839257.Spec : Prop :=
  ∀ n, P5052928582428839257.a n = A235367 (n + 1)

end A235367

/-! ## A235367.P758658775410378660

`xor(1, A008818(2*n))*A008818(2*n)`
-/

namespace A235367.P758658775410378660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A008818 (2 * n)) * A008818 (2 * n)

end

end A235367.P758658775410378660

namespace A235367

/-- `xor(1, A008818(2*n))*A008818(2*n)` -/
def P758658775410378660.Spec : Prop :=
  ∀ n, P758658775410378660.a n = A235367 (n + 1)

end A235367

/-!
# A235369: E.g.f. satisfies: A(x) = 1/(1 - Integral A(x) + A(x)^2 dx).

The programs for A235369, there is no canonical definition to state claims against.
-/

/-! ## A235369.P12227449820721533024

`∑[A071934(A217902(n))]`
-/

namespace A235369.P12227449820721533024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071934 (A217902 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A235369.P12227449820721533024

/-!
# A235370: E.g.f. satisfies: A'(x) = A(x)^6 / A(-x) with A(0) = 1.

The programs for A235370, there is no canonical definition to state claims against.
-/

/-! ## A235370.P453377415254613468

`A064989(11^n-(10^n-1))`
-/

namespace A235370.P453377415254613468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 ((11 ^ n : ℤ) - ((10 ^ n : ℤ) - 1)).toNat

end

end A235370.P453377415254613468

/-!
# A235371: E.g.f. satisfies: A'(x) = A(x)^6 * A(-x) with A(0) = 1.

The programs for A235371, there is no canonical definition to state claims against.
-/

/-! ## A235371.P11174636052716560861

`A348323(comp[2*(n+1)]²)+1`
-/

namespace A235371.P11174636052716560861
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348323 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n ^ 2) + 1

end

end A235371.P11174636052716560861

/-!
# A235372: E.g.f. satisfies: A'(x) = A(x)^6 * A(-x)^2 with A(0) = 1.

The programs for A235372, there is no canonical definition to state claims against.
-/

/-! ## A235372.P8369312307743246004

`A079677(Δ[(n-1)^5])`
-/

namespace A235372.P8369312307743246004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) ^ 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079677 (f1 (n + 1) - f1 n).toNat

end

end A235372.P8369312307743246004

/-!
# A235373: E.g.f. satisfies: A'(x) = A(x)^6 * A(-x)^3 with A(0) = 1.

The programs for A235373, there is no canonical definition to state claims against.
-/

/-! ## A235373.P2424847789860613599

`or(A008624(A119966(n)), A158876(n))`
-/

namespace A235373.P2424847789860613599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A008624 (A119966 n).toNat) (A158876 n)

end

end A235373.P2424847789860613599

/-! ## A235373.P17633199803582750067

`A028310(or(A158876(n), A242233(n)))`
-/

namespace A235373.P17633199803582750067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (Int.lor (A158876 n) (A242233 n)).toNat

end

end A235373.P17633199803582750067

/-!
# A235374: E.g.f. satisfies: A'(x) = A(x)^6 * A(-x)^4 with A(0) = 1.

The programs for A235374, there is no canonical definition to state claims against.
-/

/-! ## A235374.P16596021000508011204

`A028310(A111811(n)+2*and(n, 2*n))`
-/

namespace A235374.P16596021000508011204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A111811 n + (2 * Nat.land n (2 * n) : ℤ)).toNat

end

end A235374.P16596021000508011204

/-! ## A235374.P6757822073185603745

`A028310(or(2*and(n, 2*n), A111811(n)))`
-/

namespace A235374.P6757822073185603745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (Int.lor (2 * Nat.land n (2 * n) : ℤ) (A111811 n)).toNat

end

end A235374.P6757822073185603745

/-!
# A235375: Integers k such that k^2 is of form y^2 + y + x^2 + x for positive y, x.

The programs for A235375, there is no canonical definition to state claims against.
-/

/-! ## A235375.P2701349138326078286

`A274595(n+2)/2`
-/

namespace A235375.P2701349138326078286
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A274595 (n + 2) : ℚ) / 2

end

end A235375.P2701349138326078286

/-! ## A235375.P15922594703134496721

`∑[A004524(Δ[A274595(n+1)])]`
-/

namespace A235375.P15922594703134496721
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274595 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A235375.P15922594703134496721

/-! ## A235375.P15919936495388280360

`∑[A004525(Δ[A274595(n+1)])]`
-/

namespace A235375.P15919936495388280360
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274595 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A235375.P15919936495388280360

/-! ## A235375.P17907092197357866342

`∑[A004526(Δ[A274595(n+1)])]`
-/

namespace A235375.P17907092197357866342
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274595 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A235375.P17907092197357866342

/-! ## A235375.P16712335982864217244

`∑[A014682(Δ[A274595(n+1)])]`
-/

namespace A235375.P16712335982864217244
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274595 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A235375.P16712335982864217244

/-! ## A235375.P5334235212065894040

`∑[A025480(Δ[A274595(n+1)])]`
-/

namespace A235375.P5334235212065894040
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274595 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A235375.P5334235212065894040

/-! ## A235375.P17379705003285428709

`∑[A065033(Δ[A274595(n+1)])]`
-/

namespace A235375.P17379705003285428709
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274595 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A235375.P17379705003285428709

/-! ## A235375.P8685580639430672690

`∑[A252463(Δ[A274595(n+1)])]`
-/

namespace A235375.P8685580639430672690
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274595 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252463 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A235375.P8685580639430672690

/-! ## A235375.P18076141505535925214

`∑[A278529(Δ[A274595(n+1)])]`
-/

namespace A235375.P18076141505535925214
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274595 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278529 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A235375.P18076141505535925214

/-! ## A235375.P13181926108270161817

`A014682(A274595(n+1)+Δ[A274595(n+1)])`
-/

namespace A235375.P13181926108270161817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274595 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A274595 (n + 1) + (f1 (n + 1) - f1 n)).toNat

end

end A235375.P13181926108270161817

/-! ## A235375.P12036374074093745173

`A278529(A274595(n+1)+Δ[A274595(n+1)])`
-/

namespace A235375.P12036374074093745173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274595 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278529 (A274595 (n + 1) + (f1 (n + 1) - f1 n)).toNat

end

end A235375.P12036374074093745173

/-! ## A235375.P6594499759559216784

`A001281(A274595(n+2))`
-/

namespace A235375.P6594499759559216784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A274595 (n + 2)).toNat

end

end A235375.P6594499759559216784

/-! ## A235375.P6733088076810009936

`A004526(A274595(n+2)+1)`
-/

namespace A235375.P6733088076810009936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A274595 (n + 2) + 1).toNat

end

end A235375.P6733088076810009936

/-! ## A235375.P2698634760843576425

`A065033(A274595(n+2)-1)`
-/

namespace A235375.P2698634760843576425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A274595 (n + 2) - 1).toNat

end

end A235375.P2698634760843576425

/-! ## A235375.P17180176039582280236

`A004525(A274595(n+1)+Δ[A274595(n+1)])`
-/

namespace A235375.P17180176039582280236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274595 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A274595 (n + 1) + (f1 (n + 1) - f1 n)).toNat

end

end A235375.P17180176039582280236

/-! ## A235375.P18233348198621906023

`A025480(A274595(n+1)+Δ[A274595(n+1)])`
-/

namespace A235375.P18233348198621906023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274595 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A274595 (n + 1) + (f1 (n + 1) - f1 n)).toNat

end

end A235375.P18233348198621906023

/-! ## A235375.P4090038941884326022

`A252463(A274595(n+1)+Δ[A274595(n+1)])`
-/

namespace A235375.P4090038941884326022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274595 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252463 (A274595 (n + 1) + (f1 (n + 1) - f1 n)).toNat

end

end A235375.P4090038941884326022

/-!
# A235376: Positions of 9's in A235354.

The programs for A235376, there is no canonical definition to state claims against.
-/

/-! ## A235376.P14309377284643397165

`eq[9, A235354(A028310(n))]`
-/

namespace A235376.P14309377284643397165
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235354 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A235376.P14309377284643397165

/-!
# A235377: Positions of 10s in A235354.

The programs for A235377, there is no canonical definition to state claims against.
-/

/-! ## A235377.P12002012663595840330

`A000720(A052033(n+1))`
-/

namespace A235377.P12002012663595840330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A052033 (n + 1)).toNat

end

end A235377.P12002012663595840330

/-! ## A235377.P137752627914280841

`A000720(A236437(n+2))`
-/

namespace A235377.P137752627914280841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A236437 (n + 2)).toNat

end

end A235377.P137752627914280841

/-! ## A235377.P1063416149956250795

`eq[10, A235354(A028310(n))]`
-/

namespace A235377.P1063416149956250795
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235354 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A235377.P1063416149956250795

/-! ## A235377.P16022745984314663890

`A003963(p?[A052033(n+1)])`
-/

namespace A235377.P16022745984314663890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052033 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A235377.P16022745984314663890

/-! ## A235377.P13208250638529545992

`A026233(p?[A052033(n+1)])`
-/

namespace A235377.P13208250638529545992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052033 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026233 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A235377.P13208250638529545992

/-! ## A235377.P12618362199076586504

`A026238(p?[A052033(n+1)])`
-/

namespace A235377.P12618362199076586504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052033 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026238 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A235377.P12618362199076586504

/-! ## A235377.P6612592669246309316

`A036234(A052033(n+1)-1)`
-/

namespace A235377.P6612592669246309316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036234 (A052033 (n + 1) - 1).toNat

end

end A235377.P6612592669246309316

/-! ## A235377.P16885742058437689823

`A003963(2*A052033(n+1))`
-/

namespace A235377.P16885742058437689823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (2 * A052033 (n + 1)).toNat

end

end A235377.P16885742058437689823

/-! ## A235377.P9294315794306272450

`A003963(lcm(2, A052033(n+1)))`
-/

namespace A235377.P9294315794306272450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (Int.lcm 2 (A052033 (n + 1)))

end

end A235377.P9294315794306272450

/-! ## A235377.P23916304317297878

`eq[A000040(n+2), A236174(n+2)]+2`
-/

namespace A235377.P23916304317297878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236174 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2

end

end A235377.P23916304317297878

/-!
# A235378: a(n) = (-1)^n*(n! - (-1)^n).

The programs for A235378, the canonical program `A235378.P3697726674479209817` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A235378 has offset 1).

The definition of A235378 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A235378.P3697726674479209817

`(-1)^(n+1)*((n+1)!-(-1)^(n+1))`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A235378

/-- `(-1)^(n+1)*((n+1)!-(-1)^(n+1))` -/
def P3697726674479209817.Spec : Prop :=
  ∀ n, P3697726674479209817.a n = A235378 (n + 1)

theorem P3697726674479209817.correct : P3697726674479209817.Spec := by
  intro n
  simp only [A235378, Nat.add_sub_cancel]

end A235378

/-! ## A235378.P12034638403282908672

`∏[-(n+1)]-1`
-/

namespace A235378.P12034638403282908672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j - 1

end

end A235378.P12034638403282908672

namespace A235378

/-- `∏[-(n+1)]-1` -/
def P12034638403282908672.Spec : Prop :=
  ∀ n, P12034638403282908672.a n = A235378 (n + 1)

end A235378

/-! ## A235378.P11017233673242484062

`xor(-1, -∏[-(n+1)])`
-/

namespace A235378.P11017233673242484062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (-1) (-(∏ j ∈ Finset.range (n + 1), f1 j))

end

end A235378.P11017233673242484062

namespace A235378

/-- `xor(-1, -∏[-(n+1)])` -/
def P11017233673242484062.Spec : Prop :=
  ∀ n, P11017233673242484062.a n = A235378 (n + 1)

end A235378

/-! ## A235378.P11779701007666321302

`((n+1)!-(-1)^(n+1))/(-1)^(n+1)`
-/

namespace A235378.P11779701007666321302
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.factorial (n + 1) : ℤ) - (-1) ^ (n + 1) : ℚ) / ((-1) ^ (n + 1) : ℚ)

end

end A235378.P11779701007666321302

namespace A235378

/-- `((n+1)!-(-1)^(n+1))/(-1)^(n+1)` -/
def P11779701007666321302.Spec : Prop :=
  ∀ n, P11779701007666321302.a n = (A235378 (n + 1) : ℚ)

end A235378

/-! ## A235378.P11039431557581381314

`Δ[A058006(n)-n]`
-/

namespace A235378.P11039431557581381314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058006 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A235378.P11039431557581381314

namespace A235378

/-- `Δ[A058006(n)-n]` -/
def P11039431557581381314.Spec : Prop :=
  ∀ n, P11039431557581381314.a n = A235378 (n + 1)

end A235378

/-! ## A235378.P15818484758934753079

`-(A155456(n+2)+1)`
-/

namespace A235378.P15818484758934753079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A155456 (n + 2) + 1)

end

end A235378.P15818484758934753079

namespace A235378

/-- `-(A155456(n+2)+1)` -/
def P15818484758934753079.Spec : Prop :=
  ∀ n, P15818484758934753079.a n = A235378 (n + 1)

end A235378

/-! ## A235378.P11243076060372904976

`(A033999(n)+A000142(n+1))*A033999(n+1)`
-/

namespace A235378.P11243076060372904976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A033999 n + A000142 (n + 1)) * A033999 (n + 1)

end

end A235378.P11243076060372904976

namespace A235378

/-- `(A033999(n)+A000142(n+1))*A033999(n+1)` -/
def P11243076060372904976.Spec : Prop :=
  ∀ n, P11243076060372904976.a n = A235378 (n + 1)

end A235378

/-! ## A235378.P8605813689232709286

`(A165326(n+1)+A000142(n+1))/A033999(n+1)`
-/

namespace A235378.P8605813689232709286
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A165326 (n + 1) + A000142 (n + 1) : ℚ) / (A033999 (n + 1) : ℚ)

end

end A235378.P8605813689232709286

namespace A235378

/-- `(A165326(n+1)+A000142(n+1))/A033999(n+1)` -/
def P8605813689232709286.Spec : Prop :=
  ∀ n, P8605813689232709286.a n = (A235378 (n + 1) : ℚ)

end A235378

/-! ## A235378.P12377921547969460958

`∑[(1-(n+1)²)*a(n-1)/(n+1)]` with `a(0)=-2`
-/

namespace A235378.P12377921547969460958
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [-2] fun n f1 =>
  (1 - ((n + 1) ^ 2 : ℤ) : ℚ) * f1 (n - 1) / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A235378.P12377921547969460958

namespace A235378

/-- `∑[(1-(n+1)²)*a(n-1)/(n+1)]` -/
def P12377921547969460958.Spec : Prop :=
  ∀ n, P12377921547969460958.a n = (A235378 (n + 1) : ℚ)

end A235378

/-!
# A235380: Denominator of arithmetic mean of the first n terms of A235354.

The programs for A235380, there is no canonical definition to state claims against.
-/

/-! ## A235380.P8732606258483845041

`gcd(n+1, A134642(A181873(n+1)))`
-/

namespace A235380.P8732606258483845041
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A134642 (A181873 (n + 1)).toNat)

end

end A235380.P8732606258483845041

/-!
# A235381: Positive numbers n such that n^2 + n + 41 is composite and there are no positive integers c or d such that n = c*d*x^2 + ((d-2)*c + 1)*x + ((41*d^2 - d + 1)*c -1)/d for an integer x.

The programs for A235381, there is no canonical definition to state claims against.
-/

/-! ## A235381.P11142977380314438703

`A201998(A004767(n+8)-∏{p}[n+1, #])`
-/

namespace A235381.P11142977380314438703
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201998 (A004767 (n + 8) - ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℤ)).toNat

end

end A235381.P11142977380314438703

/-!
# A235382: a(n) = smallest number of unit squares required to enclose n units of area.

The programs for A235382, the canonical program `A235382.P1863404104307453979` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A235382 has offset 0).

The definition of A235382 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A235382.P1863404104307453979

`2*ceil(2*sqrt(n))+4`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A235382

/-- `2*ceil(2*sqrt(n))+4` -/
def P1863404104307453979.Spec : Prop :=
  ∀ n, P1863404104307453979.a n = A235382 n

theorem P1863404104307453979.correct : P1863404104307453979.Spec := by
  intro n
  simp only [A235382]

end A235382

/-! ## A235382.P16493938377596164715

`A020705(A027709(n))`
-/

namespace A235382.P16493938377596164715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020705 (A027709 n).toNat

end

end A235382.P16493938377596164715

namespace A235382

/-- `A020705(A027709(n))` -/
def P16493938377596164715.Spec : Prop :=
  ∀ n, P16493938377596164715.a n = A235382 n

end A235382

/-! ## A235382.P15867091037959817128

`A171463(A265412(n)+2-A171463(n+1))`
-/

namespace A235382.P15867091037959817128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171463 (A265412 n + (2 - A171463 (n + 1))).toNat

end

end A235382.P15867091037959817128

namespace A235382

/-- `A171463(A265412(n)+2-A171463(n+1))` -/
def P15867091037959817128.Spec : Prop :=
  ∀ n, P15867091037959817128.a n = A235382 n

end A235382

/-! ## A235382.P14761870982558355786

`A027709(A183866(n+1))`
-/

namespace A235382.P14761870982558355786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027709 (A183866 (n + 1)).toNat

end

end A235382.P14761870982558355786

namespace A235382

/-- `A027709(A183866(n+1))` -/
def P14761870982558355786.Spec : Prop :=
  ∀ n, P14761870982558355786.a n = A235382 n

end A235382

/-! ## A235382.P9514156327630530617

`A027709(A080037(n)-1)`
-/

namespace A235382.P9514156327630530617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027709 (A080037 n - 1).toNat

end

end A235382.P9514156327630530617

namespace A235382

/-- `A027709(A080037(n)-1)` -/
def P9514156327630530617.Spec : Prop :=
  ∀ n, P9514156327630530617.a n = A235382 n

end A235382

/-! ## A235382.P10306300015399285042

`A027709(A083479(A027709(n)+n+1))`
-/

namespace A235382.P10306300015399285042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027709 (A083479 (A027709 n + (n + 1 : ℤ)).toNat).toNat

end

end A235382.P10306300015399285042

namespace A235382

/-- `A027709(A083479(A027709(n)+n+1))` -/
def P10306300015399285042.Spec : Prop :=
  ∀ n, P10306300015399285042.a n = A235382 n

end A235382

/-! ## A235382.P18323667560736024881

`A027709(A182834(2*n+1)-n)`
-/

namespace A235382.P18323667560736024881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027709 (A182834 (2 * n + 1) - (n : ℤ)).toNat

end

end A235382.P18323667560736024881

namespace A235382

/-- `A027709(A182834(2*n+1)-n)` -/
def P18323667560736024881.Spec : Prop :=
  ∀ n, P18323667560736024881.a n = A235382 n

end A235382

/-! ## A235382.P10388911998499936408

`A000267(A028387(A000267(A028392(A028392(n)))))`
-/

namespace A235382.P10388911998499936408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000267 (A028387 (A000267 (A028392 (A028392 n).toNat).toNat).toNat).toNat

end

end A235382.P10388911998499936408

namespace A235382

/-- `A000267(A028387(A000267(A028392(A028392(n)))))` -/
def P10388911998499936408.Spec : Prop :=
  ∀ n, P10388911998499936408.a n = A235382 n

end A235382

/-! ## A235382.P5924635889030755084

`2*(A360924(n)+2)`
-/

namespace A235382.P5924635889030755084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A360924 n + 2)

end

end A235382.P5924635889030755084

namespace A235382

/-- `2*(A360924(n)+2)` -/
def P5924635889030755084.Spec : Prop :=
  ∀ n, P5924635889030755084.a n = A235382 n

end A235382

/-! ## A235382.P2431393228749399575

`A000267((A360924(n)+2)²)`
-/

namespace A235382.P2431393228749399575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000267 ((A360924 n + 2) ^ 2).toNat

end

end A235382.P2431393228749399575

namespace A235382

/-- `A000267((A360924(n)+2)²)` -/
def P2431393228749399575.Spec : Prop :=
  ∀ n, P2431393228749399575.a n = A235382 n

end A235382

/-! ## A235382.P2691799780054881393

`A027434((A360924(n)+2)²)`
-/

namespace A235382.P2691799780054881393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027434 ((A360924 n + 2) ^ 2).toNat

end

end A235382.P2691799780054881393

namespace A235382

/-- `A027434((A360924(n)+2)²)` -/
def P2691799780054881393.Spec : Prop :=
  ∀ n, P2691799780054881393.a n = A235382 n

end A235382

/-! ## A235382.P15063238019025754495

`A027709(A360924(n)+n+1)`
-/

namespace A235382.P15063238019025754495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027709 (A360924 n + (n + 1 : ℤ)).toNat

end

end A235382.P15063238019025754495

namespace A235382

/-- `A027709(A360924(n)+n+1)` -/
def P15063238019025754495.Spec : Prop :=
  ∀ n, P15063238019025754495.a n = A235382 n

end A235382

/-! ## A235382.P12268512909980359475

`A000267(A248928(A360924(n)+n))`
-/

namespace A235382.P12268512909980359475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000267 (A248928 (A360924 n + (n : ℤ)).toNat).toNat

end

end A235382.P12268512909980359475

namespace A235382

/-- `A000267(A248928(A360924(n)+n))` -/
def P12268512909980359475.Spec : Prop :=
  ∀ n, P12268512909980359475.a n = A235382 n

end A235382

/-! ## A235382.P18131932567737333197

`A360924((A360924(n)+2)²)`
-/

namespace A235382.P18131932567737333197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360924 ((A360924 n + 2) ^ 2).toNat

end

end A235382.P18131932567737333197

namespace A235382

/-- `A360924((A360924(n)+2)²)` -/
def P18131932567737333197.Spec : Prop :=
  ∀ n, P18131932567737333197.a n = A235382 n

end A235382

/-!
# A235385: E.g.f.: exp( Sum_{n>=1} H(n) * x^(2*n-1)/(2*n-1) ) where H(n) is the n-th harmonic number.

The programs for A235385, there is no canonical definition to state claims against.
-/

/-! ## A235385.P15686899522190241263

`A226190(A330021(n)+A009218(n))`
-/

namespace A235385.P15686899522190241263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226190 (A330021 n + A009218 n).toNat

end

end A235385.P15686899522190241263

/-! ## A235385.P695423161163500477

`A000040(A059694(n+1))%A038507(n)`
-/

namespace A235385.P695423161163500477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (A059694 (n + 1)).toNat) (A038507 n)

end

end A235385.P695423161163500477

/-! ## A235385.P2235703209039988469

`A211861(A361653(2*n+1)+A253668(2*n+1))`
-/

namespace A235385.P2235703209039988469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211861 (A361653 (2 * n + 1) + A253668 (2 * n + 1)).toNat

end

end A235385.P2235703209039988469

/-!
# A235386: Numbers k such that A235141(k) = 1.

The programs for A235386, there is no canonical definition to state claims against.
-/

/-! ## A235386.P3691103927083342240

`eq[1, A235141(n+1)]+1`
-/

namespace A235386.P3691103927083342240
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235141 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A235386.P3691103927083342240

/-! ## A235386.P13538648609104885421

`A004442(eq[1, A235141(n+1)])`
-/

namespace A235386.P13538648609104885421
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235141 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A235386.P13538648609104885421

/-! ## A235386.P6781305461508751439

`A079097(eq[1, A235141(n+1)])`
-/

namespace A235386.P6781305461508751439
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235141 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079097 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A235386.P6781305461508751439

/-! ## A235386.P16892488158619064379

`A109613(eq[1, A235141(n+1)])`
-/

namespace A235386.P16892488158619064379
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235141 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A235386.P16892488158619064379

/-! ## A235386.P15093561770162636130

`A141310(eq[1, A235141(n+1)])`
-/

namespace A235386.P15093561770162636130
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235141 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141310 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A235386.P15093561770162636130

/-!
# A235387: Positions of 2's in A235141, the first differences of A234300.

The programs for A235387, there is no canonical definition to state claims against.
-/

/-! ## A235387.P17048128624559363270

`eq[2, A235141(n+1)]+1`
-/

namespace A235387.P17048128624559363270
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235141 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A235387.P17048128624559363270

/-! ## A235387.P8006213843135985762

`eq[2, A235141(A093178(n))]`
-/

namespace A235387.P8006213843135985762
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235141 (A093178 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A235387.P8006213843135985762

/-! ## A235387.P9410759158331787822

`A004442(eq[2, A235141(n+1)])`
-/

namespace A235387.P9410759158331787822
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235141 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A235387.P9410759158331787822

/-! ## A235387.P8535031319092843017

`A065190(eq[2, A235141(n+1)])`
-/

namespace A235387.P8535031319092843017
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235141 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065190 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A235387.P8535031319092843017

/-! ## A235387.P11859864369124253864

`A079097(eq[2, A235141(n+1)])`
-/

namespace A235387.P11859864369124253864
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235141 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079097 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A235387.P11859864369124253864

/-! ## A235387.P16036131955270180824

`A109613(eq[2, A235141(n+1)])`
-/

namespace A235387.P16036131955270180824
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235141 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A235387.P16036131955270180824

/-! ## A235387.P5836818571654371923

`A141310(eq[2, A235141(n+1)])`
-/

namespace A235387.P5836818571654371923
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235141 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141310 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A235387.P5836818571654371923

/-! ## A235387.P11024162414503387729

`A153152(eq[2, A235141(n+1)])`
-/

namespace A235387.P11024162414503387729
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235141 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A235387.P11024162414503387729

/-! ## A235387.P7822355707116318964

`eq[2, A235141(A000038(n)+n)]`
-/

namespace A235387.P7822355707116318964
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235141 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A235387.P7822355707116318964

/-! ## A235387.P9446148130353917734

`eq[2, A235141(or(n, A000038(n)))]`
-/

namespace A235387.P9446148130353917734
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235141 (Int.lor (n : ℤ) (A000038 n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A235387.P9446148130353917734

/-! ## A235387.P9366674535950878034

`eq[2, A235141(A114112(n+1))]`
-/

namespace A235387.P9366674535950878034
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235141 (A114112 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A235387.P9366674535950878034

/-!
# A235388: Number of groups of order 2n generated by involutions.

The programs for A235388, there is no canonical definition to state claims against.
-/

/-! ## A235388.P17991475923462472542

`A294897(n+1)-A025465(A000073(n))`
-/

namespace A235388.P17991475923462472542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294897 (n + 1) - A025465 (A000073 n).toNat

end

end A235388.P17991475923462472542

/-! ## A235388.P12063685749300834191

`A294897(n+1)-A185284(A013598(n))`
-/

namespace A235388.P12063685749300834191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294897 (n + 1) - A185284 (A013598 n).toNat

end

end A235388.P12063685749300834191

/-! ## A235388.P18171120824680596360

`A294897(n+1)-A185284(A109043(n))`
-/

namespace A235388.P18171120824680596360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294897 (n + 1) - A185284 (A109043 n).toNat

end

end A235388.P18171120824680596360

/-! ## A235388.P5082547369960344641

`A319416(A000188(n+1)^A215461(n))`
-/

namespace A235388.P5082547369960344641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319416 (SequenceMachineLib.roundAway ((A000188 (n + 1) : ℚ) ^ (A215461 n : ℤ))).toNat

end

end A235388.P5082547369960344641

/-!
# A235392: Primes of the form (p! + q!)/ p! where p= prime(k) and q= prime(k+1), in order of increasing k.

The programs for A235392, there is no canonical definition to state claims against.
-/

/-! ## A235392.P3500576553937215112

`p?[A002061(A101635(n+1))]`
-/

namespace A235392.P3500576553937215112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002061 (A101635 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A235392.P3500576553937215112

/-! ## A235392.P18280419912763281706

`A089726(A244170(2*n+9)+A070020(n+1))`
-/

namespace A235392.P18280419912763281706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089726 (A244170 (2 * n + 9) + A070020 (n + 1)).toNat

end

end A235392.P18280419912763281706

/-!
# A235394: Primes whose decimal representation is a valid number in base 8 and interpreted as such is again a prime.

The programs for A235394, the canonical program `A235394.P10443878114079601900` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A235394 has offset 1).

The definition of A235394 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1791 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A235394.P10443878114079601900

`p?[A004682(n+1)]`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A235394

/-- `p?[A004682(n+1)]` -/
def P10443878114079601900.Spec : Prop :=
  ∀ n, P10443878114079601900.a n = A235394 (n + 1)

theorem P10443878114079601900.correct : P10443878114079601900.Spec := by
  intro n
  simp only [A235394, Nat.add_sub_cancel]

end A235394

/-! ## A235394.P3326231740327076491

`∩[A004682(n+1), A036962(n+1)]`
-/

namespace A235394.P3326231740327076491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004682 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036962 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A235394.P3326231740327076491

namespace A235394

/-- `∩[A004682(n+1), A036962(n+1)]` -/
def P3326231740327076491.Spec : Prop :=
  ∀ n, (P3326231740327076491.a n : ℤ) = A235394 (n + 1)

end A235394

/-! ## A235394.P2610368607646493646

`∩[A004682(n+1), A038617(n+1)]`
-/

namespace A235394.P2610368607646493646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004682 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038617 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A235394.P2610368607646493646

namespace A235394

/-- `∩[A004682(n+1), A038617(n+1)]` -/
def P2610368607646493646.Spec : Prop :=
  ∀ n, (P2610368607646493646.a n : ℤ) = A235394 (n + 1)

end A235394

/-! ## A235394.P6467443077401917111

`∩[A004682(n+1), A038616(n+1)]`
-/

namespace A235394.P6467443077401917111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004682 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038616 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A235394.P6467443077401917111

namespace A235394

/-- `∩[A004682(n+1), A038616(n+1)]` -/
def P6467443077401917111.Spec : Prop :=
  ∀ n, (P6467443077401917111.a n : ℤ) = A235394 (n + 1)

end A235394

/-! ## A235394.P8995515421319895534

`∩[A004682(n+1), A042986(n+1)]`
-/

namespace A235394.P8995515421319895534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004682 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042986 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A235394.P8995515421319895534

namespace A235394

/-- `∩[A004682(n+1), A042986(n+1)]` -/
def P8995515421319895534.Spec : Prop :=
  ∀ n, (P8995515421319895534.a n : ℤ) = A235394 (n + 1)

end A235394

/-! ## A235394.P4564586203391815989

`∩[A000040(n+1), A004682(n+1)]`
-/

namespace A235394.P4564586203391815989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004682 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A235394.P4564586203391815989

namespace A235394

/-- `∩[A000040(n+1), A004682(n+1)]` -/
def P4564586203391815989.Spec : Prop :=
  ∀ n, (P4564586203391815989.a n : ℤ) = A235394 (n + 1)

end A235394

/-! ## A235394.P15390884014487346112

`∩[A004682(n+1), A008578(n+1)]`
-/

namespace A235394.P15390884014487346112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004682 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A235394.P15390884014487346112

namespace A235394

/-- `∩[A004682(n+1), A008578(n+1)]` -/
def P15390884014487346112.Spec : Prop :=
  ∀ n, (P15390884014487346112.a n : ℤ) = A235394 (n + 1)

end A235394

/-! ## A235394.P2510482342346535461

`∩[A004682(n+1), A046022(n+1)]`
-/

namespace A235394.P2510482342346535461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004682 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A235394.P2510482342346535461

namespace A235394

/-- `∩[A004682(n+1), A046022(n+1)]` -/
def P2510482342346535461.Spec : Prop :=
  ∀ n, (P2510482342346535461.a n : ℤ) = A235394 (n + 1)

end A235394

/-! ## A235394.P298453577955302216

`∩[A004682(n+1), A116974(n+1)]`
-/

namespace A235394.P298453577955302216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004682 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116974 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A235394.P298453577955302216

namespace A235394

/-- `∩[A004682(n+1), A116974(n+1)]` -/
def P298453577955302216.Spec : Prop :=
  ∀ n, (P298453577955302216.a n : ℤ) = A235394 (n + 1)

end A235394

/-! ## A235394.P8034753087962961245

`∩[A004682(n+1), A158611(n+1)]`
-/

namespace A235394.P8034753087962961245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004682 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A235394.P8034753087962961245

namespace A235394

/-- `∩[A004682(n+1), A158611(n+1)]` -/
def P8034753087962961245.Spec : Prop :=
  ∀ n, (P8034753087962961245.a n : ℤ) = A235394 (n + 1)

end A235394

/-! ## A235394.P6746819680813033893

`∩[A004682(n+1), A175787(n+1)]`
-/

namespace A235394.P6746819680813033893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004682 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175787 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A235394.P6746819680813033893

namespace A235394

/-- `∩[A004682(n+1), A175787(n+1)]` -/
def P6746819680813033893.Spec : Prop :=
  ∀ n, (P6746819680813033893.a n : ℤ) = A235394 (n + 1)

end A235394

/-! ## A235394.P6962481322265946157

`∩[A004682(n+1), A182986(n+1)]`
-/

namespace A235394.P6962481322265946157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004682 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A235394.P6962481322265946157

namespace A235394

/-- `∩[A004682(n+1), A182986(n+1)]` -/
def P6962481322265946157.Spec : Prop :=
  ∀ n, (P6962481322265946157.a n : ℤ) = A235394 (n + 1)

end A235394

/-! ## A235394.P12308926926966790334

`∩[A004682(n+1), A033946(n+1)]`
-/

namespace A235394.P12308926926966790334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004682 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A235394.P12308926926966790334

namespace A235394

/-- `∩[A004682(n+1), A033946(n+1)]` -/
def P12308926926966790334.Spec : Prop :=
  ∀ n, (P12308926926966790334.a n : ℤ) = A235394 (n + 1)

end A235394

/-! ## A235394.P5214210625047217708

`∩[A004682(n+1), A051948(n+1)]`
-/

namespace A235394.P5214210625047217708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004682 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A235394.P5214210625047217708

namespace A235394

/-- `∩[A004682(n+1), A051948(n+1)]` -/
def P5214210625047217708.Spec : Prop :=
  ∀ n, (P5214210625047217708.a n : ℤ) = A235394 (n + 1)

end A235394

/-! ## A235394.P9091293876748387534

`∩[A004682(n+1), A053813(n+1)]`
-/

namespace A235394.P9091293876748387534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004682 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A235394.P9091293876748387534

namespace A235394

/-- `∩[A004682(n+1), A053813(n+1)]` -/
def P9091293876748387534.Spec : Prop :=
  ∀ n, (P9091293876748387534.a n : ℤ) = A235394 (n + 1)

end A235394

/-! ## A235394.P16276896047971085200

`∩[A004682(n+1), A066050(n+1)]`
-/

namespace A235394.P16276896047971085200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004682 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066050 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A235394.P16276896047971085200

namespace A235394

/-- `∩[A004682(n+1), A066050(n+1)]` -/
def P16276896047971085200.Spec : Prop :=
  ∀ n, (P16276896047971085200.a n : ℤ) = A235394 (n + 1)

end A235394

/-! ## A235394.P6797597123911219233

`∩[A004682(n+1), A067126(n+1)]`
-/

namespace A235394.P6797597123911219233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004682 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067126 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A235394.P6797597123911219233

namespace A235394

/-- `∩[A004682(n+1), A067126(n+1)]` -/
def P6797597123911219233.Spec : Prop :=
  ∀ n, (P6797597123911219233.a n : ℤ) = A235394 (n + 1)

end A235394

/-! ## A235394.P9463371301507033216

`∩[A004682(n+1), A067133(n+1)]`
-/

namespace A235394.P9463371301507033216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004682 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067133 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A235394.P9463371301507033216

namespace A235394

/-- `∩[A004682(n+1), A067133(n+1)]` -/
def P9463371301507033216.Spec : Prop :=
  ∀ n, (P9463371301507033216.a n : ℤ) = A235394 (n + 1)

end A235394

/-! ## A235394.P12113713698926610844

`∩[A004682(n+1), A174090(n+1)]`
-/

namespace A235394.P12113713698926610844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004682 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174090 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A235394.P12113713698926610844

namespace A235394

/-- `∩[A004682(n+1), A174090(n+1)]` -/
def P12113713698926610844.Spec : Prop :=
  ∀ n, (P12113713698926610844.a n : ℤ) = A235394 (n + 1)

end A235394

/-! ## A235394.P16695847744408244016

`∩[A004682(n+1), A189710(n+1)]`
-/

namespace A235394.P16695847744408244016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004682 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189710 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A235394.P16695847744408244016

namespace A235394

/-- `∩[A004682(n+1), A189710(n+1)]` -/
def P16695847744408244016.Spec : Prop :=
  ∀ n, (P16695847744408244016.a n : ℤ) = A235394 (n + 1)

end A235394

/-!
# A235395: Primes whose decimal representation is a valid number in base 9 and interpreted as such is again a prime.

The programs for A235395, the canonical program `A235395.P5398117862764279832` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A235395 has offset 1).

The definition of A235395 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 778 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A235395.P5398117862764279832

`p?[A004683(n+1)]`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A235395

/-- `p?[A004683(n+1)]` -/
def P5398117862764279832.Spec : Prop :=
  ∀ n, P5398117862764279832.a n = A235395 (n + 1)

theorem P5398117862764279832.correct : P5398117862764279832.Spec := by
  intro n
  simp only [A235395, Nat.add_sub_cancel]

end A235395

/-! ## A235395.P11814251684381371976

`∩[A004683(n+1), A038617(n+1)]`
-/

namespace A235395.P11814251684381371976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004683 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038617 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A235395.P11814251684381371976

namespace A235395

/-- `∩[A004683(n+1), A038617(n+1)]` -/
def P11814251684381371976.Spec : Prop :=
  ∀ n, (P11814251684381371976.a n : ℤ) = A235395 (n + 1)

end A235395

/-! ## A235395.P4403205431077965718

`record[A010051(A036964(n+1))*A038617(n+1)]`
-/

namespace A235395.P4403205431077965718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A036964 (n + 1)).toNat * A038617 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235395.P4403205431077965718

namespace A235395

/-- `record[A010051(A036964(n+1))*A038617(n+1)]` -/
def P4403205431077965718.Spec : Prop :=
  ∀ n, P4403205431077965718.a n = A235395 (n + 1)

end A235395

/-! ## A235395.P10350293076385731445

`∩[A004683(n+1), A042986(n+1)]`
-/

namespace A235395.P10350293076385731445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004683 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042986 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A235395.P10350293076385731445

namespace A235395

/-- `∩[A004683(n+1), A042986(n+1)]` -/
def P10350293076385731445.Spec : Prop :=
  ∀ n, (P10350293076385731445.a n : ℤ) = A235395 (n + 1)

end A235395

/-! ## A235395.P6690526811166667557

`∩[A004683(n+1), A156756(n+1)]`
-/

namespace A235395.P6690526811166667557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004683 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156756 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A235395.P6690526811166667557

namespace A235395

/-- `∩[A004683(n+1), A156756(n+1)]` -/
def P6690526811166667557.Spec : Prop :=
  ∀ n, (P6690526811166667557.a n : ℤ) = A235395 (n + 1)

end A235395

/-! ## A235395.P9567248948753279106

`∩[A000040(n+1), A004683(n+1)]`
-/

namespace A235395.P9567248948753279106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004683 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A235395.P9567248948753279106

namespace A235395

/-- `∩[A000040(n+1), A004683(n+1)]` -/
def P9567248948753279106.Spec : Prop :=
  ∀ n, (P9567248948753279106.a n : ℤ) = A235395 (n + 1)

end A235395

/-! ## A235395.P11811076898245093454

`∩[A004683(n+1), A008578(n+1)]`
-/

namespace A235395.P11811076898245093454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004683 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A235395.P11811076898245093454

namespace A235395

/-- `∩[A004683(n+1), A008578(n+1)]` -/
def P11811076898245093454.Spec : Prop :=
  ∀ n, (P11811076898245093454.a n : ℤ) = A235395 (n + 1)

end A235395

/-! ## A235395.P12718745823744915926

`∩[A004683(n+1), A033946(n+1)]`
-/

namespace A235395.P12718745823744915926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004683 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A235395.P12718745823744915926

namespace A235395

/-- `∩[A004683(n+1), A033946(n+1)]` -/
def P12718745823744915926.Spec : Prop :=
  ∀ n, (P12718745823744915926.a n : ℤ) = A235395 (n + 1)

end A235395

/-! ## A235395.P9208645264066413134

`∩[A004683(n+1), A046022(n+1)]`
-/

namespace A235395.P9208645264066413134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004683 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A235395.P9208645264066413134

namespace A235395

/-- `∩[A004683(n+1), A046022(n+1)]` -/
def P9208645264066413134.Spec : Prop :=
  ∀ n, (P9208645264066413134.a n : ℤ) = A235395 (n + 1)

end A235395

/-! ## A235395.P15816450149274176960

`∩[A004683(n+1), A051948(n+1)]`
-/

namespace A235395.P15816450149274176960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004683 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A235395.P15816450149274176960

namespace A235395

/-- `∩[A004683(n+1), A051948(n+1)]` -/
def P15816450149274176960.Spec : Prop :=
  ∀ n, (P15816450149274176960.a n : ℤ) = A235395 (n + 1)

end A235395

/-! ## A235395.P15068882441254676844

`∩[A004683(n+1), A066050(n+1)]`
-/

namespace A235395.P15068882441254676844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004683 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066050 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A235395.P15068882441254676844

namespace A235395

/-- `∩[A004683(n+1), A066050(n+1)]` -/
def P15068882441254676844.Spec : Prop :=
  ∀ n, (P15068882441254676844.a n : ℤ) = A235395 (n + 1)

end A235395

/-! ## A235395.P4013938999377259038

`∩[A004683(n+1), A067126(n+1)]`
-/

namespace A235395.P4013938999377259038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004683 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067126 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A235395.P4013938999377259038

namespace A235395

/-- `∩[A004683(n+1), A067126(n+1)]` -/
def P4013938999377259038.Spec : Prop :=
  ∀ n, (P4013938999377259038.a n : ℤ) = A235395 (n + 1)

end A235395

/-! ## A235395.P13553124906503196327

`∩[A004683(n+1), A106118(n+1)]`
-/

namespace A235395.P13553124906503196327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004683 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106118 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A235395.P13553124906503196327

namespace A235395

/-- `∩[A004683(n+1), A106118(n+1)]` -/
def P13553124906503196327.Spec : Prop :=
  ∀ n, (P13553124906503196327.a n : ℤ) = A235395 (n + 1)

end A235395

/-! ## A235395.P10863428825779835326

`∩[A004683(n+1), A116974(n+1)]`
-/

namespace A235395.P10863428825779835326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004683 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116974 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A235395.P10863428825779835326

namespace A235395

/-- `∩[A004683(n+1), A116974(n+1)]` -/
def P10863428825779835326.Spec : Prop :=
  ∀ n, (P10863428825779835326.a n : ℤ) = A235395 (n + 1)

end A235395

/-! ## A235395.P9828121683033534592

`∩[A004683(n+1), A158611(n+1)]`
-/

namespace A235395.P9828121683033534592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004683 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A235395.P9828121683033534592

namespace A235395

/-- `∩[A004683(n+1), A158611(n+1)]` -/
def P9828121683033534592.Spec : Prop :=
  ∀ n, (P9828121683033534592.a n : ℤ) = A235395 (n + 1)

end A235395

/-! ## A235395.P2739509777905644339

`∩[A004683(n+1), A175787(n+1)]`
-/

namespace A235395.P2739509777905644339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004683 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175787 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A235395.P2739509777905644339

namespace A235395

/-- `∩[A004683(n+1), A175787(n+1)]` -/
def P2739509777905644339.Spec : Prop :=
  ∀ n, (P2739509777905644339.a n : ℤ) = A235395 (n + 1)

end A235395

/-! ## A235395.P9807280300705774205

`∩[A004683(n+1), A182986(n+1)]`
-/

namespace A235395.P9807280300705774205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004683 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A235395.P9807280300705774205

namespace A235395

/-- `∩[A004683(n+1), A182986(n+1)]` -/
def P9807280300705774205.Spec : Prop :=
  ∀ n, (P9807280300705774205.a n : ℤ) = A235395 (n + 1)

end A235395

/-! ## A235395.P14027446040815930508

`∩[A004683(n+1), A062972(n+1)]`
-/

namespace A235395.P14027446040815930508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004683 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062972 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A235395.P14027446040815930508

namespace A235395

/-- `∩[A004683(n+1), A062972(n+1)]` -/
def P14027446040815930508.Spec : Prop :=
  ∀ n, (P14027446040815930508.a n : ℤ) = A235395 (n + 1)

end A235395

/-! ## A235395.P10299182366644095578

`∩[A004683(n+1), A284696(n+1)]`
-/

namespace A235395.P10299182366644095578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004683 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284696 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A235395.P10299182366644095578

namespace A235395

/-- `∩[A004683(n+1), A284696(n+1)]` -/
def P10299182366644095578.Spec : Prop :=
  ∀ n, (P10299182366644095578.a n : ℤ) = A235395 (n + 1)

end A235395

/-! ## A235395.P9797581070322873351

`∩[A004683(n+1), A132630(n+1)]`
-/

namespace A235395.P9797581070322873351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004683 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132630 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A235395.P9797581070322873351

namespace A235395

/-- `∩[A004683(n+1), A132630(n+1)]` -/
def P9797581070322873351.Spec : Prop :=
  ∀ n, (P9797581070322873351.a n : ℤ) = A235395 (n + 1)

end A235395

/-!
# A235398: Sum of digits of the cubes of prime numbers.

The programs for A235398, the canonical program `A235398.P13717221228828732430` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A235398 has offset 1).

The definition of A235398 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A235398.P10364299258068073971

`∑{digits}[Δ[A242188(n)], #]`
-/

namespace A235398.P10364299258068073971
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242188 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A235398.P10364299258068073971

namespace A235398

/-- `∑{digits}[Δ[A242188(n)], #]` -/
def P10364299258068073971.Spec : Prop :=
  ∀ n, (P10364299258068073971.a n : ℤ) = A235398 (n + 1)

end A235398

/-! ## A235398.P13717221228828732430

`∑{digits}[A030078(n+1), #]`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A235398

/-- `∑{digits}[A030078(n+1), #]` -/
def P13717221228828732430.Spec : Prop :=
  ∀ n, (P13717221228828732430.a n : ℤ) = A235398 (n + 1)

theorem P13717221228828732430.correct : P13717221228828732430.Spec := by
  intro n
  simp only [A235398, Nat.add_sub_cancel]

end A235398

/-! ## A235398.P9606789747470638866

`∑{digits}[sqrt(A030516(n+1)), #]`
-/

namespace A235398.P9606789747470638866
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A030516 (n + 1) : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (SequenceMachineLib.roundAway (f1 n)).natAbs).map fun (x : ℕ) => x).sum

end

end A235398.P9606789747470638866

namespace A235398

/-- `∑{digits}[sqrt(A030516(n+1)), #]` -/
def P9606789747470638866.Spec : Prop :=
  ∀ n, (P9606789747470638866.a n : ℤ) = A235398 (n + 1)

end A235398

/-! ## A235398.P2233100781914300882

`∑{digits}[A153481(n+1)+2, #]`
-/

namespace A235398.P2233100781914300882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153481 (n + 1) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A235398.P2233100781914300882

namespace A235398

/-- `∑{digits}[A153481(n+1)+2, #]` -/
def P2233100781914300882.Spec : Prop :=
  ∀ n, (P2233100781914300882.a n : ℤ) = A235398 (n + 1)

end A235398

/-! ## A235398.P5247259477063854728

`∑{digits}[A000040(n+1)^3, #]`
-/

namespace A235398.P5247259477063854728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) ^ 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A235398.P5247259477063854728

namespace A235398

/-- `∑{digits}[A000040(n+1)^3, #]` -/
def P5247259477063854728.Spec : Prop :=
  ∀ n, (P5247259477063854728.a n : ℤ) = A235398 (n + 1)

end A235398

/-! ## A235398.P896344290261437647

`∑{digits}[p?[abs(xor(n, -2))]^3, #]`
-/

namespace A235398.P896344290261437647
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (n : ℤ) (-2)|

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) ^ 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A235398.P896344290261437647

namespace A235398

/-- `∑{digits}[p?[abs(xor(n, -2))]^3, #]` -/
def P896344290261437647.Spec : Prop :=
  ∀ n, (P896344290261437647.a n : ℤ) = A235398 (n + 1)

end A235398

/-! ## A235398.P17509225296708644588

`∑{digits}[p?[xor(1, n)+1]^3, #]`
-/

namespace A235398.P17509225296708644588
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) ^ 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum

end

end A235398.P17509225296708644588

namespace A235398

/-- `∑{digits}[p?[xor(1, n)+1]^3, #]` -/
def P17509225296708644588.Spec : Prop :=
  ∀ n, (P17509225296708644588.a n : ℤ) = A235398 (n + 1)

end A235398

/-! ## A235398.P9423450621689652584

`∑{digits}[p?[-xor(1, -n)]^3, #]`
-/

namespace A235398.P9423450621689652584
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor 1 (-(n : ℤ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) ^ 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A235398.P9423450621689652584

namespace A235398

/-- `∑{digits}[p?[-xor(1, -n)]^3, #]` -/
def P9423450621689652584.Spec : Prop :=
  ∀ n, (P9423450621689652584.a n : ℤ) = A235398 (n + 1)

end A235398

/-! ## A235398.P3308345634628297010

`∑{digits}[p?[n-(-1)^n]^3, #]`
-/

namespace A235398.P3308345634628297010
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (-1) ^ n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) ^ 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A235398.P3308345634628297010

namespace A235398

/-- `∑{digits}[p?[n-(-1)^n]^3, #]` -/
def P3308345634628297010.Spec : Prop :=
  ∀ n, (P3308345634628297010.a n : ℤ) = A235398 (n + 1)

end A235398

/-! ## A235398.P15988447032998457787

`A004164(p?[comp[n²]])`
-/

namespace A235398.P15988447032998457787
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004164 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A235398.P15988447032998457787

namespace A235398

/-- `A004164(p?[comp[n²]])` -/
def P15988447032998457787.Spec : Prop :=
  ∀ n, P15988447032998457787.a n = A235398 (n + 1)

end A235398

/-! ## A235398.P7007889702546540576

`A004164(A000040(n+1))`
-/

namespace A235398.P7007889702546540576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004164 (A000040 (n + 1)).toNat

end

end A235398.P7007889702546540576

namespace A235398

/-- `A004164(A000040(n+1))` -/
def P7007889702546540576.Spec : Prop :=
  ∀ n, P7007889702546540576.a n = A235398 (n + 1)

end A235398

/-! ## A235398.P15235862343953992306

`A004164(A008578(n+2))`
-/

namespace A235398.P15235862343953992306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004164 (A008578 (n + 2)).toNat

end

end A235398.P15235862343953992306

namespace A235398

/-- `A004164(A008578(n+2))` -/
def P15235862343953992306.Spec : Prop :=
  ∀ n, P15235862343953992306.a n = A235398 (n + 1)

end A235398

/-! ## A235398.P837932604657599222

`A004164(A182986(n+2))`
-/

namespace A235398.P837932604657599222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004164 (A182986 (n + 2)).toNat

end

end A235398.P837932604657599222

namespace A235398

/-- `A004164(A182986(n+2))` -/
def P837932604657599222.Spec : Prop :=
  ∀ n, P837932604657599222.a n = A235398 (n + 1)

end A235398

/-! ## A235398.P16655405385057429724

`A004164(eq[1, A003415(n)])`
-/

namespace A235398.P16655405385057429724
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004164 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A235398.P16655405385057429724

namespace A235398

/-- `A004164(eq[1, A003415(n)])` -/
def P16655405385057429724.Spec : Prop :=
  ∀ n, P16655405385057429724.a n = A235398 (n + 1)

end A235398

/-! ## A235398.P9712524398089884586

`A004164(A142342(n+1))`
-/

namespace A235398.P9712524398089884586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004164 (A142342 (n + 1)).toNat

end

end A235398.P9712524398089884586

namespace A235398

/-- `A004164(A142342(n+1))` -/
def P9712524398089884586.Spec : Prop :=
  ∀ n, P9712524398089884586.a n = A235398 (n + 1)

end A235398

/-!
# A235399: Numbers which are the digital sum of the cube of some prime.

The programs for A235399, there is no canonical definition to state claims against.
-/

/-! ## A235399.P15002542686333417809

`a(n-2)+9` with `a(0)=8, a(1)=9, a(2)=10, a(3)=17`
-/

namespace A235399.P15002542686333417809
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [8, 9, 10, 17] fun n a =>
  a (n - 2) + 9

end

end A235399.P15002542686333417809

/-! ## A235399.P13606768848849682101

`∑[abs(a(n-2))]` with `a(0)=8, a(1)=1, a(2)=1, a(3)=7, a(4)=2`
-/

namespace A235399.P13606768848849682101
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [8, 1, 1, 7, 2] fun n f1 =>
  f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A235399.P13606768848849682101

/-! ## A235399.P8453627922850530860

`∑[9-a(n-1)]` with `a(0)=8, a(1)=1, a(2)=1, a(3)=7`
-/

namespace A235399.P8453627922850530860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [8, 1, 1, 7] fun n f1 =>
  9 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A235399.P8453627922850530860

/-! ## A235399.P16523473040228865711

`9*n-a(n-1)` with `a(0)=8, a(1)=9, a(2)=10`
-/

namespace A235399.P16523473040228865711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [8, 9, 10] fun n a =>
  (9 * n : ℤ) - a (n - 1)

end

end A235399.P16523473040228865711

/-! ## A235399.P1349622437269872854

`record[9-floor(-a(n-2))]` with `a(0)=8, a(1)=9, a(2)=1, a(3)=8`

`floor` is left out, it is the identity on integers.
-/

namespace A235399.P1349622437269872854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [8, 9, 1, 8] fun n f1 =>
  9 - (-f1 (n - 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235399.P1349622437269872854

/-! ## A235399.P1479913056503793459

`record[9-round(-a(n-2))]` with `a(0)=8, a(1)=9, a(2)=1, a(3)=8`

`round` is left out, it is the identity on integers.
-/

namespace A235399.P1479913056503793459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [8, 9, 1, 8] fun n f1 =>
  9 - (-f1 (n - 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235399.P1479913056503793459

/-! ## A235399.P1080214859128643818

`∑[a((n+1)%2)+1]+2` with `a(0)=6, a(1)=1, a(2)=1`
-/

namespace A235399.P1080214859128643818
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [6, 1, 1] fun n f1 =>
  f1 ((n + 1) % 2) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A235399.P1080214859128643818

/-! ## A235399.P5545589776252533329

`∑[A101456(a(n-1))]` with `a(0)=8, a(1)=1, a(2)=1`
-/

namespace A235399.P5545589776252533329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [8, 1, 1] fun n f1 =>
  A101456 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A235399.P5545589776252533329

/-! ## A235399.P14945720380554651963

`∑[A216159(a(n-1))]` with `a(0)=8, a(1)=1, a(2)=1`
-/

namespace A235399.P14945720380554651963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [8, 1, 1] fun n f1 =>
  A216159 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A235399.P14945720380554651963

/-! ## A235399.P3351163586160015774

`∑[A222231(a(n-1))]` with `a(0)=8, a(1)=1, a(2)=1, a(3)=7`
-/

namespace A235399.P3351163586160015774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [8, 1, 1, 7] fun n f1 =>
  A222231 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A235399.P3351163586160015774

