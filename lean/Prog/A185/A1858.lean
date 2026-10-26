import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C012
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C001
import Seq.B006.C000
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
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
# A185800: Number of (n+1)X3 0..3 arrays with every 2X2 subblock trace equal to some horizontal or vertical neighbor 2X2 subblock trace.

The programs for A185800, there is no canonical definition to state claims against.
-/

/-! ## A185800.P1600138542065868170

`A185807(∑[n+1]+2)`
-/

namespace A185800.P1600138542065868170
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185807 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A185800.P1600138542065868170

/-! ## A185800.P4909659433500647495

`record[gcd(A002262(n), A185807(n+2))]`
-/

namespace A185800.P4909659433500647495
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A185807 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A185800.P4909659433500647495

/-! ## A185800.P1259528795482146012

`record[gcd(A185807(n+3), A185813(n))]`
-/

namespace A185800.P1259528795482146012
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A185807 (n + 3)) (A185813 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A185800.P1259528795482146012

/-! ## A185800.P5581006613145959595

`record[A185807(A333530(n+1))]`
-/

namespace A185800.P5581006613145959595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185807 (A333530 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A185800.P5581006613145959595

/-! ## A185800.P8291991811215986703

`record[A185807(Δ[A003453(n+5)])]`
-/

namespace A185800.P8291991811215986703
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185807 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A185800.P8291991811215986703

/-!
# A185801: Number of (n+1)X4 0..3 arrays with every 2X2 subblock trace equal to some horizontal or vertical neighbor 2X2 subblock trace.

The programs for A185801, there is no canonical definition to state claims against.
-/

/-! ## A185801.P17214204103849956659

`A185807(∑[n+2]+4)`
-/

namespace A185801.P17214204103849956659
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185807 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A185801.P17214204103849956659

/-! ## A185801.P2374635944341606601

`lcm(2, A185807(A167614(n+1)))`
-/

namespace A185801.P2374635944341606601
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A185807 (A167614 (n + 1)).toNat)

end

end A185801.P2374635944341606601

/-! ## A185801.P12435582316476978821

`record[A185807(A167614(val(n+1, 2)+1))]`
-/

namespace A185801.P12435582316476978821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185807 (A167614 (SequenceMachineLib.valuation (n + 1) 2 + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A185801.P12435582316476978821

/-! ## A185801.P18137443062222822064

`A014560(n)*A185807(A167614(n+1))`
-/

namespace A185801.P18137443062222822064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014560 n * A185807 (A167614 (n + 1)).toNat

end

end A185801.P18137443062222822064

/-! ## A185801.P12837041659938010915

`A062513(n+1)*A185807(A167614(n+1))`
-/

namespace A185801.P12837041659938010915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062513 (n + 1) * A185807 (A167614 (n + 1)).toNat

end

end A185801.P12837041659938010915

/-!
# A185802: Number of (n+1)X5 0..3 arrays with every 2X2 subblock trace equal to some horizontal or vertical neighbor 2X2 subblock trace.

The programs for A185802, there is no canonical definition to state claims against.
-/

/-! ## A185802.P17981305853770700292

`A185807(A167614(n+2)+1)`
-/

namespace A185802.P17981305853770700292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185807 (A167614 (n + 2) + 1).toNat

end

end A185802.P17981305853770700292

/-! ## A185802.P15892772999271236889

`A185807(A141214(n+1))`
-/

namespace A185802.P15892772999271236889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185807 (A141214 (n + 1)).toNat

end

end A185802.P15892772999271236889

/-! ## A185802.P7128146194642719141

`A185807(eq[1, A193592(n)-2])`
-/

namespace A185802.P7128146194642719141
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185807 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A185802.P7128146194642719141

/-!
# A185803: Number of (n+1) X 6 0..3 arrays with every 2 X 2 subblock trace equal to some horizontal or vertical neighbor 2 X 2 subblock trace.

The programs for A185803, there is no canonical definition to state claims against.
-/

/-! ## A185803.P8140080178658199209

`A185807(A374005(n+1))`
-/

namespace A185803.P8140080178658199209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185807 (A374005 (n + 1)).toNat

end

end A185803.P8140080178658199209

/-! ## A185803.P7348061720462320879

`A185807(eq[4, A193592(n)])`
-/

namespace A185803.P7348061720462320879
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185807 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A185803.P7348061720462320879

/-!
# A185804: 

The programs for A185804, there is no canonical definition to state claims against.
-/

/-! ## A185804.P291986472796227929

`A185807(eq[8, A185782(n+1)])`
-/

namespace A185804.P291986472796227929
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185807 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A185804.P291986472796227929

/-!
# A185807: T(n,k)=Number of (n+1)X(k+1) 0..3 arrays with every 2X2 subblock trace equal to some horizontal or vertical neighbor 2X2 subblock trace.

The programs for A185807, there is no canonical definition to state claims against.
-/

/-! ## A185807.P17999036330917659825

`A186923(A024649(n+1))`
-/

namespace A185807.P17999036330917659825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186923 (A024649 (n + 1)).toNat

end

end A185807.P17999036330917659825

/-! ## A185807.P7027385494901054006

`A186923(A028429(n+1))`
-/

namespace A185807.P7027385494901054006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186923 (A028429 (n + 1)).toNat

end

end A185807.P7027385494901054006

/-! ## A185807.P7063890965151167584

`A186923(A037334(n+1))`
-/

namespace A185807.P7063890965151167584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186923 (A037334 (n + 1)).toNat

end

end A185807.P7063890965151167584

/-!
# A185808: Least prime p such that the continued fraction expansion of its square root contains the first n natural numbers, but does not contain n+1.

The programs for A185808, there is no canonical definition to state claims against.
-/

/-! ## A185808.P14707981591877172220

`A006530(A095603(n)%A146563(n+2))`
-/

namespace A185808.P14707981591877172220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Int.tmod (A095603 n) (A146563 (n + 2))).toNat

end

end A185808.P14707981591877172220

/-!
# A185809: Composite numbers in continued fraction expansion of Pi (A001203).

The programs for A185809, there is no canonical definition to state claims against.
-/

/-! ## A185809.P2629159171017509908

`filter[A001203(n), A066247(#)]`
-/

namespace A185809.P2629159171017509908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001203 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A185809.P2629159171017509908

/-! ## A185809.P3096424569052415803

`A001203(lt[2, ∏{e}[A001203(n), #+1]])`
-/

namespace A185809.P3096424569052415803
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001203 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n).natAbs, (Nat.factorization (f3 n).natAbs p + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001203 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A185809.P3096424569052415803

/-! ## A185809.P17759807196675057713

`A026239(p?[A026239(A001203(n))])`
-/

namespace A185809.P17759807196675057713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026239 (A001203 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026239 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A185809.P17759807196675057713

/-!
# A185812: Riordan array ( 1/(1-x), x*A005043(x) ).

The programs for A185812, there is no canonical definition to state claims against.
-/

/-! ## A185812.P260705484038067601

`A152798(n)-A185063(A177976(n+1))`
-/

namespace A185812.P260705484038067601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152798 n - A185063 (A177976 (n + 1)).toNat

end

end A185812.P260705484038067601

/-!
# A185813: Riordan array (A000045(x), x*A005043(x)).

The programs for A185813, there is no canonical definition to state claims against.
-/

/-! ## A185813.P5599086234479902358

`A060959(A014132(n+1))%A329559(2*n+3)`
-/

namespace A185813.P5599086234479902358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A060959 (A014132 (n + 1)).toNat) (A329559 (2 * n + 3))

end

end A185813.P5599086234479902358

/-! ## A185813.P11620260407434781634

`A060959(A014132(n+1))%A351948(n+1)`
-/

namespace A185813.P11620260407434781634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A060959 (A014132 (n + 1)).toNat) (A351948 (n + 1))

end

end A185813.P11620260407434781634

/-! ## A185813.P2535758894866095792

`A060959(lt[A296657(3*n+2), A339033(n)])`
-/

namespace A185813.P2535758894866095792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296657 (3 * n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339033 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060959 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A185813.P2535758894866095792

/-! ## A185813.P10979504359543390031

`A047080(n+2)%A164376(A246737(n+1))`
-/

namespace A185813.P10979504359543390031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A047080 (n + 2)) (A164376 (A246737 (n + 1)).toNat)

end

end A185813.P10979504359543390031

/-! ## A185813.P8498766242631624083

`A102095(A011535(n+1))%A251722(n+1)`
-/

namespace A185813.P8498766242631624083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A102095 (A011535 (n + 1)).toNat) (A251722 (n + 1))

end

end A185813.P8498766242631624083

/-!
# A185814: Exponential Riordan array (e^x,A005043(x)).

The programs for A185814, there is no canonical definition to state claims against.
-/

/-! ## A185814.P8399434511200856318

`A002487(A078536(n))*A007318(n)`
-/

namespace A185814.P8399434511200856318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (A078536 n).toNat * A007318 n

end

end A185814.P8399434511200856318

/-! ## A185814.P2100334627572877647

`A089867(A007318(n)*A257565(n))`
-/

namespace A185814.P2100334627572877647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089867 (A007318 n * A257565 n).toNat

end

end A185814.P2100334627572877647

/-! ## A185814.P14092193458803836158

`A239086(A007318(n)*A257565(n))`
-/

namespace A185814.P14092193458803836158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239086 (A007318 n * A257565 n).toNat

end

end A185814.P14092193458803836158

/-! ## A185814.P18433602058494693513

`A059922(n)*A178432(A369227(n+1))`
-/

namespace A185814.P18433602058494693513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059922 n * A178432 (A369227 (n + 1)).toNat

end

end A185814.P18433602058494693513

/-! ## A185814.P10247619302126281779

`A102235(A157109(n))`
-/

namespace A185814.P10247619302126281779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102235 (A157109 n).toNat

end

end A185814.P10247619302126281779

/-!
# A185815: Exponential Riordan array (log(1/(1-x)), x*A005043(x)).

The programs for A185815, there is no canonical definition to state claims against.
-/

/-! ## A185815.P10702271278081368537

`A171731(n)*A261122(A056492(n+1))`
-/

namespace A185815.P10702271278081368537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171731 n * A261122 (A056492 (n + 1)).toNat

end

end A185815.P10702271278081368537

/-!
# A185816: Number of iterations of lambda(n) needed to reach 1.

The programs for A185816, there is no canonical definition to state claims against.
-/

/-! ## A185816.P9000777850432129384

`a(A002322(n+1)-1)+1` with `a(0)=0`
-/

namespace A185816.P9000777850432129384
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (A002322 (n + 1) - 1).toNat + 1

end

end A185816.P9000777850432129384

/-! ## A185816.P110174944088107600

`a(A263027(n+1)-2)+1` with `a(0)=0`
-/

namespace A185816.P110174944088107600
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (A263027 (n + 1) - 2).toNat + 1

end

end A185816.P110174944088107600

/-! ## A185816.P14699650682274177656

`a(n-A277127(n+1))+1` with `a(0)=0`
-/

namespace A185816.P14699650682274177656
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a ((n : ℤ) - A277127 (n + 1)).toNat + 1

end

end A185816.P14699650682274177656

/-! ## A185816.P9980013444461287310

`a(A023443(A002322(n+1)))+1` with `a(0)=0`
-/

namespace A185816.P9980013444461287310
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (A023443 (A002322 (n + 1)).toNat).toNat + 1

end

end A185816.P9980013444461287310

/-! ## A185816.P5371737565250953971

`a(A007947(A034380(n+1))*A289624(n+1)-1)+1` with `a(0)=0`
-/

namespace A185816.P5371737565250953971
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (A007947 (A034380 (n + 1)).toNat * A289624 (n + 1) - 1).toNat + 1

end

end A185816.P5371737565250953971

/-!
# A185817: Smallest m such that n is a prefix of 101^m in its decimal representation.

The programs for A185817, there is no canonical definition to state claims against.
-/

/-! ## A185817.P5690682137118848017

`A004237(n+1)+A001221(A003947(n))`
-/

namespace A185817.P5690682137118848017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004237 (n + 1) + A001221 (A003947 n).toNat

end

end A185817.P5690682137118848017

/-! ## A185817.P17190299766088891528

`A007949(A004167(n))+A004237(n+1)`
-/

namespace A185817.P17190299766088891528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007949 (A004167 n).toNat + A004237 (n + 1)

end

end A185817.P17190299766088891528

/-! ## A185817.P13609471540895673227

`A043545(A001788(n))+A004239(n+1)`
-/

namespace A185817.P13609471540895673227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043545 (A001788 n).toNat + A004239 (n + 1)

end

end A185817.P13609471540895673227

/-! ## A185817.P8746602757108731884

`A043545(A004167(n))+A004239(n+1)`
-/

namespace A185817.P8746602757108731884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043545 (A004167 n).toNat + A004239 (n + 1)

end

end A185817.P8746602757108731884

/-! ## A185817.P2431298781942134187

`A158478(A001788(n))+A004237(n+1)`
-/

namespace A185817.P2431298781942134187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158478 (A001788 n).toNat + A004237 (n + 1)

end

end A185817.P2431298781942134187

/-!
# A185818: 1/5 the number of n X 2 0..4 arrays with every element equal to exactly one or two of its horizontal and vertical neighbors.

The programs for A185818, there is no canonical definition to state claims against.
-/

/-! ## A185818.P8486498041513572811

`A185825(∑[n+1]+2)`
-/

namespace A185818.P8486498041513572811
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185825 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A185818.P8486498041513572811

/-! ## A185818.P4594296576447673778

`record[A185825(A286248(n+1)+1)]`
-/

