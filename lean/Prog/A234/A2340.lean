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
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
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
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A234000: Numbers of the form 4^i*(8*j+1).

The programs for A234000, there is no canonical definition to state claims against.
-/

/-! ## A234000.P2610923167264351209

`A055044(n+1)/2`
-/

namespace A234000.P2610923167264351209
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055044 (n + 1) : ℚ) / 2

end

end A234000.P2610923167264351209

/-! ## A234000.P13400376453648032978

`filter[A277549(n+1), A342892(#)]`
-/

namespace A234000.P13400376453648032978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277549 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A342892 (f1 j).toNat = 1) n)

end

end A234000.P13400376453648032978

/-! ## A234000.P3570803072425185591

`comp[A028962(n+1)]`
-/

namespace A234000.P3570803072425185591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028962 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A234000.P3570803072425185591

/-! ## A234000.P3847382012398927885

`eq[1, A072400(n+1)]+1`
-/

namespace A234000.P3847382012398927885
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072400 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A234000.P3847382012398927885

/-! ## A234000.P7020161075664836167

`eq[0, A028963(n)]`
-/

namespace A234000.P7020161075664836167
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028963 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A234000.P7020161075664836167

/-! ## A234000.P10223361347671878030

`eq[0, A029681(n)]`
-/

namespace A234000.P10223361347671878030
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029681 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A234000.P10223361347671878030

/-! ## A234000.P4159986852854825237

`record[1-A000578(A029681(n+1))+n]`
-/

namespace A234000.P4159986852854825237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A000578 (A029681 (n + 1)).toNat + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234000.P4159986852854825237

/-! ## A234000.P2747742386505683409

`record[n+1-A025487(n+1)*A029681(n+1)]`
-/

namespace A234000.P2747742386505683409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A025487 (n + 1) * A029681 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234000.P2747742386505683409

/-! ## A234000.P15881158500705879779

`eq[2*A285384(n+1), A089309(3*n)]`
-/

namespace A234000.P15881158500705879779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A285384 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089309 (3 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A234000.P15881158500705879779

/-! ## A234000.P4002255540944600371

`A001281(A055044(n+1))`
-/

namespace A234000.P4002255540944600371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A055044 (n + 1)).toNat

end

end A234000.P4002255540944600371

/-! ## A234000.P11170624562587640791

`eq[0, A169784(3*n)]`
-/

namespace A234000.P11170624562587640791
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169784 (3 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A234000.P11170624562587640791

/-! ## A234000.P17893453729051348505

`lt[A169784(3*n)², A169783(n)]`
-/

namespace A234000.P17893453729051348505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169784 (3 * n) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169783 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A234000.P17893453729051348505

/-! ## A234000.P18096017227013088556

`lt[A028963(2*n), 1]/2`
-/

namespace A234000.P18096017227013088556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028963 (2 * n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n : ℚ) / 2

end

end A234000.P18096017227013088556

/-! ## A234000.P13835459193880231411

`lt[A029681(2*n), 1]/2`
-/

namespace A234000.P13835459193880231411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029681 (2 * n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n : ℚ) / 2

end

end A234000.P13835459193880231411

/-! ## A234000.P2983025414530750776

`eq[1, A261394(A008706(n))+1]`
-/

namespace A234000.P2983025414530750776
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261394 (A008706 n).toNat + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A234000.P2983025414530750776

/-! ## A234000.P2995598295776504475

`eq[1, A008574(A002102(7*n))]`
-/

namespace A234000.P2995598295776504475
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (A002102 (7 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A234000.P2995598295776504475

/-!
# A234001: Lowest common modulus to which the set of residue classes (mod 4n) that all the primes represented by a certain quadratic form of discriminant = -4n belong to, can be simplified to, for all quadratic forms of discriminant = -4n.

The programs for A234001, there is no canonical definition to state claims against.
-/

/-! ## A234001.P11836117984104524417

`2*2*(n+1)/lcm((n+1)/∏{p}[n+1, #], gcd(4, ceil((1/4-n)²)))`
-/

namespace A234001.P11836117984104524417
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * ((2 * (n + 1) : ℚ) / (Int.lcm (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ))) (Int.gcd 4 ⌈((1 : ℚ) / 4 - (n : ℚ)) ^ 2⌉ : ℤ) : ℚ))

end

end A234001.P11836117984104524417

/-! ## A234001.P3501147559396424889

`4*(n+1)/A234002(n+1)`
-/

namespace A234001.P3501147559396424889
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  4 * ((n + 1 : ℚ) / (A234002 (n + 1) : ℚ))

end

end A234001.P3501147559396424889

/-! ## A234001.P8410126488096103992

`Δ[A001844(n)]/A234002(n+1)`
-/

namespace A234001.P8410126488096103992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001844 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (A234002 (n + 1) : ℚ)

end

end A234001.P8410126488096103992

/-! ## A234001.P4461983596842214304

`Δ[A046092(n)]/A234002(n+1)`
-/

namespace A234001.P4461983596842214304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046092 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (A234002 (n + 1) : ℚ)

end

end A234001.P4461983596842214304

/-! ## A234001.P13118253478838896869

`Δ[A142463(n)]/A234002(n+1)`
-/

namespace A234001.P13118253478838896869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142463 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (A234002 (n + 1) : ℚ)

end

end A234001.P13118253478838896869

/-! ## A234001.P5747262676186254020

`A008574(n+1)/A234002(n+1)`
-/

namespace A234001.P5747262676186254020
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008574 (n + 1) : ℚ) / (A234002 (n + 1) : ℚ)

end

end A234001.P5747262676186254020

/-! ## A234001.P11955531086007354574

`A008586(n+1)/A234002(n+1)`
-/

namespace A234001.P11955531086007354574
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008586 (n + 1) : ℚ) / (A234002 (n + 1) : ℚ)

end

end A234001.P11955531086007354574

/-! ## A234001.P7090134313160107179

`A059558(n+1)/A234002(n+1)`
-/

namespace A234001.P7090134313160107179
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059558 (n + 1) : ℚ) / (A234002 (n + 1) : ℚ)

end

end A234001.P7090134313160107179

/-! ## A234001.P15913439986826482035

`A008619(A004771(n))/A234002(n+1)`
-/

namespace A234001.P15913439986826482035
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008619 (A004771 n).toNat : ℚ) / (A234002 (n + 1) : ℚ)

end

end A234001.P15913439986826482035

/-! ## A234001.P15957209407261157309

`A008619(A017137(n))/A234002(n+1)`
-/

namespace A234001.P15957209407261157309
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008619 (A017137 n).toNat : ℚ) / (A234002 (n + 1) : ℚ)

end

end A234001.P15957209407261157309

/-!
# A234002: 4n/A234001(n).

The programs for A234002, there is no canonical definition to state claims against.
-/

/-! ## A234002.P8287468543701762915

`4*(n+1)/A234001(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A234002.P8287468543701762915
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 * (n + 1) : ℚ) / (A234001 (n + 1) : ℚ)

end

end A234002.P8287468543701762915

/-! ## A234002.P4171917666446282214

`lcm((n+1)/∏{p}[n+1, #], gcd(4, ceil((1/4-n)²)))`
-/

namespace A234002.P4171917666446282214
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ))) (Int.gcd 4 ⌈((1 : ℚ) / 4 - (n : ℚ)) ^ 2⌉ : ℤ)

end

end A234002.P4171917666446282214

/-! ## A234002.P4953449024728450618

`lcm(gcd(4, A236453(n)), A003557(n+1))`
-/

namespace A234002.P4953449024728450618
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (Int.gcd 4 (A236453 n) : ℤ) (A003557 (n + 1))

end

end A234002.P4953449024728450618

/-! ## A234002.P4811952751439883819

`ceil(A004767(n)/A234001(n+1))`
-/

namespace A234002.P4811952751439883819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A004767 n : ℚ) / (A234001 (n + 1) : ℚ)⌉

end

end A234002.P4811952751439883819

/-! ## A234002.P13097071093524636174

`ceil(A016825(n)/A234001(n+1))`
-/

namespace A234002.P13097071093524636174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A016825 n : ℚ) / (A234001 (n + 1) : ℚ)⌉

end

end A234002.P13097071093524636174

/-! ## A234002.P12689041580525541116

`floor(A190885(n+1)/A234001(n+1))`
-/

namespace A234002.P12689041580525541116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A190885 (n + 1) : ℚ) / (A234001 (n + 1) : ℚ)⌋

end

end A234002.P12689041580525541116

/-!
# A234003: Prime(n), where n is such that (1+Sum_{i=1..n} prime(i)^5) / n is an integer.

The programs for A234003, there is no canonical definition to state claims against.
-/

/-! ## A234003.P10421987672130118256

`A000040(A128169(n+1))`
-/

namespace A234003.P10421987672130118256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A128169 (n + 1)).toNat

end

end A234003.P10421987672130118256

/-! ## A234003.P3003402797733181379

`A008578(A128169(n+1)+1)`
-/

namespace A234003.P3003402797733181379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A128169 (n + 1) + 1).toNat

end

end A234003.P3003402797733181379

/-! ## A234003.P16377070864757274069

`A182986(A128169(n+1)+1)`
-/

namespace A234003.P16377070864757274069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (A128169 (n + 1) + 1).toNat

end

end A234003.P16377070864757274069

/-! ## A234003.P841332837187440770

`A158611(A128169(n+1)+2)`
-/

namespace A234003.P841332837187440770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (A128169 (n + 1) + 2).toNat

end

end A234003.P841332837187440770

/-! ## A234003.P2438516745526112736

`∑{d}[A128169(n+1), A007444(#)]`
-/

namespace A234003.P2438516745526112736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128169 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A007444 d

end

end A234003.P2438516745526112736

/-!
# A234004: Smallest number which is the sum of two positive triangular numbers (A000217) in at least n ways.

The programs for A234004, there is no canonical definition to state claims against.
-/

/-! ## A234004.P9729412424754008185

`A052346(C(A027907(n)+1, 4)+n+1)`
-/

namespace A234004.P9729412424754008185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052346 (Nat.choose (A027907 n + 1).toNat 4 + (n + 1))

end

end A234004.P9729412424754008185

/-! ## A234004.P2944240736107253514

`A052346(A323437(A087019(n))+n)`
-/

namespace A234004.P2944240736107253514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052346 (A323437 (A087019 n).toNat + (n : ℤ)).toNat

end

end A234004.P2944240736107253514

/-! ## A234004.P15145967939294325515

`A052346(A141097(2*n+5)+A032555(n+1))`
-/

namespace A234004.P15145967939294325515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052346 (A141097 (2 * n + 5) + A032555 (n + 1)).toNat

end

end A234004.P15145967939294325515

/-! ## A234004.P370020171698790186

`A053587(lcm(A050985(n+1), A299561(n+1)))`
-/

namespace A234004.P370020171698790186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053587 (Int.lcm (A050985 (n + 1)) (A299561 (n + 1)))

end

end A234004.P370020171698790186

/-!
# A234005: Number of binary words of length n avoiding the subword given by the binary expansion of n.

The programs for A234005, there is no canonical definition to state claims against.
-/

/-! ## A234005.P10271453280000269174

`A209972(∑[4*n])`
-/

namespace A234005.P10271453280000269174
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209972 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A234005.P10271453280000269174

/-! ## A234005.P307431281232967509

`abs(A209972(A046092(n))-1)+1`
-/

namespace A234005.P307431281232967509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A209972 (A046092 n).toNat - 1| + 1

end

end A234005.P307431281232967509

/-! ## A234005.P1398183572951729238

`A209972(A046092(n))%A105717(n)`
-/

namespace A234005.P1398183572951729238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A209972 (A046092 n).toNat) (A105717 n)

end

end A234005.P1398183572951729238

/-! ## A234005.P6638535146566357593

`abs(A033999(n)*A209972(A046092(n)))`
-/

namespace A234005.P6638535146566357593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A033999 n * A209972 (A046092 n).toNat|

end

end A234005.P6638535146566357593

/-! ## A234005.P3348861749441756350

`A209972(A046092(n))^A165471(n²)`
-/

namespace A234005.P3348861749441756350
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A209972 (A046092 n).toNat : ℚ) ^ (A165471 (n ^ 2) : ℤ)

end

end A234005.P3348861749441756350

/-! ## A234005.P7516644995836702193

`A010684(2*n)*A209972(A046092(n))`
-/

namespace A234005.P7516644995836702193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010684 (2 * n) * A209972 (A046092 n).toNat

end

end A234005.P7516644995836702193

/-! ## A234005.P988749219461098979

`gcd(A097331(2*n), A209972(A046092(n)))`
-/

namespace A234005.P988749219461098979
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A097331 (2 * n)) (A209972 (A046092 n).toNat)

end

end A234005.P988749219461098979

/-! ## A234005.P13011569516769734791

`A209972(A046092(n))^gcd(n, A165471(n))`
-/

namespace A234005.P13011569516769734791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209972 (A046092 n).toNat ^ Int.gcd (n : ℤ) (A165471 n)

end

end A234005.P13011569516769734791

/-! ## A234005.P2764800446339516969

`A255309(2*n+1)+A209972(A046092(n))`
-/

namespace A234005.P2764800446339516969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255309 (2 * n + 1) + A209972 (A046092 n).toNat

end

end A234005.P2764800446339516969

/-! ## A234005.P5722729410767422275

`A007318(A000217(n+6))*A209972(A046092(n))`
-/

namespace A234005.P5722729410767422275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A000217 (n + 6)).toNat * A209972 (A046092 n).toNat

end

end A234005.P5722729410767422275

/-!
# A234006: Free polyominoes with 2n squares, having reflectional symmetry on axis that coincides with edges.

The programs for A234006, there is no canonical definition to state claims against.
-/

/-! ## A234006.P3199963126266495553

`A151525(n+1)-A351191(A152271(n))`
-/

namespace A234006.P3199963126266495553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151525 (n + 1) - A351191 (A152271 n).toNat

end

end A234006.P3199963126266495553

/-! ## A234006.P578072698533205058

`A030227(n+1)+A351191(n+1)-A351191(A152271(n))`
-/

namespace A234006.P578072698533205058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030227 (n + 1) + (A351191 (n + 1) - A351191 (A152271 n).toNat)

end

end A234006.P578072698533205058

/-! ## A234006.P15335374944897425235

`A070564(A007853(n+2))`
-/

namespace A234006.P15335374944897425235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070564 (A007853 (n + 2)).toNat

end

end A234006.P15335374944897425235

/-!
# A234007: Free polyominoes with 4n squares, having 90-degree rotational symmetry about a square corner, but not having reflective symmetry.

The programs for A234007, there is no canonical definition to state claims against.
-/

/-! ## A234007.P17384366233624851012

`(A348848(n+1)-A346800(n+1))/2`
-/

namespace A234007.P17384366233624851012
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A348848 (n + 1) - A346800 (n + 1) : ℚ) / 2

end

end A234007.P17384366233624851012

/-! ## A234007.P3392108959124995423

`A234009(n+1)-A346800(n+1)`
-/

namespace A234007.P3392108959124995423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234009 (n + 1) - A346800 (n + 1)

end

end A234007.P3392108959124995423

/-! ## A234007.P2305725998940965369

`A348848(n+1)-A234009(n+1)`
-/

namespace A234007.P2305725998940965369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348848 (n + 1) - A234009 (n + 1)

end

end A234007.P2305725998940965369

/-! ## A234007.P7125078341822524219

`A234009(n+1)+A351191(n+1)-A182645(n+1)`
-/

namespace A234007.P7125078341822524219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234009 (n + 1) + (A351191 (n + 1) - A182645 (n + 1))

end

end A234007.P7125078341822524219

/-! ## A234007.P3857355662637557653

`A234009(n+1)-(A030227(n+1)+A182645(n+1)-A151525(n+1))`
-/

namespace A234007.P3857355662637557653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234009 (n + 1) - (A030227 (n + 1) + (A182645 (n + 1) - A151525 (n + 1)))

end

end A234007.P3857355662637557653

/-!
# A234008: Free polyominoes with 2n squares, having 180-degree rotational symmetry about a square mid-side, but no reflective symmetry.

The programs for A234008, there is no canonical definition to state claims against.
-/

/-! ## A234008.P6278180369526433646

`(A390654(n+1)-A346799(n+1))/2`
-/

namespace A234008.P6278180369526433646
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A390654 (n + 1) - A346799 (n + 1) : ℚ) / 2

end

end A234008.P6278180369526433646

/-! ## A234008.P5559343068726062266

`A234010(n+1)-A346799(n+1)`
-/

namespace A234008.P5559343068726062266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234010 (n + 1) - A346799 (n + 1)

end

end A234008.P5559343068726062266

/-! ## A234008.P9400021440100931991

`A390654(n+1)-A234010(n+1)`
-/

namespace A234008.P9400021440100931991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390654 (n + 1) - A234010 (n + 1)

end

end A234008.P9400021440100931991

/-! ## A234008.P14640743014254557612

`A234010(n+1)-(2*A056779(n+1)-A197626(n+1))`
-/

namespace A234008.P14640743014254557612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234010 (n + 1) - (2 * A056779 (n + 1) - A197626 (n + 1))

end

end A234008.P14640743014254557612

/-! ## A234008.P15040584797824593358

`A197626(n+1)+A234010(n+1)-A004277(A056779(n+1))`
-/

namespace A234008.P15040584797824593358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197626 (n + 1) + (A234010 (n + 1) - A004277 (A056779 (n + 1)).toNat)

end

end A234008.P15040584797824593358

/-!
# A234009: Free polyominoes with 4n squares, having 90-degree rotational symmetry about a square corner.

The programs for A234009, there is no canonical definition to state claims against.
-/

/-! ## A234009.P6022676137757861352

`A234007(n+1)+A346800(n+1)`
-/

namespace A234009.P6022676137757861352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234007 (n + 1) + A346800 (n + 1)

end

end A234009.P6022676137757861352

/-! ## A234009.P11790211520559746731

`A348848(n+1)-A234007(n+1)`
-/

namespace A234009.P11790211520559746731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348848 (n + 1) - A234007 (n + 1)

end

end A234009.P11790211520559746731

/-! ## A234009.P16464462789404263891

`(A348848(n+1)+A346800(n+1))/2`
-/

namespace A234009.P16464462789404263891
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A348848 (n + 1) + A346800 (n + 1) : ℚ) / 2

end

end A234009.P16464462789404263891

/-! ## A234009.P10004409350161608289

`A348848(n+1)+A057428(n)*A234007(n+1)`
-/

namespace A234009.P10004409350161608289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348848 (n + 1) + A057428 n * A234007 (n + 1)

end

end A234009.P10004409350161608289

/-! ## A234009.P8660728470198769436

`A182645(n+1)+A234007(n+1)-A351191(n+1)`
-/

namespace A234009.P8660728470198769436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182645 (n + 1) + (A234007 (n + 1) - A351191 (n + 1))

end

end A234009.P8660728470198769436

/-!
# A234010: Free polyominoes with 2n squares, having 180-degree rotational symmetry about a square mid-side.

The programs for A234010, there is no canonical definition to state claims against.
-/

/-! ## A234010.P11833605820460865754

`A346799(n+1)+A234008(n+1)`
-/

namespace A234010.P11833605820460865754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346799 (n + 1) + A234008 (n + 1)

end

end A234010.P11833605820460865754

/-! ## A234010.P12157056889738684321

`A390654(n+1)-A234008(n+1)`
-/

namespace A234010.P12157056889738684321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390654 (n + 1) - A234008 (n + 1)

end

end A234010.P12157056889738684321

/-! ## A234010.P4801592627784868183

`A234008(n+1)+2*A056779(n+1)-A197626(n+1)`
-/

namespace A234010.P4801592627784868183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234008 (n + 1) + (2 * A056779 (n + 1) - A197626 (n + 1))

end

end A234010.P4801592627784868183

/-! ## A234010.P17210618489517093637

`A004277(A056779(n+1))+A234008(n+1)-A197626(n+1)`
-/

namespace A234010.P17210618489517093637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A056779 (n + 1)).toNat + (A234008 (n + 1) - A197626 (n + 1))

end

end A234010.P17210618489517093637

/-!
# A234011: The sums of 2 consecutive odious numbers (A000069).

The programs for A234011, the canonical program `A234011.P632387481214595856` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A234011 has offset 1).

The definition of A234011 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A234011.P632387481214595856