namespace A185818.P4594296576447673778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185825 (A286248 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A185818.P4594296576447673778

/-! ## A185818.P14530747314483664822

`record[A010054(n)*A185825(n+2)]`
-/

namespace A185818.P14530747314483664822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A185825 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A185818.P14530747314483664822

/-! ## A185818.P1403445803522406706

`record[A185825(n+2)/A219727(n)]`
-/

namespace A185818.P1403445803522406706
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A185825 (n + 2) : ℚ) / (A219727 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A185818.P1403445803522406706

/-! ## A185818.P4453553455376943151

`record[root(A185825(n+2), A152719(n))]`
-/

namespace A185818.P4453553455376943151
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A185825 (n + 2) : ℝ) ^ (1 / (A152719 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A185818.P4453553455376943151

/-!
# A185819: 1/5 the number of nX3 0..4 arrays with every element equal to exactly one or two of its horizontal and vertical neighbors.

The programs for A185819, there is no canonical definition to state claims against.
-/

/-! ## A185819.P5999013613307311741

`A185825(∑[n+2]+4)`
-/

namespace A185819.P5999013613307311741
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185825 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A185819.P5999013613307311741

/-! ## A185819.P17005381707891292215

`record[A185825(A186347(n+2))]`
-/

namespace A185819.P17005381707891292215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185825 (A186347 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A185819.P17005381707891292215

/-! ## A185819.P14486695849978647569

`record[A185825(A167614(∏{e}[n+1, #]))]`
-/

namespace A185819.P14486695849978647569
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185825 (A167614 (∏ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A185819.P14486695849978647569

/-! ## A185819.P4828998747407699056

`A185825(A167614(n+1))^ceil(acot(n))`
-/

namespace A185819.P4828998747407699056
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A185825 (A167614 (n + 1)).toNat : ℚ) ^ (⌈SequenceMachineLib.acot (n : ℝ)⌉ : ℤ)

end

end A185819.P4828998747407699056

/-! ## A185819.P12119137509552640732

`record[gcd(A185825(n+4), A302224(n+1))]`
-/

namespace A185819.P12119137509552640732
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A185825 (n + 4)) (A302224 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A185819.P12119137509552640732

/-!
# A185820: 1/5 the number of nX4 0..4 arrays with every element equal to exactly one or two of its horizontal and vertical neighbors.

The programs for A185820, there is no canonical definition to state claims against.
-/

/-! ## A185820.P18044286825317633307

`A185825(∑[n+3]+7)`
-/

namespace A185820.P18044286825317633307
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185825 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A185820.P18044286825317633307

/-! ## A185820.P13239531839675207968

`A000267(C(n, 64)²)*A185825(A055999(n)+10)`
-/

namespace A185820.P13239531839675207968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000267 (Nat.choose n 64 ^ 2) * A185825 (A055999 n + 10).toNat

end

end A185820.P13239531839675207968

/-! ## A185820.P3208117710334054049

`A054977(2*n+3)*A185825(A374004(n+1))`
-/

namespace A185820.P3208117710334054049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 (2 * n + 3) * A185825 (A374004 (n + 1)).toNat

end

end A185820.P3208117710334054049

/-!
# A185821: 1/5 the number of n X 5 0..4 arrays with every element equal to exactly one or two of its horizontal and vertical neighbors.

The programs for A185821, there is no canonical definition to state claims against.
-/

/-! ## A185821.P12791010784154981868

`A185825(A374005(n+1))`
-/

namespace A185821.P12791010784154981868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185825 (A374005 (n + 1)).toNat

end

end A185821.P12791010784154981868

/-! ## A185821.P4802881992716641519

`A185825(A155212(n)+13)`
-/

namespace A185821.P4802881992716641519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185825 (A155212 n + 13).toNat

end

end A185821.P4802881992716641519

/-! ## A185821.P11373528050920345498

`A185825(A056000(n)+15)`
-/

namespace A185821.P11373528050920345498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185825 (A056000 n + 15).toNat

end

end A185821.P11373528050920345498

/-!
# A185822: 1/5 the number of nX6 0..4 arrays with every element equal to exactly one or two of its horizontal and vertical neighbors.

The programs for A185822, there is no canonical definition to state claims against.
-/

/-! ## A185822.P7034688568402756371

`A185825(A374007(n+1))`
-/

namespace A185822.P7034688568402756371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185825 (A374007 (n + 1)).toNat

end

end A185822.P7034688568402756371

/-!
# A185823: 1/5 the number of n X 7 0..4 arrays with every element equal to exactly one or two of its horizontal and vertical neighbors.

The programs for A185823, there is no canonical definition to state claims against.
-/

/-! ## A185823.P8070433905209246639

`A185825(eq[4, A219347(n)])`
-/

namespace A185823.P8070433905209246639
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185825 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A185823.P8070433905209246639

/-!
# A185826: Sum of the next n natural numbers raised to the n-th power.

The programs for A185826, the canonical program `A185826.P4248679595935467601` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A185826 has offset 1).

The definition of A185826 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A185826.P4248679595935467601

`((n+1+(n+1)^3)/2)^(n+1)`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A185826

/-- `((n+1+(n+1)^3)/2)^(n+1)` -/
def P4248679595935467601.Spec : Prop :=
  ∀ n, P4248679595935467601.a n = (A185826 (n + 1) : ℚ)

end A185826

/-! ## A185826.P5163550405198844087

`floor(∑[∑[a(n-1)+3]]^(n+1))` with `a(0)=1, a(1)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A185826.P5163550405198844087
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n f2 =>
  f2 (n - 1) + 3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ (n + 1)

end

end A185826.P5163550405198844087

namespace A185826

/-- `floor(∑[∑[a(n-1)+3]]^(n+1))` -/
def P5163550405198844087.Spec : Prop :=
  ∀ n, (P5163550405198844087.a n : ℤ) = A185826 (n + 1)

end A185826

/-! ## A185826.P18077442931367997581

`abs(Δ[A002817(n)]^(n+1))`
-/

namespace A185826.P18077442931367997581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002817 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(f1 (n + 1) - f1 n) ^ (n + 1)|

end

end A185826.P18077442931367997581

namespace A185826

/-- `abs(Δ[A002817(n)]^(n+1))` -/
def P18077442931367997581.Spec : Prop :=
  ∀ n, P18077442931367997581.a n = A185826 (n + 1)

end A185826

/-! ## A185826.P15081929084203019586

`record[A178067(n+1)^A004736(n+1)]`
-/

namespace A185826.P15081929084203019586
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A178067 (n + 1) : ℚ) ^ (A004736 (n + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A185826.P15081929084203019586

namespace A185826

/-- `record[A178067(n+1)^A004736(n+1)]` -/
def P15081929084203019586.Spec : Prop :=
  ∀ n, P15081929084203019586.a n = (A185826 (n + 1) : ℚ)

end A185826

/-! ## A185826.P545464667623688590

`record[A006003(A000188(n+1))^A000188(n+1)]`
-/

namespace A185826.P545464667623688590
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006003 (A000188 (n + 1)).toNat : ℚ) ^ (A000188 (n + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A185826.P545464667623688590

namespace A185826

/-- `record[A006003(A000188(n+1))^A000188(n+1)]` -/
def P545464667623688590.Spec : Prop :=
  ∀ n, P545464667623688590.a n = (A185826 (n + 1) : ℚ)

end A185826

/-!
# A185827: Half the number of n X n binary arrays with every element equal to exactly one or two of its horizontal and vertical neighbors.

The programs for A185827, there is no canonical definition to state claims against.
-/

/-! ## A185827.P5970297337214654700

`A185835(∑[4*n]+1)`
-/

namespace A185827.P5970297337214654700
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185835 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A185827.P5970297337214654700

/-! ## A185827.P10864661063074078676

`record[A185835(A330613(n+1))]`
-/

namespace A185827.P10864661063074078676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185835 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A185827.P10864661063074078676

/-! ## A185827.P17648219408456778511

`A185835(A001844(n))+char[10]`
-/

namespace A185827.P17648219408456778511
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185835 (A001844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A185827.P17648219408456778511

/-! ## A185827.P14356728352240531661

`A308976(n)+A185835(A001844(n))`
-/

namespace A185827.P14356728352240531661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308976 n + A185835 (A001844 n).toNat

end

end A185827.P14356728352240531661

/-! ## A185827.P13997339009191641666

`A014826(n)*A185835(A001844(n))`
-/

namespace A185827.P13997339009191641666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014826 n * A185835 (A001844 n).toNat

end

end A185827.P13997339009191641666

/-!
# A185828: Half the number of n X 2 binary arrays with every element equal to exactly one or two of its horizontal and vertical neighbors.

The programs for A185828, the canonical program `A185828.P2402933661855438047` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A185828 has offset 1).

The definition of A185828 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 239 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A185828.P9602507437483007277

`ogf((1+x+3x^2-2x^3)/(1-2x-x^2-2x^3+x^4))`
-/

namespace A185828.P9602507437483007277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, 3, -2] [1, -2, -1, -2, 1] n

end

end A185828.P9602507437483007277

namespace A185828

/-- `ogf((1+x+3x^2-2x^3)/(1-2x-x^2-2x^3+x^4))` -/
def P9602507437483007277.Spec : Prop :=
  ∀ n, P9602507437483007277.a n = A185828 (n + 1)

end A185828

/-! ## A185828.P2402933661855438047

`2*a(n-1)+a(n-2)+2*a(n-3)-a(n-4)` with `a(0)=1, a(1)=3, a(2)=10, a(3)=23`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A185828

/-- `2*a(n-1)+a(n-2)+2*a(n-3)-a(n-4)` -/
def P2402933661855438047.Spec : Prop :=
  ∀ n, P2402933661855438047.a n = A185828 (n + 1)

theorem P2402933661855438047.correct : P2402933661855438047.Spec := by
  intro n
  simp only [A185828, Nat.add_sub_cancel]

end A185828

/-! ## A185828.P17417191186575854597

`A100886(Δ[n²])`
-/

namespace A185828.P17417191186575854597
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100886 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A185828.P17417191186575854597

namespace A185828

/-- `A100886(Δ[n²])` -/
def P17417191186575854597.Spec : Prop :=
  ∀ n, P17417191186575854597.a n = A185828 (n + 1)

end A185828

/-! ## A185828.P6892850577543077249

`record[A111734(n+2)]`
-/

namespace A185828.P6892850577543077249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111734 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A185828.P6892850577543077249

namespace A185828

/-- `record[A111734(n+2)]` -/
def P6892850577543077249.Spec : Prop :=
  ∀ n, P6892850577543077249.a n = A185828 (n + 1)

end A185828

/-! ## A185828.P1161899670505073265

`Δ[A226956(Δ[n²])]`
-/

namespace A185828.P1161899670505073265
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226956 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A185828.P1161899670505073265

namespace A185828

/-- `Δ[A226956(Δ[n²])]` -/
def P1161899670505073265.Spec : Prop :=
  ∀ n, P1161899670505073265.a n = A185828 (n + 1)

end A185828

/-! ## A185828.P15659487450505304432

`A111734(2*(n+1))`
-/

namespace A185828.P15659487450505304432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111734 (2 * (n + 1))

end

end A185828.P15659487450505304432

namespace A185828

/-- `A111734(2*(n+1))` -/
def P15659487450505304432.Spec : Prop :=
  ∀ n, P15659487450505304432.a n = A185828 (n + 1)

end A185828

/-! ## A185828.P3635814874986382377

`A199935(2*(n+1))+1`
-/

namespace A185828.P3635814874986382377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199935 (2 * (n + 1)) + 1

end

end A185828.P3635814874986382377

namespace A185828

/-- `A199935(2*(n+1))+1` -/
def P3635814874986382377.Spec : Prop :=
  ∀ n, P3635814874986382377.a n = A185828 (n + 1)

end A185828

/-! ## A185828.P3252498884356797745

`A007039(2*(n+1))/2`
-/

namespace A185828.P3252498884356797745
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007039 (2 * (n + 1)) : ℚ) / 2

end

end A185828.P3252498884356797745

namespace A185828

/-- `A007039(2*(n+1))/2` -/
def P3252498884356797745.Spec : Prop :=
  ∀ n, P3252498884356797745.a n = (A185828 (n + 1) : ℚ)

end A185828

/-! ## A185828.P7045444585538159375

`A007040(2*(n+1))/2`
-/

namespace A185828.P7045444585538159375
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007040 (2 * (n + 1)) : ℚ) / 2

end

end A185828.P7045444585538159375

namespace A185828

/-- `A007040(2*(n+1))/2` -/
def P7045444585538159375.Spec : Prop :=
  ∀ n, P7045444585538159375.a n = (A185828 (n + 1) : ℚ)

end A185828

/-! ## A185828.P12034402703453260193

`ceil(xor(1, A000032(2*(n+1)))/2)`
-/

namespace A185828.P12034402703453260193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Int.xor 1 (A000032 (2 * (n + 1))) : ℚ) / 2⌉

end

end A185828.P12034402703453260193

namespace A185828

/-- `ceil(xor(1, A000032(2*(n+1)))/2)` -/
def P12034402703453260193.Spec : Prop :=
  ∀ n, P12034402703453260193.a n = A185828 (n + 1)

end A185828

/-! ## A185828.P12593196263907394949

`A036605(2*n)-A000045(2*n)`
-/

namespace A185828.P12593196263907394949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036605 (2 * n) - A000045 (2 * n)

end

end A185828.P12593196263907394949

namespace A185828

/-- `A036605(2*n)-A000045(2*n)` -/
def P12593196263907394949.Spec : Prop :=
  ∀ n, P12593196263907394949.a n = A185828 (n + 1)

end A185828

/-! ## A185828.P10734490597931343117

`A173714(2*n+1)+Δ[A002264(n)]`
-/

namespace A185828.P10734490597931343117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173714 (2 * n + 1) + (f1 (n + 1) - f1 n)

end

end A185828.P10734490597931343117

namespace A185828

/-- `A173714(2*n+1)+Δ[A002264(n)]` -/
def P10734490597931343117.Spec : Prop :=
  ∀ n, P10734490597931343117.a n = A185828 (n + 1)

end A185828

/-! ## A185828.P14516397184367341966

`A173714(2*n+1)+Δ[A008620(n)]`
-/

namespace A185828.P14516397184367341966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173714 (2 * n + 1) + (f1 (n + 1) - f1 n)

end

end A185828.P14516397184367341966

namespace A185828

/-- `A173714(2*n+1)+Δ[A008620(n)]` -/
def P14516397184367341966.Spec : Prop :=
  ∀ n, P14516397184367341966.a n = A185828 (n + 1)

end A185828

/-! ## A185828.P8828974302029374470

`record[A007039(n+1)/(A142150(n)+2)]`
-/

namespace A185828.P8828974302029374470
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007039 (n + 1) : ℚ) / (A142150 n + 2 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A185828.P8828974302029374470

namespace A185828

/-- `record[A007039(n+1)/(A142150(n)+2)]` -/
def P8828974302029374470.Spec : Prop :=
  ∀ n, P8828974302029374470.a n = (A185828 (n + 1) : ℚ)

end A185828

/-! ## A185828.P8727005252601282260

`(A099837(n+1)+A005248(n+1))/2`
-/

namespace A185828.P8727005252601282260
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A099837 (n + 1) + A005248 (n + 1) : ℚ) / 2

end

end A185828.P8727005252601282260

namespace A185828

/-- `(A099837(n+1)+A005248(n+1))/2` -/
def P8727005252601282260.Spec : Prop :=
  ∀ n, P8727005252601282260.a n = (A185828 (n + 1) : ℚ)

end A185828

/-! ## A185828.P2215973897021733609

`A005248(n+1)-A108014(2*n+1)`
-/

namespace A185828.P2215973897021733609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005248 (n + 1) - A108014 (2 * n + 1)

end

end A185828.P2215973897021733609

namespace A185828

/-- `A005248(n+1)-A108014(2*n+1)` -/
def P2215973897021733609.Spec : Prop :=
  ∀ n, P2215973897021733609.a n = A185828 (n + 1)

end A185828

/-! ## A185828.P9796767756196534747

`A108014(2*n+1)-A061347(n+1)`
-/

namespace A185828.P9796767756196534747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108014 (2 * n + 1) - A061347 (n + 1)

end

end A185828.P9796767756196534747

namespace A185828

/-- `A108014(2*n+1)-A061347(n+1)` -/
def P9796767756196534747.Spec : Prop :=
  ∀ n, P9796767756196534747.a n = A185828 (n + 1)

end A185828

/-! ## A185828.P13018525667423286991

`A366043(2*(n+1))-A061347(n+1)`
-/

namespace A185828.P13018525667423286991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366043 (2 * (n + 1)) - A061347 (n + 1)

end

end A185828.P13018525667423286991

namespace A185828

/-- `A366043(2*(n+1))-A061347(n+1)` -/
def P13018525667423286991.Spec : Prop :=
  ∀ n, P13018525667423286991.a n = A185828 (n + 1)

end A185828

/-! ## A185828.P11765595025717499825

`(A005248(n+1)-A061347(n+1))/2`
-/

namespace A185828.P11765595025717499825
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005248 (n + 1) - A061347 (n + 1) : ℚ) / 2

end

end A185828.P11765595025717499825

namespace A185828

/-- `(A005248(n+1)-A061347(n+1))/2` -/
def P11765595025717499825.Spec : Prop :=
  ∀ n, P11765595025717499825.a n = (A185828 (n + 1) : ℚ)

end A185828

/-! ## A185828.P11234645780108410285

`A293505(2*n)+A286311(2*n+1)`
-/

namespace A185828.P11234645780108410285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293505 (2 * n) + A286311 (2 * n + 1)

end

end A185828.P11234645780108410285

namespace A185828

/-- `A293505(2*n)+A286311(2*n+1)` -/
def P11234645780108410285.Spec : Prop :=
  ∀ n, P11234645780108410285.a n = A185828 (n + 1)

end A185828

/-!
# A185829: Half the number of nX3 binary arrays with every element equal to exactly one or two of its horizontal and vertical neighbors.

The programs for A185829, there is no canonical definition to state claims against.
-/

/-! ## A185829.P10999955659846165533

`A185835(∑[n+2]+4)`
-/

namespace A185829.P10999955659846165533
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185835 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A185829.P10999955659846165533

/-! ## A185829.P5987171916172967118

`A185835(A167614(n+1))%A017012(n)`
-/

namespace A185829.P5987171916172967118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A185835 (A167614 (n + 1)).toNat) (A017012 n)

end

end A185829.P5987171916172967118

/-! ## A185829.P12237526132268231203

`gcd(A000038(n), A185835(A167614(n+1)))`
-/

namespace A185829.P12237526132268231203
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A185835 (A167614 (n + 1)).toNat)

end

end A185829.P12237526132268231203

/-! ## A185829.P3513572273528297499

`or(A000007(n), A185835(A167614(n+1)))`
-/

namespace A185829.P3513572273528297499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A185835 (A167614 (n + 1)).toNat)

end

end A185829.P3513572273528297499

/-! ## A185829.P15996292357495198762

`or(A072401(n), A185835(A167614(n+1)))`
-/

namespace A185829.P15996292357495198762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A072401 n) (A185835 (A167614 (n + 1)).toNat)

end

end A185829.P15996292357495198762

/-!
# A185830: Half the number of n X 4 binary arrays with every element equal to exactly one or two of its horizontal and vertical neighbors.

The programs for A185830, there is no canonical definition to state claims against.
-/

/-! ## A185830.P5277291757666153174

`A185835(A374004(n+1))`
-/

namespace A185830.P5277291757666153174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185835 (A374004 (n + 1)).toNat

end

end A185830.P5277291757666153174

/-! ## A185830.P17359968164364503790

`A185835(A141214(n)+7)`
-/

namespace A185830.P17359968164364503790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185835 (A141214 n + 7).toNat

end

end A185830.P17359968164364503790

/-! ## A185830.P17157460115566206616

`A185835(A052905(n)+9)`
-/

namespace A185830.P17157460115566206616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185835 (A052905 n + 9).toNat

end

end A185830.P17157460115566206616

/-! ## A185830.P9057643179532470540

`A185835(A055999(n)+10)`
-/

namespace A185830.P9057643179532470540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185835 (A055999 n + 10).toNat

end

end A185830.P9057643179532470540

/-! ## A185830.P9505545862801793477

`A185835(A167614(n+2)+1)`
-/

namespace A185830.P9505545862801793477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185835 (A167614 (n + 2) + 1).toNat

end

end A185830.P9505545862801793477

/-!
# A185831: Half the number of nX5 binary arrays with every element equal to exactly one or two of its horizontal and vertical neighbors.

The programs for A185831, there is no canonical definition to state claims against.
-/

/-! ## A185831.P12054754957477128852

`A185835(∑[n+4]+11)`
-/

namespace A185831.P12054754957477128852
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185835 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A185831.P12054754957477128852

/-! ## A185831.P381987762155379616

`and(cos(-π), A185835(A167499(n+3)))`
-/

namespace A185831.P381987762155379616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (SequenceMachineLib.roundAway (Real.cos (-Real.pi))) (A185835 (A167499 (n + 3)).toNat)

end

end A185831.P381987762155379616

/-! ## A185831.P17290000265044552674

`gcd(n, n+1)*A185835(A052905(n+1)+10)`
-/

namespace A185831.P17290000265044552674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd n (n + 1) : ℤ) * A185835 (A052905 (n + 1) + 10).toNat

end

end A185831.P17290000265044552674

/-! ## A185831.P11405153599887510093

`A016266(n)*A185835(A000124(n+4)+4)`
-/

namespace A185831.P11405153599887510093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016266 n * A185835 (A000124 (n + 4) + 4).toNat

end

end A185831.P11405153599887510093

/-! ## A185831.P11402622071056721622

`A016272(n)*A185835(A000124(n+4)+4)`
-/

namespace A185831.P11402622071056721622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016272 n * A185835 (A000124 (n + 4) + 4).toNat

end

end A185831.P11402622071056721622

/-!
# A185832: Half the number of nX6 binary arrays with every element equal to exactly one or two of its horizontal and vertical neighbors.

The programs for A185832, there is no canonical definition to state claims against.
-/

/-! ## A185832.P9087557201621633164

`A185835(A374007(n+1))`
-/

namespace A185832.P9087557201621633164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185835 (A374007 (n + 1)).toNat

end

end A185832.P9087557201621633164

/-! ## A185832.P11609680858791944519

`A185835(A167499(n+4)+1)`
-/

namespace A185832.P11609680858791944519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185835 (A167499 (n + 4) + 1).toNat

end

end A185832.P11609680858791944519

/-! ## A185832.P18192703446399854202

`A185835(A000124(n+5)+5)`
-/

namespace A185832.P18192703446399854202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185835 (A000124 (n + 5) + 5).toNat

end

end A185832.P18192703446399854202

/-! ## A185832.P6653559375397200395

`A185835(A000217(n+5)+6)`
-/

namespace A185832.P6653559375397200395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185835 (A000217 (n + 5) + 6).toNat

end

end A185832.P6653559375397200395

/-! ## A185832.P10616135033249206253

`A185835(A046691(n+3)+10)`
-/

namespace A185832.P10616135033249206253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185835 (A046691 (n + 3) + 10).toNat

end

end A185832.P10616135033249206253

/-!
# A185833: Half the number of nX7 binary arrays with every element equal to exactly one or two of its horizontal and vertical neighbors.

The programs for A185833, there is no canonical definition to state claims against.
-/

/-! ## A185833.P6486171582472902262

`A185835(A374008(n+1))`
-/

namespace A185833.P6486171582472902262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185835 (A374008 (n + 1)).toNat

end

end A185833.P6486171582472902262

/-! ## A185833.P8189635729621450452

`A185835(A167487(n+5))`
-/

namespace A185833.P8189635729621450452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185835 (A167487 (n + 5)).toNat

end

end A185833.P8189635729621450452

/-! ## A185833.P16440063604255811125

`A185835(A056119(n)+28)`
-/

namespace A185833.P16440063604255811125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185835 (A056119 n + 28).toNat

end

end A185833.P16440063604255811125

/-! ## A185833.P12666401911664134801

`A185835(eq[11, A066657(n)])`
-/

namespace A185833.P12666401911664134801
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185835 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A185833.P12666401911664134801

/-! ## A185833.P4074233031160422268

`A185835(eq[8, A131818(n+1)])`
-/

namespace A185833.P4074233031160422268
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185835 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A185833.P4074233031160422268

/-!
# A185834: Half the number of nX8 binary arrays with every element equal to exactly one or two of its horizontal and vertical neighbors.

The programs for A185834, there is no canonical definition to state claims against.
-/

/-! ## A185834.P3127316814111107398

`A185835(A374009(n+1))`
-/

namespace A185834.P3127316814111107398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185835 (A374009 (n + 1)).toNat

end

end A185834.P3127316814111107398

/-! ## A185834.P2200162479728049496

`A185835(eq[9, A131818(n+1)])`
-/

namespace A185834.P2200162479728049496
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185835 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A185834.P2200162479728049496

/-! ## A185834.P7306161270680421703

`A185835(eq[5, A219347(n)])`
-/

namespace A185834.P7306161270680421703
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185835 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A185834.P7306161270680421703

/-! ## A185834.P10164361546507478108

`A185835(eq[7, A193592(n)])`
-/

namespace A185834.P10164361546507478108
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185835 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A185834.P10164361546507478108

/-! ## A185834.P14279402086345194340

`A185835(A000217(n+8)-7)`
-/

namespace A185834.P14279402086345194340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185835 (A000217 (n + 8) - 7).toNat

end

end A185834.P14279402086345194340

/-!
# A185835: T(n,k)=Half the number of nXk binary arrays with every element equal to exactly one or two of its horizontal and vertical neighbors.

The programs for A185835, there is no canonical definition to state claims against.
-/

/-! ## A185835.P812533267932059415

`A056926(A301669(n+1)²)`
-/

namespace A185835.P812533267932059415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056926 (A301669 (n + 1) ^ 2).toNat

end

end A185835.P812533267932059415

/-! ## A185835.P15948090973094088159

`A262689(A301669(n+1)²)`
-/

namespace A185835.P15948090973094088159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262689 (A301669 (n + 1) ^ 2).toNat

end

end A185835.P15948090973094088159

/-! ## A185835.P5429001188766932708

`A056926(A301669(n+1)^2)`
-/

namespace A185835.P5429001188766932708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056926 (A301669 (n + 1) ^ 2).toNat

end

end A185835.P5429001188766932708

/-! ## A185835.P6476066820615282965

`A301669(n+1)%A079940(n+1)`
-/

namespace A185835.P6476066820615282965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A301669 (n + 1)) (A079940 (n + 1))

end

end A185835.P6476066820615282965

/-! ## A185835.P14585824620269658186

`A301669(n+1)*A330234(A000040(n+1))`
-/

namespace A185835.P14585824620269658186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301669 (n + 1) * A330234 (A000040 (n + 1)).toNat

end

end A185835.P14585824620269658186

/-!
# A185836: Number of (n+1)X(n+1) 0..2 arrays with every 2X2 subblock trace equal to some horizontal or vertical neighbor 2X2 subblock trace.

The programs for A185836, there is no canonical definition to state claims against.
-/

/-! ## A185836.P16228272936269339908

`A185845((n+1)²+n²)`
-/

namespace A185836.P16228272936269339908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185845 ((n + 1) ^ 2 + n ^ 2)

end

end A185836.P16228272936269339908

/-!
# A185837: Number of (n+1) X 2 0..2 arrays with every 2 X 2 subblock trace equal to some horizontal or vertical neighbor 2 X 2 subblock trace.

The programs for A185837, there is no canonical definition to state claims against.
-/

/-! ## A185837.P15008357744934668328

`A185845(∑[n]+1)`
-/

namespace A185837.P15008357744934668328
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185845 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A185837.P15008357744934668328

/-! ## A185837.P4791956707753947082

`A187140(∑[n]+1)`
-/

namespace A185837.P4791956707753947082
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187140 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A185837.P4791956707753947082

/-! ## A185837.P595698187046365349

`lcm(3, A187140(A000124(n)))`
-/

namespace A185837.P595698187046365349
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 (A187140 (A000124 n).toNat)

end

end A185837.P595698187046365349

/-! ## A185837.P15101823785231563996

`record[gcd(A002262(n), A185845(n+1))]`
-/

namespace A185837.P15101823785231563996
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A185845 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A185837.P15101823785231563996

/-! ## A185837.P11890162532172362061

`record[gcd(A187140(n+1), A261684(n))]`
-/

namespace A185837.P11890162532172362061
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A187140 (n + 1)) (A261684 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A185837.P11890162532172362061

/-!
# A185838: Number of (n+1)X3 0..2 arrays with every 2X2 subblock trace equal to some horizontal or vertical neighbor 2X2 subblock trace.

The programs for A185838, there is no canonical definition to state claims against.
-/

/-! ## A185838.P258427043044409331

`A185845(∑[n+1]+2)`
-/

namespace A185838.P258427043044409331
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185845 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A185838.P258427043044409331

/-! ## A185838.P2172433271049432924

`record[gcd(A002262(n), A185845(n+2))]`
-/

namespace A185838.P2172433271049432924
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A185845 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A185838.P2172433271049432924

/-! ## A185838.P14432105315697501857

`record[gcd(A185813(n), A185845(n+3))]`
-/

namespace A185838.P14432105315697501857
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A185813 n) (A185845 (n + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A185838.P14432105315697501857

/-! ## A185838.P15857473760898640193

`record[root(A185845(n+2), A305059(n+4))]`
-/

namespace A185838.P15857473760898640193
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A185845 (n + 2) : ℝ) ^ (1 / (A305059 (n + 4) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A185838.P15857473760898640193

/-!
# A185839: Number of (n+1)X4 0..2 arrays with every 2X2 subblock trace equal to some horizontal or vertical neighbor 2X2 subblock trace.

The programs for A185839, there is no canonical definition to state claims against.
-/

/-! ## A185839.P11557873433610685251

`A185845(∑[n+2]+4)`
-/

namespace A185839.P11557873433610685251
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185845 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A185839.P11557873433610685251

/-! ## A185839.P3772385729386299887

`lcm(3, A185845(A167614(n+1)))`
-/

namespace A185839.P3772385729386299887
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 (A185845 (A167614 (n + 1)).toNat)

end

end A185839.P3772385729386299887

/-! ## A185839.P15431480387030349824

`A185845(A167614(n+1))+A184946(n)`
-/

namespace A185839.P15431480387030349824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185845 (A167614 (n + 1)).toNat + A184946 n

end

end A185839.P15431480387030349824

/-! ## A185839.P9119940047484676205

`A185845(A167614(n+1))+A185284(n)`
-/

namespace A185839.P9119940047484676205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185845 (A167614 (n + 1)).toNat + A185284 n

end

end A185839.P9119940047484676205

/-! ## A185839.P18344518435841396743

`or(A000007(n), A185845(A167614(n+1)))`
-/

namespace A185839.P18344518435841396743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A185845 (A167614 (n + 1)).toNat)

end

end A185839.P18344518435841396743

/-!
# A185840: Number of (n+1) X 5 0..2 arrays with every 2 X 2 subblock trace equal to some horizontal or vertical neighbor 2 X 2 subblock trace.

The programs for A185840, there is no canonical definition to state claims against.
-/

/-! ## A185840.P61473110633223

`A185845(A374004(n+1))`
-/

namespace A185840.P61473110633223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185845 (A374004 (n + 1)).toNat

end

end A185840.P61473110633223

/-! ## A185840.P12623132818157748413

`A185845(A141214(n)+7)`
-/

namespace A185840.P12623132818157748413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185845 (A141214 n + 7).toNat

end

end A185840.P12623132818157748413

/-! ## A185840.P1517869816636062253

`A185845(A052905(n)+9)`
-/

namespace A185840.P1517869816636062253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185845 (A052905 n + 9).toNat

end

end A185840.P1517869816636062253

/-! ## A185840.P4004145307639686725

`A185845(A055999(n)+10)`
-/

namespace A185840.P4004145307639686725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185845 (A055999 n + 10).toNat

end

end A185840.P4004145307639686725

/-! ## A185840.P15214754103716417783

`A185845(A167614(n+2)+1)`
-/

namespace A185840.P15214754103716417783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185845 (A167614 (n + 2) + 1).toNat

end

end A185840.P15214754103716417783

/-!
# A185841: Number of (n+1)X6 0..2 arrays with every 2X2 subblock trace equal to some horizontal or vertical neighbor 2X2 subblock trace.

The programs for A185841, there is no canonical definition to state claims against.
-/

/-! ## A185841.P75675764778631146

`A185845(A374005(n+1))`
-/

namespace A185841.P75675764778631146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185845 (A374005 (n + 1)).toNat

end

end A185841.P75675764778631146

/-! ## A185841.P5032050903878033406

`A185845(A246172(n+1)+10)`
-/

namespace A185841.P5032050903878033406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185845 (A246172 (n + 1) + 10).toNat

end

end A185841.P5032050903878033406

/-!
# A185842: Number of (n+1) X 7 0..2 arrays with every 2 X 2 subblock trace equal to some horizontal or vertical neighbor 2 X 2 subblock trace.

The programs for A185842, there is no canonical definition to state claims against.
-/

/-! ## A185842.P5548046493593247607

`A185845(A374007(n+1))`
-/

namespace A185842.P5548046493593247607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185845 (A374007 (n + 1)).toNat

end

end A185842.P5548046493593247607

/-! ## A185842.P17913146923204572631

`A185845(A246172(n+1)+20)`
-/

namespace A185842.P17913146923204572631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185845 (A246172 (n + 1) + 20).toNat

end

end A185842.P17913146923204572631

/-!
# A185845: T(n,k)=Number of (n+1)X(k+1) 0..2 arrays with every 2X2 subblock trace equal to some horizontal or vertical neighbor 2X2 subblock trace.

The programs for A185845, there is no canonical definition to state claims against.
-/

/-! ## A185845.P16033457403347201876

`A187140(or(n+1, C(n, 6)^n))`
-/

namespace A185845.P16033457403347201876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187140 (Nat.lor (n + 1) (Nat.choose n 6 ^ n))

end

end A185845.P16033457403347201876

/-! ## A185845.P3566352521254696560

`A004181(A187140(n+1))`
-/

namespace A185845.P3566352521254696560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004181 (A187140 (n + 1)).toNat

end

end A185845.P3566352521254696560

/-! ## A185845.P5956214388144661293

`A187140(A037334(n+1))`
-/

namespace A185845.P5956214388144661293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187140 (A037334 (n + 1)).toNat

end

end A185845.P5956214388144661293

/-!
# A185846: Primes in A002049.

The programs for A185846, there is no canonical definition to state claims against.
-/

/-! ## A185846.P5166804464750209743

`p?[A002049(n+1)]`
-/

namespace A185846.P5166804464750209743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002049 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A185846.P5166804464750209743

/-! ## A185846.P16649338571206449970

`p?[∑[A002048(n+1)]]`
-/

namespace A185846.P16649338571206449970
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002048 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A185846.P16649338571206449970

/-! ## A185846.P6633428063093114595

`p?[Δ[A173702(n+1)]]`
-/

namespace A185846.P6633428063093114595
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173702 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A185846.P6633428063093114595

/-! ## A185846.P12567236440178823824

`p?[A048204(n+1)+1]`
-/

namespace A185846.P12567236440178823824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048204 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A185846.P12567236440178823824

/-! ## A185846.P15624325247805521440

`p?[A004978(n+1)-1]`
-/

namespace A185846.P15624325247805521440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004978 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A185846.P15624325247805521440

/-! ## A185846.P16347299915575370994

`p?[A002048(n)+a(n-1)]` with `a(0)=1, a(1)=1`
-/

namespace A185846.P16347299915575370994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  A002048 n + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A185846.P16347299915575370994

/-!
# A185847: Number of (n+1)X(n+1) 0..2 arrays with no 2X2 subblock diagonal sum less antidiagonal sum equal to any horizontal or vertical neighbor 2X2 subblock diagonal sum less antidiagonal sum.

The programs for A185847, there is no canonical definition to state claims against.
-/

/-! ## A185847.P18097311591400739992

`A185856(∑[4*n]+1)`
-/

namespace A185847.P18097311591400739992
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185856 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A185847.P18097311591400739992

/-!
# A185848: Number of (n+1) X 2 0..2 arrays with no 2 X 2 subblock diagonal sum less antidiagonal sum equal to any horizontal or vertical neighbor 2 X 2 subblock diagonal sum less antidiagonal sum.

The programs for A185848, there is no canonical definition to state claims against.
-/

/-! ## A185848.P17916853376279313206

`A185856(∑[n]+1)`
-/

namespace A185848.P17916853376279313206
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185856 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A185848.P17916853376279313206

/-! ## A185848.P15902036415958532573

`record[A185856(n+1)/A154985(n)]`
-/

namespace A185848.P15902036415958532573
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A185856 (n + 1) : ℚ) / (A154985 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A185848.P15902036415958532573

/-! ## A185848.P15926424672600810583

`record[A185856(n+1)/A156610(n)]`
-/

namespace A185848.P15926424672600810583
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A185856 (n + 1) : ℚ) / (A156610 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A185848.P15926424672600810583

/-! ## A185848.P16897065581455160822

`record[root(A185856(n+1), A059268(n))]`
-/

namespace A185848.P16897065581455160822
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A185856 (n + 1) : ℝ) ^ (1 / (A059268 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A185848.P16897065581455160822

/-! ## A185848.P11630421049667011471

`record[root(A185856(n+1), A060098(n))]`
-/

namespace A185848.P11630421049667011471
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A185856 (n + 1) : ℝ) ^ (1 / (A060098 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A185848.P11630421049667011471

/-!
# A185849: Number of (n+1)X3 0..2 arrays with no 2X2 subblock diagonal sum less antidiagonal sum equal to any horizontal or vertical neighbor 2X2 subblock diagonal sum less antidiagonal sum.

The programs for A185849, there is no canonical definition to state claims against.
-/

/-! ## A185849.P5682817890277144291

`A185856(∑[n+1]+2)`
-/

namespace A185849.P5682817890277144291
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185856 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A185849.P5682817890277144291

/-! ## A185849.P5839929314102205549

`lcm(2, A185856(A000096(n)+3))`
-/

namespace A185849.P5839929314102205549
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A185856 (A000096 n + 3).toNat)

end

end A185849.P5839929314102205549

/-! ## A185849.P2724276550293306363

`record[root(A185856(n+2), A059268(n))]`
-/

namespace A185849.P2724276550293306363
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A185856 (n + 2) : ℝ) ^ (1 / (A059268 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A185849.P2724276550293306363

/-! ## A185849.P10864155337546543380

`record[A185856(A000096(val(n+1, 2)+1))]`
-/

namespace A185849.P10864155337546543380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185856 (A000096 (SequenceMachineLib.valuation (n + 1) 2 + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A185849.P10864155337546543380

/-! ## A185849.P7883527237743900032

`record[A097806(n+1)*A185856(n+2)]`
-/

namespace A185849.P7883527237743900032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097806 (n + 1) * A185856 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A185849.P7883527237743900032

/-!
# A185850: Number of (n+1)X4 0..2 arrays with no 2X2 subblock diagonal sum less antidiagonal sum equal to any horizontal or vertical neighbor 2X2 subblock diagonal sum less antidiagonal sum.

The programs for A185850, there is no canonical definition to state claims against.
-/

/-! ## A185850.P15227067558712709441

`A185856(∑[n+2]+4)`
-/

namespace A185850.P15227067558712709441
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185856 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A185850.P15227067558712709441

/-! ## A185850.P3344685877246442691

`lcm(2, A185856(A167614(n+1)))`
-/

namespace A185850.P3344685877246442691
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A185856 (A167614 (n + 1)).toNat)

end

end A185850.P3344685877246442691

/-! ## A185850.P11314668269744592105

`A172359(n)*A185856(A167614(n+1))`
-/

namespace A185850.P11314668269744592105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172359 n * A185856 (A167614 (n + 1)).toNat

end

end A185850.P11314668269744592105

/-! ## A185850.P2892480851221748454

`A185856(A167614(n+1))*A196368(n)`
-/

namespace A185850.P2892480851221748454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185856 (A167614 (n + 1)).toNat * A196368 n

end

end A185850.P2892480851221748454

/-! ## A185850.P8816415436863910967

`A185856(A167614(n+1))+A065685(n+1)`
-/

namespace A185850.P8816415436863910967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185856 (A167614 (n + 1)).toNat + A065685 (n + 1)

end

end A185850.P8816415436863910967

/-!
# A185851: Number of (n+1)X5 0..2 arrays with no 2X2 subblock diagonal sum less antidiagonal sum equal to any horizontal or vertical neighbor 2X2 subblock diagonal sum less antidiagonal sum.

The programs for A185851, there is no canonical definition to state claims against.
-/

/-! ## A185851.P10894923122196087870

`A185856(A167614(n+2)+1)`
-/

namespace A185851.P10894923122196087870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185856 (A167614 (n + 2) + 1).toNat

end

end A185851.P10894923122196087870

/-! ## A185851.P11115109372845176197

`A185856(A155212(n+1)-n)`
-/

namespace A185851.P11115109372845176197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185856 (A155212 (n + 1) - (n : ℤ)).toNat

end

end A185851.P11115109372845176197

/-!
# A185852: Number of (n+1)X6 0..2 arrays with no 2X2 subblock diagonal sum less antidiagonal sum equal to any horizontal or vertical neighbor 2X2 subblock diagonal sum less antidiagonal sum.

The programs for A185852, there is no canonical definition to state claims against.
-/

/-! ## A185852.P3714854910688861925

`A185856(A374005(n+1))`
-/

namespace A185852.P3714854910688861925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185856 (A374005 (n + 1)).toNat

end

end A185852.P3714854910688861925

/-! ## A185852.P9152882423517055901

`A185856(A155212(n)+13)`
-/

namespace A185852.P9152882423517055901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185856 (A155212 n + 13).toNat

end

end A185852.P9152882423517055901

/-!
# A185857: 1/128 the number of (n+2)X(n+2) binary arrays with no 3X3 subblock trace equal to any horizontal or vertical neighbor 3X3 subblock trace.

The programs for A185857, there is no canonical definition to state claims against.
-/

/-! ## A185857.P2732310367335669305

`A185866(∑[4*n]+1)`
-/

namespace A185857.P2732310367335669305
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185866 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A185857.P2732310367335669305

/-! ## A185857.P16820725690246249715

`record[A003982(n)*A185866(n+1)]`
-/

namespace A185857.P16820725690246249715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A185866 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A185857.P16820725690246249715

/-! ## A185857.P15579888338321968673

`record[gcd(A114327(n), A185866(n+1))]`
-/

namespace A185857.P15579888338321968673
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114327 n) (A185866 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A185857.P15579888338321968673

/-! ## A185857.P16463294495890465100

`record[or(-A274650(n), A185866(n+1))]`
-/

namespace A185857.P16463294495890465100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (-A274650 n) (A185866 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A185857.P16463294495890465100

/-! ## A185857.P18347625380916798471

`or(A185866(A001844(n)), A280710(n+1))`
-/

namespace A185857.P18347625380916798471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A185866 (A001844 n).toNat) (A280710 (n + 1))

end

end A185857.P18347625380916798471

/-!
# A185858: 1/128 the number of (n+2) X 3 binary arrays with no 3 X 3 subblock trace equal to any horizontal or vertical neighbor 3 X 3 subblock trace.

The programs for A185858, the canonical program `A185858.P1245213297000926357` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A185858 has offset 1).

The definition of A185858 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 133 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A185858.P16135023746407695687

`ogf((4+6x)/(1-4x-9x^2))`
-/

namespace A185858.P16135023746407695687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, 6] [1, -4, -9] n

end

end A185858.P16135023746407695687

namespace A185858

/-- `ogf((4+6x)/(1-4x-9x^2))` -/
def P16135023746407695687.Spec : Prop :=
  ∀ n, P16135023746407695687.a n = A185858 (n + 1)

end A185858

/-! ## A185858.P1245213297000926357

`4*a(n-1)+9*a(n-2)` with `a(0)=4, a(1)=22`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A185858

/-- `4*a(n-1)+9*a(n-2)` -/
def P1245213297000926357.Spec : Prop :=
  ∀ n, (P1245213297000926357.a n : ℤ) = A185858 (n + 1)

theorem P1245213297000926357.correct : P1245213297000926357.Spec := by
  intro n
  simp only [A185858, Nat.add_sub_cancel]

end A185858

/-! ## A185858.P14480341966954271824

`A185866(∑[n]+1)`
-/

namespace A185858.P14480341966954271824
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185866 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A185858.P14480341966954271824

namespace A185858

/-- `A185866(∑[n]+1)` -/
def P14480341966954271824.Spec : Prop :=
  ∀ n, P14480341966954271824.a n = A185858 (n + 1)

end A185858

/-! ## A185858.P38127555501982519

`lcm(2, A185866(A000124(n)))`
-/

namespace A185858.P38127555501982519
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A185866 (A000124 n).toNat)

end

end A185858.P38127555501982519

namespace A185858

/-- `lcm(2, A185866(A000124(n)))` -/
def P38127555501982519.Spec : Prop :=
  ∀ n, (P38127555501982519.a n : ℤ) = A185858 (n + 1)

end A185858

/-! ## A185858.P7080662697095217329

`record[A185866(A056534(n+1))]`
-/

namespace A185858.P7080662697095217329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185866 (A056534 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A185858.P7080662697095217329

namespace A185858

/-- `record[A185866(A056534(n+1))]` -/
def P7080662697095217329.Spec : Prop :=
  ∀ n, P7080662697095217329.a n = A185858 (n + 1)

end A185858

/-!
# A185859: 1/128 the number of (n+2) X 4 binary arrays with no 3 X 3 subblock trace equal to any horizontal or vertical neighbor 3 X 3 subblock trace.

The programs for A185859, there is no canonical definition to state claims against.
-/

/-! ## A185859.P17394810087078587570

`A185866(∑[n+1]+2)`
-/

namespace A185859.P17394810087078587570
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185866 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A185859.P17394810087078587570

/-! ## A185859.P1289808843187780340

`lcm(2, A185866(A133263(n+1)))`
-/

namespace A185859.P1289808843187780340
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A185866 (A133263 (n + 1)).toNat)

end

end A185859.P1289808843187780340

/-! ## A185859.P11731386265987115541

`record[A185866(A114091(n+1)+1)]`
-/

namespace A185859.P11731386265987115541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185866 (A114091 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A185859.P11731386265987115541

/-! ## A185859.P15201543770469221803

`record[A185866(Δ[A003453(n+5)])]`
-/

namespace A185859.P15201543770469221803
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185866 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A185859.P15201543770469221803

/-! ## A185859.P270710098101002973

`record[A185866(A056534(n+3)-1)]`
-/

namespace A185859.P270710098101002973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185866 (A056534 (n + 3) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A185859.P270710098101002973

/-!
# A185860: 1/128 the number of (n+2)X5 binary arrays with no 3X3 subblock trace equal to any horizontal or vertical neighbor 3X3 subblock trace.

The programs for A185860, there is no canonical definition to state claims against.
-/

/-! ## A185860.P6073031662111436973

`A185866(∑[n+2]+4)`
-/

namespace A185860.P6073031662111436973
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185866 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A185860.P6073031662111436973

/-! ## A185860.P14691728963119675874

`A185866(A167614(n+1))+A185284(n)`
-/

namespace A185860.P14691728963119675874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185866 (A167614 (n + 1)).toNat + A185284 n

end

end A185860.P14691728963119675874

/-! ## A185860.P2506078638821386711

`lcm(A158388(n), A185866(A167614(n+1)))`
-/

namespace A185860.P2506078638821386711
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A158388 n) (A185866 (A167614 (n + 1)).toNat)

end

end A185860.P2506078638821386711

/-! ## A185860.P17433805873317199356

`or(A185866(A167614(n+1)), A281154(n))`
-/

namespace A185860.P17433805873317199356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A185866 (A167614 (n + 1)).toNat) (A281154 n)

end

end A185860.P17433805873317199356

/-! ## A185860.P5480842044215654803

`A001222(A089793(n))*A185866(A055998(n)+6)`
-/

namespace A185860.P5480842044215654803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A089793 n).toNat * A185866 (A055998 n + 6).toNat

end

end A185860.P5480842044215654803

/-!
# A185861: 1/128 the number of (n+2)X6 binary arrays with no 3X3 subblock trace equal to any horizontal or vertical neighbor 3X3 subblock trace.

The programs for A185861, there is no canonical definition to state claims against.
-/

/-! ## A185861.P14806305203736930792

`A185866(A374004(n+1))`
-/

namespace A185861.P14806305203736930792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185866 (A374004 (n + 1)).toNat

end

end A185861.P14806305203736930792

/-! ## A185861.P18330425817879811041

`A185866(A141214(n)+7)`
-/

namespace A185861.P18330425817879811041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185866 (A141214 n + 7).toNat

end

end A185861.P18330425817879811041

/-! ## A185861.P10430120960546219008

`A185866(A052905(n)+9)`
-/

namespace A185861.P10430120960546219008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185866 (A052905 n + 9).toNat

end

end A185861.P10430120960546219008

/-! ## A185861.P556759082460933921

`A185866(A055999(n)+10)`
-/

namespace A185861.P556759082460933921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185866 (A055999 n + 10).toNat

end

end A185861.P556759082460933921

/-! ## A185861.P16415734745879880169

`A185866(A167614(n+2)+1)`
-/

namespace A185861.P16415734745879880169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185866 (A167614 (n + 2) + 1).toNat

end

end A185861.P16415734745879880169

/-!
# A185862: 1/128 the number of (n+2)X7 binary arrays with no 3X3 subblock trace equal to any horizontal or vertical neighbor 3X3 subblock trace.

The programs for A185862, there is no canonical definition to state claims against.
-/

/-! ## A185862.P16314224427202273645

`A185866(A374005(n+1))`
-/

namespace A185862.P16314224427202273645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185866 (A374005 (n + 1)).toNat

end

end A185862.P16314224427202273645

/-! ## A185862.P2319446252516450654

`A185866(A167499(n+3))`
-/

namespace A185862.P2319446252516450654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185866 (A167499 (n + 3)).toNat

end

end A185862.P2319446252516450654

/-! ## A185862.P5304218901632029569

`A185866(eq[6, A131818(n+1)])`
-/

namespace A185862.P5304218901632029569
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185866 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A185862.P5304218901632029569

/-! ## A185862.P14485404756825752624

`A185866(eq[3, A152157(n)])`
-/

namespace A185862.P14485404756825752624
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185866 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A185862.P14485404756825752624

/-! ## A185862.P3035471652645866186

`A185866(eq[4, A193592(n)])`
-/

namespace A185862.P3035471652645866186
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185866 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A185862.P3035471652645866186

/-!
# A185863: 1/128 the number of (n+2)X8 binary arrays with no 3X3 subblock trace equal to any horizontal or vertical neighbor 3X3 subblock trace.

The programs for A185863, there is no canonical definition to state claims against.
-/

/-! ## A185863.P14437654356606424754

`A185866(A374007(n+1))`
-/

namespace A185863.P14437654356606424754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185866 (A374007 (n + 1)).toNat

end

end A185863.P14437654356606424754

/-! ## A185863.P15623429885832264345

`A185866(eq[7, A131818(n+1)])`
-/

namespace A185863.P15623429885832264345
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185866 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A185863.P15623429885832264345

/-! ## A185863.P15053900730171583474

`A185866(A000096(n+5)-(n-1))`
-/

namespace A185863.P15053900730171583474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185866 (A000096 (n + 5) - ((n : ℤ) - 1)).toNat

end

end A185863.P15053900730171583474

/-! ## A185863.P85118680749071150

`A185866(A052905(n+3))`
-/

namespace A185863.P85118680749071150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185866 (A052905 (n + 3)).toNat

end

end A185863.P85118680749071150

/-! ## A185863.P14442856854532524242

`A185866(eq[3, A219347(n)])`
-/

namespace A185863.P14442856854532524242
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185866 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A185863.P14442856854532524242

/-!
# A185864: 1/128 the number of (n+2)X9 binary arrays with no 3X3 subblock trace equal to any horizontal or vertical neighbor 3X3 subblock trace.

The programs for A185864, there is no canonical definition to state claims against.
-/

/-! ## A185864.P8444574957655566699

`A185866(A374008(n+1))`
-/

namespace A185864.P8444574957655566699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185866 (A374008 (n + 1)).toNat

end

end A185864.P8444574957655566699

/-! ## A185864.P2402874924000495006

`A185866(A167499(n+5)+2)`
-/

namespace A185864.P2402874924000495006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185866 (A167499 (n + 5) + 2).toNat

end

end A185864.P2402874924000495006

/-! ## A185864.P132792910475299304

`A185866(A000096(n+5)+8)`
-/

namespace A185864.P132792910475299304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185866 (A000096 (n + 5) + 8).toNat

end

end A185864.P132792910475299304

/-! ## A185864.P7387555783632722137

`A185866(eq[8, A131818(n+1)])`
-/

namespace A185864.P7387555783632722137
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185866 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A185864.P7387555783632722137

/-! ## A185864.P10189498033961512445

`A185866(eq[4, A219347(n)])`
-/

namespace A185864.P10189498033961512445
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185866 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A185864.P10189498033961512445

/-!
# A185865: 1/128 the number of (n+2)X10 binary arrays with no 3X3 subblock trace equal to any horizontal or vertical neighbor 3X3 subblock trace.

The programs for A185865, there is no canonical definition to state claims against.
-/

/-! ## A185865.P4942641211990618786

`A185866(A374009(n+1))`
-/

namespace A185865.P4942641211990618786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185866 (A374009 (n + 1)).toNat

end

end A185865.P4942641211990618786

/-! ## A185865.P4699152636620861838

`A185866(eq[9, A131818(n+1)])`
-/

namespace A185865.P4699152636620861838
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185866 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A185865.P4699152636620861838

/-! ## A185865.P6909711838534526702

`A185866(eq[7, A193592(n)])`
-/

namespace A185865.P6909711838534526702
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185866 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A185865.P6909711838534526702

/-!
# A185866: T(n,k)=1/128 the number of (n+2)X(k+2) binary arrays with no 3X3 subblock trace equal to any horizontal or vertical neighbor 3X3 subblock trace.

The programs for A185866, there is no canonical definition to state claims against.
-/

/-! ## A185866.P13804614658705090309

`A326737(Δ[p?[A347647(n)]])`
-/

namespace A185866.P13804614658705090309
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347647 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326737 (f1 (n + 1) - f1 n).toNat

end

end A185866.P13804614658705090309

/-! ## A185866.P2588108528584957520

`A326737(gcd(A004701(n), A164325(n+1)))`
-/

namespace A185866.P2588108528584957520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326737 (Int.gcd (A004701 n) (A164325 (n + 1)))

end

end A185866.P2588108528584957520

/-!
# A185867: Numbers m whose decimal digits are a subsequence of the decimal digits of k*m for some 1 < k < 10.

The programs for A185867, there is no canonical definition to state claims against.
-/

/-! ## A185867.P17437285288931186704

`lt[A309631(round(acot(n)+n)), 11*n]`
-/

namespace A185867.P17437285288931186704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309631 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A185867.P17437285288931186704

/-! ## A185867.P7945922597671931660

`A020725(lt[A080501(n+1), 10])`
-/

namespace A185867.P7945922597671931660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080501 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A185867.P7945922597671931660

/-!
# A185868: (Odd,odd)-polka dot array in the natural number array A000027, by antidiagonals.

The programs for A185868, the canonical program `A185868.P10486727783938212778` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A185868 has offset 1).

The definition of A185868 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A185868.P4159177228989029917

`Δ[n²]+∑[char[∑[n+1]]]²`
-/

namespace A185868.P4159177228989029917
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) + (((∑ j ∈ Finset.range (n + 1), f2 j) ^ 2 : ℕ) : ℤ)

end

end A185868.P4159177228989029917

namespace A185868

/-- `Δ[n²]+∑[char[∑[n+1]]]²` -/
def P4159177228989029917.Spec : Prop :=
  ∀ n, P4159177228989029917.a n = A185868 (n + 1)

end A185868

/-! ## A185868.P10486727783938212778

`∑[xor(1, A198954(n))+1]`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A185868

/-- `∑[xor(1, A198954(n))+1]` -/
def P10486727783938212778.Spec : Prop :=
  ∀ n, P10486727783938212778.a n = A185868 (n + 1)

theorem P10486727783938212778.correct : P10486727783938212778.Spec := by
  intro n
  simp only [A185868, Nat.add_sub_cancel]

end A185868

/-! ## A185868.P5695267929693545067

`∑[abs(1-abs(A010816(n)))+1]`
-/

namespace A185868.P5695267929693545067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(1 - |A010816 n|)| + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A185868.P5695267929693545067

namespace A185868

/-- `∑[abs(1-abs(A010816(n)))+1]` -/
def P5695267929693545067.Spec : Prop :=
  ∀ n, P5695267929693545067.a n = A185868 (n + 1)

end A185868

/-! ## A185868.P6480888489966451680

`A000027(∑[char[∑[n+1]]]²+n+n+1)`
-/

namespace A185868.P6480888489966451680
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 + n + n + 1)

end

end A185868.P6480888489966451680

namespace A185868

/-- `A000027(∑[char[∑[n+1]]]²+n+n+1)` -/
def P6480888489966451680.Spec : Prop :=
  ∀ n, P6480888489966451680.a n = A185868 (n + 1)

end A185868

/-! ## A185868.P18199227381064737266

`abs((A002024(n+1)-1)²+3*n+1-n)`
-/

namespace A185868.P18199227381064737266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(A002024 (n + 1) - 1) ^ 2 + (3 * n + 1 : ℤ) - (n : ℤ)|

end

end A185868.P18199227381064737266

namespace A185868

/-- `abs((A002024(n+1)-1)²+3*n+1-n)` -/
def P18199227381064737266.Spec : Prop :=
  ∀ n, P18199227381064737266.a n = A185868 (n + 1)

end A185868

/-! ## A185868.P11199518013610893891

`A007606(A001614(n+1))`
-/

namespace A185868.P11199518013610893891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007606 (A001614 (n + 1)).toNat

end

end A185868.P11199518013610893891

namespace A185868

/-- `A007606(A001614(n+1))` -/
def P11199518013610893891.Spec : Prop :=
  ∀ n, P11199518013610893891.a n = A185868 (n + 1)

end A185868

/-! ## A185868.P4340546548825943063

`A007606(A133280(n)+1)`
-/

namespace A185868.P4340546548825943063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007606 (A133280 n + 1).toNat

end

end A185868.P4340546548825943063

namespace A185868

/-- `A007606(A133280(n)+1)` -/
def P4340546548825943063.Spec : Prop :=
  ∀ n, P4340546548825943063.a n = A185868 (n + 1)

end A185868

/-! ## A185868.P8353850250839847151

`A316670(A133280(n+1))`
-/

namespace A185868.P8353850250839847151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316670 (A133280 (n + 1)).toNat

end

end A185868.P8353850250839847151

namespace A185868

/-- `A316670(A133280(n+1))` -/
def P8353850250839847151.Spec : Prop :=
  ∀ n, P8353850250839847151.a n = A185868 (n + 1)

end A185868

/-! ## A185868.P16107429537720143504

`A007606(2*n+1-A003056(n))`
-/

namespace A185868.P16107429537720143504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007606 ((2 * n + 1 : ℤ) - A003056 n).toNat

end

end A185868.P16107429537720143504

namespace A185868

/-- `A007606(2*n+1-A003056(n))` -/
def P16107429537720143504.Spec : Prop :=
  ∀ n, P16107429537720143504.a n = A185868 (n + 1)

end A185868

/-! ## A185868.P16080834056991021368

`eq[A133087(n), A140575(n)]`
-/

namespace A185868.P16080834056991021368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133087 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140575 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A185868.P16080834056991021368

namespace A185868

/-- `eq[A133087(n), A140575(n)]` -/
def P16080834056991021368.Spec : Prop :=
  ∀ n, (P16080834056991021368.a n : ℤ) = A185868 (n + 1)

end A185868

/-! ## A185868.P764243650141903324

`filter[A007606(n+1), A128174(#)]`
-/

namespace A185868.P764243650141903324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007606 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A128174 (f1 j).toNat = 1) n)

end

end A185868.P764243650141903324

namespace A185868

/-- `filter[A007606(n+1), A128174(#)]` -/
def P764243650141903324.Spec : Prop :=
  ∀ n, P764243650141903324.a n = A185868 (n + 1)

end A185868

/-! ## A185868.P12685875141529244317

`filter[A007606(n+1), A204171(#)]`
-/

namespace A185868.P12685875141529244317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007606 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A204171 (f1 j).toNat = 1) n)

end

end A185868.P12685875141529244317

namespace A185868

/-- `filter[A007606(n+1), A204171(#)]` -/
def P12685875141529244317.Spec : Prop :=
  ∀ n, P12685875141529244317.a n = A185868 (n + 1)

end A185868

/-! ## A185868.P9652051873018844152

`filter[A007606(n+1), A376583(#)]`
-/

namespace A185868.P9652051873018844152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007606 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A376583 (f1 j).toNat = 1) n)

end

end A185868.P9652051873018844152

namespace A185868

/-- `filter[A007606(n+1), A376583(#)]` -/
def P9652051873018844152.Spec : Prop :=
  ∀ n, P9652051873018844152.a n = A185868 (n + 1)

end A185868

/-! ## A185868.P8731273165495190982

`eq[A052173(n), A057212(n+1)]`
-/

namespace A185868.P8731273165495190982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052173 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057212 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A185868.P8731273165495190982

namespace A185868

/-- `eq[A052173(n), A057212(n+1)]` -/
def P8731273165495190982.Spec : Prop :=
  ∀ n, (P8731273165495190982.a n : ℤ) = A185868 (n + 1)

end A185868

/-! ## A185868.P8929120099342600818

`eq[A053119(n), A057212(n+1)]`
-/

namespace A185868.P8929120099342600818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053119 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057212 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A185868.P8929120099342600818

namespace A185868

/-- `eq[A053119(n), A057212(n+1)]` -/
def P8929120099342600818.Spec : Prop :=
  ∀ n, (P8929120099342600818.a n : ℤ) = A185868 (n + 1)

end A185868

/-! ## A185868.P5194228541673773012

`eq[A057212(n+1), A162514(n)]`
-/

namespace A185868.P5194228541673773012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057212 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162514 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A185868.P5194228541673773012