`A000069(n+1)+A000069(n+2)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A234011

/-- `A000069(n+1)+A000069(n+2)` -/
def P632387481214595856.Spec : Prop :=
  ∀ n, P632387481214595856.a n = A234011 (n + 1)

theorem P632387481214595856.correct : P632387481214595856.Spec := by
  intro n
  simp only [A234011, Nat.add_sub_cancel]

end A234011

/-! ## A234011.P7362097304816659843

`4*(n+1)-A000120(n)%2-A000120(n+1)%2`
-/

namespace A234011.P7362097304816659843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * (n + 1) : ℤ) - Int.tmod (A000120 n) 2 - Int.tmod (A000120 (n + 1)) 2

end

end A234011.P7362097304816659843

namespace A234011

/-- `4*(n+1)-A000120(n)%2-A000120(n+1)%2` -/
def P7362097304816659843.Spec : Prop :=
  ∀ n, P7362097304816659843.a n = A234011 (n + 1)

theorem P7362097304816659843.correct : P7362097304816659843.Spec := by
  intro n
  simp only [A234011, Nat.add_sub_cancel, A234011.P7362097304816659843.a, A234011.P632387481214595856.a, A000069, A000069.P3917626109476666468.a, A000120, A000120.P2816527436160941581.a, A005187, A005187.P3874015513960485494.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A234011

/-! ## A234011.P16601316203527303461

`lt[1-a(and(n, n-1)), 1]+2*n+1-A010060(n)` with `a(0)=1, a(1)=1`
-/

namespace A234011.P16601316203527303461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  1 - f1 (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n : ℤ) + ((2 * n : ℤ) + (1 - A010060 n))

end

end A234011.P16601316203527303461

namespace A234011

/-- `lt[1-a(and(n, n-1)), 1]+2*n+1-A010060(n)` -/
def P16601316203527303461.Spec : Prop :=
  ∀ n, P16601316203527303461.a n = A234011 (n + 1)

end A234011

/-! ## A234011.P3967250255136077714

`A129771(n+1)+A036580(n)`
-/

namespace A234011.P3967250255136077714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129771 (n + 1) + A036580 n

end

end A234011.P3967250255136077714

namespace A234011

/-- `A129771(n+1)+A036580(n)` -/
def P3967250255136077714.Spec : Prop :=
  ∀ n, P3967250255136077714.a n = A234011 (n + 1)

end A234011

/-! ## A234011.P11949497278577965599

`A017137(n)-A234431(n+1)`
-/

namespace A234011.P11949497278577965599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017137 n - A234431 (n + 1)

end

end A234011.P11949497278577965599

namespace A234011

/-- `A017137(n)-A234431(n+1)` -/
def P11949497278577965599.Spec : Prop :=
  ∀ n, P11949497278577965599.a n = A234011 (n + 1)

end A234011

/-! ## A234011.P2419852628885499856

`A128309(n+1)+A007413(n+1)`
-/

namespace A234011.P2419852628885499856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128309 (n + 1) + A007413 (n + 1)

end

end A234011.P2419852628885499856

namespace A234011

/-- `A128309(n+1)+A007413(n+1)` -/
def P2419852628885499856.Spec : Prop :=
  ∀ n, P2419852628885499856.a n = A234011 (n + 1)

end A234011

/-! ## A234011.P2824803060071847202

`∪[A131323(n+1), A234648(n+1)]`
-/

namespace A234011.P2824803060071847202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131323 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234648 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A234011.P2824803060071847202

namespace A234011

/-- `∪[A131323(n+1), A234648(n+1)]` -/
def P2824803060071847202.Spec : Prop :=
  ∀ n, (P2824803060071847202.a n : ℤ) = A234011 (n + 1)

end A234011

/-! ## A234011.P3653217904537990364

`2*A181155(n+1)-A029883(n+1)`
-/

namespace A234011.P3653217904537990364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A181155 (n + 1) - A029883 (n + 1)

end

end A234011.P3653217904537990364

namespace A234011

/-- `2*A181155(n+1)-A029883(n+1)` -/
def P3653217904537990364.Spec : Prop :=
  ∀ n, P3653217904537990364.a n = A234011 (n + 1)

end A234011

/-! ## A234011.P4535952093582812647

`4*(n+1)-(A010060(n)+A010060(n+1))`
-/

namespace A234011.P4535952093582812647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * (n + 1) : ℤ) - (A010060 n + A010060 (n + 1))

end

end A234011.P4535952093582812647

namespace A234011

/-- `4*(n+1)-(A010060(n)+A010060(n+1))` -/
def P4535952093582812647.Spec : Prop :=
  ∀ n, P4535952093582812647.a n = A234011 (n + 1)

end A234011

/-! ## A234011.P14597600158430248896

`4*n+2+A010059(n)+A010059(n+1)`
-/

namespace A234011.P14597600158430248896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n + 2 : ℤ) + (A010059 n + A010059 (n + 1))

end

end A234011.P14597600158430248896

namespace A234011

/-- `4*n+2+A010059(n)+A010059(n+1)` -/
def P14597600158430248896.Spec : Prop :=
  ∀ n, P14597600158430248896.a n = A234011 (n + 1)

end A234011

/-! ## A234011.P85944598263036823

`A106400(n+1)+A234431(n+1)+A106400(n)`
-/

namespace A234011.P85944598263036823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106400 (n + 1) + (A234431 (n + 1) + A106400 n)

end

end A234011.P85944598263036823

namespace A234011

/-- `A106400(n+1)+A234431(n+1)+A106400(n)` -/
def P85944598263036823.Spec : Prop :=
  ∀ n, P85944598263036823.a n = A234011 (n + 1)

end A234011

/-! ## A234011.P4575061609829543830

`A016825(n+1)-(A001285(n)+A001285(n+1))`
-/

namespace A234011.P4575061609829543830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016825 (n + 1) - (A001285 n + A001285 (n + 1))

end

end A234011.P4575061609829543830

namespace A234011

/-- `A016825(n+1)-(A001285(n)+A001285(n+1))` -/
def P4575061609829543830.Spec : Prop :=
  ∀ n, P4575061609829543830.a n = A234011 (n + 1)

end A234011

/-! ## A234011.P17744312706062518432

`A036580(2*n+1)+4*n+2`
-/

namespace A234011.P17744312706062518432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036580 (2 * n + 1) + (4 * n + 2 : ℤ)

end

end A234011.P17744312706062518432

namespace A234011

/-- `A036580(2*n+1)+4*n+2` -/
def P17744312706062518432.Spec : Prop :=
  ∀ n, P17744312706062518432.a n = A234011 (n + 1)

end A234011

/-! ## A234011.P14289451632028759795

`4*(n+1)-A036577(2*(n+1))`
-/

namespace A234011.P14289451632028759795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * (n + 1) : ℤ) - A036577 (2 * (n + 1))

end

end A234011.P14289451632028759795

namespace A234011

/-- `4*(n+1)-A036577(2*(n+1))` -/
def P14289451632028759795.Spec : Prop :=
  ∀ n, P14289451632028759795.a n = A234011 (n + 1)

end A234011

/-! ## A234011.P6658706672386842068

`(8*n+6)/2-A029883(2*(n+1))`
-/

namespace A234011.P6658706672386842068
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (8 * n + 6 : ℚ) / 2 - (A029883 (2 * (n + 1)) : ℚ)

end

end A234011.P6658706672386842068

namespace A234011

/-- `(8*n+6)/2-A029883(2*(n+1))` -/
def P6658706672386842068.Spec : Prop :=
  ∀ n, P6658706672386842068.a n = (A234011 (n + 1) : ℚ)

end A234011

/-! ## A234011.P13809298279742629037

`A001969(2*(n+1))+Δ[A159481(n)]`
-/

namespace A234011.P13809298279742629037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159481 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001969 (2 * (n + 1)) + (f1 (n + 1) - f1 n)

end

end A234011.P13809298279742629037

namespace A234011

/-- `A001969(2*(n+1))+Δ[A159481(n)]` -/
def P13809298279742629037.Spec : Prop :=
  ∀ n, P13809298279742629037.a n = A234011 (n + 1)

end A234011

/-! ## A234011.P17256832945359655065

`A010059(n+1)+A001969(2*(n+1))`
-/

namespace A234011.P17256832945359655065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010059 (n + 1) + A001969 (2 * (n + 1))

end

end A234011.P17256832945359655065

namespace A234011

/-- `A010059(n+1)+A001969(2*(n+1))` -/
def P17256832945359655065.Spec : Prop :=
  ∀ n, P17256832945359655065.a n = A234011 (n + 1)

end A234011

/-! ## A234011.P10158553873058653956

`A026147(2*(n+1))-A010060(n+1)`
-/

namespace A234011.P10158553873058653956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026147 (2 * (n + 1)) - A010060 (n + 1)

end

end A234011.P10158553873058653956

namespace A234011

/-- `A026147(2*(n+1))-A010060(n+1)` -/
def P10158553873058653956.Spec : Prop :=
  ∀ n, P10158553873058653956.a n = A234011 (n + 1)

end A234011

/-! ## A234011.P8969614320277086930

`A140592(2*(n+1))-A001285(n+1)`
-/

namespace A234011.P8969614320277086930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140592 (2 * (n + 1)) - A001285 (n + 1)

end

end A234011.P8969614320277086930

namespace A234011

/-- `A140592(2*(n+1))-A001285(n+1)` -/
def P8969614320277086930.Spec : Prop :=
  ∀ n, P8969614320277086930.a n = A234011 (n + 1)

end A234011

/-! ## A234011.P7864565047316486741

`A181155(n+2)+A161560(2*n+1)`
-/

namespace A234011.P7864565047316486741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181155 (n + 2) + A161560 (2 * n + 1)

end

end A234011.P7864565047316486741

namespace A234011

/-- `A181155(n+2)+A161560(2*n+1)` -/
def P7864565047316486741.Spec : Prop :=
  ∀ n, P7864565047316486741.a n = A234011 (n + 1)

end A234011

/-!
# A234012: Number of unbiased free polyominoes with 2n squares.

The programs for A234012, there is no canonical definition to state claims against.
-/

/-! ## A234012.P9578776829375818327

`A023673(∑[(n+3)^n]+2)`
-/

namespace A234012.P9578776829375818327
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 3) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023673 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A234012.P9578776829375818327

/-!
# A234016: Partial sums of the characteristic function of A055938.

The programs for A234016, the canonical program `A234016.P16847082992809600842` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A234016 has offset 0).

The definition of A234016 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A234016.P4602010921210925729

`n-(A046699(n+2)-1)`
-/

namespace A234016.P4602010921210925729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A046699 (n + 2) - 1)

end

end A234016.P4602010921210925729

namespace A234016

/-- `n-(A046699(n+2)-1)` -/
def P4602010921210925729.Spec : Prop :=
  ∀ n, P4602010921210925729.a n = A234016 n

end A234016

/-! ## A234016.P16847082992809600842

`a(n-1)+1-A079559(n)` with `a(0)=0`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A234016

/-- `a(n-1)+1-A079559(n)` -/
def P16847082992809600842.Spec : Prop :=
  ∀ n, P16847082992809600842.a n = A234016 n

theorem P16847082992809600842.correct : P16847082992809600842.Spec := by
  intro n
  simp only [A234016]

end A234016

/-! ## A234016.P13886810140560889374

`n-∑[char[a(floor(n/2))+n]]` with `a(0)=1, a(1)=1`
-/

namespace A234016.P13886810140560889374
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f2 =>
  f2 ⌊(n : ℚ) / 2⌋.toNat + n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A234016.P13886810140560889374

namespace A234016

/-- `n-∑[char[a(floor(n/2))+n]]` -/
def P13886810140560889374.Spec : Prop :=
  ∀ n, P13886810140560889374.a n = A234016 n

end A234016

/-! ## A234016.P10883391169431129788

`floor((2*a(a(n-1))+n+1)/3)` with `a(0)=0`
-/

namespace A234016.P10883391169431129788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ⌊(2 * a (a (n - 1)).toNat + (n + 1 : ℤ) : ℚ) / 3⌋

end

end A234016.P10883391169431129788

namespace A234016

/-- `floor((2*a(a(n-1))+n+1)/3)` -/
def P10883391169431129788.Spec : Prop :=
  ∀ n, P10883391169431129788.a n = A234016 n

end A234016

/-! ## A234016.P3909038263454484382

`floor(a(a(n-1))+(n-a(n-1))/2)` with `a(0)=0`
-/

namespace A234016.P3909038263454484382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ⌊(a (a (n - 1)).toNat : ℚ) + ((n : ℤ) - a (n - 1) : ℚ) / 2⌋

end

end A234016.P3909038263454484382

namespace A234016

/-- `floor(a(a(n-1))+(n-a(n-1))/2)` -/
def P3909038263454484382.Spec : Prop :=
  ∀ n, P3909038263454484382.a n = A234016 n

end A234016

/-! ## A234016.P3145923799911692470

`floor(a(a(n-1))-(a(n-1)-n)/2)` with `a(0)=0`
-/

namespace A234016.P3145923799911692470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ⌊(a (a (n - 1)).toNat : ℚ) - (a (n - 1) - (n : ℤ) : ℚ) / 2⌋

end

end A234016.P3145923799911692470

namespace A234016

/-- `floor(a(a(n-1))-(a(n-1)-n)/2)` -/
def P3145923799911692470.Spec : Prop :=
  ∀ n, P3145923799911692470.a n = A234016 n

end A234016

/-! ## A234016.P5502259541831945915

`∑[A308187(n+1)]`
-/

namespace A234016.P5502259541831945915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308187 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A234016.P5502259541831945915

namespace A234016

/-- `∑[A308187(n+1)]` -/
def P5502259541831945915.Spec : Prop :=
  ∀ n, P5502259541831945915.a n = A234016 n

end A234016

/-! ## A234016.P4516118686172044205

`∑[1-A079559(n)]`
-/

namespace A234016.P4516118686172044205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A079559 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A234016.P4516118686172044205

namespace A234016

/-- `∑[1-A079559(n)]` -/
def P4516118686172044205.Spec : Prop :=
  ∀ n, P4516118686172044205.a n = A234016 n

end A234016

/-! ## A234016.P1474355760525753169

`∑[char[comp[A005187(n)]]]`
-/

namespace A234016.P1474355760525753169
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A234016.P1474355760525753169

namespace A234016

/-- `∑[char[comp[A005187(n)]]]` -/
def P1474355760525753169.Spec : Prop :=
  ∀ n, (P1474355760525753169.a n : ℤ) = A234016 n

end A234016

/-! ## A234016.P4241567236610200201

`∑[log2(A308188(n+1))]`
-/

namespace A234016.P4241567236610200201
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A308188 (n + 1) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A234016.P4241567236610200201

namespace A234016

/-- `∑[log2(A308188(n+1))]` -/
def P4241567236610200201.Spec : Prop :=
  ∀ n, P4241567236610200201.a n = (A234016 n : ℝ)

end A234016

/-! ## A234016.P7987714279588415577

`∑[char[A055938(n+1)]]`
-/

namespace A234016.P7987714279588415577
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055938 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A234016.P7987714279588415577

namespace A234016

/-- `∑[char[A055938(n+1)]]` -/
def P7987714279588415577.Spec : Prop :=
  ∀ n, (P7987714279588415577.a n : ℤ) = A234016 n

end A234016

/-! ## A234016.P7649050812160628736

`(n-A080468(n+2))/2`
-/

namespace A234016.P7649050812160628736
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - A080468 (n + 2) : ℚ) / 2

end

end A234016.P7649050812160628736

namespace A234016

/-- `(n-A080468(n+2))/2` -/
def P7649050812160628736.Spec : Prop :=
  ∀ n, P7649050812160628736.a n = (A234016 n : ℚ)

end A234016

/-! ## A234016.P6824896242678567835

`(n+1-A100661(n+1))/2`
-/

namespace A234016.P6824896242678567835
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) - A100661 (n + 1) : ℚ) / 2

end

end A234016.P6824896242678567835

namespace A234016

/-- `(n+1-A100661(n+1))/2` -/
def P6824896242678567835.Spec : Prop :=
  ∀ n, P6824896242678567835.a n = (A234016 n : ℚ)

end A234016

/-! ## A234016.P8242221348424200566

`∑[A001221(A182105(n+1))]`
-/

namespace A234016.P8242221348424200566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A182105 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A234016.P8242221348424200566

namespace A234016

/-- `∑[A001221(A182105(n+1))]` -/
def P8242221348424200566.Spec : Prop :=
  ∀ n, P8242221348424200566.a n = A234016 n

end A234016

/-! ## A234016.P13732825818660102198

`(n-A000120(A339451(n)))/2`
-/

namespace A234016.P13732825818660102198
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - A000120 (A339451 n).toNat : ℚ) / 2

end

end A234016.P13732825818660102198

namespace A234016

/-- `(n-A000120(A339451(n)))/2` -/
def P13732825818660102198.Spec : Prop :=
  ∀ n, P13732825818660102198.a n = (A234016 n : ℚ)

end A234016

/-! ## A234016.P11545215030256510807

`∑[A000007((1-A213725(n))²)]`
-/

namespace A234016.P11545215030256510807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 ((1 - A213725 n) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A234016.P11545215030256510807

namespace A234016

/-- `∑[A000007((1-A213725(n))²)]` -/
def P11545215030256510807.Spec : Prop :=
  ∀ n, P11545215030256510807.a n = A234016 n

end A234016

/-! ## A234016.P1873209578254536609

`∑[A000007((1-A213727(n))²)]`
-/

namespace A234016.P1873209578254536609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 ((1 - A213727 n) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A234016.P1873209578254536609

namespace A234016

/-- `∑[A000007((1-A213727(n))²)]` -/
def P1873209578254536609.Spec : Prop :=
  ∀ n, P1873209578254536609.a n = A234016 n

end A234016

/-! ## A234016.P13258964423409685519

`∑[A129708(A213725(n)²)-1]`
-/

namespace A234016.P13258964423409685519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129708 (A213725 n ^ 2).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A234016.P13258964423409685519

namespace A234016

/-- `∑[A129708(A213725(n)²)-1]` -/
def P13258964423409685519.Spec : Prop :=
  ∀ n, P13258964423409685519.a n = A234016 n

end A234016

/-! ## A234016.P3856334777141256651

`∑[A079559(2*A182105(n+1))]`
-/

namespace A234016.P3856334777141256651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079559 (2 * A182105 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A234016.P3856334777141256651

namespace A234016

/-- `∑[A079559(2*A182105(n+1))]` -/
def P3856334777141256651.Spec : Prop :=
  ∀ n, P3856334777141256651.a n = A234016 n

end A234016

/-! ## A234016.P8448608236910612714

`A000027(n+1)%∑[A079559(n)]`
-/

namespace A234016.P8448608236910612714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079559 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000027 (n + 1)) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A234016.P8448608236910612714

namespace A234016

/-- `A000027(n+1)%∑[A079559(n)]` -/
def P8448608236910612714.Spec : Prop :=
  ∀ n, P8448608236910612714.a n = A234016 n

end A234016

/-!
# A234017: Inverse function for injection A055938.

The programs for A234017, the canonical program `A234017.P14444333569528327869` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A234017 has offset 0).

The definition of A234017 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A234017.P14444333569528327869

`(1-A079559(n))*A234016(n)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A234017

/-- `(1-A079559(n))*A234016(n)` -/
def P14444333569528327869.Spec : Prop :=
  ∀ n, P14444333569528327869.a n = A234017 n

theorem P14444333569528327869.correct : P14444333569528327869.Spec := by
  intro n
  simp only [A234017]

end A234017

/-! ## A234017.P14575651373283530007

`Δ[C(n+1-A046699(n+1), 2)]`
-/

namespace A234017.P14575651373283530007
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ((n + 1 : ℤ) - A046699 (n + 1)).toNat 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A234017.P14575651373283530007

namespace A234017

/-- `Δ[C(n+1-A046699(n+1), 2)]` -/
def P14575651373283530007.Spec : Prop :=
  ∀ n, P14575651373283530007.a n = A234017 n

end A234017

/-! ## A234017.P3709881869288601612

`A234016(n*A308187(n+1))`
-/

namespace A234017.P3709881869288601612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234016 ((n : ℤ) * A308187 (n + 1)).toNat

end

end A234017.P3709881869288601612

namespace A234017

/-- `A234016(n*A308187(n+1))` -/
def P3709881869288601612.Spec : Prop :=
  ∀ n, P3709881869288601612.a n = A234017 n

end A234017

/-! ## A234017.P13379382863401048120

`(A308188(n+1)-1)*A234016(n)`
-/

namespace A234017.P13379382863401048120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A308188 (n + 1) - 1) * A234016 n

end

end A234017.P13379382863401048120

namespace A234017

/-- `(A308188(n+1)-1)*A234016(n)` -/
def P13379382863401048120.Spec : Prop :=
  ∀ n, P13379382863401048120.a n = A234017 n

theorem P13379382863401048120.correct : P13379382863401048120.Spec := by
  intro n
  simp only [A234017, Nat.add_sub_cancel, A234017.P13379382863401048120.a, A234017.P14444333569528327869.a, A079559, A079559.P6833565121082423031.a, A234016, A234016.P16847082992809600842.a, A308188, A308188.P1668237942996527319.a, A043545, A043545.P6199121594405564387.a, A053644, A053644.P1707366427427647095.a, A036987, A036987.P1789601236562705309.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A234017

/-! ## A234017.P10906290542158922231

`∑[1-A079559(n)]*char[A055938(n+1)]`
-/

namespace A234017.P10906290542158922231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A079559 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055938 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A234017.P10906290542158922231

namespace A234017

/-- `∑[1-A079559(n)]*char[A055938(n+1)]` -/
def P10906290542158922231.Spec : Prop :=
  ∀ n, P10906290542158922231.a n = A234017 n

end A234017

/-! ## A234017.P14793148284055863114

`∑[A308188(n+1)-1]*char[A055938(n+1)]`
-/

namespace A234017.P14793148284055863114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308188 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055938 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A234017.P14793148284055863114

namespace A234017

/-- `∑[A308188(n+1)-1]*char[A055938(n+1)]` -/
def P14793148284055863114.Spec : Prop :=
  ∀ n, P14793148284055863114.a n = A234017 n

end A234017

/-! ## A234017.P1186251225783125129

`(n+1)%A046699(gcd(n, Δ[A046699(n+1)])+1)`
-/

namespace A234017.P1186251225783125129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046699 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A046699 (Int.gcd (n : ℤ) (f1 (n + 1) - f1 n) + 1))

end

end A234017.P1186251225783125129

namespace A234017

/-- `(n+1)%A046699(gcd(n, Δ[A046699(n+1)])+1)` -/
def P1186251225783125129.Spec : Prop :=
  ∀ n, P1186251225783125129.a n = A234017 n

end A234017

/-! ## A234017.P6939611251104749236

`∑[1-A257265(n)²%3]*char[A055938(n+1)]`
-/

namespace A234017.P6939611251104749236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - Int.tmod (A257265 n ^ 2) 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055938 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A234017.P6939611251104749236

namespace A234017

/-- `∑[1-A257265(n)²%3]*char[A055938(n+1)]` -/
def P6939611251104749236.Spec : Prop :=
  ∀ n, P6939611251104749236.a n = A234017 n

end A234017

/-! ## A234017.P12870033660028427517

`∑[1-A079559(n)]*A257260(A182105(n+1))`
-/

namespace A234017.P12870033660028427517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A079559 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A257260 (A182105 (n + 1)).toNat

end

end A234017.P12870033660028427517

namespace A234017

/-- `∑[1-A079559(n)]*A257260(A182105(n+1))` -/
def P12870033660028427517.Spec : Prop :=
  ∀ n, P12870033660028427517.a n = A234017 n

end A234017

/-! ## A234017.P11769405248046457774

`∑[A308188(n+1)-1]*A257260(A182105(n+1))`
-/

namespace A234017.P11769405248046457774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308188 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A257260 (A182105 (n + 1)).toNat

end

end A234017.P11769405248046457774

namespace A234017

/-- `∑[A308188(n+1)-1]*A257260(A182105(n+1))` -/
def P11769405248046457774.Spec : Prop :=
  ∀ n, P11769405248046457774.a n = A234017 n

end A234017

/-! ## A234017.P12418635342563749414

`A234016(n-A005187(A213714(n)))`
-/

namespace A234017.P12418635342563749414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234016 ((n : ℤ) - A005187 (A213714 n).toNat).toNat

end

end A234017.P12418635342563749414

namespace A234017

/-- `A234016(n-A005187(A213714(n)))` -/
def P12418635342563749414.Spec : Prop :=
  ∀ n, P12418635342563749414.a n = A234017 n

end A234017

/-! ## A234017.P3373515194842361795

`A000120(A213714(n))+A234016(n)-A213714(n)`
-/

namespace A234017.P3373515194842361795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A213714 n).toNat + (A234016 n - A213714 n)

end

end A234017.P3373515194842361795

namespace A234017

/-- `A000120(A213714(n))+A234016(n)-A213714(n)` -/
def P3373515194842361795.Spec : Prop :=
  ∀ n, P3373515194842361795.a n = A234017 n

end A234017

/-!
# A234018: Values at middle points of each row of A233270: a(n) = A233270(A233268(n)).

The programs for A234018, there is no canonical definition to state claims against.
-/

/-! ## A234018.P11496973282491421295

`A233270(A233268(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A234018.P11496973282491421295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233270 (A233268 (n + 1)).toNat

end

end A234018.P11496973282491421295

/-! ## A234018.P722068562449504580

`A233270(ceil((A218600(n+1)+A218600(n))/2))`
-/

namespace A234018.P722068562449504580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233270 ⌈(A218600 (n + 1) + A218600 n : ℚ) / 2⌉.toNat

end

end A234018.P722068562449504580

/-! ## A234018.P15547847789594355688

`A233270(floor(root(A180256(2*n+5), 8)))`
-/

namespace A234018.P15547847789594355688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233270 ⌊(A180256 (2 * n + 5) : ℝ) ^ (1 / (8 : ℝ))⌋.toNat

end

end A234018.P15547847789594355688

/-!
# A234019: Maximum values occurring in each row of A233270: a(n) = A233270(A233268(n) - A234020(n)).

The programs for A234019, there is no canonical definition to state claims against.
-/

/-! ## A234019.P4219649000036012659

`A233270(A233268(n+1)-A234020(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A234019.P4219649000036012659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233270 (A233268 (n + 1) - A234020 (n + 1)).toNat

end

end A234019.P4219649000036012659

/-!
# A234020: Offsets from the middle point of each row of A233270 to the nearest point containing a maximum value of that range.

The programs for A234020, there is no canonical definition to state claims against.
-/

/-! ## A234020.P170628604738360098

`and(A097807(n), A122354(A001591(n)))`
-/

namespace A234020.P170628604738360098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A097807 n) (A122354 (A001591 n).toNat)

end

end A234020.P170628604738360098

/-! ## A234020.P7325012123744178350

`and(A006450(A279865(n+4)), A359894(n))`
-/

namespace A234020.P7325012123744178350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A006450 (A279865 (n + 4)).toNat) (A359894 n)

end

end A234020.P7325012123744178350

/-! ## A234020.P16098020125805617730

`and(A281113(A362608(3*n+4)), A359894(n))`
-/

namespace A234020.P16098020125805617730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A281113 (A362608 (3 * n + 4)).toNat) (A359894 n)

end

end A234020.P16098020125805617730

/-!
# A234021: Numbers with digits in nondecreasing order such that sum of squares of digits is a prime.

The programs for A234021, there is no canonical definition to state claims against.
-/

/-! ## A234021.P7606278278667565149

`∩[A009994(n+1), A108662(n+1)]`
-/

namespace A234021.P7606278278667565149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009994 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108662 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A234021.P7606278278667565149

/-! ## A234021.P7383971184362505822

`record[A004185(A108662(n+1))]`
-/

namespace A234021.P7383971184362505822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004185 (A108662 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234021.P7383971184362505822

/-! ## A234021.P13364340054017782937

`eq[A097601(n), A295335(∑{digits}[n, #²])]`
-/

namespace A234021.P13364340054017782937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097601 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295335 ((SequenceMachineLib.digits10 (f3 n)).map fun (x : ℕ) => x ^ 2).sum

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A234021.P13364340054017782937

/-! ## A234021.P17618756683935575314

`eq[A007920(A003132(n)), A097601(n)]`
-/

namespace A234021.P17618756683935575314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007920 (A003132 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097601 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A234021.P17618756683935575314

/-! ## A234021.P14256292689308999071

`∩[A108662(n+1), A102827(n)]`
-/

namespace A234021.P14256292689308999071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108662 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102827 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A234021.P14256292689308999071

/-!
# A234022: a(n) = A000120(A193231(n)); number of 1-bits in blue code for n.

The programs for A234022, there is no canonical definition to state claims against.
-/

/-! ## A234022.P5705837690904186723

`A000120(A193231(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A234022.P5705837690904186723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A193231 n).toNat

end

end A234022.P5705837690904186723

/-! ## A234022.P6888074041925197908

`A290251(A234025(n))`
-/

namespace A234022.P6888074041925197908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290251 (A234025 n).toNat

end

end A234022.P6888074041925197908

/-! ## A234022.P11031385914195611500

`A005811(A234613(n))`
-/

namespace A234022.P11031385914195611500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 (A234613 n).toNat

end

end A234022.P11031385914195611500

/-! ## A234022.P11058671360940363544

`∑{e}[A286601(n), #]`
-/

namespace A234022.P11058671360940363544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286601 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A234022.P11058671360940363544

/-! ## A234022.P3770992208992692739

`A000120(A379472(n))`
-/

namespace A234022.P3770992208992692739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A379472 n).toNat

end

end A234022.P3770992208992692739

/-! ## A234022.P1775200910734671839

`A209281(A234612(n)+1)`
-/

namespace A234022.P1775200910734671839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209281 (A234612 n + 1).toNat

end

end A234022.P1775200910734671839

/-! ## A234022.P5849830398207780541

`A000120(xor(n, A280507(n)))`
-/

namespace A234022.P5849830398207780541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (Int.xor (n : ℤ) (A280507 n)).toNat

end

end A234022.P5849830398207780541

/-! ## A234022.P7088850956694672706

`A000120(A234612(floor(xor(n, 2*n)/2)))`
-/

namespace A234022.P7088850956694672706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A234612 ⌊(Nat.xor n (2 * n) : ℚ) / 2⌋.toNat).toNat

end

end A234022.P7088850956694672706

/-! ## A234022.P5160541690226023898

`A000120(A234612(ceil(xor(n-1, 2*n)/2)))`
-/

namespace A234022.P5160541690226023898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A234612 ⌈(Int.xor ((n : ℤ) - 1) (2 * n : ℤ) : ℚ) / 2⌉.toNat).toNat

end

end A234022.P5160541690226023898

/-! ## A234022.P18332462657449078354

`A324467(A193231(n))/A157532(n+1)`
-/

namespace A234022.P18332462657449078354
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A324467 (A193231 n).toNat : ℚ) / (A157532 (n + 1) : ℚ)

end

end A234022.P18332462657449078354

/-! ## A234022.P16432732792945680608

`A000120(A234027(A234026(A234026(n))))`
-/

namespace A234022.P16432732792945680608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A234027 (A234026 (A234026 n).toNat).toNat).toNat

end

end A234022.P16432732792945680608

/-! ## A234022.P5491265435551740111

`A001222(A286601(n))`
-/

namespace A234022.P5491265435551740111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A286601 n).toNat

end

end A234022.P5491265435551740111

/-! ## A234022.P14476380767256299588

`A256479(A233276(A193231(A003188(2*n+1))))`
-/

namespace A234022.P14476380767256299588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256479 (A233276 (A193231 (A003188 (2 * n + 1)).toNat).toNat).toNat

end

end A234022.P14476380767256299588

/-! ## A234022.P17890162712975392526

`∑{e}[A366263(n), #]`
-/

namespace A234022.P17890162712975392526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366263 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A234022.P17890162712975392526

/-! ## A234022.P4076364471956452313

`A001222(A366263(n))`
-/

namespace A234022.P4076364471956452313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A366263 n).toNat

end

end A234022.P4076364471956452313

/-! ## A234022.P18377437276960038981

`∑{e}[A365810(n), #]`
-/

namespace A234022.P18377437276960038981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365810 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A234022.P18377437276960038981

/-! ## A234022.P1938004945236016102

`A001221(A365810(n))`
-/

namespace A234022.P1938004945236016102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A365810 n).toNat

end

end A234022.P1938004945236016102

/-!
# A234024: Self-inverse permutation of nonnegative integers, A059893-conjugate of blue code: a(n) = A059893(A193231(A059893(n))).

The programs for A234024, there is no canonical definition to state claims against.
-/

/-! ## A234024.P4308617756985307607

`A344618(A308097(n+1))+A105027(n)`
-/

namespace A234024.P4308617756985307607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344618 (A308097 (n + 1)).toNat + A105027 n

end

end A234024.P4308617756985307607

/-! ## A234024.P16638585703159385855

`A105027(n)+A037859(A194695(n+5))`
-/

namespace A234024.P16638585703159385855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105027 n + A037859 (A194695 (n + 5)).toNat

end

end A234024.P16638585703159385855

/-! ## A234024.P18158687647202886551

`or(A105027(n), A324802(A036561(n)))`
-/

namespace A234024.P18158687647202886551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A105027 n) (A324802 (A036561 n).toNat)

end

end A234024.P18158687647202886551

/-! ## A234024.P12201140405112285311

`A349798(A000041(n))+A105027(n)`
-/

namespace A234024.P12201140405112285311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349798 (A000041 n).toNat + A105027 n

end

end A234024.P12201140405112285311

/-! ## A234024.P5140004383506003106

`A105027(or(n, A353836(A060058(n))))`
-/

namespace A234024.P5140004383506003106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105027 (Int.lor (n : ℤ) (A353836 (A060058 n).toNat)).toNat

end

end A234024.P5140004383506003106

/-!
# A234025: Permutation of nonnegative integers: a(n) = A054429(A193231(n)).

The programs for A234025, there is no canonical definition to state claims against.
-/

/-! ## A234025.P493618367171251241

`A180201(A234613(n))`
-/

namespace A234025.P493618367171251241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180201 (A234613 n).toNat

end

end A234025.P493618367171251241

/-! ## A234025.P14160138066593752731

`A233279(A234612(n))`
-/

namespace A234025.P14160138066593752731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233279 (A234612 n).toNat

end

end A234025.P14160138066593752731

/-! ## A234025.P11001850742846213530

`A006068(A233280(A193231(n)))`
-/

namespace A234025.P11001850742846213530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006068 (A233280 (A193231 n).toNat).toNat

end

end A234025.P11001850742846213530

/-! ## A234025.P13699367095076581020

`A234027(A193231(A234026(n)))`
-/

namespace A234025.P13699367095076581020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234027 (A193231 (A234026 n).toNat).toNat

end

end A234025.P13699367095076581020

/-! ## A234025.P12813602094508828952

`A233279(A234026(A233279(n)))`
-/

namespace A234025.P12813602094508828952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233279 (A234026 (A233279 n).toNat).toNat

end

end A234025.P12813602094508828952

/-! ## A234025.P16458824535509859264

`xor(A193231(n), A266539(A062383(n)))`
-/

namespace A234025.P16458824535509859264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A193231 n) (A266539 (A062383 n).toNat)

end

end A234025.P16458824535509859264

/-! ## A234025.P9237444473713370701

`A233275(n)+A233277(n)-A193231(n)`
-/

namespace A234025.P9237444473713370701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233275 n + (A233277 n - A193231 n)

end

end A234025.P9237444473713370701

/-! ## A234025.P6577751197102890227

`A233277(A233276(n))+n-A193231(n)`
-/

namespace A234025.P6577751197102890227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233277 (A233276 n).toNat + ((n : ℤ) - A193231 n)

end

end A234025.P6577751197102890227

/-! ## A234025.P12012979343486287387

`A233275(A233278(n))+n-A193231(n)`
-/

namespace A234025.P12012979343486287387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233275 (A233278 n).toNat + ((n : ℤ) - A193231 n)

end

end A234025.P12012979343486287387

/-! ## A234025.P7794269326364950580

`A193231(A234024(A234026(A193231(A234024(n)))))`
-/

namespace A234025.P7794269326364950580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193231 (A234024 (A234026 (A193231 (A234024 n).toNat).toNat).toNat).toNat

end

end A234025.P7794269326364950580

/-! ## A234025.P9016911646967284949

`A233277(A233276(A193231(A233276(A233275(n)))))`
-/

namespace A234025.P9016911646967284949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233277 (A233276 (A193231 (A233276 (A233275 n).toNat).toNat).toNat).toNat

end

end A234025.P9016911646967284949

/-! ## A234025.P14835046876705597952

`A233275(A233278(A193231(A233278(A233277(n)))))`
-/

namespace A234025.P14835046876705597952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233275 (A233278 (A193231 (A233278 (A233277 n).toNat).toNat).toNat).toNat

end

end A234025.P14835046876705597952

/-! ## A234025.P13936732653282460429

`A234026(A234026(A246159(A234026(2*n+1))))`
-/

namespace A234025.P13936732653282460429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234026 (A234026 (A246159 (A234026 (2 * n + 1)).toNat).toNat).toNat

end

end A234025.P13936732653282460429

/-! ## A234025.P6268632576228131681

`A193231(A245812(n))`
-/

namespace A234025.P6268632576228131681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193231 (A245812 n).toNat

end

end A234025.P6268632576228131681

/-! ## A234025.P12774835558908601895

`A245812(A234027(n))`
-/

namespace A234025.P12774835558908601895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245812 (A234027 n).toNat

end

end A234025.P12774835558908601895

/-! ## A234025.P3867339806481256141

`A234613(2*A245812(n))/2`
-/

namespace A234025.P3867339806481256141
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A234613 (2 * A245812 n).toNat : ℚ) / 2

end

end A234025.P3867339806481256141

/-! ## A234025.P6780505094433192915

`A246208(A246209(n))+n-A193231(n)`
-/

namespace A234025.P6780505094433192915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246208 (A246209 n).toNat + ((n : ℤ) - A193231 n)

end

end A234025.P6780505094433192915

/-! ## A234025.P17256461837161336998

`A246208(A246209(A193231(A246208(A246207(n)))))`
-/

namespace A234025.P17256461837161336998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246208 (A246209 (A193231 (A246208 (A246207 n).toNat).toNat).toNat).toNat

end

end A234025.P17256461837161336998

/-! ## A234025.P7767698560555868004

`A246210(A246207(n))+n-A193231(n)`
-/

namespace A234025.P7767698560555868004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246210 (A246207 n).toNat + ((n : ℤ) - A193231 n)

end

end A234025.P7767698560555868004

/-! ## A234025.P5784962368881668542

`A246208(A246209(A193231(A246210(A246209(n)))))`
-/

namespace A234025.P5784962368881668542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246208 (A246209 (A193231 (A246210 (A246209 n).toNat).toNat).toNat).toNat

end

end A234025.P5784962368881668542

/-!
# A234026: Permutation of nonnegative integers: a(n) = A193231(A054429(n)).

The programs for A234026, there is no canonical definition to state claims against.
-/

/-! ## A234026.P4635219843731620332

`A234613(A180200(n))`
-/

namespace A234026.P4635219843731620332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234613 (A180200 n).toNat

end

end A234026.P4635219843731620332

/-! ## A234026.P10242012861147210783

`A234612(A233280(n))`
-/

namespace A234026.P10242012861147210783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234612 (A233280 n).toNat

end

end A234026.P10242012861147210783

/-! ## A234026.P2182347070367950856

`A234612(A063946(floor(xor(n, 2*n)/2)))`
-/

namespace A234026.P2182347070367950856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234612 (A063946 ⌊(Nat.xor n (2 * n) : ℚ) / 2⌋.toNat).toNat

end

end A234026.P2182347070367950856

/-! ## A234026.P3816440693298006456

`A234612(A063946(ceil(xor(n-1, 2*n)/2)))`
-/

namespace A234026.P3816440693298006456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234612 (A063946 ⌈(Int.xor ((n : ℤ) - 1) (2 * n : ℤ) : ℚ) / 2⌉.toNat).toNat

end

end A234026.P3816440693298006456

/-! ## A234026.P17884323323513042732

`A234612(A063946(round(xor(n+1, 2*n+1)/2)))`
-/

namespace A234026.P17884323323513042732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234612 (A063946 (SequenceMachineLib.roundAway ((Nat.xor (n + 1) (2 * n + 1) : ℚ) / 2)).toNat).toNat

end

end A234026.P17884323323513042732

/-! ## A234026.P954800326771788255

`A193231(A234025(A193231(n)))`
-/

namespace A234026.P954800326771788255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193231 (A234025 (A193231 n).toNat).toNat

end

end A234026.P954800326771788255

/-! ## A234026.P1503016768836688545

`A193231(A233277(A233276(n)))`
-/

namespace A234026.P1503016768836688545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193231 (A233277 (A233276 n).toNat).toNat

end

end A234026.P1503016768836688545

/-! ## A234026.P2840947490796769332

`A193231(A233275(A233278(n)))`
-/

namespace A234026.P2840947490796769332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193231 (A233275 (A233278 n).toNat).toNat

end

end A234026.P2840947490796769332

/-! ## A234026.P14050037760949158472

`A234025(A234025(A234025(n)))`
-/

namespace A234026.P14050037760949158472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234025 (A234025 (A234025 n).toNat).toNat

end

end A234026.P14050037760949158472

/-! ## A234026.P732862834481235387

`A234612(A063946(xor(n, A004526(n))))`
-/

namespace A234026.P732862834481235387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234612 (A063946 (Int.xor (n : ℤ) (A004526 n)).toNat).toNat

end

end A234026.P732862834481235387

/-! ## A234026.P11471172314739756711

`A193231(A233275(n)+A233277(n)-n)`
-/

namespace A234026.P11471172314739756711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193231 (A233275 n + (A233277 n - (n : ℤ))).toNat

end

end A234026.P11471172314739756711

/-! ## A234026.P13935478571242088430

`A193231(A233275(n)-(n-A233277(n)))`
-/

namespace A234026.P13935478571242088430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193231 (A233275 n - ((n : ℤ) - A233277 n)).toNat

end

end A234026.P13935478571242088430

/-! ## A234026.P15297764536993335684

`A246159(A054429(A234027(2*n+1)))`
-/

namespace A234026.P15297764536993335684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246159 (A054429 (A234027 (2 * n + 1)).toNat).toNat

end

end A234026.P15297764536993335684

/-! ## A234026.P280061806619822630

`A246159(A234612(A003188(A054429(2*n+1))))`
-/

namespace A234026.P280061806619822630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246159 (A234612 (A003188 (A054429 (2 * n + 1)).toNat).toNat).toNat

end

end A234026.P280061806619822630

/-! ## A234026.P10625521863674275227

`A245812(A193231(n))`
-/

namespace A234026.P10625521863674275227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245812 (A193231 n).toNat

end

end A234026.P10625521863674275227

/-! ## A234026.P6906944618158982942

`A234027(A245812(n))`
-/

namespace A234026.P6906944618158982942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234027 (A245812 n).toNat

end

end A234026.P6906944618158982942

/-! ## A234026.P13850852253510206367

`A245812(xor(n, A280507(n)))`
-/

namespace A234026.P13850852253510206367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245812 (Int.xor (n : ℤ) (A280507 n)).toNat

end

end A234026.P13850852253510206367

/-! ## A234026.P12050774756123658812

`A245812(A234613(2*n)/2)`
-/

namespace A234026.P12050774756123658812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245812 (SequenceMachineLib.roundAway ((A234613 (2 * n) : ℚ) / 2)).toNat

end

end A234026.P12050774756123658812

/-! ## A234026.P6065973364033781888

`A006068(A245444(A006068(n)))`
-/

namespace A234026.P6065973364033781888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006068 (A245444 (A006068 n).toNat).toNat

end

end A234026.P6065973364033781888

/-! ## A234026.P7960576337389362207

`A193231(A246208(A246209(n)))`
-/

namespace A234026.P7960576337389362207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193231 (A246208 (A246209 n).toNat).toNat

end

end A234026.P7960576337389362207

/-!
# A234027: Self-inverse permutation of nonnegative integers, A054429-conjugate of blue code: a(n) = A054429(A193231(A054429(n))).

The programs for A234027, there is no canonical definition to state claims against.
-/

/-! ## A234027.P3604053443568774518

`xor(n, A280507(A234025(n)))`
-/

namespace A234027.P3604053443568774518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A280507 (A234025 n).toNat)

end

end A234027.P3604053443568774518

/-! ## A234027.P13884979131463210345

`xor(n, A280507(A234026(n)))`
-/

namespace A234027.P13884979131463210345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A280507 (A234026 n).toNat)

end

end A234027.P13884979131463210345

/-! ## A234027.P5371488314533620318

`A234025(A233279(ceil(xor(n-1, 2*n)/2)))`
-/

namespace A234027.P5371488314533620318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234025 (A233279 ⌈(Int.xor ((n : ℤ) - 1) (2 * n : ℤ) : ℚ) / 2⌉.toNat).toNat

end

end A234027.P5371488314533620318

/-! ## A234027.P3082118372559886354

`A233279(A193231(A180200(n)))`
-/

namespace A234027.P3082118372559886354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233279 (A193231 (A180200 n).toNat).toNat

end

end A234027.P3082118372559886354

/-! ## A234027.P2006114692855681359

`A234025(A234025(A193231(n)))`
-/

namespace A234027.P2006114692855681359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234025 (A234025 (A193231 n).toNat).toNat

end

end A234027.P2006114692855681359

/-! ## A234027.P4386428203177709717

`A193231(A234026(A234026(n)))`
-/

namespace A234027.P4386428203177709717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193231 (A234026 (A234026 n).toNat).toNat

end

end A234027.P4386428203177709717

/-! ## A234027.P2862870041812231662

`A233277(A233276(A193231(A233277(A233276(n)))))`
-/

namespace A234027.P2862870041812231662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233277 (A233276 (A193231 (A233277 (A233276 n).toNat).toNat).toNat).toNat

end

end A234027.P2862870041812231662

/-! ## A234027.P729010925920472694

`A233275(A233278(A193231(A233275(A233278(n)))))`
-/

namespace A234027.P729010925920472694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233275 (A233278 (A193231 (A233275 (A233278 n).toNat).toNat).toNat).toNat

end

end A234027.P729010925920472694

/-! ## A234027.P6613860935703259931

`A234025(A233280(2*n))/2`
-/

namespace A234027.P6613860935703259931
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A234025 (A233280 (2 * n)).toNat : ℚ) / 2

end

end A234027.P6613860935703259931

/-! ## A234027.P15221687370901917429

`A233279(A234026(2*n))/2`
-/

namespace A234027.P15221687370901917429
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A233279 (A234026 (2 * n)).toNat : ℚ) / 2

end

end A234027.P15221687370901917429

/-! ## A234027.P69013396638640083

`A245812(A234025(n))`
-/

namespace A234027.P69013396638640083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245812 (A234025 n).toNat

end

end A234027.P69013396638640083

/-! ## A234027.P6509476264508968977

`A234026(A245812(n))`
-/

namespace A234027.P6509476264508968977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234026 (A245812 n).toNat

end

end A234027.P6509476264508968977

/-! ## A234027.P928020974436580192

`A245812(A193231(A245812(A117966(A117967(n)))))`
-/

namespace A234027.P928020974436580192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245812 (A193231 (A245812 (A117966 (A117967 n).toNat).toNat).toNat).toNat

end

end A234027.P928020974436580192

/-! ## A234027.P4980752134097474899

`A245812(A193231(A245812(A234024(A234024(n)))))`
-/

namespace A234027.P4980752134097474899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245812 (A193231 (A245812 (A234024 (A234024 n).toNat).toNat).toNat).toNat

end

end A234027.P4980752134097474899

/-! ## A234027.P4316482197826480304

`A246208(A246209(A193231(A246208(A246209(n)))))`
-/

namespace A234027.P4316482197826480304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246208 (A246209 (A193231 (A246208 (A246209 n).toNat).toNat).toNat).toNat

end

end A234027.P4316482197826480304

/-! ## A234027.P4780152465292601956

`A246210(A246207(A193231(A246210(A246207(n)))))`
-/

namespace A234027.P4780152465292601956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246210 (A246207 (A193231 (A246210 (A246207 n).toNat).toNat).toNat).toNat

end

end A234027.P4780152465292601956

/-!
# A234028: Number of (n+1)X(n+1) 0..4 arrays with every 2X2 subblock having the absolute values of all six edge and diagonal differences no larger than 1.

The programs for A234028, there is no canonical definition to state claims against.
-/

/-! ## A234028.P18108109743606891007

`A234036((n+1)²+n²)`
-/

namespace A234028.P18108109743606891007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234036 ((n + 1) ^ 2 + n ^ 2)

end

end A234028.P18108109743606891007

/-!
# A234029: Number of (n+1) X (1+1) 0..4 arrays with every 2 X 2 subblock having the absolute values of all six edge and diagonal differences no larger than 1.

The programs for A234029, there is no canonical definition to state claims against.
-/

/-! ## A234029.P17224068345806646917

`A234036(∑[n]+1)`
-/

namespace A234029.P17224068345806646917
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234036 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A234029.P17224068345806646917

/-! ## A234029.P17593085451625827153

`or(1, A234036(A000124(n)))`
-/

namespace A234029.P17593085451625827153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A234036 (A000124 n).toNat)

end

end A234029.P17593085451625827153

/-! ## A234029.P3367135966939038863

`record[root(A234036(n+1), A055587(n))]`
-/