namespace A185868

/-- `eq[A057212(n+1), A162514(n)]` -/
def P5194228541673773012.Spec : Prop :=
  ∀ n, (P5194228541673773012.a n : ℤ) = A185868 (n + 1)

end A185868

/-! ## A185868.P6271415150161350793

`eq[A057212(n+1), A191897(n)]`
-/

namespace A185868.P6271415150161350793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057212 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191897 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A185868.P6271415150161350793

namespace A185868

/-- `eq[A057212(n+1), A191897(n)]` -/
def P6271415150161350793.Spec : Prop :=
  ∀ n, (P6271415150161350793.a n : ℤ) = A185868 (n + 1)

end A185868

/-! ## A185868.P970477991462833412

`lt[A052176(n)+A052173(n), 2]`
-/

namespace A185868.P970477991462833412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052176 n + A052173 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A185868.P970477991462833412

namespace A185868

/-- `lt[A052176(n)+A052173(n), 2]` -/
def P970477991462833412.Spec : Prop :=
  ∀ n, (P970477991462833412.a n : ℤ) = A185868 (n + 1)

end A185868

/-!
# A185869: (Odd,even)-polka dot array in the natural number array A000027; read by antidiagonals.

The programs for A185869, the canonical program `A185869.P6524959697424845596` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A185869 has offset 1).