namespace A234029.P3367135966939038863
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A234036 (n + 1) : ℝ) ^ (1 / (A055587 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234029.P3367135966939038863

/-! ## A234029.P4009517515491240133

`record[root(A234036(n+1), A091150(n))]`
-/

namespace A234029.P4009517515491240133
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A234036 (n + 1) : ℝ) ^ (1 / (A091150 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234029.P4009517515491240133

/-! ## A234029.P18191014387903855020

`record[root(A234036(n+1), A174301(n))]`
-/

namespace A234029.P18191014387903855020
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A234036 (n + 1) : ℝ) ^ (1 / (A174301 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234029.P18191014387903855020

/-!
# A234030: Number of (n+1)X(2+1) 0..4 arrays with every 2X2 subblock having the absolute values of all six edge and diagonal differences no larger than 1.

The programs for A234030, there is no canonical definition to state claims against.
-/

/-! ## A234030.P15770875638407959181

`A234036(∑[n+1]+2)`
-/

namespace A234030.P15770875638407959181
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234036 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A234030.P15770875638407959181

/-! ## A234030.P15905067138449148787

`record[A005369(2*n)*A234036(n+2)]`
-/

namespace A234030.P15905067138449148787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005369 (2 * n) * A234036 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234030.P15905067138449148787

/-! ## A234030.P14771800616126583785

`A234036(A000096(n)+3)%A209847(n+1)`
-/

namespace A234030.P14771800616126583785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A234036 (A000096 n + 3).toNat) (A209847 (n + 1))

end

end A234030.P14771800616126583785

/-! ## A234030.P7840330507280311247

`record[A234036(abs(A201163(n)))]`
-/

namespace A234030.P7840330507280311247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234036 |A201163 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234030.P7840330507280311247

/-! ## A234030.P5123852707404422044

`record[A234036(Δ[A003453(n+5)])]`
-/

namespace A234030.P5123852707404422044
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234036 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234030.P5123852707404422044

/-!
# A234031: Number of (n+1) X (3+1) 0..4 arrays with every 2 X 2 subblock having the absolute values of all six edge and diagonal differences no larger than 1.

The programs for A234031, there is no canonical definition to state claims against.
-/

/-! ## A234031.P13176731301532432658

`A234036(∑[n+2]+4)`
-/

namespace A234031.P13176731301532432658
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234036 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A234031.P13176731301532432658

/-! ## A234031.P5683072369950769934

`or(1, A234036(A167614(n+1)))`
-/

namespace A234031.P5683072369950769934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A234036 (A167614 (n + 1)).toNat)

end

end A234031.P5683072369950769934

/-! ## A234031.P18175305947271013792

`A234036(A167614(n+1))+A178798(n)`
-/

namespace A234031.P18175305947271013792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234036 (A167614 (n + 1)).toNat + A178798 n

end

end A234031.P18175305947271013792

/-! ## A234031.P16994386931035230182

`lcm(A020985(n), A234036(A167614(n+1)))`
-/

namespace A234031.P16994386931035230182
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A234036 (A167614 (n + 1)).toNat)

end

end A234031.P16994386931035230182

/-! ## A234031.P7082907135677619874

`A326291(n+1)+A234036(A167614(n+1))`
-/

namespace A234031.P7082907135677619874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326291 (n + 1) + A234036 (A167614 (n + 1)).toNat

end

end A234031.P7082907135677619874

/-!
# A234032: Number of (n+1)X(4+1) 0..4 arrays with every 2X2 subblock having the absolute values of all six edge and diagonal differences no larger than 1.

The programs for A234032, there is no canonical definition to state claims against.
-/

/-! ## A234032.P5634396448129400038

`A234036(A374004(n+1))`
-/

namespace A234032.P5634396448129400038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234036 (A374004 (n + 1)).toNat

end

end A234032.P5634396448129400038

/-! ## A234032.P582754739362080034

`A234036(A141214(n)+7)`
-/

namespace A234032.P582754739362080034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234036 (A141214 n + 7).toNat

end

end A234032.P582754739362080034

/-! ## A234032.P5674002619858346792

`A234036(A052905(n)+9)`
-/

namespace A234032.P5674002619858346792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234036 (A052905 n + 9).toNat

end

end A234032.P5674002619858346792

/-! ## A234032.P16804071388098205129

`A234036(A055999(n)+10)`
-/

namespace A234032.P16804071388098205129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234036 (A055999 n + 10).toNat

end

end A234032.P16804071388098205129

/-! ## A234032.P2049627670710846252

`A234036(A167614(n+2)+1)`
-/

namespace A234032.P2049627670710846252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234036 (A167614 (n + 2) + 1).toNat

end

end A234032.P2049627670710846252

/-!
# A234033: Number of (n+1)X(5+1) 0..4 arrays with every 2X2 subblock having the absolute values of all six edge and diagonal differences no larger than 1.

The programs for A234033, there is no canonical definition to state claims against.
-/

/-! ## A234033.P15530501934441510516

`A234036(A374005(n+1))`
-/

namespace A234033.P15530501934441510516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234036 (A374005 (n + 1)).toNat

end

end A234033.P15530501934441510516

/-! ## A234033.P10157781725796321347

`A234036(A167499(n+3))`
-/

namespace A234033.P10157781725796321347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234036 (A167499 (n + 3)).toNat

end

end A234033.P10157781725796321347

/-! ## A234033.P17695001212994722149

`A234036(A056000(n)+15)`
-/

namespace A234033.P17695001212994722149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234036 (A056000 n + 15).toNat

end

end A234033.P17695001212994722149

/-! ## A234033.P2555974798269934072

`A234036(Δ[A264443(n)])`
-/

namespace A234033.P2555974798269934072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234036 (f1 (n + 1) - f1 n).toNat

end

end A234033.P2555974798269934072

/-! ## A234033.P427414408384553634

`A234036(eq[5, A200370(n+1)])`
-/

namespace A234033.P427414408384553634
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234036 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A234033.P427414408384553634

/-!
# A234034: Number of (n+1) X (6+1) 0..4 arrays with every 2 X 2 subblock having the absolute values of all six edge and diagonal differences no larger than 1.

The programs for A234034, there is no canonical definition to state claims against.
-/

/-! ## A234034.P15965185183843123404

`A234036(A374007(n+1))`
-/

namespace A234034.P15965185183843123404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234036 (A374007 (n + 1)).toNat

end

end A234034.P15965185183843123404

/-! ## A234034.P265089390611260698

`A234036(Δ[A264443(n)]+10)`
-/

namespace A234034.P265089390611260698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234036 (f1 (n + 1) - f1 n + 10).toNat

end

end A234034.P265089390611260698

/-! ## A234034.P8846624454247808443

`A234036(A155212(n+2)+3)`
-/

namespace A234034.P8846624454247808443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234036 (A155212 (n + 2) + 3).toNat

end

end A234034.P8846624454247808443

/-! ## A234034.P9560652947334825872

`A234036(eq[8, A185782(n+1)])`
-/

namespace A234034.P9560652947334825872
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234036 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A234034.P9560652947334825872

/-!
# A234035: Number of (n+1)X(7+1) 0..4 arrays with every 2X2 subblock having the absolute values of all six edge and diagonal differences no larger than 1.

The programs for A234035, there is no canonical definition to state claims against.
-/

/-! ## A234035.P10942426800516339514

`A234036(A167614(n+5)+4)`
-/

namespace A234035.P10942426800516339514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234036 (A167614 (n + 5) + 4).toNat

end

end A234035.P10942426800516339514

/-! ## A234035.P5170448789654348430

`A234036(eq[32, A057728(n+1)])`
-/

namespace A234035.P5170448789654348430
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  32

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057728 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234036 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A234035.P5170448789654348430

/-!
# A234036: T(n,k)=Number of (n+1)X(k+1) 0..4 arrays with every 2X2 subblock having the absolute values of all six edge and diagonal differences no larger than 1.

The programs for A234036, there is no canonical definition to state claims against.
-/

/-! ## A234036.P18184664326231282544

`A234184(n+1)-A060747(A209829(n+1))`
-/

namespace A234036.P18184664326231282544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234184 (n + 1) - A060747 (A209829 (n + 1)).toNat

end

end A234036.P18184664326231282544

/-! ## A234036.P4457070911010211796

`A234184(n+1)-A000265(A234421(n+1)-A234184(n+1))`
-/

namespace A234036.P4457070911010211796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234184 (n + 1) - A000265 (A234421 (n + 1) - A234184 (n + 1)).toNat

end

end A234036.P4457070911010211796

/-! ## A234036.P3614934885518460318

`A234184(n+1)-A302032(A234421(n+1)-A234184(n+1))`
-/

namespace A234036.P3614934885518460318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234184 (n + 1) - A302032 (A234421 (n + 1) - A234184 (n + 1)).toNat

end

end A234036.P3614934885518460318

/-! ## A234036.P6828390393944255857

`A234184(n+1)-A005843(A209848(n+1)-A209969(n+1))+1`
-/

namespace A234036.P6828390393944255857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234184 (n + 1) - A005843 (A209848 (n + 1) - A209969 (n + 1)).toNat + 1

end

end A234036.P6828390393944255857

/-! ## A234036.P17206300424080076090

`A234184(n+1)-A005843(A210061(n+1)-A210143(n+1))+1`
-/

namespace A234036.P17206300424080076090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234184 (n + 1) - A005843 (A210061 (n + 1) - A210143 (n + 1)).toNat + 1

end

end A234036.P17206300424080076090

/-!
# A234037: The union of odious numbers with evil squares and evil numbers with odious squares.

The programs for A234037, the canonical program `A234037.P1447996896822888856` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A234037 has offset 1).

The definition of A234037 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A234037.P1447996896822888856

`eq[A228039(n), A254651(2*n)]`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A234037

/-- `eq[A228039(n), A254651(2*n)]` -/
def P1447996896822888856.Spec : Prop :=
  ∀ n, (P1447996896822888856.a n : ℤ) = A234037 (n + 1)

theorem P1447996896822888856.correct : P1447996896822888856.Spec := by
  intro n
  simp only [A234037, Nat.add_sub_cancel]

end A234037

/-! ## A234037.P11340094014721360579

`eq[A228039(n), A228495(2*n+1)]`
-/

namespace A234037.P11340094014721360579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228039 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228495 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A234037.P11340094014721360579

namespace A234037

/-- `eq[A228039(n), A228495(2*n+1)]` -/
def P11340094014721360579.Spec : Prop :=
  ∀ n, (P11340094014721360579.a n : ℤ) = A234037 (n + 1)

end A234037

/-! ## A234037.P16681958999816580112

`eq[A029883(A001316(n)), A228039(n)]`
-/

namespace A234037.P16681958999816580112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029883 (A001316 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228039 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A234037.P16681958999816580112

namespace A234037

/-- `eq[A029883(A001316(n)), A228039(n)]` -/
def P16681958999816580112.Spec : Prop :=
  ∀ n, (P16681958999816580112.a n : ℤ) = A234037 (n + 1)

end A234037

/-! ## A234037.P18346647747014597239

`eq[A010059(n), A228039(n)]`
-/

namespace A234037.P18346647747014597239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010059 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228039 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A234037.P18346647747014597239

namespace A234037

/-- `eq[A010059(n), A228039(n)]` -/
def P18346647747014597239.Spec : Prop :=
  ∀ n, (P18346647747014597239.a n : ℤ) = A234037 (n + 1)

end A234037

/-! ## A234037.P8751248517123087164

`eq[0, A027656(A232243(n)²)]`
-/

namespace A234037.P8751248517123087164
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027656 (A232243 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A234037.P8751248517123087164

namespace A234037

/-- `eq[0, A027656(A232243(n)²)]` -/
def P8751248517123087164.Spec : Prop :=
  ∀ n, (P8751248517123087164.a n : ℤ) = A234037 (n + 1)

end A234037

/-! ## A234037.P929571211420159625

`eq[0, A035363(A232243(n)²)]`
-/

namespace A234037.P929571211420159625
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 (A232243 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A234037.P929571211420159625

namespace A234037

/-- `eq[0, A035363(A232243(n)²)]` -/
def P929571211420159625.Spec : Prop :=
  ∀ n, (P929571211420159625.a n : ℤ) = A234037 (n + 1)

end A234037

/-! ## A234037.P13037439796248550653

`eq[0, A035385(A232243(n)²)]`
-/

namespace A234037.P13037439796248550653
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035385 (A232243 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A234037.P13037439796248550653

namespace A234037

/-- `eq[0, A035385(A232243(n)²)]` -/
def P13037439796248550653.Spec : Prop :=
  ∀ n, (P13037439796248550653.a n : ℤ) = A234037 (n + 1)

end A234037

/-! ## A234037.P13453658140989825447

`eq[0, A035457(A232243(n)²)]`
-/

namespace A234037.P13453658140989825447
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035457 (A232243 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A234037.P13453658140989825447

namespace A234037

/-- `eq[0, A035457(A232243(n)²)]` -/
def P13453658140989825447.Spec : Prop :=
  ∀ n, (P13453658140989825447.a n : ℤ) = A234037 (n + 1)

end A234037

/-! ## A234037.P18161546406237456502

`eq[0, A035544(A232243(n)²)]`
-/

namespace A234037.P18161546406237456502
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035544 (A232243 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A234037.P18161546406237456502

namespace A234037

/-- `eq[0, A035544(A232243(n)²)]` -/
def P18161546406237456502.Spec : Prop :=
  ∀ n, (P18161546406237456502.a n : ℤ) = A234037 (n + 1)

end A234037

/-! ## A234037.P3360184830837706228

`eq[0, A046767(A232243(n)²)]`
-/

namespace A234037.P3360184830837706228
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046767 (A232243 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A234037.P3360184830837706228

namespace A234037

/-- `eq[0, A046767(A232243(n)²)]` -/
def P3360184830837706228.Spec : Prop :=
  ∀ n, (P3360184830837706228.a n : ℤ) = A234037 (n + 1)

end A234037

/-! ## A234037.P17784687189257766617

`eq[0, A115634(A232243(n)²)]`
-/

namespace A234037.P17784687189257766617
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115634 (A232243 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A234037.P17784687189257766617

namespace A234037

/-- `eq[0, A115634(A232243(n)²)]` -/
def P17784687189257766617.Spec : Prop :=
  ∀ n, (P17784687189257766617.a n : ℤ) = A234037 (n + 1)

end A234037

/-! ## A234037.P16236762146779731059

`lt[1, A006519(abs(A232243(n))+1)]`
-/

namespace A234037.P16236762146779731059
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (|A232243 n| + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A234037.P16236762146779731059

namespace A234037

/-- `lt[1, A006519(abs(A232243(n))+1)]` -/
def P16236762146779731059.Spec : Prop :=
  ∀ n, (P16236762146779731059.a n : ℤ) = A234037 (n + 1)

end A234037

/-! ## A234037.P1858456701264060215

`eq[A000069(n+1)%2, A228039(n)]`
-/

namespace A234037.P1858456701264060215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000069 (n + 1)) 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228039 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A234037.P1858456701264060215

namespace A234037

/-- `eq[A000069(n+1)%2, A228039(n)]` -/
def P1858456701264060215.Spec : Prop :=
  ∀ n, (P1858456701264060215.a n : ℤ) = A234037 (n + 1)

end A234037

/-! ## A234037.P8659582545529599266

`lt[A119282(abs(A232243(n)))+1+n, n+1]`
-/

namespace A234037.P8659582545529599266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119282 |A232243 n|.toNat + 1 + (n : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A234037.P8659582545529599266

namespace A234037

/-- `lt[A119282(abs(A232243(n)))+1+n, n+1]` -/
def P8659582545529599266.Spec : Prop :=
  ∀ n, (P8659582545529599266.a n : ℤ) = A234037 (n + 1)

end A234037

/-! ## A234037.P17280991133591547362

`lt[A130472(abs(A232243(n))+2)+n, n+1]`
-/

namespace A234037.P17280991133591547362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130472 (|A232243 n| + 2).toNat + (n : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A234037.P17280991133591547362

namespace A234037

/-- `lt[A130472(abs(A232243(n))+2)+n, n+1]` -/
def P17280991133591547362.Spec : Prop :=
  ∀ n, (P17280991133591547362.a n : ℤ) = A234037 (n + 1)

end A234037

/-! ## A234037.P2715452220664229988

`eq[A000035(A159918(n)), A010059(n)]`
-/

namespace A234037.P2715452220664229988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A159918 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010059 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A234037.P2715452220664229988

namespace A234037

/-- `eq[A000035(A159918(n)), A010059(n)]` -/
def P2715452220664229988.Spec : Prop :=
  ∀ n, (P2715452220664229988.a n : ℤ) = A234037 (n + 1)

end A234037

/-! ## A234037.P5769465292257028061

`eq[A010060(n), A059841(A159918(n))]`
-/

namespace A234037.P5769465292257028061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (A159918 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A234037.P5769465292257028061

namespace A234037

/-- `eq[A010060(n), A059841(A159918(n))]` -/
def P5769465292257028061.Spec : Prop :=
  ∀ n, (P5769465292257028061.a n : ℤ) = A234037 (n + 1)

end A234037

/-! ## A234037.P9896568413878536529

`eq[A010059(n), A010060(A004652(n))]`
-/

namespace A234037.P9896568413878536529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010059 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (A004652 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A234037.P9896568413878536529

namespace A234037

/-- `eq[A010059(n), A010060(A004652(n))]` -/
def P9896568413878536529.Spec : Prop :=
  ∀ n, (P9896568413878536529.a n : ℤ) = A234037 (n + 1)

end A234037

/-! ## A234037.P9504921865433494425

`eq[1, A010060(A004652(n))+A010060(n)]`
-/

namespace A234037.P9504921865433494425
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (A004652 n).toNat + A010060 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A234037.P9504921865433494425

namespace A234037

/-- `eq[1, A010060(A004652(n))+A010060(n)]` -/
def P9504921865433494425.Spec : Prop :=
  ∀ n, (P9504921865433494425.a n : ℤ) = A234037 (n + 1)

end A234037

/-! ## A234037.P16175713661333102568

`eq[1, A010060(A004652(n)-A010060(n))]`
-/

namespace A234037.P16175713661333102568
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (A004652 n - A010060 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A234037.P16175713661333102568

namespace A234037

/-- `eq[1, A010060(A004652(n)-A010060(n))]` -/
def P16175713661333102568.Spec : Prop :=
  ∀ n, (P16175713661333102568.a n : ℤ) = A234037 (n + 1)

end A234037

/-!
# A234038: Smallest positive integer solution x of 9*x - 2^n*y = 1.

The programs for A234038, the canonical program `A234038.P1315515233556980137` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A234038 has offset 0).

The definition of A234038 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A234038.P1315515233556980137

`2*(a(n-1)-4*a(n-3)+8*a(n-4))-1` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A234038

/-- `2*(a(n-1)-4*a(n-3)+8*a(n-4))-1` -/
def P1315515233556980137.Spec : Prop :=
  ∀ n, P1315515233556980137.a n = A234038 n

theorem P1315515233556980137.correct : P1315515233556980137.Spec := by
  intro n
  simp only [A234038]

end A234038

/-! ## A234038.P12849912262712611575

`a(n-1)+a(n-1)-A328824(n)` with `a(0)=1`
-/

namespace A234038.P12849912262712611575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (a (n - 1) - A328824 n)

end

end A234038.P12849912262712611575

namespace A234038

/-- `a(n-1)+a(n-1)-A328824(n)` -/
def P12849912262712611575.Spec : Prop :=
  ∀ n, P12849912262712611575.a n = A234038 n

end A234038

/-! ## A234038.P3667929090688669168

`(10*a(n-1)-1)%(2^n)` with `a(0)=1`
-/

namespace A234038.P3667929090688669168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.tmod (10 * a (n - 1) - 1) (2 ^ n : ℤ)

end

end A234038.P3667929090688669168

namespace A234038

/-- `(10*a(n-1)-1)%(2^n)` -/
def P3667929090688669168.Spec : Prop :=
  ∀ n, P3667929090688669168.a n = A234038 n

end A234038

/-! ## A234038.P10479347685242345657

`∑[and(ceil(2^(n-1)), A172481(n))]`
-/

namespace A234038.P10479347685242345657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ (A172481 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A234038.P10479347685242345657

namespace A234038

/-- `∑[and(ceil(2^(n-1)), A172481(n))]` -/
def P10479347685242345657.Spec : Prop :=
  ∀ n, P10479347685242345657.a n = A234038 n

end A234038

/-! ## A234038.P17367212708345093066

`and(A152046(n)², A255047(n))`
-/

namespace A234038.P17367212708345093066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A152046 n ^ 2) (A255047 n)

end

end A234038.P17367212708345093066

namespace A234038

/-- `and(A152046(n)², A255047(n))` -/
def P17367212708345093066.Spec : Prop :=
  ∀ n, P17367212708345093066.a n = A234038 n

end A234038

/-! ## A234038.P17815962325591174726

`(3*a(n-1))²%(2^n)` with `a(0)=1`
-/

namespace A234038.P17815962325591174726
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (3 * a (n - 1)) ^ 2 % 2 ^ n

end

end A234038.P17815962325591174726

namespace A234038

/-- `(3*a(n-1))²%(2^n)` -/
def P17815962325591174726.Spec : Prop :=
  ∀ n, (P17815962325591174726.a n : ℤ) = A234038 n

end A234038

/-! ## A234038.P16646688562640516005

`and(A077925(n)², A255047(n))`
-/

namespace A234038.P16646688562640516005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A077925 n ^ 2) (A255047 n)

end

end A234038.P16646688562640516005

namespace A234038

/-- `and(A077925(n)², A255047(n))` -/
def P16646688562640516005.Spec : Prop :=
  ∀ n, P16646688562640516005.a n = A234038 n

end A234038

/-! ## A234038.P9706348556024422664

`and(A001045(n+1)², A255047(n))`
-/

namespace A234038.P9706348556024422664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001045 (n + 1) ^ 2) (A255047 n)

end

end A234038.P9706348556024422664

namespace A234038

/-- `and(A001045(n+1)², A255047(n))` -/
def P9706348556024422664.Spec : Prop :=
  ∀ n, P9706348556024422664.a n = A234038 n

end A234038

/-! ## A234038.P14005135098079415895

`and(A169969(2*n+1)², A288663(2*n))`
-/

namespace A234038.P14005135098079415895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A169969 (2 * n + 1) ^ 2) (A288663 (2 * n))

end

end A234038.P14005135098079415895

namespace A234038

/-- `and(A169969(2*n+1)², A288663(2*n))` -/
def P14005135098079415895.Spec : Prop :=
  ∀ n, P14005135098079415895.a n = A234038 n

end A234038

/-! ## A234038.P2582135491185521405

`and(A127984(2*(n+1)), A255047(n))`
-/

namespace A234038.P2582135491185521405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A127984 (2 * (n + 1))) (A255047 n)

end

end A234038.P2582135491185521405

namespace A234038

/-- `and(A127984(2*(n+1)), A255047(n))` -/
def P2582135491185521405.Spec : Prop :=
  ∀ n, P2582135491185521405.a n = A234038 n

end A234038

/-! ## A234038.P16901016705599596816

`and(A000225(A028310(n)), A127984(2*(n+1)))`
-/

namespace A234038.P16901016705599596816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000225 (A028310 n).toNat) (A127984 (2 * (n + 1)))

end

end A234038.P16901016705599596816

namespace A234038

/-- `and(A000225(A028310(n)), A127984(2*(n+1)))` -/
def P16901016705599596816.Spec : Prop :=
  ∀ n, P16901016705599596816.a n = A234038 n

end A234038

/-! ## A234038.P1620712206413344703

`and(A059482(n), A255047(n))`
-/

namespace A234038.P1620712206413344703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A059482 n) (A255047 n)

end

end A234038.P1620712206413344703

namespace A234038

/-- `and(A059482(n), A255047(n))` -/
def P1620712206413344703.Spec : Prop :=
  ∀ n, P1620712206413344703.a n = A234038 n

end A234038

/-! ## A234038.P11245109138808133817

`abs(or(-2^n, ∑[10^n]))`
-/

namespace A234038.P11245109138808133817
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.lor (-(2 ^ n : ℤ)) ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)|

end

end A234038.P11245109138808133817

namespace A234038

/-- `abs(or(-2^n, ∑[10^n]))` -/
def P11245109138808133817.Spec : Prop :=
  ∀ n, P11245109138808133817.a n = A234038 n

end A234038

/-! ## A234038.P3061960900102757854

`A246059(n)%(2^n)+1`
-/

namespace A234038.P3061960900102757854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A246059 n) (2 ^ n : ℤ) + 1

end

end A234038.P3061960900102757854

namespace A234038

/-- `A246059(n)%(2^n)+1` -/
def P3061960900102757854.Spec : Prop :=
  ∀ n, P3061960900102757854.a n = A234038 n

end A234038

/-! ## A234038.P10231714190189231638

`and(-A002275(n+1), A255047(n))`
-/

namespace A234038.P10231714190189231638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A002275 (n + 1)) (A255047 n)

end

end A234038.P10231714190189231638

namespace A234038

/-- `and(-A002275(n+1), A255047(n))` -/
def P10231714190189231638.Spec : Prop :=
  ∀ n, P10231714190189231638.a n = A234038 n

end A234038

/-!
# A234039: 

The programs for A234039, there is no canonical definition to state claims against.
-/

/-! ## A234039.P6247147681977674539

`(2^3^n+1)/3^(n+1)`
-/

namespace A234039.P6247147681977674539
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 ^ 3 ^ n + 1 : ℚ) / (3 ^ (n + 1) : ℚ)

end

end A234039.P6247147681977674539

/-!
# A234040: a(n) = binomial(2*(n+1),n) * gcd(n,2)/(2*(n+1)).

The programs for A234040, the canonical program `A234040.P5959379338964386445` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A234040 has offset 0).

The definition of A234040 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A234040.P5959379338964386445

`C(2*(n+1), n)*gcd(n, 2)/(2*(n+1))`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A234040

/-- `C(2*(n+1), n)*gcd(n, 2)/(2*(n+1))` -/
def P5959379338964386445.Spec : Prop :=
  ∀ n, P5959379338964386445.a n = (A234040 n : ℚ)

end A234040

/-! ## A234040.P11674315831747440234

`A028303(comp[or(2, n)]+2)`
-/

namespace A234040.P11674315831747440234
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028303 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 2)

end

end A234040.P11674315831747440234

namespace A234040

/-- `A028303(comp[or(2, n)]+2)` -/
def P11674315831747440234.Spec : Prop :=
  ∀ n, P11674315831747440234.a n = A234040 n

end A234040

/-! ## A234040.P16184536358977754051

`A028303(or(2, comp[or(2, n)]))`
-/

namespace A234040.P16184536358977754051
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028303 (Nat.lor 2 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n))

end

end A234040.P16184536358977754051

namespace A234040

/-- `A028303(or(2, comp[or(2, n)]))` -/
def P16184536358977754051.Spec : Prop :=
  ∀ n, P16184536358977754051.a n = A234040 n

end A234040

/-! ## A234040.P12126244244461662510

`A000108(n+1)/(n%2+1)`
-/

namespace A234040.P12126244244461662510
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000108 (n + 1) : ℚ) / ((n % 2 + 1 : ℕ) : ℚ)

end

end A234040.P12126244244461662510

namespace A234040

/-- `A000108(n+1)/(n%2+1)` -/
def P12126244244461662510.Spec : Prop :=
  ∀ n, P12126244244461662510.a n = (A234040 n : ℚ)

end A234040

/-! ## A234040.P6629158530363296472

`A028303(A042964(n+1))`
-/

namespace A234040.P6629158530363296472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028303 (A042964 (n + 1)).toNat

end

end A234040.P6629158530363296472

namespace A234040

/-- `A028303(A042964(n+1))` -/
def P6629158530363296472.Spec : Prop :=
  ∀ n, P6629158530363296472.a n = A234040 n

end A234040

/-! ## A234040.P13633811714218031970

`A028303(A053438(n+1))`
-/

namespace A234040.P13633811714218031970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028303 (A053438 (n + 1)).toNat

end

end A234040.P13633811714218031970

namespace A234040

/-- `A028303(A053438(n+1))` -/
def P13633811714218031970.Spec : Prop :=
  ∀ n, P13633811714218031970.a n = A234040 n

end A234040

/-! ## A234040.P3585633452112024399

`∑[A071724(n)]/A000034(n)`
-/

namespace A234040.P3585633452112024399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071724 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A000034 n : ℚ)

end

end A234040.P3585633452112024399

namespace A234040

/-- `∑[A071724(n)]/A000034(n)` -/
def P3585633452112024399.Spec : Prop :=
  ∀ n, P3585633452112024399.a n = (A234040 n : ℚ)

end A234040

/-! ## A234040.P16792278654425747568

`A028303(A052928(n+2)+n)`
-/

namespace A234040.P16792278654425747568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028303 (A052928 (n + 2) + (n : ℤ)).toNat

end

end A234040.P16792278654425747568

namespace A234040

/-- `A028303(A052928(n+2)+n)` -/
def P16792278654425747568.Spec : Prop :=
  ∀ n, P16792278654425747568.a n = A234040 n

end A234040

/-! ## A234040.P4717264728396521244

`A000108(n+1)/A000034(n)`
-/

namespace A234040.P4717264728396521244
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000108 (n + 1) : ℚ) / (A000034 n : ℚ)

end

end A234040.P4717264728396521244

namespace A234040

/-- `A000108(n+1)/A000034(n)` -/
def P4717264728396521244.Spec : Prop :=
  ∀ n, P4717264728396521244.a n = (A234040 n : ℚ)

end A234040

/-! ## A234040.P15550549424734184113

`A028304(A004277(n)+gcd(2, n))`
-/

namespace A234040.P15550549424734184113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028304 (A004277 n + (Nat.gcd 2 n : ℤ)).toNat

end

end A234040.P15550549424734184113

namespace A234040

/-- `A028304(A004277(n)+gcd(2, n))` -/
def P15550549424734184113.Spec : Prop :=
  ∀ n, P15550549424734184113.a n = A234040 n

end A234040

/-! ## A234040.P16731053486895168370

`A000108(n+1)/A010673(n)!`
-/

namespace A234040.P16731053486895168370
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000108 (n + 1) : ℚ) / (Nat.factorial (A010673 n).toNat : ℚ)

end

end A234040.P16731053486895168370

namespace A234040

/-- `A000108(n+1)/A010673(n)!` -/
def P16731053486895168370.Spec : Prop :=
  ∀ n, P16731053486895168370.a n = (A234040 n : ℚ)

end A234040

/-! ## A234040.P12046380645480775068

`A000108(n+1)/(A000035(n)+1)`
-/

namespace A234040.P12046380645480775068
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000108 (n + 1) : ℚ) / (A000035 n + 1 : ℚ)

end

end A234040.P12046380645480775068

namespace A234040

/-- `A000108(n+1)/(A000035(n)+1)` -/
def P12046380645480775068.Spec : Prop :=
  ∀ n, P12046380645480775068.a n = (A234040 n : ℚ)

end A234040

/-! ## A234040.P17136324024753342556

`A000108(n+1)/A040001(n+1)`
-/

namespace A234040.P17136324024753342556
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000108 (n + 1) : ℚ) / (A040001 (n + 1) : ℚ)

end

end A234040.P17136324024753342556

namespace A234040

/-- `A000108(n+1)/A040001(n+1)` -/
def P17136324024753342556.Spec : Prop :=
  ∀ n, P17136324024753342556.a n = (A234040 n : ℚ)

end A234040

/-! ## A234040.P8945859020425398406

`A000108(n+1)/A134451(n+1)`
-/

namespace A234040.P8945859020425398406
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000108 (n + 1) : ℚ) / (A134451 (n + 1) : ℚ)

end

end A234040.P8945859020425398406

namespace A234040

/-- `A000108(n+1)/A134451(n+1)` -/
def P8945859020425398406.Spec : Prop :=
  ∀ n, P8945859020425398406.a n = (A234040 n : ℚ)

end A234040

/-! ## A234040.P1283951312760110581

`A000108(n+1)/(2-A059841(n))`
-/

namespace A234040.P1283951312760110581
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000108 (n + 1) : ℚ) / (2 - A059841 n : ℚ)

end

end A234040.P1283951312760110581

namespace A234040

/-- `A000108(n+1)/(2-A059841(n))` -/
def P1283951312760110581.Spec : Prop :=
  ∀ n, P1283951312760110581.a n = (A234040 n : ℚ)

end A234040

/-! ## A234040.P5074135073673361272

`A000108(n+1)/A176895(2*n)`
-/

namespace A234040.P5074135073673361272
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000108 (n + 1) : ℚ) / (A176895 (2 * n) : ℚ)

end

end A234040.P5074135073673361272

namespace A234040

/-- `A000108(n+1)/A176895(2*n)` -/
def P5074135073673361272.Spec : Prop :=
  ∀ n, P5074135073673361272.a n = (A234040 n : ℚ)

end A234040

/-! ## A234040.P12759300665972871906

`A000108(n+1)/(A059841(n+1)+1)`
-/

namespace A234040.P12759300665972871906
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000108 (n + 1) : ℚ) / (A059841 (n + 1) + 1 : ℚ)

end

end A234040.P12759300665972871906

namespace A234040

/-- `A000108(n+1)/(A059841(n+1)+1)` -/
def P12759300665972871906.Spec : Prop :=
  ∀ n, P12759300665972871906.a n = (A234040 n : ℚ)

end A234040

/-! ## A234040.P3762108075946781347

`A000108(n+1)/A177704(2*n+1)`
-/

namespace A234040.P3762108075946781347
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000108 (n + 1) : ℚ) / (A177704 (2 * n + 1) : ℚ)

end

end A234040.P3762108075946781347

namespace A234040

/-- `A000108(n+1)/A177704(2*n+1)` -/
def P3762108075946781347.Spec : Prop :=
  ∀ n, P3762108075946781347.a n = (A234040 n : ℚ)

end A234040

/-! ## A234040.P2339161559966711072

`A000108(n+1)/(A269518(2*n)+1)`
-/

namespace A234040.P2339161559966711072
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000108 (n + 1) : ℚ) / (A269518 (2 * n) + 1 : ℚ)

end

end A234040.P2339161559966711072

namespace A234040

/-- `A000108(n+1)/(A269518(2*n)+1)` -/
def P2339161559966711072.Spec : Prop :=
  ∀ n, P2339161559966711072.a n = (A234040 n : ℚ)

end A234040

/-!
# A234041: a(n) = binomial(n+2,2)*gcd(n,3)/3, n >= 0.

The programs for A234041, the canonical program `A234041.P2680785506147810776` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A234041 has offset 0).

The definition of A234041 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A234041.P2680785506147810776

`C(n+2, 2)*gcd(n, 3)/3`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A234041

/-- `C(n+2, 2)*gcd(n, 3)/3` -/
def P2680785506147810776.Spec : Prop :=
  ∀ n, P2680785506147810776.a n = (A234041 n : ℚ)

end A234041

/-! ## A234041.P4701814906351136508

`(2+(-1)^(n+floor((n+1)/3)))*(n+1)*(n+2)/6`
-/

namespace A234041.P4701814906351136508
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 + (-1 : ℚ) ^ ((n : ℤ) + ⌊(n + 1 : ℚ) / 3⌋ : ℤ)) * (n + 1 : ℚ) * (n + 2 : ℚ) / 6

end

end A234041.P4701814906351136508

namespace A234041

/-- `(2+(-1)^(n+floor((n+1)/3)))*(n+1)*(n+2)/6` -/
def P4701814906351136508.Spec : Prop :=
  ∀ n, P4701814906351136508.a n = (A234041 n : ℚ)

end A234041

/-! ## A234041.P3869992844148824463

`gcd(∑[n+1], ∑[∑[n]])`
-/

namespace A234041.P3869992844148824463
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (∑ j ∈ Finset.range (n + 1), f1 j) (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A234041.P3869992844148824463

namespace A234041

/-- `gcd(∑[n+1], ∑[∑[n]])` -/
def P3869992844148824463.Spec : Prop :=
  ∀ n, (P3869992844148824463.a n : ℤ) = A234041 n

end A234041

/-! ## A234041.P8751594474135068004

`floor(lcm(n+3, C(n+3, 3))/(n+3))`
-/

namespace A234041.P8751594474135068004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.lcm (n + 3) (Nat.choose (n + 3) 3) : ℚ) / (n + 3 : ℚ)⌋

end

end A234041.P8751594474135068004

namespace A234041

/-- `floor(lcm(n+3, C(n+3, 3))/(n+3))` -/
def P8751594474135068004.Spec : Prop :=
  ∀ n, P8751594474135068004.a n = A234041 n

end A234041

/-! ## A234041.P717146907434062630

`A027626((n-1)%(n+1))`
-/

namespace A234041.P717146907434062630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027626 (Int.tmod ((n : ℤ) - 1) (n + 1 : ℤ)).toNat

end

end A234041.P717146907434062630

namespace A234041

/-- `A027626((n-1)%(n+1))` -/
def P717146907434062630.Spec : Prop :=
  ∀ n, P717146907434062630.a n = A234041 n

end A234041

/-! ## A234041.P10517422235751176741

`A203648(n)+a(n-3)` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A234041.P10517422235751176741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  A203648 n + a (n - 3)

end

end A234041.P10517422235751176741

namespace A234041

/-- `A203648(n)+a(n-3)` -/
def P10517422235751176741.Spec : Prop :=
  ∀ n, P10517422235751176741.a n = A234041 n

end A234041

/-! ## A234041.P9936355129601013424

`A024196(n+1)%A194767(n)`
-/

namespace A234041.P9936355129601013424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A024196 (n + 1)) (A194767 n)

end

end A234041.P9936355129601013424

namespace A234041

/-- `A024196(n+1)%A194767(n)` -/
def P9936355129601013424.Spec : Prop :=
  ∀ n, P9936355129601013424.a n = A234041 n

end A234041

/-! ## A234041.P18253780293690995215

`A024378(n+1)%A194767(n)`
-/

namespace A234041.P18253780293690995215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A024378 (n + 1)) (A194767 n)

end

end A234041.P18253780293690995215

namespace A234041

/-- `A024378(n+1)%A194767(n)` -/
def P18253780293690995215.Spec : Prop :=
  ∀ n, P18253780293690995215.a n = A234041 n

end A234041

/-! ## A234041.P4499640666986386724

`A076460(n+1)%A194767(n)`
-/

namespace A234041.P4499640666986386724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A076460 (n + 1)) (A194767 n)

end

end A234041.P4499640666986386724

namespace A234041

/-- `A076460(n+1)%A194767(n)` -/
def P4499640666986386724.Spec : Prop :=
  ∀ n, P4499640666986386724.a n = A234041 n

end A234041

/-! ## A234041.P11890964377569180328

`A076461(n+1)%A194767(n)`
-/

namespace A234041.P11890964377569180328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A076461 (n + 1)) (A194767 n)

end

end A234041.P11890964377569180328

namespace A234041

/-- `A076461(n+1)%A194767(n)` -/
def P11890964377569180328.Spec : Prop :=
  ∀ n, P11890964377569180328.a n = A234041 n

end A234041

/-! ## A234041.P8096076278555133996

`A076462(n+1)%A194767(n)`
-/

namespace A234041.P8096076278555133996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A076462 (n + 1)) (A194767 n)

end

end A234041.P8096076278555133996

namespace A234041

/-- `A076462(n+1)%A194767(n)` -/
def P8096076278555133996.Spec : Prop :=
  ∀ n, P8096076278555133996.a n = A234041 n

end A234041

/-! ## A234041.P16094680518697123230

`A076463(n+1)%A194767(n)`
-/

namespace A234041.P16094680518697123230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A076463 (n + 1)) (A194767 n)

end

end A234041.P16094680518697123230

namespace A234041

/-- `A076463(n+1)%A194767(n)` -/
def P16094680518697123230.Spec : Prop :=
  ∀ n, P16094680518697123230.a n = A234041 n

end A234041

/-! ## A234041.P9720219183582526093

`A076464(n+1)%A194767(n)`
-/

namespace A234041.P9720219183582526093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A076464 (n + 1)) (A194767 n)

end

end A234041.P9720219183582526093

namespace A234041

/-- `A076464(n+1)%A194767(n)` -/
def P9720219183582526093.Spec : Prop :=
  ∀ n, P9720219183582526093.a n = A234041 n

end A234041

/-! ## A234041.P8667654332441566358

`A076465(n+1)%A194767(n)`
-/

namespace A234041.P8667654332441566358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A076465 (n + 1)) (A194767 n)

end

end A234041.P8667654332441566358

namespace A234041

/-- `A076465(n+1)%A194767(n)` -/
def P8667654332441566358.Spec : Prop :=
  ∀ n, P8667654332441566358.a n = A234041 n

end A234041

/-! ## A234041.P4445559608761083938

`A213843(n+1)%A194767(n)`
-/

namespace A234041.P4445559608761083938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A213843 (n + 1)) (A194767 n)

end

end A234041.P4445559608761083938

namespace A234041

/-- `A213843(n+1)%A194767(n)` -/
def P4445559608761083938.Spec : Prop :=
  ∀ n, P4445559608761083938.a n = A234041 n

end A234041

/-! ## A234041.P6436844092692893225

`Δ[∑[lcm(3, ∑[n])]/3]`
-/

namespace A234041.P6436844092692893225
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 3 (∑ j ∈ Finset.range (n + 1), f3 j)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A234041.P6436844092692893225

namespace A234041

/-- `Δ[∑[lcm(3, ∑[n])]/3]` -/
def P6436844092692893225.Spec : Prop :=
  ∀ n, P6436844092692893225.a n = (A234041 n : ℚ)

end A234041

/-! ## A234041.P9686518293840824803

`A027626(A289207(n+1))`
-/

namespace A234041.P9686518293840824803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027626 (A289207 (n + 1)).toNat

end

end A234041.P9686518293840824803

namespace A234041

/-- `A027626(A289207(n+1))` -/
def P9686518293840824803.Spec : Prop :=
  ∀ n, P9686518293840824803.a n = A234041 n

end A234041

/-! ## A234041.P2281409237935033351

`A060789(n+1)*A060789(n+2)`
-/

namespace A234041.P2281409237935033351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060789 (n + 1) * A060789 (n + 2)

end

end A234041.P2281409237935033351

namespace A234041

/-- `A060789(n+1)*A060789(n+2)` -/
def P2281409237935033351.Spec : Prop :=
  ∀ n, P2281409237935033351.a n = A234041 n

end A234041

/-! ## A234041.P11066671593919059246

`A123684(A007980(n))`
-/

namespace A234041.P11066671593919059246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123684 (A007980 n).toNat

end

end A234041.P11066671593919059246

namespace A234041

/-- `A123684(A007980(n))` -/
def P11066671593919059246.Spec : Prop :=
  ∀ n, P11066671593919059246.a n = A234041 n

end A234041

/-! ## A234041.P17828725102990805317

`A051176(∑[n+1])`
-/

namespace A234041.P17828725102990805317
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051176 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A234041.P17828725102990805317

namespace A234041

/-- `A051176(∑[n+1])` -/
def P17828725102990805317.Spec : Prop :=
  ∀ n, P17828725102990805317.a n = A234041 n

end A234041

/-!
# A234042: a(n) = binomial(n+4,4)*gcd(n,5)/5.

The programs for A234042, the canonical program `A234042.P14404843173342496649` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A234042 has offset 0).

The definition of A234042 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A234042.P14404843173342496649

`C(n+4, 4)*gcd(n, 5)/5`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A234042

/-- `C(n+4, 4)*gcd(n, 5)/5` -/
def P14404843173342496649.Spec : Prop :=
  ∀ n, P14404843173342496649.a n = (A234042 n : ℚ)

end A234042

/-! ## A234042.P9543407689879575841

`lcm(5, ∑[∑[∑[n+1]]])/5`
-/

namespace A234042.P9543407689879575841
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 5 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / 5

end

end A234042.P9543407689879575841

namespace A234042

/-- `lcm(5, ∑[∑[∑[n+1]]])/5` -/
def P9543407689879575841.Spec : Prop :=
  ∀ n, P9543407689879575841.a n = (A234042 n : ℚ)

end A234042

/-! ## A234042.P9126053715715069266

`gcd(C(n+4, 4), C(n+5, 5))`
-/

namespace A234042.P9126053715715069266
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (Nat.choose (n + 4) 4) (Nat.choose (n + 5) 5)

end

end A234042.P9126053715715069266

namespace A234042

/-- `gcd(C(n+4, 4), C(n+5, 5))` -/
def P9126053715715069266.Spec : Prop :=
  ∀ n, (P9126053715715069266.a n : ℤ) = A234042 n

end A234042

/-! ## A234042.P340008281260367840

`gcd(∑[∑[∑[n+1]]], ∑[∑[∑[∑[n]]]])`
-/

namespace A234042.P340008281260367840
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f7 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f7 j

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (∑ j ∈ Finset.range (n + 1), f1 j) (∑ j ∈ Finset.range (n + 1), f4 j)

end

end A234042.P340008281260367840

namespace A234042

/-- `gcd(∑[∑[∑[n+1]]], ∑[∑[∑[∑[n]]]])` -/
def P340008281260367840.Spec : Prop :=
  ∀ n, (P340008281260367840.a n : ℤ) = A234042 n

end A234042

/-! ## A234042.P461433285303480797

`A154286(n)/A154286(Δ[A090223(n)])`
-/

namespace A234042.P461433285303480797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090223 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A154286 n : ℚ) / (A154286 (f1 (n + 1) - f1 n).toNat : ℚ)

end

end A234042.P461433285303480797

namespace A234042

/-- `A154286(n)/A154286(Δ[A090223(n)])` -/
def P461433285303480797.Spec : Prop :=
  ∀ n, P461433285303480797.a n = (A234042 n : ℚ)

end A234042

/-! ## A234042.P9389147646791417087

`gcd(A027764(n+3), A027765(n+4))%A027764(n+3)`
-/

namespace A234042.P9389147646791417087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.gcd (A027764 (n + 3)) (A027765 (n + 4)) : ℤ) (A027764 (n + 3))

end

end A234042.P9389147646791417087

namespace A234042

/-- `gcd(A027764(n+3), A027765(n+4))%A027764(n+3)` -/
def P9389147646791417087.Spec : Prop :=
  ∀ n, P9389147646791417087.a n = A234042 n

end A234042

/-! ## A234042.P10849764321523740857

`A050169(A167614(n+2)+2)`
-/

namespace A234042.P10849764321523740857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050169 (A167614 (n + 2) + 2).toNat

end

end A234042.P10849764321523740857

namespace A234042

/-- `A050169(A167614(n+2)+2)` -/
def P10849764321523740857.Spec : Prop :=
  ∀ n, P10849764321523740857.a n = A234042 n

end A234042

/-! ## A234042.P6993460048398532935

`A050169(A046691(n+3)-2*n)`
-/

namespace A234042.P6993460048398532935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050169 (A046691 (n + 3) - (2 * n : ℤ)).toNat

end

end A234042.P6993460048398532935

namespace A234042

/-- `A050169(A046691(n+3)-2*n)` -/
def P6993460048398532935.Spec : Prop :=
  ∀ n, P6993460048398532935.a n = A234042 n

end A234042

/-! ## A234042.P14371770770130315644

`A050169(∑[n+3]+n+3)`
-/

namespace A234042.P14371770770130315644
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050169 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A234042.P14371770770130315644

namespace A234042

/-- `A050169(∑[n+3]+n+3)` -/
def P14371770770130315644.Spec : Prop :=
  ∀ n, P14371770770130315644.a n = A234042 n

end A234042

/-! ## A234042.P7628124400919907054

`A000027(gcd(A101094(n+1), A154286(n)))`
-/

namespace A234042.P7628124400919907054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (Int.gcd (A101094 (n + 1)) (A154286 n))

end

end A234042.P7628124400919907054

namespace A234042