The definition of A185869 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A185869.P1676301426182378952

`Δ[n²]+∑[char[∑[n]]]²`
-/

namespace A185869.P1676301426182378952
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) + (((∑ j ∈ Finset.range (n + 1), f2 j) ^ 2 : ℕ) : ℤ)

end

end A185869.P1676301426182378952

namespace A185869

/-- `Δ[n²]+∑[char[∑[n]]]²` -/
def P1676301426182378952.Spec : Prop :=
  ∀ n, P1676301426182378952.a n = A185869 (n + 1)

end A185869

/-! ## A185869.P5451755498055912981

`record[xor(1, n)+round(sqrt(n+1))²]`
-/

namespace A185869.P5451755498055912981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.xor 1 n : ℤ) + SequenceMachineLib.roundAway (Real.sqrt (n + 1 : ℝ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A185869.P5451755498055912981

namespace A185869

/-- `record[xor(1, n)+round(sqrt(n+1))²]` -/
def P5451755498055912981.Spec : Prop :=
  ∀ n, P5451755498055912981.a n = A185869 (n + 1)

end A185869

/-! ## A185869.P16531405518487729951

`record[(-1)^n+round(sqrt(n+1))²+n]`
-/

namespace A185869.P16531405518487729951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n + (SequenceMachineLib.roundAway (Real.sqrt (n + 1 : ℝ)) ^ 2 + (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A185869.P16531405518487729951

namespace A185869

/-- `record[(-1)^n+round(sqrt(n+1))²+n]` -/
def P16531405518487729951.Spec : Prop :=
  ∀ n, P16531405518487729951.a n = A185869 (n + 1)

end A185869

/-! ## A185869.P7539171275750736733

`abs(1-A185870(n+1))`
-/

namespace A185869.P7539171275750736733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A185870 (n + 1)|

end

end A185869.P7539171275750736733

namespace A185869

/-- `abs(1-A185870(n+1))` -/
def P7539171275750736733.Spec : Prop :=
  ∀ n, P7539171275750736733.a n = A185869 (n + 1)

end A185869

/-! ## A185869.P6524959697424845596

`abs(Δ[n²]+A002024(n+1)²)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A185869

/-- `abs(Δ[n²]+A002024(n+1)²)` -/
def P6524959697424845596.Spec : Prop :=
  ∀ n, P6524959697424845596.a n = A185869 (n + 1)

theorem P6524959697424845596.correct : P6524959697424845596.Spec := by
  intro n
  simp only [A185869, Nat.add_sub_cancel]

end A185869

/-! ## A185869.P5793760887262404731

`A066182(A185870(n+1))`
-/

namespace A185869.P5793760887262404731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066182 (A185870 (n + 1)).toNat

end

end A185869.P5793760887262404731

namespace A185869

/-- `A066182(A185870(n+1))` -/
def P5793760887262404731.Spec : Prop :=
  ∀ n, P5793760887262404731.a n = A185869 (n + 1)

end A185869

/-! ## A185869.P4651457222033321881

`lt[1, A019426(A080099(n))]`
-/

namespace A185869.P4651457222033321881
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019426 (A080099 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A185869.P4651457222033321881

namespace A185869

/-- `lt[1, A019426(A080099(n))]` -/
def P4651457222033321881.Spec : Prop :=
  ∀ n, (P4651457222033321881.a n : ℤ) = A185869 (n + 1)

end A185869

/-! ## A185869.P17170843978316358423

`A066182(∑[A198954(n)+2])`
-/

namespace A185869.P17170843978316358423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198954 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066182 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A185869.P17170843978316358423

namespace A185869

/-- `A066182(∑[A198954(n)+2])` -/
def P17170843978316358423.Spec : Prop :=
  ∀ n, P17170843978316358423.a n = A185869 (n + 1)

end A185869

/-! ## A185869.P17464128334665330699

`A007607(Δ[n²])`
-/

namespace A185869.P17464128334665330699
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007607 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A185869.P17464128334665330699

namespace A185869

/-- `A007607(Δ[n²])` -/
def P17464128334665330699.Spec : Prop :=
  ∀ n, P17464128334665330699.a n = A185869 (n + 1)

end A185869

/-! ## A185869.P13879201921227153724

`A162917(2*(n+1))`
-/

namespace A185869.P13879201921227153724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162917 (2 * (n + 1))

end

end A185869.P13879201921227153724

namespace A185869

/-- `A162917(2*(n+1))` -/
def P13879201921227153724.Spec : Prop :=
  ∀ n, P13879201921227153724.a n = A185869 (n + 1)

end A185869

/-! ## A185869.P9541432803306582441

`gcd(2, A000040(n+2))*A007607(2*n+1)`
-/

namespace A185869.P9541432803306582441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 2 (A000040 (n + 2)) : ℤ) * A007607 (2 * n + 1)

end

end A185869.P9541432803306582441

namespace A185869

/-- `gcd(2, A000040(n+2))*A007607(2*n+1)` -/
def P9541432803306582441.Spec : Prop :=
  ∀ n, P9541432803306582441.a n = A185869 (n + 1)

end A185869

/-! ## A185869.P9326605247882081416

`A014132(A185868(n+1))`
-/

namespace A185869.P9326605247882081416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014132 (A185868 (n + 1)).toNat

end

end A185869.P9326605247882081416

namespace A185869

/-- `A014132(A185868(n+1))` -/
def P9326605247882081416.Spec : Prop :=
  ∀ n, P9326605247882081416.a n = A185869 (n + 1)

end A185869

/-! ## A185869.P5975499965493145609

`A116942(4*n+3)`
-/

namespace A185869.P5975499965493145609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116942 (4 * n + 3)

end

end A185869.P5975499965493145609

namespace A185869

/-- `A116942(4*n+3)` -/
def P5975499965493145609.Spec : Prop :=
  ∀ n, P5975499965493145609.a n = A185869 (n + 1)

end A185869

/-! ## A185869.P4061378700796489913

`eq[2, A274912(n)]`
-/

namespace A185869.P4061378700796489913
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274912 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A185869.P4061378700796489913

namespace A185869

/-- `eq[2, A274912(n)]` -/
def P4061378700796489913.Spec : Prop :=
  ∀ n, (P4061378700796489913.a n : ℤ) = A185869 (n + 1)

end A185869

/-! ## A185869.P18329395881435492308

`eq[3, A274913(n+1)]`
-/

namespace A185869.P18329395881435492308
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274913 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A185869.P18329395881435492308

namespace A185869

/-- `eq[3, A274913(n+1)]` -/
def P18329395881435492308.Spec : Prop :=
  ∀ n, (P18329395881435492308.a n : ℤ) = A185869 (n + 1)

end A185869

/-! ## A185869.P1780754499107465863

`eq[2, A054238(n)%4]`
-/

namespace A185869.P1780754499107465863
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A054238 n) 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A185869.P1780754499107465863

namespace A185869

/-- `eq[2, A054238(n)%4]` -/
def P1780754499107465863.Spec : Prop :=
  ∀ n, (P1780754499107465863.a n : ℤ) = A185869 (n + 1)

end A185869

/-! ## A185869.P7876647527639658841

`eq[n+1, A373498(n+1)]`
-/

namespace A185869.P7876647527639658841
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373498 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A185869.P7876647527639658841

namespace A185869

/-- `eq[n+1, A373498(n+1)]` -/
def P7876647527639658841.Spec : Prop :=
  ∀ n, (P7876647527639658841.a n : ℤ) = A185869 (n + 1)

end A185869

/-! ## A185869.P8084420869335869775

`eq[n+1, A374447(n+1)]`
-/

namespace A185869.P8084420869335869775
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374447 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A185869.P8084420869335869775

namespace A185869

/-- `eq[n+1, A374447(n+1)]` -/
def P8084420869335869775.Spec : Prop :=
  ∀ n, (P8084420869335869775.a n : ℤ) = A185869 (n + 1)

end A185869

/-! ## A185869.P3516843944268621361

`A064578(A341706(n+1))`
-/

namespace A185869.P3516843944268621361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064578 (A341706 (n + 1)).toNat

end

end A185869.P3516843944268621361

namespace A185869

/-- `A064578(A341706(n+1))` -/
def P3516843944268621361.Spec : Prop :=
  ∀ n, P3516843944268621361.a n = A185869 (n + 1)

end A185869

/-!
# A185870: (Even,odd)-polka dot array in the natural number array A000027, by antidiagonals.

The programs for A185870, the canonical program `A185870.P13540371757050284022` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A185870 has offset 1).

The definition of A185870 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A185870.P991678446619188888

`∑[Δ[round(sqrt(2*n))²]+2]`
-/

namespace A185870.P991678446619188888
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (2 * n : ℝ)) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A185870.P991678446619188888

namespace A185870

/-- `∑[Δ[round(sqrt(2*n))²]+2]` -/
def P991678446619188888.Spec : Prop :=
  ∀ n, P991678446619188888.a n = A185870 (n + 1)

end A185870

/-! ## A185870.P13259109662415538355

`record[n^(n%2)]+∑[char[∑[n]]]²+1`
-/

namespace A185870.P13259109662415538355
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ (n % 2)

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + ((∑ j ∈ Finset.range (n + 1), f2 j) ^ 2 + 1)

end

end A185870.P13259109662415538355

namespace A185870

/-- `record[n^(n%2)]+∑[char[∑[n]]]²+1` -/
def P13259109662415538355.Spec : Prop :=
  ∀ n, (P13259109662415538355.a n : ℤ) = A185870 (n + 1)

end A185870

/-! ## A185870.P13540371757050284022

`A185869(n+1)+1`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A185870

/-- `A185869(n+1)+1` -/
def P13540371757050284022.Spec : Prop :=
  ∀ n, P13540371757050284022.a n = A185870 (n + 1)

theorem P13540371757050284022.correct : P13540371757050284022.Spec := by
  intro n
  simp only [A185870, Nat.add_sub_cancel]

end A185870

/-! ## A185870.P15224545888963472854

`A061579(n)+3*(n+1)`
-/

namespace A185870.P15224545888963472854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061579 n + (3 * (n + 1) : ℤ)

end

end A185870.P15224545888963472854

namespace A185870

/-- `A061579(n)+3*(n+1)` -/
def P15224545888963472854.Spec : Prop :=
  ∀ n, P15224545888963472854.a n = A185870 (n + 1)

end A185870

/-! ## A185870.P12553419327118959779

`A265129(n+1)+Δ[n²]`
-/

namespace A185870.P12553419327118959779
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265129 (n + 1) + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A185870.P12553419327118959779

namespace A185870

/-- `A265129(n+1)+Δ[n²]` -/
def P12553419327118959779.Spec : Prop :=
  ∀ n, P12553419327118959779.a n = A185870 (n + 1)

end A185870

/-! ## A185870.P1741420611948619333

`∑[A198954(n)]+2*(n+1)`
-/

namespace A185870.P1741420611948619333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198954 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (2 * (n + 1) : ℤ)

end

end A185870.P1741420611948619333

namespace A185870

/-- `∑[A198954(n)]+2*(n+1)` -/
def P1741420611948619333.Spec : Prop :=
  ∀ n, P1741420611948619333.a n = A185870 (n + 1)

end A185870

/-! ## A185870.P6744365826470551302

`A093995(n+1)+2*(n+1)`
-/

namespace A185870.P6744365826470551302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093995 (n + 1) + (2 * (n + 1) : ℤ)

end

end A185870.P6744365826470551302

namespace A185870

/-- `A093995(n+1)+2*(n+1)` -/
def P6744365826470551302.Spec : Prop :=
  ∀ n, P6744365826470551302.a n = A185870 (n + 1)

end A185870

/-! ## A185870.P3292926680612176202

`A016789(n)+∑[char[∑[n]]]²-n`
-/

namespace A185870.P3292926680612176202
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016789 n + ((((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) - (n : ℤ))

end

end A185870.P3292926680612176202

namespace A185870

/-- `A016789(n)+∑[char[∑[n]]]²-n` -/
def P3292926680612176202.Spec : Prop :=
  ∀ n, P3292926680612176202.a n = A185870 (n + 1)

end A185870

/-! ## A185870.P2274754174300152275

`A002024(n+1)²+2*(n+1)`
-/

namespace A185870.P2274754174300152275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (n + 1) ^ 2 + (2 * (n + 1) : ℤ)

end

end A185870.P2274754174300152275

namespace A185870

/-- `A002024(n+1)²+2*(n+1)` -/
def P2274754174300152275.Spec : Prop :=
  ∀ n, P2274754174300152275.a n = A185870 (n + 1)

end A185870

/-! ## A185870.P2382567543472271062

`2*(n+1)+A038722(n+1)+n`
-/

namespace A185870.P2382567543472271062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) + (A038722 (n + 1) + (n : ℤ))

end

end A185870.P2382567543472271062

namespace A185870

/-- `2*(n+1)+A038722(n+1)+n` -/
def P2382567543472271062.Spec : Prop :=
  ∀ n, P2382567543472271062.a n = A185870 (n + 1)

end A185870

/-! ## A185870.P854229951453093746

`A114327(n)+A004767(n)`
-/

namespace A185870.P854229951453093746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114327 n + A004767 n

end

end A185870.P854229951453093746

namespace A185870

/-- `A114327(n)+A004767(n)` -/
def P854229951453093746.Spec : Prop :=
  ∀ n, P854229951453093746.a n = A185870 (n + 1)

end A185870

/-! ## A185870.P12638877083066289711

`A038722(n+1)+A016789(n)`
-/

namespace A185870.P12638877083066289711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038722 (n + 1) + A016789 n

end

end A185870.P12638877083066289711

namespace A185870

/-- `A038722(n+1)+A016789(n)` -/
def P12638877083066289711.Spec : Prop :=
  ∀ n, P12638877083066289711.a n = A185870 (n + 1)

end A185870

/-! ## A185870.P6064705240224696982

`A063657(n+1)+A063656(n)`
-/

namespace A185870.P6064705240224696982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063657 (n + 1) + A063656 n

end

end A185870.P6064705240224696982

namespace A185870

/-- `A063657(n+1)+A063656(n)` -/
def P6064705240224696982.Spec : Prop :=
  ∀ n, P6064705240224696982.a n = A185870 (n + 1)

end A185870

/-! ## A185870.P17171630097174573872

`A016825(n)+A114327(n)+1`
-/

namespace A185870.P17171630097174573872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016825 n + (A114327 n + 1)

end

end A185870.P17171630097174573872

namespace A185870

/-- `A016825(n)+A114327(n)+1` -/
def P17171630097174573872.Spec : Prop :=
  ∀ n, P17171630097174573872.a n = A185870 (n + 1)

end A185870

/-! ## A185870.P11656090679580074725

`A016777(n)+A061579(n)+2`
-/

namespace A185870.P11656090679580074725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 n + (A061579 n + 2)

end

end A185870.P11656090679580074725

namespace A185870

/-- `A016777(n)+A061579(n)+2` -/
def P11656090679580074725.Spec : Prop :=
  ∀ n, P11656090679580074725.a n = A185870 (n + 1)

end A185870

/-! ## A185870.P11196938971440052826

`A016813(n)+A114327(n)+2`
-/

namespace A185870.P11196938971440052826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 n + (A114327 n + 2)

end

end A185870.P11196938971440052826

namespace A185870

/-- `A016813(n)+A114327(n)+2` -/
def P11196938971440052826.Spec : Prop :=
  ∀ n, P11196938971440052826.a n = A185870 (n + 1)

end A185870

/-! ## A185870.P7251163908914176311

`A004202(n+1)+A004201(n+1)`
-/

namespace A185870.P7251163908914176311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004202 (n + 1) + A004201 (n + 1)

end

end A185870.P7251163908914176311

namespace A185870

/-- `A004202(n+1)+A004201(n+1)` -/
def P7251163908914176311.Spec : Prop :=
  ∀ n, P7251163908914176311.a n = A185870 (n + 1)

end A185870

/-! ## A185870.P4386012003981513414

`A185868(n+1)+A111650(n+1)`
-/

namespace A185870.P4386012003981513414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185868 (n + 1) + A111650 (n + 1)

end

end A185870.P4386012003981513414

namespace A185870

/-- `A185868(n+1)+A111650(n+1)` -/
def P4386012003981513414.Spec : Prop :=
  ∀ n, P4386012003981513414.a n = A185870 (n + 1)

end A185870

/-!
# A185871: (Even,even)-polka dot array in the natural number array A000027, by antidiagonals.

The programs for A185871, the canonical program `A185871.P8543721373781251179` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A185871 has offset 1).

The definition of A185871 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A185871.P4069890977655197182

`Δ[n²]+(n-comp[∑[n]])²`
-/

namespace A185871.P4069890977655197182
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) + ((n : ℤ) - (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n : ℤ)) ^ 2

end

end A185871.P4069890977655197182

namespace A185871

/-- `Δ[n²]+(n-comp[∑[n]])²` -/
def P4069890977655197182.Spec : Prop :=
  ∀ n, P4069890977655197182.a n = A185871 (n + 1)

end A185871

/-! ## A185871.P17451180988210726886

`A000027(2*n+1+(n-comp[∑[n]])²)`
-/

namespace A185871.P17451180988210726886
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 ((2 * n + 1 : ℤ) + ((n : ℤ) - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ)) ^ 2).toNat

end

end A185871.P17451180988210726886

namespace A185871

/-- `A000027(2*n+1+(n-comp[∑[n]])²)` -/
def P17451180988210726886.Spec : Prop :=
  ∀ n, P17451180988210726886.a n = A185871 (n + 1)

end A185871

/-! ## A185871.P8543721373781251179

`∑[A198954(A066182(n+1))+2]`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A185871

/-- `∑[A198954(A066182(n+1))+2]` -/
def P8543721373781251179.Spec : Prop :=
  ∀ n, P8543721373781251179.a n = A185871 (n + 1)

theorem P8543721373781251179.correct : P8543721373781251179.Spec := by
  intro n
  simp only [A185871, Nat.add_sub_cancel]

end A185871

/-! ## A185871.P1063715754389216615

`A007606(comp[∑[n]]+n+1)`
-/

namespace A185871.P1063715754389216615
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007606 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + n + 1)

end

end A185871.P1063715754389216615

namespace A185871

/-- `A007606(comp[∑[n]]+n+1)` -/
def P1063715754389216615.Spec : Prop :=
  ∀ n, P1063715754389216615.a n = A185871 (n + 1)

end A185871

/-! ## A185871.P17851405058457443372

`A161983(A000037(2*(n+1)))`
-/

namespace A185871.P17851405058457443372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161983 (A000037 (2 * (n + 1))).toNat

end

end A185871.P17851405058457443372

namespace A185871

/-- `A161983(A000037(2*(n+1)))` -/
def P17851405058457443372.Spec : Prop :=
  ∀ n, P17851405058457443372.a n = A185871 (n + 1)

end A185871

/-! ## A185871.P15113210467244289750

`A014132(A185870(n+1))`
-/

namespace A185871.P15113210467244289750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014132 (A185870 (n + 1)).toNat

end

end A185871.P15113210467244289750

namespace A185871

/-- `A014132(A185870(n+1))` -/
def P15113210467244289750.Spec : Prop :=
  ∀ n, P15113210467244289750.a n = A185871 (n + 1)

end A185871

/-! ## A185871.P6285432010437884000

`A080036(A185869(n+1))`
-/

namespace A185871.P6285432010437884000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080036 (A185869 (n + 1)).toNat

end

end A185871.P6285432010437884000

namespace A185871

/-- `A080036(A185869(n+1))` -/
def P6285432010437884000.Spec : Prop :=
  ∀ n, P6285432010437884000.a n = A185871 (n + 1)

end A185871

/-! ## A185871.P4891019756659679765

`A014132(A185869(n+1)+1)`
-/

namespace A185871.P4891019756659679765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014132 (A185869 (n + 1) + 1).toNat

end

end A185871.P4891019756659679765

namespace A185871

/-- `A014132(A185869(n+1)+1)` -/
def P4891019756659679765.Spec : Prop :=
  ∀ n, P4891019756659679765.a n = A185871 (n + 1)

end A185871

/-! ## A185871.P15068009023398677378

`A211394(A185870(n+1)-1)`
-/

namespace A185871.P15068009023398677378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211394 (A185870 (n + 1) - 1).toNat

end

end A185871.P15068009023398677378

namespace A185871

/-- `A211394(A185870(n+1)-1)` -/
def P15068009023398677378.Spec : Prop :=
  ∀ n, P15068009023398677378.a n = A185871 (n + 1)

end A185871

/-! ## A185871.P17811272145020046731

`A221216(A185870(n+1)-1)`
-/

namespace A185871.P17811272145020046731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221216 (A185870 (n + 1) - 1).toNat

end

end A185871.P17811272145020046731

namespace A185871

/-- `A221216(A185870(n+1)-1)` -/
def P17811272145020046731.Spec : Prop :=
  ∀ n, P17811272145020046731.a n = A185871 (n + 1)

end A185871

/-! ## A185871.P2409260307380158156

`A014132(A007607(2*(n+1)))`
-/

namespace A185871.P2409260307380158156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014132 (A007607 (2 * (n + 1))).toNat

end

end A185871.P2409260307380158156

namespace A185871

/-- `A014132(A007607(2*(n+1)))` -/
def P2409260307380158156.Spec : Prop :=
  ∀ n, P2409260307380158156.a n = A185871 (n + 1)

end A185871

/-! ## A185871.P12603357633277608782

`A221216(A007607(2*n+1))`
-/

namespace A185871.P12603357633277608782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221216 (A007607 (2 * n + 1)).toNat

end

end A185871.P12603357633277608782

namespace A185871

/-- `A221216(A007607(2*n+1))` -/
def P12603357633277608782.Spec : Prop :=
  ∀ n, P12603357633277608782.a n = A185871 (n + 1)

end A185871

/-! ## A185871.P15367854011041016285

`record[A211394(n+2)-A025581(n)]`
-/

namespace A185871.P15367854011041016285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211394 (n + 2) - A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A185871.P15367854011041016285

namespace A185871

/-- `record[A211394(n+2)-A025581(n)]` -/
def P15367854011041016285.Spec : Prop :=
  ∀ n, P15367854011041016285.a n = A185871 (n + 1)

end A185871

/-! ## A185871.P11605506873304617136

`A221216(A185869(2*n+1-n))`
-/

namespace A185871.P11605506873304617136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221216 (A185869 (2 * n + 1 - n)).toNat

end

end A185871.P11605506873304617136

namespace A185871

/-- `A221216(A185869(2*n+1-n))` -/
def P11605506873304617136.Spec : Prop :=
  ∀ n, P11605506873304617136.a n = A185871 (n + 1)

end A185871

/-! ## A185871.P15663865780106903231

`A014132(A063657(n+1)+A063656(n))`
-/

namespace A185871.P15663865780106903231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014132 (A063657 (n + 1) + A063656 n).toNat

end

end A185871.P15663865780106903231

namespace A185871

/-- `A014132(A063657(n+1)+A063656(n))` -/
def P15663865780106903231.Spec : Prop :=
  ∀ n, P15663865780106903231.a n = A185871 (n + 1)

end A185871

/-! ## A185871.P2387199936201969724

`A014132(A004202(n+1)+A004201(n+1))`
-/

namespace A185871.P2387199936201969724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014132 (A004202 (n + 1) + A004201 (n + 1)).toNat

end

end A185871.P2387199936201969724

namespace A185871

/-- `A014132(A004202(n+1)+A004201(n+1))` -/
def P2387199936201969724.Spec : Prop :=
  ∀ n, P2387199936201969724.a n = A185871 (n + 1)

end A185871

/-! ## A185871.P3596377992370985858

`A211394(lt[A213205(n+1), A213171(n+1)])`
-/

namespace A185871.P3596377992370985858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213205 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213171 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211394 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A185871.P3596377992370985858

namespace A185871

/-- `A211394(lt[A213205(n+1), A213171(n+1)])` -/
def P3596377992370985858.Spec : Prop :=
  ∀ n, P3596377992370985858.a n = A185871 (n + 1)

end A185871

/-! ## A185871.P14290232519212066788

`A211394(lt[A216249(n+1), A211377(n+1)])`
-/

namespace A185871.P14290232519212066788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216249 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211377 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211394 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A185871.P14290232519212066788

namespace A185871

/-- `A211394(lt[A216249(n+1), A211377(n+1)])` -/
def P14290232519212066788.Spec : Prop :=
  ∀ n, P14290232519212066788.a n = A185871 (n + 1)

end A185871

/-! ## A185871.P11804624536490986818

`filter[A007606(n+1), A204175(#)]`
-/

namespace A185871.P11804624536490986818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007606 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A204175 (f1 j).toNat = 1) n)

end

end A185871.P11804624536490986818

namespace A185871

/-- `filter[A007606(n+1), A204175(#)]` -/
def P11804624536490986818.Spec : Prop :=
  ∀ n, P11804624536490986818.a n = A185871 (n + 1)

end A185871

/-! ## A185871.P3376394909973669870

`eq[A010816(n), A133300(n+1)]`
-/

namespace A185871.P3376394909973669870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010816 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133300 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A185871.P3376394909973669870

namespace A185871

/-- `eq[A010816(n), A133300(n+1)]` -/
def P3376394909973669870.Spec : Prop :=
  ∀ n, (P3376394909973669870.a n : ℤ) = A185871 (n + 1)

end A185871

/-!
# A185874: Second accumulation array of A051340, by antidiagonals.

The programs for A185874, the canonical program `A185874.P1314293558067631427` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A185874 has offset 1).

The definition of A185874 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A185874.P15047999748304877661

`A004736(n+1)/2*A193975(n)`
-/

namespace A185874.P15047999748304877661
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004736 (n + 1) : ℚ) / 2 * (A193975 n : ℚ)

end

end A185874.P15047999748304877661

namespace A185874

/-- `A004736(n+1)/2*A193975(n)` -/
def P15047999748304877661.Spec : Prop :=
  ∀ n, P15047999748304877661.a n = (A185874 (n + 1) : ℚ)

end A185874

/-! ## A185874.P14762993598551304341

`A212012(n+1)/4*A193975(n)`
-/

namespace A185874.P14762993598551304341
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A212012 (n + 1) : ℚ) / 4 * (A193975 n : ℚ)

end

end A185874.P14762993598551304341

namespace A185874

/-- `A212012(n+1)/4*A193975(n)` -/
def P14762993598551304341.Spec : Prop :=
  ∀ n, P14762993598551304341.a n = (A185874 (n + 1) : ℚ)

end A185874

/-! ## A185874.P1314293558067631427

`A082652(A014132(n+1))%(n+2)²/2*val(A043569(n+1), 2)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A185874

/-- `A082652(A014132(n+1))%(n+2)²/2*val(A043569(n+1), 2)` -/
def P1314293558067631427.Spec : Prop :=
  ∀ n, P1314293558067631427.a n = (A185874 (n + 1) : ℚ)

end A185874

/-! ## A185874.P16237327714605149089

`A014682(A004736(n+1)*A193975(n))`
-/

namespace A185874.P16237327714605149089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A004736 (n + 1) * A193975 n).toNat

end

end A185874.P16237327714605149089

namespace A185874

/-- `A014682(A004736(n+1)*A193975(n))` -/
def P16237327714605149089.Spec : Prop :=
  ∀ n, P16237327714605149089.a n = A185874 (n + 1)

end A185874

/-! ## A185874.P3922970759637087272

`A001281(A004736(n+1)*A193975(n))`
-/

namespace A185874.P3922970759637087272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A004736 (n + 1) * A193975 n).toNat

end

end A185874.P3922970759637087272

namespace A185874

/-- `A001281(A004736(n+1)*A193975(n))` -/
def P3922970759637087272.Spec : Prop :=
  ∀ n, P3922970759637087272.a n = A185874 (n + 1)

end A185874

/-! ## A185874.P15395199431403869164

`A004525(A004736(n+1)*A193975(n))`
-/

namespace A185874.P15395199431403869164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A004736 (n + 1) * A193975 n).toNat

end

end A185874.P15395199431403869164

namespace A185874

/-- `A004525(A004736(n+1)*A193975(n))` -/
def P15395199431403869164.Spec : Prop :=
  ∀ n, P15395199431403869164.a n = A185874 (n + 1)

end A185874

/-! ## A185874.P1546810823616387290

`A004526(A004736(n+1)*A193975(n))`
-/

namespace A185874.P1546810823616387290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A004736 (n + 1) * A193975 n).toNat

end

end A185874.P1546810823616387290

namespace A185874

/-- `A004526(A004736(n+1)*A193975(n))` -/
def P1546810823616387290.Spec : Prop :=
  ∀ n, P1546810823616387290.a n = A185874 (n + 1)

end A185874

/-! ## A185874.P11884564301892240262

`A006370(A004736(n+1)*A193975(n))`
-/

namespace A185874.P11884564301892240262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 (A004736 (n + 1) * A193975 n).toNat

end

end A185874.P11884564301892240262

namespace A185874

/-- `A006370(A004736(n+1)*A193975(n))` -/
def P11884564301892240262.Spec : Prop :=
  ∀ n, P11884564301892240262.a n = A185874 (n + 1)

end A185874

/-! ## A185874.P8538418905712297160

`A025480(A004736(n+1)*A193975(n))`
-/

namespace A185874.P8538418905712297160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A004736 (n + 1) * A193975 n).toNat

end

end A185874.P8538418905712297160

namespace A185874

/-- `A025480(A004736(n+1)*A193975(n))` -/
def P8538418905712297160.Spec : Prop :=
  ∀ n, P8538418905712297160.a n = A185874 (n + 1)

end A185874

/-! ## A185874.P15198906213027157732

`∑{d}[A036561(n), A332809(#)]`
-/

namespace A185874.P15198906213027157732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036561 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A332809 d

end

end A185874.P15198906213027157732

namespace A185874

/-- `∑{d}[A036561(n), A332809(#)]` -/
def P15198906213027157732.Spec : Prop :=
  ∀ n, P15198906213027157732.a n = A185874 (n + 1)

end A185874

/-!
# A185877: Array T given by T(n,k) = k^2 +(2*n-3)*k -2*n +3, by antidiagonals.

The programs for A185877, the canonical program `A185877.P15326369741140922360` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A185877 has offset 1).

The definition of A185877 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(row(n)-col(n)+1)²+(2*(col(n)+1)-3)*(row(n)-col(n))` (program `A185877.P15326369741140922360`, by `A185877.P15326369741140922360.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A185877.P15326369741140922360

`(row(n)-col(n)+1)²+(2*(col(n)+1)-3)*(row(n)-col(n))`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A185877

/-- `(row(n)-col(n)+1)²+(2*(col(n)+1)-3)*(row(n)-col(n))` -/
def P15326369741140922360.Spec : Prop :=
  ∀ n, P15326369741140922360.a n = A185877 (n + 1)

theorem P15326369741140922360.correct : P15326369741140922360.Spec := by
  intro n
  simp only [A185877, Nat.add_sub_cancel]

end A185877

/-! ## A185877.P1815189629542741288

`1+(row(n)-col(n))*(2*col(n)+1+row(n)-col(n))`
-/

namespace A185877.P1815189629542741288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ)) * ((2 * SequenceMachineLib.triCol n + 1 : ℤ) + ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ)))