/-- `A000027(gcd(A101094(n+1), A154286(n)))` -/
def P7628124400919907054.Spec : Prop :=
  ∀ n, P7628124400919907054.a n = A234042 n

end A234042

/-!
# A234043: a(n) = binomial(5*(n+1),4)/5, with n >= 0.

The programs for A234043, the canonical program `A234043.P6707574492733478923` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A234043 has offset 0).

The definition of A234043 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A234043.P14084032305249204282

`C(5*(n+1), 4)/5`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A234043.P14084032305249204282
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (5 * (n + 1)) 4 : ℚ) / 5

end

end A234043.P14084032305249204282

namespace A234043

/-- `C(5*(n+1), 4)/5` -/
def P14084032305249204282.Spec : Prop :=
  ∀ n, P14084032305249204282.a n = (A234043 n : ℚ)

end A234043

/-! ## A234043.P6636364206719522872

`(n+1)*(5*n+2)*(5*n+3)*(5*n+4)/24`
-/

namespace A234043.P6636364206719522872
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) * (5 * n + 2) * (5 * n + 3) * (5 * n + 4) : ℚ) / 24

end

end A234043.P6636364206719522872

namespace A234043

/-- `(n+1)*(5*n+2)*(5*n+3)*(5*n+4)/24` -/
def P6636364206719522872.Spec : Prop :=
  ∀ n, P6636364206719522872.a n = (A234043 n : ℚ)

end A234043

/-! ## A234043.P6707574492733478923

`A234042(5*n+1)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A234043

/-- `A234042(5*n+1)` -/
def P6707574492733478923.Spec : Prop :=
  ∀ n, P6707574492733478923.a n = A234043 n

theorem P6707574492733478923.correct : P6707574492733478923.Spec := by
  intro n
  simp only [A234043]

end A234043

/-! ## A234043.P14843176949142813286

`round(C(A008587(n)+5, 4)/5)`
-/

namespace A234043.P14843176949142813286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.choose (A008587 n + 5).toNat 4 : ℚ) / 5)

end

end A234043.P14843176949142813286

namespace A234043

/-- `round(C(A008587(n)+5, 4)/5)` -/
def P14843176949142813286.Spec : Prop :=
  ∀ n, P14843176949142813286.a n = A234043 n

end A234043

/-! ## A234043.P4288323111495077078

`record[C(A008587(A246277(n+1))+5, 4)/5]`
-/

namespace A234043.P4288323111495077078
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (A008587 (A246277 (n + 1)).toNat + 5).toNat 4 : ℚ) / 5

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234043.P4288323111495077078

namespace A234043

/-- `record[C(A008587(A246277(n+1))+5, 4)/5]` -/
def P4288323111495077078.Spec : Prop :=
  ∀ n, P4288323111495077078.a n = (A234043 n : ℚ)

end A234043

/-! ## A234043.P1908063964524995878

`record[C(A008587(A053645(n+1))+5, 4)/5]`
-/

namespace A234043.P1908063964524995878
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (A008587 (A053645 (n + 1)).toNat + 5).toNat 4 : ℚ) / 5

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234043.P1908063964524995878

namespace A234043

/-- `record[C(A008587(A053645(n+1))+5, 4)/5]` -/
def P1908063964524995878.Spec : Prop :=
  ∀ n, P1908063964524995878.a n = (A234043 n : ℚ)

end A234043

/-! ## A234043.P15219079164665811023

`A008646(5*n+1)`
-/

namespace A234043.P15219079164665811023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008646 (5 * n + 1)

end

end A234043.P15219079164665811023

namespace A234043

/-- `A008646(5*n+1)` -/
def P15219079164665811023.Spec : Prop :=
  ∀ n, P15219079164665811023.a n = A234043 n

end A234043

/-! ## A234043.P342719203764679860

`A051170(5*n+6)`
-/

namespace A234043.P342719203764679860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051170 (5 * n + 6)

end

end A234043.P342719203764679860

namespace A234043

/-- `A051170(5*n+6)` -/
def P342719203764679860.Spec : Prop :=
  ∀ n, P342719203764679860.a n = A234043 n

end A234043

/-! ## A234043.P3154217445251460687

`∑[A004006(5*n+1)]`
-/

namespace A234043.P3154217445251460687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004006 (5 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A234043.P3154217445251460687

namespace A234043

/-- `∑[A004006(5*n+1)]` -/
def P3154217445251460687.Spec : Prop :=
  ∀ n, P3154217445251460687.a n = A234043 n

end A234043

/-! ## A234043.P10662556024046072014

`∑[A003600(2*n+3*n)]+n`
-/

namespace A234043.P10662556024046072014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003600 (2 * n + 3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A234043.P10662556024046072014

namespace A234043

/-- `∑[A003600(2*n+3*n)]+n` -/
def P10662556024046072014.Spec : Prop :=
  ∀ n, P10662556024046072014.a n = A234043 n

end A234043

/-! ## A234043.P9373645384361285611

`A011795(5*(n+1))`
-/

namespace A234043.P9373645384361285611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011795 (5 * (n + 1))

end

end A234043.P9373645384361285611

namespace A234043

/-- `A011795(5*(n+1))` -/
def P9373645384361285611.Spec : Prop :=
  ∀ n, P9373645384361285611.a n = A234043 n

end A234043

/-! ## A234043.P14262556333820162857

`A378248(A008597(n))`
-/

namespace A234043.P14262556333820162857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378248 (A008597 n).toNat

end

end A234043.P14262556333820162857

namespace A234043

/-- `A378248(A008597(n))` -/
def P14262556333820162857.Spec : Prop :=
  ∀ n, P14262556333820162857.a n = A234043 n

end A234043

/-! ## A234043.P5964506504869759118

`A378248(A139606(2*n+1)-A139606(n+1))`
-/

namespace A234043.P5964506504869759118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378248 (A139606 (2 * n + 1) - A139606 (n + 1)).toNat

end

end A234043.P5964506504869759118

namespace A234043

/-- `A378248(A139606(2*n+1)-A139606(n+1))` -/
def P5964506504869759118.Spec : Prop :=
  ∀ n, P5964506504869759118.a n = A234043 n

end A234043

/-!
# A234044: Period 7: repeat [2, -2, 1, 0, 0, 1, -2].

The programs for A234044, the canonical program `A234044.P13328901318595551424` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A234044 has offset 0).

The definition of A234044 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A234044.P13328901318595551424

`2-((3*n)^4)%7`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A234044

/-- `2-((3*n)^4)%7` -/
def P13328901318595551424.Spec : Prop :=
  ∀ n, P13328901318595551424.a n = A234044 n

theorem P13328901318595551424.correct : P13328901318595551424.Spec := by
  intro n
  simp only [A234044]

end A234044

/-!
# A234045: Period 7: repeat [0, 0, 1, -1, -1, 1, 0].

The programs for A234045, the canonical program `A234045.P17871312824107287060` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A234045 has offset 0).

The definition of A234045 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A234045.P17871312824107287060

`A238468(n-A238468(n+2))`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A234045

/-- `A238468(n-A238468(n+2))` -/
def P17871312824107287060.Spec : Prop :=
  ∀ n, P17871312824107287060.a n = A234045 n

theorem P17871312824107287060.correct : P17871312824107287060.Spec := by
  intro n
  simp only [A234045]

end A234045

/-!
# A234046: Period 7: repeat [0, 1, -1, 0, 0, -1, 1].

The programs for A234046, the canonical program `A234046.P13733933000472224673` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A234046 has offset 0).

The definition of A234046 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A234046.P13733933000472224673

`C(2, n²%7)-1`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A234046

/-- `C(2, n²%7)-1` -/
def P13733933000472224673.Spec : Prop :=
  ∀ n, P13733933000472224673.a n = A234046 n

theorem P13733933000472224673.correct : P13733933000472224673.Spec := by
  intro n
  simp only [A234046]

end A234046

/-!
# A234047: Number of (n+2)X(1+2) 0..2 arrays with no increasing sequence of length 3 horizontally, diagonally downwards or antidiagonally downwards.

The programs for A234047, there is no canonical definition to state claims against.
-/

/-! ## A234047.P10601372379897684702

`A234054(∑[n+1])`
-/

namespace A234047.P10601372379897684702
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234054 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A234047.P10601372379897684702

/-! ## A234047.P9783361239451325752

`record[A234054(A135223(n+1))]`
-/

namespace A234047.P9783361239451325752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234054 (A135223 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234047.P9783361239451325752

/-! ## A234047.P14499895900841840277

`record[root(A234054(n+1), A049459(n))]`
-/

namespace A234047.P14499895900841840277
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A234054 (n + 1) : ℝ) ^ (1 / (A049459 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234047.P14499895900841840277

/-! ## A234047.P11222419281498303223

`record[gcd(A025581(n), A234054(n+1))]`
-/

namespace A234047.P11222419281498303223
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A025581 n) (A234054 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234047.P11222419281498303223

/-! ## A234047.P4549064525791213413

`record[A174557(n+1)*A234054(n+1)]`
-/

namespace A234047.P4549064525791213413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174557 (n + 1) * A234054 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234047.P4549064525791213413

/-!
# A234048: Number of (n+2)X(2+2) 0..2 arrays with no increasing sequence of length 3 horizontally, diagonally downwards or antidiagonally downwards.

The programs for A234048, there is no canonical definition to state claims against.
-/

/-! ## A234048.P10756631123877728183

`A234054(∑[n+2])`
-/

namespace A234048.P10756631123877728183
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234054 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A234048.P10756631123877728183

/-!
# A234049: Number of (n+2)X(3+2) 0..2 arrays with no increasing sequence of length 3 horizontally, diagonally downwards or antidiagonally downwards.

The programs for A234049, there is no canonical definition to state claims against.
-/

/-! ## A234049.P17325158624771699622

`A234054(∑[n+3]+1)`
-/

namespace A234049.P17325158624771699622
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234054 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A234049.P17325158624771699622

/-!
# A234051: 

The programs for A234051, there is no canonical definition to state claims against.
-/

/-! ## A234051.P4739121380131635731

`A234054(A052905(n+2)+1)`
-/

namespace A234051.P4739121380131635731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234054 (A052905 (n + 2) + 1).toNat

end

end A234051.P4739121380131635731

/-!
# A234055: Number of (1+2) X (n+2) 0..2 arrays with no increasing sequence of length 3 horizontally, diagonally downwards or antidiagonally downwards.

The programs for A234055, there is no canonical definition to state claims against.
-/

/-! ## A234055.P15679887521842317659

`A234054(∑[n]+1)`
-/

namespace A234055.P15679887521842317659
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234054 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A234055.P15679887521842317659

/-! ## A234055.P3766617866417971344

`record[A234054(A286235(n+1))]`
-/

namespace A234055.P3766617866417971344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234054 (A286235 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234055.P3766617866417971344

/-! ## A234055.P12732031413376399481

`record[root(A234054(n+1), A336534(n))]`
-/

namespace A234055.P12732031413376399481
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A234054 (n + 1) : ℝ) ^ (1 / (A336534 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234055.P12732031413376399481

/-! ## A234055.P9967714212933092769

`record[gcd(A002262(n), A234054(n+1))]`
-/

namespace A234055.P9967714212933092769
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A234054 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234055.P9967714212933092769

/-! ## A234055.P2217967973338639732

`record[root(A234054(n+1), A199909(n+1))]`
-/

namespace A234055.P2217967973338639732
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A234054 (n + 1) : ℝ) ^ (1 / (A199909 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234055.P2217967973338639732

/-!
# A234056: Number of (2+2)X(n+2) 0..2 arrays with no increasing sequence of length 3 horizontally, diagonally downwards or antidiagonally downwards.

The programs for A234056, there is no canonical definition to state claims against.
-/

/-! ## A234056.P804346885054531863

`A234054(∑[n+1]+2)`
-/

namespace A234056.P804346885054531863
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234054 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A234056.P804346885054531863

/-! ## A234056.P9898420531578613129

`record[A234054(A135223(n+1)+2)]`
-/

namespace A234056.P9898420531578613129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234054 (A135223 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234056.P9898420531578613129

/-! ## A234056.P17008890136236872731

`record[A234054(A286235(n+2)+1)]`
-/

namespace A234056.P17008890136236872731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234054 (A286235 (n + 2) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234056.P17008890136236872731

/-!
# A234057: Number of (3+2) X (n+2) 0..2 arrays with no increasing sequence of length 3 horizontally, diagonally downwards or antidiagonally downwards.

The programs for A234057, there is no canonical definition to state claims against.
-/

/-! ## A234057.P1955412747660103007

`A234054(A167614(n+1))`
-/

namespace A234057.P1955412747660103007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234054 (A167614 (n + 1)).toNat

end

end A234057.P1955412747660103007

/-! ## A234057.P13433395925465575259

`A234054(A046691(n)+7)`
-/

namespace A234057.P13433395925465575259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234054 (A046691 n + 7).toNat

end

end A234057.P13433395925465575259

/-!
# A234058: 

The programs for A234058, there is no canonical definition to state claims against.
-/

/-! ## A234058.P17672159259446118288

`A234054(A052905(n+2)-2*n)`
-/

namespace A234058.P17672159259446118288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234054 (A052905 (n + 2) - (2 * n : ℤ)).toNat

end

end A234058.P17672159259446118288

/-!
# A234060: 

The programs for A234060, there is no canonical definition to state claims against.
-/

/-! ## A234060.P12264448825342139363

`A234068((n+1)²+n²)`
-/

namespace A234060.P12264448825342139363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234068 ((n + 1) ^ 2 + n ^ 2)

end

end A234060.P12264448825342139363

/-!
# A234061: Number of (n+2)X(1+2) 0..3 arrays with no increasing sequence of length 3 horizontally or diagonally downwards.

The programs for A234061, there is no canonical definition to state claims against.
-/

/-! ## A234061.P11392859535967491066

`A234068(∑[n+1])`
-/

namespace A234061.P11392859535967491066
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234068 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A234061.P11392859535967491066

/-! ## A234061.P17214851120248690086

`record[root(A234068(n+1), A093561(n))]`
-/

namespace A234061.P17214851120248690086
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A234068 (n + 1) : ℝ) ^ (1 / (A093561 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234061.P17214851120248690086

/-! ## A234061.P13525444802291102388

`record[root(A234068(n+1), A239102(n))]`
-/

namespace A234061.P13525444802291102388
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A234068 (n + 1) : ℝ) ^ (1 / (A239102 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234061.P13525444802291102388

/-! ## A234061.P1667742891949426443

`record[root(A234068(n+1), A239103(n))]`
-/

namespace A234061.P1667742891949426443
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A234068 (n + 1) : ℝ) ^ (1 / (A239103 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234061.P1667742891949426443

/-! ## A234061.P15229180333330009992

`record[gcd(A212957(n+1), A234068(n+1))]`
-/

namespace A234061.P15229180333330009992
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A212957 (n + 1)) (A234068 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234061.P15229180333330009992

/-!
# A234062: 

The programs for A234062, there is no canonical definition to state claims against.
-/

/-! ## A234062.P12905552241196281083

`A234068(∑[n+2])`
-/

namespace A234062.P12905552241196281083
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234068 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A234062.P12905552241196281083

/-!
# A234065: 

The programs for A234065, there is no canonical definition to state claims against.
-/

/-! ## A234065.P7194304967481669514

`A234068(A000096(n+4)-3)`
-/

namespace A234065.P7194304967481669514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234068 (A000096 (n + 4) - 3).toNat

end

end A234065.P7194304967481669514

/-!
# A234067: 

The programs for A234067, there is no canonical definition to state claims against.
-/

/-! ## A234067.P6421454060945750035

`A234068(A000124(n+7)-7)`
-/

namespace A234067.P6421454060945750035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234068 (A000124 (n + 7) - 7).toNat

end

end A234067.P6421454060945750035

/-!
# A234069: Number of (1+2)X(n+2) 0..3 arrays with no increasing sequence of length 3 horizontally or diagonally downwards.

The programs for A234069, there is no canonical definition to state claims against.
-/

/-! ## A234069.P2056900581438717433

`A234068(∑[n]+1)`
-/

namespace A234069.P2056900581438717433
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234068 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A234069.P2056900581438717433

/-! ## A234069.P11846703318388621617

`lcm(2, A234068(A000124(n)))`
-/

namespace A234069.P11846703318388621617
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A234068 (A000124 n).toNat)

end

end A234069.P11846703318388621617

/-! ## A234069.P1172052031138979453

`record[root(A234068(n+1), A013609(n))]`
-/

namespace A234069.P1172052031138979453
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A234068 (n + 1) : ℝ) ^ (1 / (A013609 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234069.P1172052031138979453

/-! ## A234069.P2001449058467906306

`record[gcd(A002262(n), A234068(n+1))]`
-/

namespace A234069.P2001449058467906306
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A234068 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234069.P2001449058467906306

/-! ## A234069.P2357797334348848526

`A007318(and(2, n-2))*A234068(A000124(n))`
-/

namespace A234069.P2357797334348848526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Int.land 2 ((n : ℤ) - 2)).toNat * A234068 (A000124 n).toNat

end

end A234069.P2357797334348848526

/-!
# A234070: 

The programs for A234070, there is no canonical definition to state claims against.
-/

/-! ## A234070.P8387515226599134810

`A234068(∑[n+1]+2)`
-/

namespace A234070.P8387515226599134810
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234068 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A234070.P8387515226599134810

/-!
# A234075: Number of (n+1)X(n+1) 0..4 arrays with every 2X2 subblock having the sum of the absolute values of all six edge and diagonal differences equal to 10.

The programs for A234075, there is no canonical definition to state claims against.
-/

/-! ## A234075.P17100342147169097839

`A234083(∑[4*n]+1)`
-/

namespace A234075.P17100342147169097839
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234083 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A234075.P17100342147169097839

/-! ## A234075.P3748108646302599638

`lcm(2, A234083(A001844(n)))`
-/

namespace A234075.P3748108646302599638
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A234083 (A001844 n).toNat)

end

end A234075.P3748108646302599638

/-! ## A234075.P3950976600879605442

`∑{digits}[n, A234083(A001844(#))]`
-/

namespace A234075.P3950976600879605442
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A234083 (A001844 x).toNat).sum

end

end A234075.P3950976600879605442

/-! ## A234075.P15176943250726809359

`record[A234083(Δ[A235355(n)])]`
-/

namespace A234075.P15176943250726809359
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234083 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234075.P15176943250726809359

/-!
# A234076: Number of (n+1) X (1+1) 0..4 arrays with every 2 X 2 subblock having the sum of the absolute values of all six edge and diagonal differences equal to 10.

The programs for A234076, there is no canonical definition to state claims against.
-/

/-! ## A234076.P3719882510032993084

`A234083(∑[n]+1)`
-/

namespace A234076.P3719882510032993084
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234083 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A234076.P3719882510032993084

/-! ## A234076.P11969308847235951530

`lcm(2, A234083(A000124(n)))`
-/

namespace A234076.P11969308847235951530
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A234083 (A000124 n).toNat)

end

end A234076.P11969308847235951530

/-! ## A234076.P1166435113936779763

`record[A234083(n+1)/A157192(n)]`
-/

namespace A234076.P1166435113936779763
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A234083 (n + 1) : ℚ) / (A157192 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234076.P1166435113936779763

/-! ## A234076.P5556696409307236460

`record[gcd(A002262(n), A234083(n+1))]`
-/

namespace A234076.P5556696409307236460
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A234083 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234076.P5556696409307236460

/-! ## A234076.P13824717690027264201

`record[A234083(n+1)/A046899(n)²]`
-/

namespace A234076.P13824717690027264201
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A234083 (n + 1) : ℚ) / (A046899 n ^ 2 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234076.P13824717690027264201

/-!
# A234077: Number of (n+1)X(2+1) 0..4 arrays with every 2X2 subblock having the sum of the absolute values of all six edge and diagonal differences equal to 10.

The programs for A234077, there is no canonical definition to state claims against.
-/

/-! ## A234077.P5083642297890656976

`A234083(∑[n+1]+2)`
-/

namespace A234077.P5083642297890656976
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234083 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A234077.P5083642297890656976

/-! ## A234077.P12143574412732827350

`lcm(2, A234083(A000096(n)+3))`
-/

namespace A234077.P12143574412732827350
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A234083 (A000096 n + 3).toNat)

end

end A234077.P12143574412732827350

/-! ## A234077.P8101519985414837717

`record[gcd(A002262(n), A234083(n+2))]`
-/

namespace A234077.P8101519985414837717
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A234083 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234077.P8101519985414837717

/-! ## A234077.P617882931710680364

`A234083(A000096(n)+3)+A197629(n+1)`
-/

namespace A234077.P617882931710680364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234083 (A000096 n + 3).toNat + A197629 (n + 1)

end

end A234077.P617882931710680364

/-! ## A234077.P15903934926280833836

`A234083(A000096(n+1))+A035444(2*n+1)`
-/

namespace A234077.P15903934926280833836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234083 (A000096 (n + 1)).toNat + A035444 (2 * n + 1)

end

end A234077.P15903934926280833836

/-!
# A234078: Number of (n+1)X(3+1) 0..4 arrays with every 2X2 subblock having the sum of the absolute values of all six edge and diagonal differences equal to 10.

The programs for A234078, there is no canonical definition to state claims against.
-/

/-! ## A234078.P13844672071101131608

`A234083(∑[n+2]+4)`
-/

namespace A234078.P13844672071101131608
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234083 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A234078.P13844672071101131608

/-! ## A234078.P13893724645430815551

`lcm(2, A234083(A167614(n+1)))`
-/

namespace A234078.P13893724645430815551
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A234083 (A167614 (n + 1)).toNat)

end

end A234078.P13893724645430815551

/-! ## A234078.P13309362613710180711

`A234083(A167614(n+1))*A262681(n)`
-/

namespace A234078.P13309362613710180711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234083 (A167614 (n + 1)).toNat * A262681 n

end

end A234078.P13309362613710180711

/-! ## A234078.P4850654533099310759

`A234083(A167614(n+1))+A217148(n+1)`
-/

namespace A234078.P4850654533099310759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234083 (A167614 (n + 1)).toNat + A217148 (n + 1)

end

end A234078.P4850654533099310759

/-! ## A234078.P6492851852038065612

`A030599(n+1)*A234083(A167614(n+1))`
-/

namespace A234078.P6492851852038065612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030599 (n + 1) * A234083 (A167614 (n + 1)).toNat

end

end A234078.P6492851852038065612

/-!
# A234079: Number of (n+1)X(4+1) 0..4 arrays with every 2X2 subblock having the sum of the absolute values of all six edge and diagonal differences equal to 10.

The programs for A234079, there is no canonical definition to state claims against.
-/

/-! ## A234079.P5184652452104915433

`A234083(A141214(n)+7)`
-/

namespace A234079.P5184652452104915433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234083 (A141214 n + 7).toNat

end

end A234079.P5184652452104915433

/-! ## A234079.P14347343770985369056

`A234083(A052905(n)+9)`
-/

namespace A234079.P14347343770985369056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234083 (A052905 n + 9).toNat

end

end A234079.P14347343770985369056

/-! ## A234079.P2718027707757050763

`A234083(A055999(n)+10)`
-/

namespace A234079.P2718027707757050763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234083 (A055999 n + 10).toNat

end

end A234079.P2718027707757050763

/-! ## A234079.P2731513949864580367

`A234083(A167614(n+2)+1)`
-/

namespace A234079.P2731513949864580367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234083 (A167614 (n + 2) + 1).toNat

end

end A234079.P2731513949864580367

/-! ## A234079.P4502012529756269028

`A234083(eq[5, A131818(n+1)])`
-/

namespace A234079.P4502012529756269028
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234083 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A234079.P4502012529756269028

/-!
# A234080: Number of (n+1)X(5+1) 0..4 arrays with every 2X2 subblock having the sum of the absolute values of all six edge and diagonal differences equal to 10.

The programs for A234080, there is no canonical definition to state claims against.
-/

/-! ## A234080.P6799966083657004845

`A234083(A155212(n)+13)`
-/

namespace A234080.P6799966083657004845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234083 (A155212 n + 13).toNat

end

end A234080.P6799966083657004845

/-! ## A234080.P14640330037710348770

`A234083(eq[6, A131818(n+1)])`
-/

namespace A234080.P14640330037710348770
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234083 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A234080.P14640330037710348770

/-! ## A234080.P14189747574393143063

`A234083(Δ[A264443(n)])`
-/

namespace A234080.P14189747574393143063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234083 (f1 (n + 1) - f1 n).toNat

end

end A234080.P14189747574393143063

/-! ## A234080.P9714126780937517538

`A234083(A374005(n+1))`
-/

namespace A234080.P9714126780937517538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234083 (A374005 (n + 1)).toNat

end

end A234080.P9714126780937517538

/-! ## A234080.P16097347617555903965

`A234083(eq[4, A193592(n)])`
-/

namespace A234080.P16097347617555903965
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234083 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A234080.P16097347617555903965

/-!
# A234081: Number of (n+1)X(6+1) 0..4 arrays with every 2X2 subblock having the sum of the absolute values of all six edge and diagonal differences equal to 10.

The programs for A234081, there is no canonical definition to state claims against.
-/

/-! ## A234081.P11702055113346488228

`A234083(A167499(n+4)+1)`
-/

namespace A234081.P11702055113346488228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234083 (A167499 (n + 4) + 1).toNat

end

end A234081.P11702055113346488228

/-! ## A234081.P17643319997351406633

`A234083(eq[7, A131818(n+1)])`
-/

namespace A234081.P17643319997351406633
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234083 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A234081.P17643319997351406633

/-! ## A234081.P14500244640979327011

`A234083(A374007(n+1))`
-/

namespace A234081.P14500244640979327011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234083 (A374007 (n + 1)).toNat

end

end A234081.P14500244640979327011

/-! ## A234081.P9190380898707380710

`A234083(A052905(n+3))`
-/

namespace A234081.P9190380898707380710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234083 (A052905 (n + 3)).toNat

end

end A234081.P9190380898707380710

/-! ## A234081.P7985557433065737770

`A234083(A056119(n)+16)`
-/

namespace A234081.P7985557433065737770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234083 (A056119 n + 16).toNat

end

end A234081.P7985557433065737770

/-!
# A234082: Number of (n+1)X(7+1) 0..4 arrays with every 2X2 subblock having the sum of the absolute values of all six edge and diagonal differences equal to 10.

The programs for A234082, there is no canonical definition to state claims against.
-/

/-! ## A234082.P13675684085412083032

`A234083(A056119(n)+28)`
-/

namespace A234082.P13675684085412083032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234083 (A056119 n + 28).toNat

end

end A234082.P13675684085412083032

/-! ## A234082.P735476341982168754

`A234083(A167499(n+5)+2)`
-/

namespace A234082.P735476341982168754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234083 (A167499 (n + 5) + 2).toNat

end

end A234082.P735476341982168754

/-! ## A234082.P5926952648007434870

`A234083(eq[8, A131818(n+1)])`
-/

namespace A234082.P5926952648007434870
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234083 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A234082.P5926952648007434870

/-! ## A234082.P6283154538088389962

`A234083(A374008(n+1))`
-/

namespace A234082.P6283154538088389962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234083 (A374008 (n + 1)).toNat

end

end A234082.P6283154538088389962

/-! ## A234082.P8808737470944968420

`A234083(A055999(n+4))`
-/

namespace A234082.P8808737470944968420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234083 (A055999 (n + 4)).toNat

end

end A234082.P8808737470944968420

/-!
# A234084: Number of (n+1)X(1+1) 0..5 arrays with every 2X2 subblock having the sum of the absolute values of all six edge and diagonal differences equal to 10.

The programs for A234084, there is no canonical definition to state claims against.
-/

/-! ## A234084.P10241234627964153463

`A234091(∑[n]+1)`
-/

namespace A234084.P10241234627964153463
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234091 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A234084.P10241234627964153463

/-! ## A234084.P8673308591482333488

`record[root(A234091(n+1), A062344(n))]`
-/

namespace A234084.P8673308591482333488
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A234091 (n + 1) : ℝ) ^ (1 / (A062344 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234084.P8673308591482333488

/-! ## A234084.P3200525879341149255

`record[root(A234091(n+1), A303273(n))]`
-/

namespace A234084.P3200525879341149255
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A234091 (n + 1) : ℝ) ^ (1 / (A303273 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234084.P3200525879341149255

/-! ## A234084.P17576848102849355975

`record[gcd(A141169(n), A234091(n+1))]`
-/

namespace A234084.P17576848102849355975
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A141169 n) (A234091 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234084.P17576848102849355975

/-! ## A234084.P14318515775194990828

`record[A234091(n+1)/A299561(n+1)]`
-/

namespace A234084.P14318515775194990828
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A234091 (n + 1) : ℚ) / (A299561 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234084.P14318515775194990828

/-!
# A234085: Number of (n+1)X(2+1) 0..5 arrays with every 2X2 subblock having the sum of the absolute values of all six edge and diagonal differences equal to 10.

The programs for A234085, there is no canonical definition to state claims against.
-/

/-! ## A234085.P15901381403911946009

`A234091(∑[n+1]+2)`
-/

namespace A234085.P15901381403911946009
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234091 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A234085.P15901381403911946009

/-! ## A234085.P8165653117035613157

`record[A010054(n)*A234091(n+2)]`
-/

namespace A234085.P8165653117035613157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A234091 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234085.P8165653117035613157

/-! ## A234085.P504992392615857983

`record[root(A234091(n+2), A062344(n))]`
-/

namespace A234085.P504992392615857983
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A234091 (n + 2) : ℝ) ^ (1 / (A062344 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234085.P504992392615857983

/-! ## A234085.P11089019160231501574

`record[gcd(A141169(n), A234091(n+2))]`
-/

namespace A234085.P11089019160231501574
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A141169 n) (A234091 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234085.P11089019160231501574

/-!
# A234086: Number of (n+1)X(3+1) 0..5 arrays with every 2X2 subblock having the sum of the absolute values of all six edge and diagonal differences equal to 10.

The programs for A234086, there is no canonical definition to state claims against.
-/

/-! ## A234086.P10780973641358864798

`A234091(∑[n+2]+4)`
-/

namespace A234086.P10780973641358864798
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234091 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A234086.P10780973641358864798

/-! ## A234086.P1648860666692499642

`lcm(2, A234091(A167614(n+1)))`
-/

namespace A234086.P1648860666692499642
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A234091 (A167614 (n + 1)).toNat)

end

end A234086.P1648860666692499642

/-! ## A234086.P17844593301554464085

`A234091(A167614(n+1))+A025466(n)`
-/

namespace A234086.P17844593301554464085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234091 (A167614 (n + 1)).toNat + A025466 n

end

end A234086.P17844593301554464085

/-! ## A234086.P66012916610218877

`A234091(A167614(n+1))+A034530(n+1)`
-/

namespace A234086.P66012916610218877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234091 (A167614 (n + 1)).toNat + A034530 (n + 1)

end

end A234086.P66012916610218877

/-! ## A234086.P18257941894896081105

`A234091(A167614(n+1))%A234088(n+1)`
-/

namespace A234086.P18257941894896081105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A234091 (A167614 (n + 1)).toNat) (A234088 (n + 1))

end

end A234086.P18257941894896081105

/-!
# A234087: Number of (n+1)X(4+1) 0..5 arrays with every 2X2 subblock having the sum of the absolute values of all six edge and diagonal differences equal to 10.

The programs for A234087, there is no canonical definition to state claims against.
-/

/-! ## A234087.P5130809459847848114

`A234091(A374004(n+1))`
-/

namespace A234087.P5130809459847848114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234091 (A374004 (n + 1)).toNat

end

end A234087.P5130809459847848114

/-! ## A234087.P11408181390183671898

`A234091(A052905(n)+9)`
-/

namespace A234087.P11408181390183671898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234091 (A052905 n + 9).toNat

end

end A234087.P11408181390183671898

/-! ## A234087.P2787314796196336466

`A234091(A055999(n)+10)`
-/

namespace A234087.P2787314796196336466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234091 (A055999 n + 10).toNat

end

end A234087.P2787314796196336466

/-! ## A234087.P964155062705973441

`A234091(eq[5, A066657(n)])`
-/

namespace A234087.P964155062705973441
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234091 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A234087.P964155062705973441

/-! ## A234087.P9716719140229774707

`A234091(A167614(n+2)+1)`
-/

namespace A234087.P9716719140229774707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234091 (A167614 (n + 2) + 1).toNat

end

end A234087.P9716719140229774707

/-!
# A234088: Number of (n+1)X(5+1) 0..5 arrays with every 2X2 subblock having the sum of the absolute values of all six edge and diagonal differences equal to 10.

The programs for A234088, there is no canonical definition to state claims against.
-/

/-! ## A234088.P17554868201292785596

`A234091(A374005(n+1))`
-/

namespace A234088.P17554868201292785596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234091 (A374005 (n + 1)).toNat

end

end A234088.P17554868201292785596

/-! ## A234088.P3797226915509578217

`A234091(A167499(n+3))`
-/

namespace A234088.P3797226915509578217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234091 (A167499 (n + 3)).toNat

end

end A234088.P3797226915509578217

/-! ## A234088.P881531365280393667

`A234091(A155212(n)+13)`
-/

namespace A234088.P881531365280393667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234091 (A155212 n + 13).toNat

end

end A234088.P881531365280393667

/-! ## A234088.P5041124941004072196

`A234091(Δ[A264443(n)])`
-/

namespace A234088.P5041124941004072196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234091 (f1 (n + 1) - f1 n).toNat

end

end A234088.P5041124941004072196

/-! ## A234088.P8804867680930807611

`A234091(eq[4, A193592(n)])`
-/

namespace A234088.P8804867680930807611
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234091 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A234088.P8804867680930807611

/-!
# A234089: Number of (n+1)X(6+1) 0..5 arrays with every 2X2 subblock having the sum of the absolute values of all six edge and diagonal differences equal to 10.

The programs for A234089, there is no canonical definition to state claims against.
-/

/-! ## A234089.P1526466833359794781

`A234091(A374007(n+1))`
-/

namespace A234089.P1526466833359794781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234091 (A374007 (n + 1)).toNat

end

end A234089.P1526466833359794781

/-! ## A234089.P3581182535258248102

`A234091(A052905(n+3))`
-/

namespace A234089.P3581182535258248102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234091 (A052905 (n + 3)).toNat

end

end A234089.P3581182535258248102

/-! ## A234089.P7804831701715625414

`A234091(eq[5, A193592(n)])`
-/

namespace A234089.P7804831701715625414
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234091 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A234089.P7804831701715625414

/-! ## A234089.P10477551236665643244

`A234091(eq[8, A258709(n)])`
-/

namespace A234089.P10477551236665643244
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258709 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234091 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A234089.P10477551236665643244

/-! ## A234089.P2825011992501474849

`A234091(eq[6, A200370(n+1)])`
-/

namespace A234089.P2825011992501474849
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234091 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A234089.P2825011992501474849

/-!
# A234090: Number of (n+1)X(7+1) 0..5 arrays with every 2X2 subblock having the sum of the absolute values of all six edge and diagonal differences equal to 10.

The programs for A234090, there is no canonical definition to state claims against.
-/

/-! ## A234090.P1459570901076099713

`A234091(A374008(n+1))`
-/

namespace A234090.P1459570901076099713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234091 (A374008 (n + 1)).toNat

end

end A234090.P1459570901076099713

/-! ## A234090.P5130222884042273402

`A234091(eq[6, A193592(n)])`
-/

namespace A234090.P5130222884042273402
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234091 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A234090.P5130222884042273402

/-! ## A234090.P9231380085635917577

`A234091(A167499(n+5)+2)`
-/

namespace A234090.P9231380085635917577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234091 (A167499 (n + 5) + 2).toNat

end

end A234090.P9231380085635917577

/-! ## A234090.P4840645530015778671

`A234091(eq[7, A200370(n+1)])`
-/

namespace A234090.P4840645530015778671
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234091 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A234090.P4840645530015778671

/-!
# A234092: Limit of v(m,n) as m->oo, where v(m,n) is the number of distinct terms in the n-th partition of m in Mathematica (lexicographic) ordering of the partitions of m.

The programs for A234092, there is no canonical definition to state claims against.
-/

/-! ## A234092.P6077414529699679601

`A115623(n)+1`
-/

namespace A234092.P6077414529699679601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115623 n + 1

end

end A234092.P6077414529699679601

/-! ## A234092.P15168853369810241937

`A083399(A129129(n))`
-/

namespace A234092.P15168853369810241937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083399 (A129129 n).toNat

end

end A234092.P15168853369810241937

/-! ## A234092.P7980974808165605606

`A083399(A333485(n))`
-/

namespace A234092.P7980974808165605606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083399 (A333485 n).toNat

end

end A234092.P7980974808165605606

/-! ## A234092.P1244768656387515907

`A124767(A114994(n))+1`
-/

namespace A234092.P1244768656387515907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124767 (A114994 n).toNat + 1

end

end A234092.P1244768656387515907

/-! ## A234092.P9503842134178491271

`A046072(4*A129129(n))`
-/

namespace A234092.P9503842134178491271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046072 (4 * A129129 n).toNat

end

end A234092.P9503842134178491271

/-! ## A234092.P7148906987404723089

`A001221(23*A333485(n))`
-/

namespace A234092.P7148906987404723089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (23 * A333485 n).toNat

end

end A234092.P7148906987404723089

/-! ## A234092.P3977481723488430195

`A001221(29*A129129(n))`
-/

namespace A234092.P3977481723488430195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (29 * A129129 n).toNat

end

end A234092.P3977481723488430195

/-! ## A234092.P8236264150137177459

`A001221(lcm(23, A333485(n)))`
-/

namespace A234092.P8236264150137177459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Int.lcm 23 (A333485 n))

end

end A234092.P8236264150137177459

/-! ## A234092.P9877006592160035762

`A001221(lcm(29, A129129(n)))`
-/

namespace A234092.P9877006592160035762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Int.lcm 29 (A129129 n))

end

end A234092.P9877006592160035762

/-! ## A234092.P13943226229168969382

`∑{d}[A333485(n), A080339(#)]`
-/

namespace A234092.P13943226229168969382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333485 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A080339 d

end

end A234092.P13943226229168969382

/-!
# A234093: Integers of the form (p*q - 1)/2, where p and q are distinct primes.

The programs for A234093, the canonical program `A234093.P13293125460606239070` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A234093 has offset 1).

The definition of A234093 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A234093.P13293125460606239070

`eq[2, ∑{e}[2*n+1, #²]]`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A234093

/-- `eq[2, ∑{e}[2*n+1, #²]]` -/
def P13293125460606239070.Spec : Prop :=
  ∀ n, (P13293125460606239070.a n : ℤ) = A234093 (n + 1)

theorem P13293125460606239070.correct : P13293125460606239070.Spec := by
  intro n
  simp only [A234093, Nat.add_sub_cancel]

end A234093

/-! ## A234093.P657266205126147398

`eq[3, A352063(n)]`
-/

namespace A234093.P657266205126147398
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352063 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A234093.P657266205126147398

namespace A234093

/-- `eq[3, A352063(n)]` -/
def P657266205126147398.Spec : Prop :=
  ∀ n, (P657266205126147398.a n : ℤ) = A234093 (n + 1)

end A234093

/-! ## A234093.P8894250892438366552

`eq[9, A158315(n)]`
-/

namespace A234093.P8894250892438366552
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158315 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A234093.P8894250892438366552

namespace A234093

/-- `eq[9, A158315(n)]` -/
def P8894250892438366552.Spec : Prop :=
  ∀ n, (P8894250892438366552.a n : ℤ) = A234093 (n + 1)

end A234093

/-! ## A234093.P15679094648675574984

`eq[4, A305973(n+1)]`
-/

namespace A234093.P15679094648675574984
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305973 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A234093.P15679094648675574984

namespace A234093

/-- `eq[4, A305973(n+1)]` -/
def P15679094648675574984.Spec : Prop :=
  ∀ n, (P15679094648675574984.a n : ℤ) = A234093 (n + 1)

end A234093

/-! ## A234093.P11579277100750924641

`eq[3, A002033(2*n)]`
-/

namespace A234093.P11579277100750924641
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002033 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A234093.P11579277100750924641

namespace A234093

/-- `eq[3, A002033(2*n)]` -/
def P11579277100750924641.Spec : Prop :=
  ∀ n, (P11579277100750924641.a n : ℤ) = A234093 (n + 1)

end A234093

/-! ## A234093.P471239026031676202

`eq[6, A278223(n+1)]`
-/

namespace A234093.P471239026031676202
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278223 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A234093.P471239026031676202

namespace A234093

/-- `eq[6, A278223(n+1)]` -/
def P471239026031676202.Spec : Prop :=
  ∀ n, (P471239026031676202.a n : ℤ) = A234093 (n + 1)

end A234093

/-! ## A234093.P12682000804676204233

`eq[5, A330773(2*n)]`
-/

namespace A234093.P12682000804676204233
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330773 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A234093.P12682000804676204233

namespace A234093

/-- `eq[5, A330773(2*n)]` -/
def P12682000804676204233.Spec : Prop :=
  ∀ n, (P12682000804676204233.a n : ℤ) = A234093 (n + 1)

end A234093

/-! ## A234093.P17254445007522284260

`eq[9, A291767(n+1)]`
-/

namespace A234093.P17254445007522284260
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291767 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A234093.P17254445007522284260

namespace A234093

/-- `eq[9, A291767(n+1)]` -/
def P17254445007522284260.Spec : Prop :=
  ∀ n, (P17254445007522284260.a n : ℤ) = A234093 (n + 1)

end A234093

/-! ## A234093.P254510320978684409

`eq[2, A008476(Δ[n²])]`
-/