end

end A185877.P1815189629542741288

namespace A185877

/-- `1+(row(n)-col(n))*(2*col(n)+1+row(n)-col(n))` -/
def P1815189629542741288.Spec : Prop :=
  ∀ n, P1815189629542741288.a n = A185877 (n + 1)

theorem P1815189629542741288.correct : P1815189629542741288.Spec := by
  intro n
  simp only [A185877, Nat.add_sub_cancel, A185877.P1815189629542741288.a, A185877.P15326369741140922360.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A185877

/-! ## A185877.P3178648728310049988

`2*A049780(n)+1`
-/

namespace A185877.P3178648728310049988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A049780 n + 1

end

end A185877.P3178648728310049988

namespace A185877

/-- `2*A049780(n)+1` -/
def P3178648728310049988.Spec : Prop :=
  ∀ n, P3178648728310049988.a n = A185877 (n + 1)

end A185877

/-! ## A185877.P16811604441936403688

`2*A343752(n+1)%(n+1)+1`
-/

namespace A185877.P16811604441936403688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * Int.tmod (A343752 (n + 1)) (n + 1 : ℤ) + 1

end

end A185877.P16811604441936403688

namespace A185877

/-- `2*A343752(n+1)%(n+1)+1` -/
def P16811604441936403688.Spec : Prop :=
  ∀ n, P16811604441936403688.a n = A185877 (n + 1)

end A185877

/-! ## A185877.P2045446991613486365

`A005843(A049780(n))+1`
-/

namespace A185877.P2045446991613486365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A049780 n).toNat + 1