namespace A234093.P254510320978684409
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008476 ((f3 (n + 1) : ℤ) - (f3 n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A234093.P254510320978684409

namespace A234093

/-- `eq[2, A008476(Δ[n²])]` -/
def P254510320978684409.Spec : Prop :=
  ∀ n, (P254510320978684409.a n : ℤ) = A234093 (n + 1)

end A234093

/-! ## A234093.P13822400815097404688

`eq[2, A046645(Δ[n²])]`
-/

namespace A234093.P13822400815097404688
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046645 ((f3 (n + 1) : ℤ) - (f3 n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A234093.P13822400815097404688

namespace A234093

/-- `eq[2, A046645(Δ[n²])]` -/
def P13822400815097404688.Spec : Prop :=
  ∀ n, (P13822400815097404688.a n : ℤ) = A234093 (n + 1)

end A234093

/-! ## A234093.P4703297762946805611

`eq[2, A066882(Δ[n²])]`
-/

namespace A234093.P4703297762946805611
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066882 ((f3 (n + 1) : ℤ) - (f3 n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A234093.P4703297762946805611

namespace A234093

/-- `eq[2, A066882(Δ[n²])]` -/
def P4703297762946805611.Spec : Prop :=
  ∀ n, (P4703297762946805611.a n : ℤ) = A234093 (n + 1)

end A234093

/-! ## A234093.P14265314461456349838

`floor(A046388(n+1)/2)`
-/

namespace A234093.P14265314461456349838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A046388 (n + 1) : ℚ) / 2⌋

end

end A234093.P14265314461456349838

namespace A234093

/-- `floor(A046388(n+1)/2)` -/
def P14265314461456349838.Spec : Prop :=
  ∀ n, P14265314461456349838.a n = A234093 (n + 1)

end A234093

/-! ## A234093.P11570580748089883948

`eq[1, A066620(2*n+1)]`
-/

namespace A234093.P11570580748089883948
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066620 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A234093.P11570580748089883948

namespace A234093

/-- `eq[1, A066620(2*n+1)]` -/
def P11570580748089883948.Spec : Prop :=
  ∀ n, (P11570580748089883948.a n : ℤ) = A234093 (n + 1)

end A234093

/-! ## A234093.P8266240006783856079

`eq[1, A076413(2*n+1)]`
-/

namespace A234093.P8266240006783856079
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076413 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A234093.P8266240006783856079

namespace A234093

/-- `eq[1, A076413(2*n+1)]` -/
def P8266240006783856079.Spec : Prop :=
  ∀ n, (P8266240006783856079.a n : ℤ) = A234093 (n + 1)

end A234093

/-! ## A234093.P2572168022933138997

`eq[1, A089233(2*n+1)]`
-/

namespace A234093.P2572168022933138997
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089233 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A234093.P2572168022933138997

namespace A234093

/-- `eq[1, A089233(2*n+1)]` -/
def P2572168022933138997.Spec : Prop :=
  ∀ n, (P2572168022933138997.a n : ℤ) = A234093 (n + 1)

end A234093

/-! ## A234093.P5309122177949793627

`eq[1, A280710(2*n+1)]`
-/

namespace A234093.P5309122177949793627
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280710 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A234093.P5309122177949793627

namespace A234093

/-- `eq[1, A280710(2*n+1)]` -/
def P5309122177949793627.Spec : Prop :=
  ∀ n, (P5309122177949793627.a n : ℤ) = A234093 (n + 1)

end A234093

/-! ## A234093.P889774891848167151

`eq[1, A281116(2*n+1)]`
-/

namespace A234093.P889774891848167151
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281116 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A234093.P889774891848167151

namespace A234093

/-- `eq[1, A281116(2*n+1)]` -/
def P889774891848167151.Spec : Prop :=
  ∀ n, (P889774891848167151.a n : ℤ) = A234093 (n + 1)

end A234093

/-! ## A234093.P4087699537759216359

`eq[1, A335447(2*n+1)]`
-/

namespace A234093.P4087699537759216359
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335447 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A234093.P4087699537759216359

namespace A234093

/-- `eq[1, A335447(2*n+1)]` -/
def P4087699537759216359.Spec : Prop :=
  ∀ n, (P4087699537759216359.a n : ℤ) = A234093 (n + 1)

end A234093

/-! ## A234093.P9593493842660940473

`eq[1, A340370(2*n+1)]`
-/

namespace A234093.P9593493842660940473
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340370 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A234093.P9593493842660940473

namespace A234093

/-- `eq[1, A340370(2*n+1)]` -/
def P9593493842660940473.Spec : Prop :=
  ∀ n, (P9593493842660940473.a n : ℤ) = A234093 (n + 1)

end A234093

/-!
# A234094: Array {w(n,h)}: row n shows the weights, as defined in Comments, of the partitions of n, arranged in Mathematica order.

The programs for A234094, there is no canonical definition to state claims against.
-/

/-! ## A234094.P1662981126164065373

`A304818(A129129(n+1))`
-/

namespace A234094.P1662981126164065373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304818 (A129129 (n + 1)).toNat

end

end A234094.P1662981126164065373

/-! ## A234094.P8284883480199524579

`A359042(A114994(n+1))`
-/

namespace A234094.P8284883480199524579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359042 (A114994 (n + 1)).toNat

end

end A234094.P8284883480199524579

/-! ## A234094.P14163311725520673943

`A359042(eq[1, A124765(n)])`
-/

namespace A234094.P14163311725520673943
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124765 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359042 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A234094.P14163311725520673943

/-! ## A234094.P18127642336055202309

`A359042(eq[1, A124760(n)+A057427(n)])`
-/

namespace A234094.P18127642336055202309
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124760 n + A057427 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359042 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A234094.P18127642336055202309

/-!
# A234095: Primes p such that 2*p + 1 is semiprime.

The programs for A234095, there is no canonical definition to state claims against.
-/

/-! ## A234095.P16356132314078580028

`A276045(A065475(n+1))`
-/

namespace A234095.P16356132314078580028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276045 (A065475 (n + 1)).toNat

end

end A234095.P16356132314078580028

/-! ## A234095.P14807037258362004915

`A276045(A181440(n+2))`
-/

namespace A234095.P14807037258362004915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276045 (A181440 (n + 2)).toNat

end

end A234095.P14807037258362004915

/-! ## A234095.P12504687882296827057

`A276045(A184985(n+2))`
-/

namespace A234095.P12504687882296827057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276045 (A184985 (n + 2)).toNat

end

end A234095.P12504687882296827057

/-! ## A234095.P2364342101304551384

`eq[n, A006530(2-A001222(2*n+1)+n)]`
-/

namespace A234095.P2364342101304551384
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (2 - A001222 (2 * n + 1) + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A234095.P2364342101304551384

/-! ## A234095.P16620549634541180608

`eq[n, A006530(n+2-A001222(n+1+n))]`
-/

namespace A234095.P16620549634541180608
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 ((n + 2 : ℤ) - A001222 (n + 1 + n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A234095.P16620549634541180608

/-! ## A234095.P15332271323480676770

`eq[n+1, A000203(2-A001222(2*n+1)+n)]`
-/

namespace A234095.P15332271323480676770
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (2 - A001222 (2 * n + 1) + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A234095.P15332271323480676770

/-! ## A234095.P9113233856234170027

`eq[n+1, A000203(n+2-A001222(n+1+n))]`
-/

namespace A234095.P9113233856234170027
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 ((n + 2 : ℤ) - A001222 (n + 1 + n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A234095.P9113233856234170027

/-! ## A234095.P10332410988170083802

`eq[n-1, A000010(2*(n+1)-A001222(2*n+1))]`
-/

namespace A234095.P10332410988170083802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 ((2 * (n + 1) : ℤ) - A001222 (2 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A234095.P10332410988170083802

/-! ## A234095.P16409442034743799864

`record[A263990(n+1)-A000265(A263990(n+1))]`
-/

namespace A234095.P16409442034743799864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263990 (n + 1) - A000265 (A263990 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234095.P16409442034743799864

/-! ## A234095.P12834652443362434783

`∩[A276045(n+1), A198032(n)]`
-/

namespace A234095.P12834652443362434783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276045 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198032 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A234095.P12834652443362434783

/-! ## A234095.P366283494176924850

`p?[eq[A001222(2*n+1), A020639(n+1)]]`
-/

namespace A234095.P366283494176924850
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (2 * n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A234095.P366283494176924850

/-! ## A234095.P11864026751678035555

`∩[A147956(n+1), A276045(n+1)]`
-/

namespace A234095.P11864026751678035555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147956 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276045 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A234095.P11864026751678035555

/-! ## A234095.P4242749916901727845

`p?[n*A000212(A001222(2*n+1))]`
-/

namespace A234095.P4242749916901727845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000212 (A001222 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A234095.P4242749916901727845

/-! ## A234095.P4014201651337977896

`p?[n*A064911(2*n+1)]`
-/

namespace A234095.P4014201651337977896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A064911 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A234095.P4014201651337977896

/-! ## A234095.P16292711163348129402

`p?[n*A353481(2*n+1)]`
-/

namespace A234095.P16292711163348129402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A353481 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A234095.P16292711163348129402

/-! ## A234095.P16564135600435816471

`floor(A233561(n+1)/2)`
-/

namespace A234095.P16564135600435816471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A233561 (n + 1) : ℚ) / 2⌋

end

end A234095.P16564135600435816471

/-! ## A234095.P928302952607793415

`∩[A276045(n+1), A336370(n+1)]`
-/

namespace A234095.P928302952607793415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276045 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336370 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A234095.P928302952607793415

/-! ## A234095.P15844116732043519221

`p?[eq[4, A305973(n+1)]]`
-/

namespace A234095.P15844116732043519221
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305973 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A234095.P15844116732043519221

/-!
# A234096: Integers of the form (p*q + 1)/2, where p and q are distinct primes.

The programs for A234096, there is no canonical definition to state claims against.
-/

/-! ## A234096.P6944502742366504469

`eq[2, ∑{e}[1-2*n, #²]]`
-/

namespace A234096.P6944502742366504469
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (2 * n : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n).natAbs, Nat.factorization (f3 n).natAbs p ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A234096.P6944502742366504469

/-! ## A234096.P10285242906091671938

`eq[2, ∑{e}[2*n+1, #²]]+1`
-/

namespace A234096.P10285242906091671938
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A234096.P10285242906091671938

/-! ## A234096.P17796428999242915632

`lt[n+1, ∏{p}[1-2*n, -#]]`
-/

namespace A234096.P17796428999242915632
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (2 * n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n).natAbs, (-(p : ℤ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A234096.P17796428999242915632

/-! ## A234096.P10757414305997318398

`lt[n+1, ∏{p}[2*n+1, -#]]+1`
-/

namespace A234096.P10757414305997318398
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), (-(p : ℤ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A234096.P10757414305997318398

/-! ## A234096.P12534564384217236350

`A234093(n+1)+1`
-/

namespace A234096.P12534564384217236350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234093 (n + 1) + 1

end

end A234096.P12534564384217236350

/-! ## A234096.P10692668611207384080

`(A046388(n+1)+1)/2`
-/

namespace A234096.P10692668611207384080
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046388 (n + 1) + 1 : ℚ) / 2

end

end A234096.P10692668611207384080

/-! ## A234096.P14721469010127337534

`(A053858(n+1)+2)/4`
-/

namespace A234096.P14721469010127337534
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053858 (n + 1) + 2 : ℚ) / 4

end

end A234096.P14721469010127337534

/-! ## A234096.P7246285934260510822

`lt[0, A008683(2*n+3)]+2`
-/

namespace A234096.P7246285934260510822
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (2 * n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 2

end

end A234096.P7246285934260510822

/-!
# A234097: Combined weight, as defined at A234094, of the partitions of n.

The programs for A234097, there is no canonical definition to state claims against.
-/

/-! ## A234097.P17033450612593846920

`(n+1)*A006128(n+1)-A066185(n+1)`
-/

namespace A234097.P17033450612593846920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A006128 (n + 1) - A066185 (n + 1)

end

end A234097.P17033450612593846920

/-! ## A234097.P18426485669803559298

`∑[A345917(A001648(n+1))]`
-/

namespace A234097.P18426485669803559298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345917 (A001648 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A234097.P18426485669803559298

/-!
# A234098: Primes of the form (p*q + 1)/2, where p and q are distinct primes.

The programs for A234098, the canonical program `A234098.P592153265309545605` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A234098 has offset 1).

The definition of A234098 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3372 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A234098.P592153265309545605

`∩[A114454(n+1), A265402(n+1)]`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A234098

/-- `∩[A114454(n+1), A265402(n+1)]` -/
def P592153265309545605.Spec : Prop :=
  ∀ n, (P592153265309545605.a n : ℤ) = A234098 (n + 1)

theorem P592153265309545605.correct : P592153265309545605.Spec := by
  intro n
  simp only [A234098, Nat.add_sub_cancel]

end A234098

/-! ## A234098.P1744759426097940230

`∩[A265402(n+1), A328058(n+1)]`
-/

namespace A234098.P1744759426097940230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265402 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328058 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A234098.P1744759426097940230

namespace A234098

/-- `∩[A265402(n+1), A328058(n+1)]` -/
def P1744759426097940230.Spec : Prop :=
  ∀ n, (P1744759426097940230.a n : ℤ) = A234098 (n + 1)

end A234098

/-! ## A234098.P2938550524644420978

`∩[A114454(n+1), A143189(n+1)]`
-/

namespace A234098.P2938550524644420978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114454 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143189 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A234098.P2938550524644420978

namespace A234098

/-- `∩[A114454(n+1), A143189(n+1)]` -/
def P2938550524644420978.Spec : Prop :=
  ∀ n, (P2938550524644420978.a n : ℤ) = A234098 (n + 1)

end A234098

/-! ## A234098.P4122610974360361486

`∩[A143189(n+1), A328058(n+1)]`
-/

namespace A234098.P4122610974360361486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143189 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328058 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A234098.P4122610974360361486

namespace A234098

/-- `∩[A143189(n+1), A328058(n+1)]` -/
def P4122610974360361486.Spec : Prop :=
  ∀ n, (P4122610974360361486.a n : ℤ) = A234098 (n + 1)

end A234098

/-! ## A234098.P13840662456926321391

`record[A006530(A083793(n+3))]`
-/

namespace A234098.P13840662456926321391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A083793 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234098.P13840662456926321391

namespace A234098

/-- `record[A006530(A083793(n+3))]` -/
def P13840662456926321391.Spec : Prop :=
  ∀ n, P13840662456926321391.a n = A234098 (n + 1)

end A234098

/-! ## A234098.P17913109582253327503

`record[A006530(A039832(n+2)+1)]`
-/

namespace A234098.P17913109582253327503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A039832 (n + 2) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234098.P17913109582253327503

namespace A234098

/-- `record[A006530(A039832(n+2)+1)]` -/
def P17913109582253327503.Spec : Prop :=
  ∀ n, P17913109582253327503.a n = A234098 (n + 1)

end A234098

/-! ## A234098.P3299715736751377849

`eq[A000005(2*n+1)+n-2, A000203(n+1)]+1`
-/

namespace A234098.P3299715736751377849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (2 * n + 1) + ((n : ℤ) - 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A234098.P3299715736751377849

namespace A234098

/-- `eq[A000005(2*n+1)+n-2, A000203(n+1)]+1` -/
def P3299715736751377849.Spec : Prop :=
  ∀ n, (P3299715736751377849.a n : ℤ) = A234098 (n + 1)

end A234098

/-! ## A234098.P8659339118251029146

`eq[A001222(n+1)+1, A051709(2*n+1)]+1`
-/

namespace A234098.P8659339118251029146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051709 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A234098.P8659339118251029146

namespace A234098

/-- `eq[A001222(n+1)+1, A051709(2*n+1)]+1` -/
def P8659339118251029146.Spec : Prop :=
  ∀ n, (P8659339118251029146.a n : ℤ) = A234098 (n + 1)

end A234098

/-! ## A234098.P10932071455476458792

`eq[A077462(2*n+1), A319357(2*(n+1))]+1`
-/

namespace A234098.P10932071455476458792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077462 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319357 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A234098.P10932071455476458792

namespace A234098

/-- `eq[A077462(2*n+1), A319357(2*(n+1))]+1` -/
def P10932071455476458792.Spec : Prop :=
  ∀ n, (P10932071455476458792.a n : ℤ) = A234098 (n + 1)

end A234098

/-! ## A234098.P13000316088894803479

`eq[A319357(2*n+1), A319357(2*(n+1))]+1`
-/

namespace A234098.P13000316088894803479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319357 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319357 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A234098.P13000316088894803479

namespace A234098

/-- `eq[A319357(2*n+1), A319357(2*(n+1))]+1` -/
def P13000316088894803479.Spec : Prop :=
  ∀ n, (P13000316088894803479.a n : ℤ) = A234098 (n + 1)

end A234098

/-! ## A234098.P12135501609651618522

`∩[A117206(n+1), A328058(n+1)]`
-/

namespace A234098.P12135501609651618522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117206 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328058 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A234098.P12135501609651618522

namespace A234098

/-- `∩[A117206(n+1), A328058(n+1)]` -/
def P12135501609651618522.Spec : Prop :=
  ∀ n, (P12135501609651618522.a n : ℤ) = A234098 (n + 1)

end A234098

/-! ## A234098.P3260868348490264

`p?[floor(A006881(n+1)/2)+1]`
-/

namespace A234098.P3260868348490264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A006881 (n + 1) : ℚ) / 2⌋ + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A234098.P3260868348490264

namespace A234098

/-- `p?[floor(A006881(n+1)/2)+1]` -/
def P3260868348490264.Spec : Prop :=
  ∀ n, P3260868348490264.a n = A234098 (n + 1)

end A234098

/-! ## A234098.P3115328687706876691

`p?[A093411(A263990(n+1)+1)]`
-/

namespace A234098.P3115328687706876691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093411 (A263990 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A234098.P3115328687706876691

namespace A234098

/-- `p?[A093411(A263990(n+1)+1)]` -/
def P3115328687706876691.Spec : Prop :=
  ∀ n, P3115328687706876691.a n = A234098 (n + 1)

end A234098

/-! ## A234098.P4717059030217365989

`∩[A328058(n+1), A350757(n+1)]`
-/

namespace A234098.P4717059030217365989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328058 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350757 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A234098.P4717059030217365989

namespace A234098

/-- `∩[A328058(n+1), A350757(n+1)]` -/
def P4717059030217365989.Spec : Prop :=
  ∀ n, (P4717059030217365989.a n : ℤ) = A234098 (n + 1)

end A234098

/-! ## A234098.P10972476573356537909

`∩[A265412(2*n+1), A109373(n+2)]/2`
-/

namespace A234098.P10972476573356537909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265412 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109373 (n + 2)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A234098.P10972476573356537909

namespace A234098

/-- `∩[A265412(2*n+1), A109373(n+2)]/2` -/
def P10972476573356537909.Spec : Prop :=
  ∀ n, P10972476573356537909.a n = (A234098 (n + 1) : ℚ)

end A234098

/-! ## A234098.P15345282034542086417

`p?[A008619(A006881(n+1))]`
-/

namespace A234098.P15345282034542086417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A006881 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A234098.P15345282034542086417

namespace A234098

/-- `p?[A008619(A006881(n+1))]` -/
def P15345282034542086417.Spec : Prop :=
  ∀ n, P15345282034542086417.a n = A234098 (n + 1)

end A234098

/-! ## A234098.P10976347768639251769

`p?[A000463(A046388(n+1))]`
-/

namespace A234098.P10976347768639251769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (A046388 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A234098.P10976347768639251769

namespace A234098

/-- `p?[A000463(A046388(n+1))]` -/
def P10976347768639251769.Spec : Prop :=
  ∀ n, P10976347768639251769.a n = A234098 (n + 1)

end A234098

/-! ## A234098.P7664485379484459980

`p?[A088835(A048671(2*n+1))-n]`
-/

namespace A234098.P7664485379484459980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088835 (A048671 (2 * n + 1)).toNat - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A234098.P7664485379484459980

namespace A234098

/-- `p?[A088835(A048671(2*n+1))-n]` -/
def P7664485379484459980.Spec : Prop :=
  ∀ n, P7664485379484459980.a n = A234098 (n + 1)

end A234098

/-! ## A234098.P15504321541769452631

`p?[A066048(A340679(2*n+1))-n]`
-/

namespace A234098.P15504321541769452631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066048 (A340679 (2 * n + 1)).toNat - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A234098.P15504321541769452631

namespace A234098

/-- `p?[A066048(A340679(2*n+1))-n]` -/
def P15504321541769452631.Spec : Prop :=
  ∀ n, P15504321541769452631.a n = A234098 (n + 1)

end A234098

/-!
# A234099: Integers of the form (p*q*r - 1)/2, where p, q, r are distinct primes.

The programs for A234099, the canonical program `A234099.P9052992037013079274` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A234099 has offset 1).

The definition of A234099 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046389, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A234099.P9052992037013079274

`(A046389(n+1)-1)/2`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A234099

/-- `(A046389(n+1)-1)/2` -/
def P9052992037013079274.Spec : Prop :=
  ∀ n, P9052992037013079274.a n = (A234099 (n + 1) : ℚ)

end A234099

/-! ## A234099.P8181315140314401499

`A234102(n+1)-1`
-/

namespace A234099.P8181315140314401499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234102 (n + 1) - 1

end

end A234099.P8181315140314401499

namespace A234099

/-- `A234102(n+1)-1` -/
def P8181315140314401499.Spec : Prop :=
  ∀ n, P8181315140314401499.a n = A234099 (n + 1)

end A234099

/-! ## A234099.P16935926642757154619

`eq[8, A305973(n+1)]`
-/

namespace A234099.P16935926642757154619
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305973 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A234099.P16935926642757154619

namespace A234099

/-- `eq[8, A305973(n+1)]` -/
def P16935926642757154619.Spec : Prop :=
  ∀ n, (P16935926642757154619.a n : ℤ) = A234099 (n + 1)

end A234099

/-! ## A234099.P9269787052193457883

`floor(A046389(n+1)/2)`
-/

namespace A234099.P9269787052193457883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A046389 (n + 1) : ℚ) / 2⌋

end

end A234099.P9269787052193457883

namespace A234099

/-- `floor(A046389(n+1)/2)` -/
def P9269787052193457883.Spec : Prop :=
  ∀ n, P9269787052193457883.a n = A234099 (n + 1)

end A234099

/-! ## A234099.P11440397533382607376

`eq[1, A354926(2*n+1)]`
-/

namespace A234099.P11440397533382607376
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354926 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A234099.P11440397533382607376

namespace A234099

/-- `eq[1, A354926(2*n+1)]` -/
def P11440397533382607376.Spec : Prop :=
  ∀ n, (P11440397533382607376.a n : ℤ) = A234099 (n + 1)

end A234099

/-! ## A234099.P2229221248609387184

`eq[3, A090885(2*n+1)]`
-/

namespace A234099.P2229221248609387184
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090885 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A234099.P2229221248609387184

namespace A234099

/-- `eq[3, A090885(2*n+1)]` -/
def P2229221248609387184.Spec : Prop :=
  ∀ n, (P2229221248609387184.a n : ℤ) = A234099 (n + 1)

end A234099

/-! ## A234099.P5308843063666649962

`A273943(A046389(n+1)-1)`
-/

namespace A234099.P5308843063666649962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A046389 (n + 1) - 1).toNat

end

end A234099.P5308843063666649962

namespace A234099

/-- `A273943(A046389(n+1)-1)` -/
def P5308843063666649962.Spec : Prop :=
  ∀ n, P5308843063666649962.a n = A234099 (n + 1)

end A234099

/-! ## A234099.P14306395903998943943

`A046389(n+1)%A234102(n+1)`
-/

namespace A234099.P14306395903998943943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A046389 (n + 1)) (A234102 (n + 1))

end

end A234099.P14306395903998943943

namespace A234099

/-- `A046389(n+1)%A234102(n+1)` -/
def P14306395903998943943.Spec : Prop :=
  ∀ n, P14306395903998943943.a n = A234099 (n + 1)

end A234099

/-! ## A234099.P16686121220222540526

`eq[4, A352063(A352063(n))]`
-/

namespace A234099.P16686121220222540526
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352063 (A352063 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A234099.P16686121220222540526

namespace A234099

/-- `eq[4, A352063(A352063(n))]` -/
def P16686121220222540526.Spec : Prop :=
  ∀ n, (P16686121220222540526.a n : ℤ) = A234099 (n + 1)

end A234099

/-! ## A234099.P8068369489416386845

`record[A330755(A046386(n+1))-1]`
-/

namespace A234099.P8068369489416386845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330755 (A046386 (n + 1)).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234099.P8068369489416386845

namespace A234099

/-- `record[A330755(A046386(n+1))-1]` -/
def P8068369489416386845.Spec : Prop :=
  ∀ n, P8068369489416386845.a n = A234099 (n + 1)

end A234099

/-! ## A234099.P8438631865765706574

`A246425(A046389(n+1)-2)`
-/

namespace A234099.P8438631865765706574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246425 (A046389 (n + 1) - 2).toNat

end

end A234099.P8438631865765706574

namespace A234099

/-- `A246425(A046389(n+1)-2)` -/
def P8438631865765706574.Spec : Prop :=
  ∀ n, P8438631865765706574.a n = A234099 (n + 1)

end A234099

/-! ## A234099.P3636909089395109529

`eq[2, A378452(2*n+1)]`
-/

namespace A234099.P3636909089395109529
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378452 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A234099.P3636909089395109529

namespace A234099

/-- `eq[2, A378452(2*n+1)]` -/
def P3636909089395109529.Spec : Prop :=
  ∀ n, (P3636909089395109529.a n : ℤ) = A234099 (n + 1)

end A234099

/-! ## A234099.P2818687215258558798

`A023443(A234102(n+1))`
-/

namespace A234099.P2818687215258558798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A234102 (n + 1)).toNat

end

end A234099.P2818687215258558798

namespace A234099

/-- `A023443(A234102(n+1))` -/
def P2818687215258558798.Spec : Prop :=
  ∀ n, P2818687215258558798.a n = A234099 (n + 1)

end A234099

/-! ## A234099.P1160313959391297543

`eq[A040210(n), A278223(n+1)]`
-/

namespace A234099.P1160313959391297543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040210 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278223 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A234099.P1160313959391297543

namespace A234099

/-- `eq[A040210(n), A278223(n+1)]` -/
def P1160313959391297543.Spec : Prop :=
  ∀ n, (P1160313959391297543.a n : ℤ) = A234099 (n + 1)

end A234099

/-! ## A234099.P4700783970932261994

`eq[A154051(n+5), A158315(n)]`
-/

namespace A234099.P4700783970932261994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154051 (n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158315 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A234099.P4700783970932261994

namespace A234099

/-- `eq[A154051(n+5), A158315(n)]` -/
def P4700783970932261994.Spec : Prop :=
  ∀ n, (P4700783970932261994.a n : ℤ) = A234099 (n + 1)

end A234099

/-! ## A234099.P4417373113737863919

`eq[A099592(n+2), A278223(n+1)]`
-/

namespace A234099.P4417373113737863919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099592 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278223 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A234099.P4417373113737863919

namespace A234099

/-- `eq[A099592(n+2), A278223(n+1)]` -/
def P4417373113737863919.Spec : Prop :=
  ∀ n, (P4417373113737863919.a n : ℤ) = A234099 (n + 1)

end A234099

/-! ## A234099.P14539426044566108589

`eq[3, A300385(2*n+1)]`
-/

namespace A234099.P14539426044566108589
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300385 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A234099.P14539426044566108589

namespace A234099

/-- `eq[3, A300385(2*n+1)]` -/
def P14539426044566108589.Spec : Prop :=
  ∀ n, (P14539426044566108589.a n : ℤ) = A234099 (n + 1)

end A234099

/-! ## A234099.P12356408572943818388

`lt[1, A143519(2*n+1)]`
-/

namespace A234099.P12356408572943818388
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143519 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A234099.P12356408572943818388

namespace A234099

/-- `lt[1, A143519(2*n+1)]` -/
def P12356408572943818388.Spec : Prop :=
  ∀ n, (P12356408572943818388.a n : ℤ) = A234099 (n + 1)

end A234099

/-! ## A234099.P12116336320323358281

`eq[3, A008476(2*n+1)]`
-/

namespace A234099.P12116336320323358281
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008476 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A234099.P12116336320323358281

namespace A234099

/-- `eq[3, A008476(2*n+1)]` -/
def P12116336320323358281.Spec : Prop :=
  ∀ n, (P12116336320323358281.a n : ℤ) = A234099 (n + 1)

end A234099

/-! ## A234099.P13034135812830352218

`eq[3, A112400(2*n+1)]`
-/

namespace A234099.P13034135812830352218
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112400 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A234099.P13034135812830352218

namespace A234099

/-- `eq[3, A112400(2*n+1)]` -/
def P13034135812830352218.Spec : Prop :=
  ∀ n, (P13034135812830352218.a n : ℤ) = A234099 (n + 1)

end A234099