end

end A185877.P2045446991613486365

namespace A185877

/-- `A005843(A049780(n))+1` -/
def P2045446991613486365.Spec : Prop :=
  ∀ n, P2045446991613486365.a n = A185877 (n + 1)

end A185877

/-! ## A185877.P2120488006576411409

`A060747(A049780(n)+1)`
-/

namespace A185877.P2120488006576411409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060747 (A049780 n + 1).toNat

end

end A185877.P2120488006576411409

namespace A185877

/-- `A060747(A049780(n)+1)` -/
def P2120488006576411409.Spec : Prop :=
  ∀ n, P2120488006576411409.a n = A185877 (n + 1)

end A185877

/-! ## A185877.P3847918414965794491

`A095834(n+1)+A077028(n)`
-/

namespace A185877.P3847918414965794491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095834 (n + 1) + A077028 n

end

end A185877.P3847918414965794491

namespace A185877

/-- `A095834(n+1)+A077028(n)` -/
def P3847918414965794491.Spec : Prop :=
  ∀ n, P3847918414965794491.a n = A185877 (n + 1)

theorem P3847918414965794491.correct : P3847918414965794491.Spec := by
  intro n
  simp only [A185877, Nat.add_sub_cancel, A185877.P3847918414965794491.a, A185877.P15326369741140922360.a, A077028, A077028.P18404356772921913843.a, A095834, A095834.P817103610530576889.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A185877

/-! ## A185877.P69691538522783258

`A323956(n+1)+A004247(n)`
-/

namespace A185877.P69691538522783258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323956 (n + 1) + A004247 n

end

end A185877.P69691538522783258

namespace A185877

/-- `A323956(n+1)+A004247(n)` -/
def P69691538522783258.Spec : Prop :=
  ∀ n, P69691538522783258.a n = A185877 (n + 1)

theorem P69691538522783258.correct : P69691538522783258.Spec := by
  intro n
  simp only [A185877, Nat.add_sub_cancel, A185877.P69691538522783258.a, A185877.P15326369741140922360.a, A004247, A004247.P2751605162508615148.a, A323956, A323956.P11197926771404492179.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A185877

/-! ## A185877.P18446296576060652916

`A335821(n)+A004736(n+1)`
-/

namespace A185877.P18446296576060652916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335821 n + A004736 (n + 1)

end

end A185877.P18446296576060652916

namespace A185877

/-- `A335821(n)+A004736(n+1)` -/
def P18446296576060652916.Spec : Prop :=
  ∀ n, P18446296576060652916.a n = A185877 (n + 1)

end A185877

/-! ## A185877.P1634495323149144661

`A025581(n)+A335821(n)+1`
-/

namespace A185877.P1634495323149144661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n + (A335821 n + 1)

end

end A185877.P1634495323149144661

namespace A185877

/-- `A025581(n)+A335821(n)+1` -/
def P1634495323149144661.Spec : Prop :=
  ∀ n, P1634495323149144661.a n = A185877 (n + 1)

theorem P1634495323149144661.correct : P1634495323149144661.Spec := by
  intro n
  simp only [A185877, Nat.add_sub_cancel, A185877.P1634495323149144661.a, A185877.P15326369741140922360.a, A025581, A025581.P16112744757063613497.a, A335821, A335821.P109563387027522563.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A185877

/-! ## A185877.P13465317068245887907

`A094728(n+1)-A051162(n)`
-/

namespace A185877.P13465317068245887907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094728 (n + 1) - A051162 n

end

end A185877.P13465317068245887907

namespace A185877

/-- `A094728(n+1)-A051162(n)` -/
def P13465317068245887907.Spec : Prop :=
  ∀ n, P13465317068245887907.a n = A185877 (n + 1)

theorem P13465317068245887907.correct : P13465317068245887907.Spec := by
  intro n
  simp only [A185877, Nat.add_sub_cancel, A185877.P13465317068245887907.a, A185877.P15326369741140922360.a, A051162, A051162.P4484969187050632534.a, A094728, A094728.P15119429803493593113.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A185877

/-! ## A185877.P13042416434017809187

`2*n-A014209(A002262(n))`
-/

namespace A185877.P13042416434017809187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - A014209 (A002262 n).toNat

end

end A185877.P13042416434017809187

namespace A185877

/-- `2*n-A014209(A002262(n))` -/
def P13042416434017809187.Spec : Prop :=
  ∀ n, P13042416434017809187.a n = A185877 (n + 1)

end A185877

/-! ## A185877.P10651592526518044761

`A095834(n+1)+A004247(n)+1`
-/

namespace A185877.P10651592526518044761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095834 (n + 1) + (A004247 n + 1)

end

end A185877.P10651592526518044761

namespace A185877

/-- `A095834(n+1)+A004247(n)+1` -/
def P10651592526518044761.Spec : Prop :=
  ∀ n, P10651592526518044761.a n = A185877 (n + 1)

theorem P10651592526518044761.correct : P10651592526518044761.Spec := by
  intro n
  simp only [A185877, Nat.add_sub_cancel, A185877.P10651592526518044761.a, A185877.P15326369741140922360.a, A004247, A004247.P2751605162508615148.a, A095834, A095834.P817103610530576889.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A185877

/-! ## A185877.P10386228082714515641

`A130154(n+1)+A095832(n+1)`
-/

namespace A185877.P10386228082714515641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130154 (n + 1) + A095832 (n + 1)

end

end A185877.P10386228082714515641

namespace A185877

/-- `A130154(n+1)+A095832(n+1)` -/
def P10386228082714515641.Spec : Prop :=
  ∀ n, P10386228082714515641.a n = A185877 (n + 1)

theorem P10386228082714515641.correct : P10386228082714515641.Spec := by
  intro n
  simp only [A185877, Nat.add_sub_cancel, A185877.P10386228082714515641.a, A185877.P15326369741140922360.a, A095832, A095832.P7706533872419013118.a, A130154, A130154.P10522574722174175207.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A185877

/-! ## A185877.P2337271084860258407

`A323956(n+1)+A077028(n)-1`
-/

namespace A185877.P2337271084860258407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323956 (n + 1) + (A077028 n - 1)

end

end A185877.P2337271084860258407

namespace A185877

/-- `A323956(n+1)+A077028(n)-1` -/
def P2337271084860258407.Spec : Prop :=
  ∀ n, P2337271084860258407.a n = A185877 (n + 1)

theorem P2337271084860258407.correct : P2337271084860258407.Spec := by
  intro n
  simp only [A185877, Nat.add_sub_cancel, A185877.P2337271084860258407.a, A185877.P15326369741140922360.a, A077028, A077028.P18404356772921913843.a, A323956, A323956.P11197926771404492179.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A185877

/-! ## A185877.P1813597561927129966

`A265129(n+1)-A185910(n+1)`
-/

namespace A185877.P1813597561927129966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265129 (n + 1) - A185910 (n + 1)

end

end A185877.P1813597561927129966

namespace A185877

/-- `A265129(n+1)-A185910(n+1)` -/
def P1813597561927129966.Spec : Prop :=
  ∀ n, P1813597561927129966.a n = A185877 (n + 1)

theorem P1813597561927129966.correct : P1813597561927129966.Spec := by
  intro n
  simp only [A185877, Nat.add_sub_cancel, A185877.P1813597561927129966.a, A185877.P15326369741140922360.a, A185910, A185910.P7848250070020019282.a, A265129, A265129.P7087328658635035247.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A185877

/-! ## A185877.P1829903671979943762

`A025581(n)*A094727(n+1)+1`
-/

namespace A185877.P1829903671979943762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n * A094727 (n + 1) + 1

end

end A185877.P1829903671979943762

namespace A185877

/-- `A025581(n)*A094727(n+1)+1` -/
def P1829903671979943762.Spec : Prop :=
  ∀ n, P1829903671979943762.a n = A185877 (n + 1)

theorem P1829903671979943762.correct : P1829903671979943762.Spec := by
  intro n
  simp only [A185877, Nat.add_sub_cancel, A185877.P1829903671979943762.a, A185877.P15326369741140922360.a, A025581, A025581.P16112744757063613497.a, A094727, A094727.P1041695477673985807.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A185877

/-! ## A185877.P14384078893527506286

`A061885(n)+2-A002260(n+1)²`
-/

namespace A185877.P14384078893527506286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061885 n + (2 - A002260 (n + 1) ^ 2)

end

end A185877.P14384078893527506286

namespace A185877

/-- `A061885(n)+2-A002260(n+1)²` -/
def P14384078893527506286.Spec : Prop :=
  ∀ n, P14384078893527506286.a n = A185877 (n + 1)

end A185877

/-! ## A185877.P17773719118010091447

`A094728(n+1)+1-A094727(n+1)`
-/

namespace A185877.P17773719118010091447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094728 (n + 1) + (1 - A094727 (n + 1))

end

end A185877.P17773719118010091447

namespace A185877

/-- `A094728(n+1)+1-A094727(n+1)` -/
def P17773719118010091447.Spec : Prop :=
  ∀ n, P17773719118010091447.a n = A185877 (n + 1)

theorem P17773719118010091447.correct : P17773719118010091447.Spec := by
  intro n
  simp only [A185877, Nat.add_sub_cancel, A185877.P17773719118010091447.a, A185877.P15326369741140922360.a, A094727, A094727.P1041695477673985807.a, A094728, A094728.P15119429803493593113.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A185877

/-! ## A185877.P12294068460580258181

`2*(n-A000217(A002262(n)+1))+3`
-/

namespace A185877.P12294068460580258181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n : ℤ) - A000217 (A002262 n + 1).toNat) + 3

end

end A185877.P12294068460580258181

namespace A185877

/-- `2*(n-A000217(A002262(n)+1))+3` -/
def P12294068460580258181.Spec : Prop :=
  ∀ n, P12294068460580258181.a n = A185877 (n + 1)

end A185877

/-!
# A185878: Accumulation array of A185877, by antidiagonals.

The programs for A185878, there is no canonical definition to state claims against.
-/

/-! ## A185878.P1560930900976804022

`(A002262(n)+1)*(A193980(n)+A114327(n))`
-/

namespace A185878.P1560930900976804022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002262 n + 1) * (A193980 n + A114327 n)

end

end A185878.P1560930900976804022

/-! ## A185878.P3631173375796375821

`(A193980(n)+A114327(n))*A002260(n+1)`
-/

namespace A185878.P3631173375796375821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A193980 n + A114327 n) * A002260 (n + 1)

end

end A185878.P3631173375796375821

/-! ## A185878.P6289480851424974266

`abs((A193980(n)+A114327(n))*A140756(n+1))`
-/

namespace A185878.P6289480851424974266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(A193980 n + A114327 n) * A140756 (n + 1)|

end

end A185878.P6289480851424974266

/-!
# A185879: Weight array of A185877, by antidiagonals.

The programs for A185879, the canonical program `A185879.P7693363345362446651` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A185879 has offset 1).

The definition of A185879 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A185879.P7693363345362446651

`lcm(A023532(n)-A198954(n), A280560(n))`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A185879

/-- `lcm(A023532(n)-A198954(n), A280560(n))` -/
def P7693363345362446651.Spec : Prop :=
  ∀ n, (P7693363345362446651.a n : ℤ) = A185879 (n + 1)

theorem P7693363345362446651.correct : P7693363345362446651.Spec := by
  intro n
  simp only [A185879, Nat.add_sub_cancel]

end A185879

/-! ## A185879.P3654914246119505720

`and(A027383(n), A131032(n+1))`
-/

namespace A185879.P3654914246119505720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A027383 n) (A131032 (n + 1))

end

end A185879.P3654914246119505720

namespace A185879

/-- `and(A027383(n), A131032(n+1))` -/
def P3654914246119505720.Spec : Prop :=
  ∀ n, P3654914246119505720.a n = A185879 (n + 1)

end A185879

/-! ## A185879.P12561598139397455847

`and(A095121(n), A131032(n+1))`
-/

namespace A185879.P12561598139397455847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A095121 n) (A131032 (n + 1))

end

end A185879.P12561598139397455847

namespace A185879

/-- `and(A095121(n), A131032(n+1))` -/
def P12561598139397455847.Spec : Prop :=
  ∀ n, P12561598139397455847.a n = A185879 (n + 1)

end A185879

/-! ## A185879.P13806798282096670029

`and(A131032(n+1), A134067(n))`
-/

namespace A185879.P13806798282096670029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A131032 (n + 1)) (A134067 n)

end

end A185879.P13806798282096670029

namespace A185879

/-- `and(A131032(n+1), A134067(n))` -/
def P13806798282096670029.Spec : Prop :=
  ∀ n, P13806798282096670029.a n = A185879 (n + 1)

end A185879

/-! ## A185879.P12571991835160348433

`and(A131032(n+1), A307457(n+1))`
-/

namespace A185879.P12571991835160348433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A131032 (n + 1)) (A307457 (n + 1))

end

end A185879.P12571991835160348433

namespace A185879

/-- `and(A131032(n+1), A307457(n+1))` -/
def P12571991835160348433.Spec : Prop :=
  ∀ n, P12571991835160348433.a n = A185879 (n + 1)

end A185879

/-! ## A185879.P9482795988254285652

`and(A117863(n+1), A131032(n+1))`
-/

namespace A185879.P9482795988254285652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A117863 (n + 1)) (A131032 (n + 1))

end

end A185879.P9482795988254285652

namespace A185879

/-- `and(A117863(n+1), A131032(n+1))` -/
def P9482795988254285652.Spec : Prop :=
  ∀ n, P9482795988254285652.a n = A185879 (n + 1)

end A185879

/-! ## A185879.P18159091153943866272

`and(A131032(n+1), A328890(n+1))`
-/

namespace A185879.P18159091153943866272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A131032 (n + 1)) (A328890 (n + 1))

end

end A185879.P18159091153943866272

namespace A185879

/-- `and(A131032(n+1), A328890(n+1))` -/
def P18159091153943866272.Spec : Prop :=
  ∀ n, P18159091153943866272.a n = A185879 (n + 1)

end A185879

/-! ## A185879.P13777461599812203748

`and(A058966(n+3), A131032(n+1))`
-/

namespace A185879.P13777461599812203748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A058966 (n + 3)) (A131032 (n + 1))

end

end A185879.P13777461599812203748

namespace A185879

/-- `and(A058966(n+3), A131032(n+1))` -/
def P13777461599812203748.Spec : Prop :=
  ∀ n, P13777461599812203748.a n = A185879 (n + 1)

end A185879

/-! ## A185879.P7646147025240048592

`and(A131032(n+1), A217528(n+1))`
-/

namespace A185879.P7646147025240048592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A131032 (n + 1)) (A217528 (n + 1))

end

end A185879.P7646147025240048592

namespace A185879

/-- `and(A131032(n+1), A217528(n+1))` -/
def P7646147025240048592.Spec : Prop :=
  ∀ n, P7646147025240048592.a n = A185879 (n + 1)

end A185879

/-! ## A185879.P9385618321633939548

`and(A116706(n+1), A131032(n+1))`
-/

namespace A185879.P9385618321633939548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A116706 (n + 1)) (A131032 (n + 1))

end

end A185879.P9385618321633939548

namespace A185879

/-- `and(A116706(n+1), A131032(n+1))` -/
def P9385618321633939548.Spec : Prop :=
  ∀ n, P9385618321633939548.a n = A185879 (n + 1)

end A185879

/-! ## A185879.P3280255597837551770

`and(A117865(n+1), A131032(n+1))`
-/

namespace A185879.P3280255597837551770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A117865 (n + 1)) (A131032 (n + 1))

end

end A185879.P3280255597837551770

namespace A185879

/-- `and(A117865(n+1), A131032(n+1))` -/
def P3280255597837551770.Spec : Prop :=
  ∀ n, P3280255597837551770.a n = A185879 (n + 1)

end A185879

/-! ## A185879.P1646802018102649769

`and(A117867(n+1), A131032(n+1))`
-/

namespace A185879.P1646802018102649769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A117867 (n + 1)) (A131032 (n + 1))

end

end A185879.P1646802018102649769

namespace A185879

/-- `and(A117867(n+1), A131032(n+1))` -/
def P1646802018102649769.Spec : Prop :=
  ∀ n, P1646802018102649769.a n = A185879 (n + 1)

end A185879

/-! ## A185879.P18089948309078406678

`and(A050250(n+1), A131032(n+1))`
-/

namespace A185879.P18089948309078406678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A050250 (n + 1)) (A131032 (n + 1))

end

end A185879.P18089948309078406678

namespace A185879

/-- `and(A050250(n+1), A131032(n+1))` -/
def P18089948309078406678.Spec : Prop :=
  ∀ n, P18089948309078406678.a n = A185879 (n + 1)

end A185879

/-! ## A185879.P136226083093569227

`and(A131032(n+1), A290718(n+1))`
-/

namespace A185879.P136226083093569227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A131032 (n + 1)) (A290718 (n + 1))

end

end A185879.P136226083093569227

namespace A185879

/-- `and(A131032(n+1), A290718(n+1))` -/
def P136226083093569227.Spec : Prop :=
  ∀ n, P136226083093569227.a n = A185879 (n + 1)

end A185879

/-! ## A185879.P6762918289089611004

`and(A096045(n), A131032(n+1))`
-/

namespace A185879.P6762918289089611004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A096045 n) (A131032 (n + 1))

end

end A185879.P6762918289089611004

namespace A185879

/-- `and(A096045(n), A131032(n+1))` -/
def P6762918289089611004.Spec : Prop :=
  ∀ n, P6762918289089611004.a n = A185879 (n + 1)

end A185879

/-! ## A185879.P10907829613831873497

`and(A131032(n+1), A267851(n))`
-/

namespace A185879.P10907829613831873497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A131032 (n + 1)) (A267851 n)

end

end A185879.P10907829613831873497

namespace A185879

/-- `and(A131032(n+1), A267851(n))` -/
def P10907829613831873497.Spec : Prop :=
  ∀ n, P10907829613831873497.a n = A185879 (n + 1)

end A185879

/-! ## A185879.P7820514758748632824

`xor(A005811(A173787(n)), A198954(n))`
-/

namespace A185879.P7820514758748632824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A005811 (A173787 n).toNat) (A198954 n)

end

end A185879.P7820514758748632824

namespace A185879

/-- `xor(A005811(A173787(n)), A198954(n))` -/
def P7820514758748632824.Spec : Prop :=
  ∀ n, P7820514758748632824.a n = A185879 (n + 1)

end A185879

/-! ## A185879.P8491701623592000529

`and(A040210(n²), A131032(n+1))`
-/

namespace A185879.P8491701623592000529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A040210 (n ^ 2)) (A131032 (n + 1))

end

end A185879.P8491701623592000529

namespace A185879

/-- `and(A040210(n²), A131032(n+1))` -/
def P8491701623592000529.Spec : Prop :=
  ∀ n, P8491701623592000529.a n = A185879 (n + 1)

end A185879

/-! ## A185879.P13097376753316449618

`and(A040930(n²), A131032(n+1))`
-/

namespace A185879.P13097376753316449618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A040930 (n ^ 2)) (A131032 (n + 1))

end

end A185879.P13097376753316449618

namespace A185879

/-- `and(A040930(n²), A131032(n+1))` -/
def P13097376753316449618.Spec : Prop :=
  ∀ n, P13097376753316449618.a n = A185879 (n + 1)

end A185879

/-!
# A185882: 

The programs for A185882, there is no canonical definition to state claims against.
-/

/-! ## A185882.P16930654022081256107

`A185891((n+1)²+n²)`
-/

namespace A185882.P16930654022081256107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185891 ((n + 1) ^ 2 + n ^ 2)

end

end A185882.P16930654022081256107

/-!
# A185883: 1/729 the number of (n+2) X 3 0..2 arrays with no 3 X 3 subblock trace equal to any horizontal or vertical neighbor 3 X 3 subblock trace.

The programs for A185883, there is no canonical definition to state claims against.
-/

/-! ## A185883.P12755148699794259324

`A185891(∑[n]+1)`
-/

namespace A185883.P12755148699794259324
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185891 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A185883.P12755148699794259324

/-! ## A185883.P962400607337822289

`lcm(3, A185891(A000124(n)))`
-/

namespace A185883.P962400607337822289
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 (A185891 (A000124 n).toNat)

end

end A185883.P962400607337822289

/-! ## A185883.P5316483074713592364

`record[A185891(n+1)*A185916(n+1)]`
-/

namespace A185883.P5316483074713592364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185891 (n + 1) * A185916 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A185883.P5316483074713592364

/-! ## A185883.P13701548930403343216

`record[A185891(n+1)*A185917(n+1)]`
-/

namespace A185883.P13701548930403343216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185891 (n + 1) * A185917 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A185883.P13701548930403343216

/-! ## A185883.P5924025894996521304

`A000005(abs((-1)^n))*A185891(A000124(n))`
-/

namespace A185883.P5924025894996521304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 |(-1) ^ n|.toNat * A185891 (A000124 n).toNat

end

end A185883.P5924025894996521304

/-!
# A185884: 1/729 the number of (n+2)X4 0..2 arrays with no 3X3 subblock trace equal to any horizontal or vertical neighbor 3X3 subblock trace.

The programs for A185884, there is no canonical definition to state claims against.
-/

/-! ## A185884.P6018712916850909212

`A185891(∑[n+1]+2)`
-/

namespace A185884.P6018712916850909212
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185891 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A185884.P6018712916850909212

/-! ## A185884.P9065929865125456880

`record[A185891(record[A278506(2*n+3)])]`
-/

namespace A185884.P9065929865125456880
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278506 (2 * n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185891 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A185884.P9065929865125456880

/-! ## A185884.P8963255522134578333

`record[A185891(A198453(n+1))]`
-/

namespace A185884.P8963255522134578333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185891 (A198453 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A185884.P8963255522134578333

/-! ## A185884.P16970411300515437574

`record[gcd(A174381(n), A185891(n+2))]`
-/

namespace A185884.P16970411300515437574
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A174381 n) (A185891 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A185884.P16970411300515437574

/-!
# A185885: 1/729 the number of (n+2)X5 0..2 arrays with no 3X3 subblock trace equal to any horizontal or vertical neighbor 3X3 subblock trace.

The programs for A185885, there is no canonical definition to state claims against.
-/

/-! ## A185885.P2119260920965433188

`A185891(A167614(n+1))`
-/

namespace A185885.P2119260920965433188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185891 (A167614 (n + 1)).toNat

end

end A185885.P2119260920965433188

/-! ## A185885.P14326896194830624344

`A185891(eq[2, A131818(n+1)-2])`
-/

namespace A185885.P14326896194830624344
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185891 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A185885.P14326896194830624344

/-! ## A185885.P6242705580504814565

`A185891(∑[n+3]+1)`
-/

namespace A185885.P6242705580504814565
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185891 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A185885.P6242705580504814565

/-!
# A185886: 1/729 the number of (n+2)X6 0..2 arrays with no 3X3 subblock trace equal to any horizontal or vertical neighbor 3X3 subblock trace.

The programs for A185886, there is no canonical definition to state claims against.
-/

/-! ## A185886.P3777557958816530679

`A185891(A167614(n+2)+1)`
-/

namespace A185886.P3777557958816530679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185891 (A167614 (n + 2) + 1).toNat

end

end A185886.P3777557958816530679

/-! ## A185886.P16301964163588425218

`A185891(eq[5, A131818(n+1)])`
-/

namespace A185886.P16301964163588425218
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185891 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A185886.P16301964163588425218

/-! ## A185886.P7635189637888463838

`A185891(eq[3, A025581(n)]+1)`
-/

namespace A185886.P7635189637888463838
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185891 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A185886.P7635189637888463838

/-!
# A185887: 

The programs for A185887, there is no canonical definition to state claims against.
-/

/-! ## A185887.P15986831034309497776

`A185891(eq[4, A025581(n)]+1)`
-/

namespace A185887.P15986831034309497776
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185891 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A185887.P15986831034309497776

/-!
# A185893: Terms in A048398 ending with 1.

The programs for A185893, there is no canonical definition to state claims against.
-/

/-! ## A185893.P1048502246820860652

`A048398(eq[1, A048398(n+1)%5]+1)`
-/

namespace A185893.P1048502246820860652
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A048398 (n + 1)) 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048398 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A185893.P1048502246820860652

/-!
# A185894: a(n) = A001222(A027623(n)).

The programs for A185894, there is no canonical definition to state claims against.
-/

/-! ## A185894.P7763452708543269725

`A001222(A027623(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A185894.P7763452708543269725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A027623 n).toNat

end

end A185894.P7763452708543269725

/-! ## A185894.P5675239933194739759

`∑{e}[n, #^val(n, 8)]`
-/

namespace A185894.P5675239933194739759
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p ^ SequenceMachineLib.valuation n 8

end

end A185894.P5675239933194739759

/-! ## A185894.P4601500892321316540

`∑{e}[A037234(n), #]`
-/

namespace A185894.P4601500892321316540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037234 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A185894.P4601500892321316540

/-! ## A185894.P6990827768761954540

`∑{e}[A027623(n), A006549(#)]`
-/

namespace A185894.P6990827768761954540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027623 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A006549 (Nat.factorization (f1 n).natAbs p)

end

end A185894.P6990827768761954540

/-! ## A185894.P12678342725518190794

`A002113(∑{e}[A027623(n), #]+1)`
-/

namespace A185894.P12678342725518190794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027623 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p + 1)

end

end A185894.P12678342725518190794

/-!
# A185896: Triangle of coefficients of (1/sec^2(x))*D^n(sec^2(x)) in powers of t = tan(x), where D = d/dx.

The programs for A185896, the canonical program `A185896.P7658763505362677700` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A185896 has offset 0).

The definition of A185896 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A185896.P7658763505362677700

`(col(n)+1)*(T(n-1,k-1)+T(n-1,k+1))` with `a(0)=1`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A185896

/-- `(col(n)+1)*(T(n-1,k-1)+T(n-1,k+1))` -/
def P7658763505362677700.Spec : Prop :=
  ∀ n, (P7658763505362677700.a n : ℤ) = A185896 n

theorem P7658763505362677700.correct : P7658763505362677700.Spec := by
  intro n
  simp only [A185896]

end A185896

/-! ## A185896.P13577199922898715111

`A107729(n)*A134199(n)`
-/

namespace A185896.P13577199922898715111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107729 n * A134199 n

end

end A185896.P13577199922898715111

namespace A185896

/-- `A107729(n)*A134199(n)` -/
def P13577199922898715111.Spec : Prop :=
  ∀ n, P13577199922898715111.a n = A185896 n

end A185896

/-! ## A185896.P10943425231656411345

`A002260(n+1)*A107729(n)`
-/

namespace A185896.P10943425231656411345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) * A107729 n

end

end A185896.P10943425231656411345

namespace A185896

/-- `A002260(n+1)*A107729(n)` -/
def P10943425231656411345.Spec : Prop :=
  ∀ n, P10943425231656411345.a n = A185896 n

end A185896

/-! ## A185896.P3326095414874296418

`A107729(n)*A128179(n+1)`
-/

namespace A185896.P3326095414874296418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107729 n * A128179 (n + 1)

end

end A185896.P3326095414874296418

namespace A185896

/-- `A107729(n)*A128179(n+1)` -/
def P3326095414874296418.Spec : Prop :=
  ∀ n, P3326095414874296418.a n = A185896 n

end A185896

/-! ## A185896.P4941839011811263743

`A107729(n)*A128221(n+1)`
-/

namespace A185896.P4941839011811263743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107729 n * A128221 (n + 1)

end

end A185896.P4941839011811263743

namespace A185896

/-- `A107729(n)*A128221(n+1)` -/
def P4941839011811263743.Spec : Prop :=
  ∀ n, P4941839011811263743.a n = A185896 n

end A185896

/-! ## A185896.P12770131259104075684

`A107729(n)*A134226(n+1)`
-/

namespace A185896.P12770131259104075684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107729 n * A134226 (n + 1)

end

end A185896.P12770131259104075684

namespace A185896

/-- `A107729(n)*A134226(n+1)` -/
def P12770131259104075684.Spec : Prop :=
  ∀ n, P12770131259104075684.a n = A185896 n

end A185896

/-! ## A185896.P17588098562181048958

`A107729(n)*A140756(n+1)`
-/

namespace A185896.P17588098562181048958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107729 n * A140756 (n + 1)

end

end A185896.P17588098562181048958

namespace A185896

/-- `A107729(n)*A140756(n+1)` -/
def P17588098562181048958.Spec : Prop :=
  ∀ n, P17588098562181048958.a n = A185896 n

end A185896

/-! ## A185896.P16752045939454971482

`A107729(n)*A211161(n+1)`
-/

namespace A185896.P16752045939454971482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107729 n * A211161 (n + 1)

end

end A185896.P16752045939454971482

namespace A185896

/-- `A107729(n)*A211161(n+1)` -/
def P16752045939454971482.Spec : Prop :=
  ∀ n, P16752045939454971482.a n = A185896 n

end A185896

/-! ## A185896.P10004192629465714286

`A059419(n+1)*A166350(n+1)`
-/

namespace A185896.P10004192629465714286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059419 (n + 1) * A166350 (n + 1)

end

end A185896.P10004192629465714286

namespace A185896

/-- `A059419(n+1)*A166350(n+1)` -/
def P10004192629465714286.Spec : Prop :=
  ∀ n, P10004192629465714286.a n = A185896 n

end A185896

/-! ## A185896.P11041178797391902685

`A002260(n+1)!*A059419(n+1)`
-/

namespace A185896.P11041178797391902685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A002260 (n + 1)).toNat : ℤ) * A059419 (n + 1)

end

end A185896.P11041178797391902685

namespace A185896

/-- `A002260(n+1)!*A059419(n+1)` -/
def P11041178797391902685.Spec : Prop :=
  ∀ n, P11041178797391902685.a n = A185896 n

end A185896

/-! ## A185896.P8056555599754166591

`A002262(A080036(n))!*A059419(n+1)`
-/

namespace A185896.P8056555599754166591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A002262 (A080036 n).toNat).toNat : ℤ) * A059419 (n + 1)

end

end A185896.P8056555599754166591

namespace A185896

/-- `A002262(A080036(n))!*A059419(n+1)` -/
def P8056555599754166591.Spec : Prop :=
  ∀ n, P8056555599754166591.a n = A185896 n

end A185896

/-! ## A185896.P18347346510707568073

`A002260(n+1)*A155100(A014132(n+1))`
-/

namespace A185896.P18347346510707568073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) * A155100 (A014132 (n + 1)).toNat

end

end A185896.P18347346510707568073

namespace A185896

/-- `A002260(n+1)*A155100(A014132(n+1))` -/
def P18347346510707568073.Spec : Prop :=
  ∀ n, P18347346510707568073.a n = A185896 n

end A185896

/-! ## A185896.P3969533997151720802

`(A002262(n)+1)*A155100(A014132(n+1))`
-/

namespace A185896.P3969533997151720802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002262 n + 1) * A155100 (A014132 (n + 1)).toNat

end

end A185896.P3969533997151720802

namespace A185896

/-- `(A002262(n)+1)*A155100(A014132(n+1))` -/
def P3969533997151720802.Spec : Prop :=
  ∀ n, P3969533997151720802.a n = A185896 n

end A185896

/-! ## A185896.P9399989842503559811

`A155100(A014132(n+1))*A264766(A143844(n))`
-/

namespace A185896.P9399989842503559811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155100 (A014132 (n + 1)).toNat * A264766 (A143844 n).toNat

end

end A185896.P9399989842503559811

namespace A185896

/-- `A155100(A014132(n+1))*A264766(A143844(n))` -/
def P9399989842503559811.Spec : Prop :=
  ∀ n, P9399989842503559811.a n = A185896 n

end A185896

/-! ## A185896.P14782951170244821851

`A004736(A061579(n)+1)*A155100(A014132(n+1))`
-/

namespace A185896.P14782951170244821851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (A061579 n + 1).toNat * A155100 (A014132 (n + 1)).toNat

end

end A185896.P14782951170244821851

namespace A185896

/-- `A004736(A061579(n)+1)*A155100(A014132(n+1))` -/
def P14782951170244821851.Spec : Prop :=
  ∀ n, P14782951170244821851.a n = A185896 n

end A185896

/-! ## A185896.P6126011975638286310

`A025581(A140978(n+1)-n)*A155100(A014132(n+1))`
-/

namespace A185896.P6126011975638286310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (A140978 (n + 1) - (n : ℤ)).toNat * A155100 (A014132 (n + 1)).toNat

end

end A185896.P6126011975638286310

namespace A185896

/-- `A025581(A140978(n+1)-n)*A155100(A014132(n+1))` -/
def P6126011975638286310.Spec : Prop :=
  ∀ n, P6126011975638286310.a n = A185896 n

end A185896

/-! ## A185896.P43825584763241632

`A000005(A059268(n))*A155100(A014132(n+1))`
-/

namespace A185896.P43825584763241632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A059268 n).toNat * A155100 (A014132 (n + 1)).toNat

end

end A185896.P43825584763241632

namespace A185896

/-- `A000005(A059268(n))*A155100(A014132(n+1))` -/
def P43825584763241632.Spec : Prop :=
  ∀ n, P43825584763241632.a n = A185896 n

end A185896

/-!
# A185897: G.f. A(x) satisfies: A(x - A(x)^2) = x/(1-x).

The programs for A185897, there is no canonical definition to state claims against.
-/

/-! ## A185897.P3041419052819548978

`A256502(∏[Δ[n²]])`
-/

namespace A185897.P3041419052819548978
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256502 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A185897.P3041419052819548978

/-!
# A185898: G.f. satisfies: x + x^2 = A(x - A(x)^2).

The programs for A185898, there is no canonical definition to state claims against.
-/

/-! ## A185898.P12782115837839927615

`A061773(∏[∑[n]+1])`
-/

namespace A185898.P12782115837839927615
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061773 (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A185898.P12782115837839927615

/-!
# A185899: 1/8 the number of n X 2 0..7 arrays with every element equal to exactly one or two of its horizontal and vertical neighbors.

The programs for A185899, there is no canonical definition to state claims against.
-/

/-! ## A185899.P14785949571082176908

`A185903(∑[n+2])`
-/

namespace A185899.P14785949571082176908
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185903 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A185899.P14785949571082176908

/-! ## A185899.P5055710212018822061

`record[A185903(abs(A201163(n)))]`
-/

namespace A185899.P5055710212018822061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185903 |A201163 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A185899.P5055710212018822061

/-! ## A185899.P14411535790106770027

`record[A185903(A007318(n)+2)]`
-/

namespace A185899.P14411535790106770027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185903 (A007318 n + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A185899.P14411535790106770027

