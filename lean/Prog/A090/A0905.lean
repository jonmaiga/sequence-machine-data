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
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
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
import Seq.B007.C000
import Seq.B008.C000
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
# A090500: Sums described in A090499.

The programs for A090500, there is no canonical definition to state claims against.
-/

/-! ## A090500.P7096491716097609114

`Δ[A006218(A090499(n+1)-1)]`
-/

namespace A090500.P7096491716097609114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 (A090499 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A090500.P7096491716097609114

/-!
# A090501: Group the natural numbers as in A090499; sequence gives the number of members in each group.

The programs for A090501, there is no canonical definition to state claims against.
-/

/-! ## A090501.P11614580654441080114

`A090499(n+2)-A090499(n+1)`
-/

namespace A090501.P11614580654441080114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090499 (n + 2) - A090499 (n + 1)

end

end A090501.P11614580654441080114

/-! ## A090501.P10797026432095284356

`Δ[A090499(n+1)]`
-/

namespace A090501.P10797026432095284356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090499 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A090501.P10797026432095284356

/-! ## A090501.P8296404946718213091

`Δ[record[A090499(A116549(n))]]`
-/

namespace A090501.P8296404946718213091
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090499 (A116549 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A090501.P8296404946718213091

/-! ## A090501.P12583916517145022707

`Δ[record[A090499(A126759(n))]]`
-/

namespace A090501.P12583916517145022707
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090499 (A126759 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A090501.P12583916517145022707

/-! ## A090501.P4625904330794677018

`Δ[record[A090499(A154958(n))]]`
-/

namespace A090501.P4625904330794677018
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090499 (A154958 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A090501.P4625904330794677018

/-! ## A090501.P15694054969413197619

`Δ[record[A090499(A193592(n))]]`
-/

namespace A090501.P15694054969413197619
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090499 (A193592 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A090501.P15694054969413197619

/-!
# A090502: Numbers k such that tau(k) = tau(k-1) + tau(k+1).

The programs for A090502, there is no canonical definition to state claims against.
-/

/-! ## A090502.P3061437967136933595

`∩[A075027(n+1), A190612(n+1)]`
-/

namespace A090502.P3061437967136933595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075027 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190612 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A090502.P3061437967136933595

/-! ## A090502.P5290484503750600145

`A020725(eq[-A096737(n+1), A051951(n)])`
-/

namespace A090502.P5290484503750600145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A096737 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051951 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A090502.P5290484503750600145

/-! ## A090502.P764981548767568052

`A065475(eq[-A096737(n+1), A051951(n)])`
-/

namespace A090502.P764981548767568052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A096737 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051951 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A090502.P764981548767568052

/-! ## A090502.P10728190249346489269

`eq[-A096737(A028310(n)+1), A051951(n)]+1`
-/

namespace A090502.P10728190249346489269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A096737 (A028310 n + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051951 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A090502.P10728190249346489269

/-! ## A090502.P2232210571844398551

`eq[-A096737(A023533(n)+1+n), A051951(n)]+1`
-/

namespace A090502.P2232210571844398551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A096737 (A023533 n + 1 + (n : ℤ)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051951 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A090502.P2232210571844398551

/-! ## A090502.P14038843431688217627

`eq[A096737(n+1), A341062(A028310(n))]`
-/

namespace A090502.P14038843431688217627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096737 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341062 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A090502.P14038843431688217627

/-! ## A090502.P13432213348549644031

`eq[A051950(A233583(n+1)), A096737(n+1)]`
-/

namespace A090502.P13432213348549644031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051950 (A233583 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096737 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A090502.P13432213348549644031

/-!
# A090503: Number of hyperplanes in a finite projective space (of some dimension d over some finite field of order q).

The programs for A090503, there is no canonical definition to state claims against.
-/

/-! ## A090503.P6132889173983690084

`∩[A053696(n+1), A258777(n+1)]`
-/

namespace A090503.P6132889173983690084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053696 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258777 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A090503.P6132889173983690084

/-! ## A090503.P2287352278292582223

`A001222(A004061(n+1))*A053696(A189891(n+1))`
-/

namespace A090503.P2287352278292582223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A004061 (n + 1)).toNat * A053696 (A189891 (n + 1)).toNat

end

end A090503.P2287352278292582223

/-! ## A090503.P15661890814850820935

`A053696(A001222(2^A189891(n+1)))`
-/

namespace A090503.P15661890814850820935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053696 (A001222 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A189891 (n + 1) : ℤ))).toNat).toNat

end

end A090503.P15661890814850820935

/-! ## A090503.P11345180778610358485

`A053696(lt[A380746(n+1), A380691(2*(n+1))])`
-/

namespace A090503.P11345180778610358485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380746 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380691 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053696 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A090503.P11345180778610358485

/-! ## A090503.P16442927373135933707

`∩[A053696(n+1), A359415(n+1)]`
-/

namespace A090503.P16442927373135933707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053696 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359415 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A090503.P16442927373135933707

/-!
# A090504: Beginning with 1, numbers such that the differences a(k)-a(k-1) are distinct and every concatenation n>1 is prime.

The programs for A090504, there is no canonical definition to state claims against.
-/

/-! ## A090504.P15781802908497135316

`A056239(A333093(n))+A015128(n)`
-/

namespace A090504.P15781802908497135316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A333093 n).toNat + A015128 n

end

end A090504.P15781802908497135316

/-! ## A090504.P3746034368843776858

`A128770(n)+A056239(A333093(n))`
-/

namespace A090504.P3746034368843776858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128770 n + A056239 (A333093 n).toNat

end

end A090504.P3746034368843776858

/-!
# A090506: Least number beginning with n such that every concatenation is a prime.

The programs for A090506, there is no canonical definition to state claims against.
-/

/-! ## A090506.P3083524778583435851

`A082433(xor(A000005(3*n+1), A265114(n+1)))`
-/

namespace A090506.P3083524778583435851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082433 (Int.xor (A000005 (3 * n + 1)) (A265114 (n + 1))).toNat

end

end A090506.P3083524778583435851

/-!
# A090513: Least m exceeding the previous term such that the concatenation mnm is prime.

The programs for A090513, there is no canonical definition to state claims against.
-/

/-! ## A090513.P9784626388669352939

`A316428(xor(1, A029957(2*n+3)))`
-/

namespace A090513.P9784626388669352939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316428 (Int.xor 1 (A029957 (2 * n + 3))).toNat

end

end A090513.P9784626388669352939

/-! ## A090513.P17409723434421424224

`A099375(A238515(n+1)-A032766(n))`
-/

namespace A090513.P17409723434421424224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 (A238515 (n + 1) - A032766 n).toNat

end

end A090513.P17409723434421424224

/-! ## A090513.P3183493041607348545

`A194441(A007502(n+1))+A069346(n+1)`
-/

namespace A090513.P3183493041607348545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194441 (A007502 (n + 1)).toNat + A069346 (n + 1)

end

end A090513.P3183493041607348545

/-!
# A090516: Perfect powers (at least a square) in which neighboring digits are distinct.

The programs for A090516, there is no canonical definition to state claims against.
-/

/-! ## A090516.P9273061230205506308

`∩[A001597(n+1), A043096(n+1)]`
-/

namespace A090516.P9273061230205506308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043096 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A090516.P9273061230205506308

/-! ## A090516.P12435516044250815930

`record[A321802(∑[A076412(n)])]`
-/

namespace A090516.P12435516044250815930
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076412 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321802 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A090516.P12435516044250815930

/-! ## A090516.P684892125627968686

`record[A321802(A001597(n+1))]`
-/

namespace A090516.P684892125627968686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321802 (A001597 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A090516.P684892125627968686

/-! ## A090516.P10501344295770334122

`record[A321802(gcd(n, A301573(n)))]`
-/

namespace A090516.P10501344295770334122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321802 (Int.gcd (n : ℤ) (A301573 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A090516.P10501344295770334122

/-! ## A090516.P7237447096231672734

`filter[A001597(n+1), A196368(#)]`
-/

namespace A090516.P7237447096231672734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A196368 (f1 j).toNat = 1) n)

end

end A090516.P7237447096231672734

/-! ## A090516.P13961053082100058935

`eq[A301573(n)+1, A196368(n)]`
-/

namespace A090516.P13961053082100058935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301573 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196368 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A090516.P13961053082100058935

/-! ## A090516.P218717251638190284

`record[A321802(abs(A157985(n+1)))]`
-/

namespace A090516.P218717251638190284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321802 |A157985 (n + 1)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A090516.P218717251638190284

/-! ## A090516.P726046137107900575

`record[A351868(abs(A157985(n+1)))]`
-/

namespace A090516.P726046137107900575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351868 |A157985 (n + 1)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A090516.P726046137107900575

/-! ## A090516.P3741687257353631495

`record[A321802(sqrt(A340588(n+1)))]`
-/

namespace A090516.P3741687257353631495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321802 (SequenceMachineLib.roundAway (Real.sqrt (A340588 (n + 1) : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A090516.P3741687257353631495

/-! ## A090516.P14660410817673193299

`record[A351868(A001597(C(n+1, n)))]`
-/

namespace A090516.P14660410817673193299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351868 (A001597 (Nat.choose (n + 1) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A090516.P14660410817673193299

/-!
# A090522: Largest prime of the form floor(n!/k). Primes arising in A090521.

The programs for A090522, there is no canonical definition to state claims against.
-/

/-! ## A090522.P1618174167418514450

`floor((n+2)!/A090521(n+2))`
-/

namespace A090522.P1618174167418514450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.factorial (n + 2) : ℚ) / (A090521 (n + 2) : ℚ)⌋

end

end A090522.P1618174167418514450

/-! ## A090522.P6446834387926496399

`A331959((n+2)!)`
-/

namespace A090522.P6446834387926496399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331959 (Nat.factorial (n + 2))

end

end A090522.P6446834387926496399

/-!
# A090524: Primes arising in A090523, or 0 if no such prime exists.

The programs for A090524, there is no canonical definition to state claims against.
-/

/-! ## A090524.P17345570982444013664

`A172240(Δ[Δ[(n+1)*a(n-2)]])` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A090524.P17345570982444013664
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 2] fun n f2 =>
  (n + 1) * f2 (n - 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172240 (f1 (n + 1) - f1 n).toNat

end

end A090524.P17345570982444013664

/-!
# A090526: Primes arising in A090525, or 0 if A090525(n) = 0.

The programs for A090526, there is no canonical definition to state claims against.
-/

/-! ## A090526.P8364506741088951996

`A006530(A302553(n+1)-A006369(n))`
-/

namespace A090526.P8364506741088951996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A302553 (n + 1) - A006369 n).toNat

end

end A090526.P8364506741088951996

/-!
# A090527: Smallest prime p such that floor((n^n)/p) is prime, or 0 if no such number exists.

The programs for A090527, there is no canonical definition to state claims against.
-/

/-! ## A090527.P1342364548925755983

`A006530(round(A302553(n+1)/A090528(n+1)))`
-/

namespace A090527.P1342364548925755983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.roundAway ((A302553 (n + 1) : ℚ) / (A090528 (n + 1) : ℚ))).toNat

end

end A090527.P1342364548925755983

/-! ## A090527.P675541712647715393

`A020639(round(A302553(n+1)/A090528(n+1)))`
-/

namespace A090527.P675541712647715393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (SequenceMachineLib.roundAway ((A302553 (n + 1) : ℚ) / (A090528 (n + 1) : ℚ))).toNat

end

end A090527.P675541712647715393

/-!
# A090529: a(n) is the smallest positive m such that n <= m!.

The programs for A090529, the canonical program `A090529.P4680555822996673914` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A090529 has offset 0).

The definition of A090529 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A090529.P7135716864123838108

`∑[char[n!+1]]+1`
-/

namespace A090529.P7135716864123838108
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n + 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A090529.P7135716864123838108

namespace A090529

/-- `∑[char[n!+1]]+1` -/
def P7135716864123838108.Spec : Prop :=
  ∀ n, (P7135716864123838108.a n : ℤ) = A090529 n

end A090529

/-! ## A090529.P2746790614813698017

`∑[char[∏[n+1]+1]]+1`
-/

namespace A090529.P2746790614813698017
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f3 j + 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A090529.P2746790614813698017

namespace A090529

/-- `∑[char[∏[n+1]+1]]+1` -/
def P2746790614813698017.Spec : Prop :=
  ∀ n, (P2746790614813698017.a n : ℤ) = A090529 n

end A090529

/-! ## A090529.P12538872680807650283

`∑[char[abs(n-n*a(n-1))+1]]` with `a(0)=0`
-/

namespace A090529.P12538872680807650283
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f2 =>
  |(n : ℤ) - (n : ℤ) * f2 (n - 1)| + 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A090529.P12538872680807650283

namespace A090529

/-- `∑[char[abs(n-n*a(n-1))+1]]` -/
def P12538872680807650283.Spec : Prop :=
  ∀ n, (P12538872680807650283.a n : ℤ) = A090529 n

end A090529

/-! ## A090529.P4680555822996673914

`∑[A316341(abs(1-n))]`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A090529

/-- `∑[A316341(abs(1-n))]` -/
def P4680555822996673914.Spec : Prop :=
  ∀ n, P4680555822996673914.a n = A090529 n

theorem P4680555822996673914.correct : P4680555822996673914.Spec := by
  intro n
  simp only [A090529]

end A090529

/-! ## A090529.P261413760005389588

`∑[char[(n+1)*char[A000142(n)]]]`
-/

namespace A090529.P261413760005389588
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (if ∃ j, f3 j = (n : ℤ) then 1 else 0)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A090529.P261413760005389588

namespace A090529

/-- `∑[char[(n+1)*char[A000142(n)]]]` -/
def P261413760005389588.Spec : Prop :=
  ∀ n, (P261413760005389588.a n : ℤ) = A090529 n

end A090529

/-! ## A090529.P11323059325703880681

`A028310(∑[char[A185387(n)]])`
-/

namespace A090529.P11323059325703880681
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185387 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A090529.P11323059325703880681

namespace A090529

/-- `A028310(∑[char[A185387(n)]])` -/
def P11323059325703880681.Spec : Prop :=
  ∀ n, P11323059325703880681.a n = A090529 n

end A090529

/-! ## A090529.P1651517631644205077

`∑[char[eq[A034968(n), A316828(n)]]]`
-/

namespace A090529.P1651517631644205077
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034968 n

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316828 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f3 j = f4 j) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A090529.P1651517631644205077

namespace A090529

/-- `∑[char[eq[A034968(n), A316828(n)]]]` -/
def P1651517631644205077.Spec : Prop :=
  ∀ n, (P1651517631644205077.a n : ℤ) = A090529 n

end A090529

/-! ## A090529.P11866799650539173702

`A033307(∑[char[A166350(n+1)+1]])`
-/

namespace A090529.P11866799650539173702
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166350 (n + 1) + 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033307 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A090529.P11866799650539173702

namespace A090529

/-- `A033307(∑[char[A166350(n+1)+1]])` -/
def P11866799650539173702.Spec : Prop :=
  ∀ n, P11866799650539173702.a n = A090529 n

end A090529

/-! ## A090529.P1054296178102712229

`A084526(A084500(A005041(n²)))`
-/

namespace A090529.P1054296178102712229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084526 (A084500 (A005041 (n ^ 2)).toNat).toNat

end

end A090529.P1054296178102712229

namespace A090529

/-- `A084526(A084500(A005041(n²)))` -/
def P1054296178102712229.Spec : Prop :=
  ∀ n, P1054296178102712229.a n = A090529 n

end A090529

/-! ## A090529.P15509040660685876619

`A072649(A130312(A095791(n²+n)))`
-/

namespace A090529.P15509040660685876619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072649 (A130312 (A095791 (n ^ 2 + n)).toNat).toNat

end

end A090529.P15509040660685876619

namespace A090529

/-- `A072649(A130312(A095791(n²+n)))` -/
def P15509040660685876619.Spec : Prop :=
  ∀ n, P15509040660685876619.a n = A090529 n

end A090529

/-!
# A090530: Least multiple k of prime(n) such that (k-1,k+1) forms a twin prime pair, or 0 if no such number exists.

The programs for A090530, there is no canonical definition to state claims against.
-/

/-! ## A090530.P13307807331253426754

`A000040(n+1)*A071407(n+1)`
-/

namespace A090530.P13307807331253426754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A071407 (n + 1)

end

end A090530.P13307807331253426754

/-! ## A090530.P13799435715952849245

`lcm(A071407(n+1), A100484(n+1))`
-/

namespace A090530.P13799435715952849245
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A071407 (n + 1)) (A100484 (n + 1))

end

end A090530.P13799435715952849245

/-! ## A090530.P18420980292657261773

`A005117(A071403(n+1))*A071407(n+1)`
-/

namespace A090530.P18420980292657261773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (A071403 (n + 1)).toNat * A071407 (n + 1)

end

end A090530.P18420980292657261773

/-! ## A090530.P5277692157578793410

`A067747(2*n+1)*A071407(n+1)`
-/

namespace A090530.P5277692157578793410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067747 (2 * n + 1) * A071407 (n + 1)

end

end A090530.P5277692157578793410

/-! ## A090530.P4335769418655665326

`A071256(A000040(n+1))`
-/

namespace A090530.P4335769418655665326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071256 (A000040 (n + 1)).toNat

end

end A090530.P4335769418655665326

/-! ## A090530.P7557342646175852490

`A071256(A006005(n+1))`
-/

namespace A090530.P7557342646175852490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071256 (A006005 (n + 1)).toNat

end

end A090530.P7557342646175852490

/-! ## A090530.P7787021930469509629

`A071256(A008578(n+2))`
-/

namespace A090530.P7787021930469509629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071256 (A008578 (n + 2)).toNat

end

end A090530.P7787021930469509629

/-! ## A090530.P386561218865913950

`A071256(A075643(n+2))`
-/

namespace A090530.P386561218865913950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071256 (A075643 (n + 2)).toNat

end

end A090530.P386561218865913950

/-! ## A090530.P2114296666655934383

`A071256(A182986(n+2))`
-/

namespace A090530.P2114296666655934383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071256 (A182986 (n + 2)).toNat

end

end A090530.P2114296666655934383

/-! ## A090530.P6950030206658206889

`A071256(record[A006530(n+2)])`
-/

namespace A090530.P6950030206658206889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071256 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A090530.P6950030206658206889

/-! ## A090530.P15225709344019132601

`A071256(record[A014963(n+2)])`
-/

namespace A090530.P15225709344019132601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071256 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A090530.P15225709344019132601

/-! ## A090530.P10820225699330275117

`A071256(record[A020639(n+2)])`
-/

namespace A090530.P10820225699330275117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071256 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A090530.P10820225699330275117

/-! ## A090530.P14533303630451983228

`A071256(A100484(n+1)/2)`
-/

namespace A090530.P14533303630451983228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071256 (SequenceMachineLib.roundAway ((A100484 (n + 1) : ℚ) / 2)).toNat

end

end A090530.P14533303630451983228

/-! ## A090530.P14230639277613495493

`A071256(A001747(n+2)/2)`
-/

namespace A090530.P14230639277613495493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071256 (SequenceMachineLib.roundAway ((A001747 (n + 2) : ℚ) / 2)).toNat

end

end A090530.P14230639277613495493

/-! ## A090530.P1617065845776988237

`A071256(A006530(A100484(n+1)))`
-/

namespace A090530.P1617065845776988237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071256 (A006530 (A100484 (n + 1)).toNat).toNat

end

end A090530.P1617065845776988237

/-! ## A090530.P13615669032951059857

`A071256(A006530(A001747(n+2)))`
-/

namespace A090530.P13615669032951059857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071256 (A006530 (A001747 (n + 2)).toNat).toNat

end

end A090530.P13615669032951059857

/-! ## A090530.P1234773623624280244

`A100484(n+1)*A124522(A000040(n+1))`
-/

namespace A090530.P1234773623624280244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100484 (n + 1) * A124522 (A000040 (n + 1)).toNat

end

end A090530.P1234773623624280244

/-! ## A090530.P12517817318601173265

`A000040(n+1)*A071558(or(1, A000040(n+1)))`
-/

namespace A090530.P12517817318601173265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A071558 (Int.lor 1 (A000040 (n + 1))).toNat

end

end A090530.P12517817318601173265

/-! ## A090530.P15589148802826415883

`2*A000040(n+1)*A124522(A156037(n+1)+1)`
-/

namespace A090530.P15589148802826415883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A000040 (n + 1) * A124522 (A156037 (n + 1) + 1).toNat)

end

end A090530.P15589148802826415883

/-! ## A090530.P17346025183108406766

`p?[A006369(n)+1]*A071407(n+1)`
-/

namespace A090530.P17346025183108406766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006369 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * A071407 (n + 1)

end

end A090530.P17346025183108406766

/-!
# A090531: Least multiple of n! sandwiched between twin primes, or 0 if no such number exists.

The programs for A090531, there is no canonical definition to state claims against.
-/

/-! ## A090531.P6943311526314701652

`(n+1)!*A071406(n+1)`
-/

namespace A090531.P6943311526314701652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 1) : ℤ) * A071406 (n + 1)

end

end A090531.P6943311526314701652

/-! ## A090531.P8405565516576992372

`record[A098361(n)]*A071406(n+1)`
-/

namespace A090531.P8405565516576992372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098361 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A071406 (n + 1)

end

end A090531.P8405565516576992372

/-! ## A090531.P2303687050920655922

`A000142(n+1)*A071406(n+1)`
-/

namespace A090531.P2303687050920655922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 (n + 1) * A071406 (n + 1)

end

end A090531.P2303687050920655922

/-! ## A090531.P3594118819405102148

`Δ[A003422(n+1)]*A071406(n+1)`
-/

namespace A090531.P3594118819405102148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003422 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A071406 (n + 1)

end

end A090531.P3594118819405102148

/-! ## A090531.P10661993109218628478

`∏[A008619(A268272(n))]*A071406(n+1)`
-/

namespace A090531.P10661993109218628478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A268272 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * A071406 (n + 1)

end

end A090531.P10661993109218628478

/-!
# A090532: Let f(n) = n - pi(n) = A062298(n). Then a(n) = least number of steps such that f(f(...(n))) = 1.

The programs for A090532, the canonical program `A090532.P3929399659927491439` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A090532 has offset 1).

The definition of A090532 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A090532.P3929399659927491439

`a(A065855(n+1))+1` with `a(0)=0`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A090532

/-- `a(A065855(n+1))+1` -/
def P3929399659927491439.Spec : Prop :=
  ∀ n, (P3929399659927491439.a n : ℤ) = A090532 (n + 1)

theorem P3929399659927491439.correct : P3929399659927491439.Spec := by
  intro n
  simp only [A090532, Nat.add_sub_cancel]

end A090532

/-! ## A090532.P13413779338311651307

`a(A062298(n+1)-1)+1` with `a(0)=0`
-/

namespace A090532.P13413779338311651307
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (A062298 (n + 1) - 1).toNat + 1

end

end A090532.P13413779338311651307

namespace A090532

/-- `a(A062298(n+1)-1)+1` -/
def P13413779338311651307.Spec : Prop :=
  ∀ n, (P13413779338311651307.a n : ℤ) = A090532 (n + 1)

end A090532

/-! ## A090532.P10802096109369705625

`a(n-A000720(n+1))+1` with `a(0)=0`
-/

namespace A090532.P10802096109369705625
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a ((n : ℤ) - A000720 (n + 1)).toNat + 1

end

end A090532.P10802096109369705625

namespace A090532

/-- `a(n-A000720(n+1))+1` -/
def P10802096109369705625.Spec : Prop :=
  ∀ n, (P10802096109369705625.a n : ℤ) = A090532 (n + 1)

end A090532

/-! ## A090532.P7629484801283414418

`floor(log(A344297(n+1)))`
-/

namespace A090532.P7629484801283414418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.log (A344297 (n + 1) : ℝ)⌋

end

end A090532.P7629484801283414418

namespace A090532

/-- `floor(log(A344297(n+1)))` -/
def P7629484801283414418.Spec : Prop :=
  ∀ n, P7629484801283414418.a n = A090532 (n + 1)

end A090532

/-! ## A090532.P5180051984716993351

`A000195(A344297(n+1))`
-/

namespace A090532.P5180051984716993351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000195 (A344297 (n + 1)).toNat

end

end A090532.P5180051984716993351

namespace A090532

/-- `A000195(A344297(n+1))` -/
def P5180051984716993351.Spec : Prop :=
  ∀ n, P5180051984716993351.a n = A090532 (n + 1)

end A090532

/-! ## A090532.P2423322649175130548

`A084558(A035624(n+2))`
-/

namespace A090532.P2423322649175130548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084558 (A035624 (n + 2)).toNat

end

end A090532.P2423322649175130548

namespace A090532

/-- `A084558(A035624(n+2))` -/
def P2423322649175130548.Spec : Prop :=
  ∀ n, P2423322649175130548.a n = A090532 (n + 1)

end A090532

/-!
# A090534: Least n-digit prime in which every two-digit string is also a prime, or 0 if no such number exists. (n-1 two-digit string primes occur.)

The programs for A090534, there is no canonical definition to state claims against.
-/

/-! ## A090534.P75070781113470541

`p?[A069574(n+1)]`
-/

namespace A090534.P75070781113470541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069574 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A090534.P75070781113470541

/-! ## A090534.P4856205100084406601

`∑{p}[A069574(A199343(n)), #]`
-/

namespace A090534.P4856205100084406601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069574 (A199343 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A090534.P4856205100084406601

/-!
# A090535: Least n-digit prime using digit 7 once and rest all 1, or 0 if no such prime exists.

The programs for A090535, there is no canonical definition to state claims against.
-/

/-! ## A090535.P10404122044238123686

`A092509(A165246(n+1))`
-/

namespace A090535.P10404122044238123686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092509 (A165246 (n + 1)).toNat

end

end A090535.P10404122044238123686

/-!
# A090537: Least n-digit prime using digit 3 once and rest all 1, or 0 if no such prime exists.

The programs for A090537, there is no canonical definition to state claims against.
-/

/-! ## A090537.P10334347919453032119

`A092509(∑[10^n]+2)`
-/

namespace A090537.P10334347919453032119
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092509 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A090537.P10334347919453032119

/-!
# A090538: Location of 3 in A090537, or 0 if A090537 is 0.

The programs for A090538, there is no canonical definition to state claims against.
-/

/-! ## A090538.P13278617206583486104

`val(A007401(A070939(3*n)+A068059(3*n+4)), 2)`
-/

namespace A090538.P13278617206583486104
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A007401 (A070939 (3 * n) + A068059 (3 * n + 4)).toNat).toNat 2

end

end A090538.P13278617206583486104

/-!
# A090539: Total number of parts equal to 1 in all plane partitions of n.

The programs for A090539, there is no canonical definition to state claims against.
-/

/-! ## A090539.P3718512071007350835

`A092288(A152947(n+1))-floor(acot(n))`
-/

namespace A090539.P3718512071007350835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092288 (A152947 (n + 1)).toNat - ⌊SequenceMachineLib.acot (n : ℝ)⌋

end

end A090539.P3718512071007350835

/-! ## A090539.P7630068655237635214

`A092288(A152947(n+1))-A000007(n)`
-/

namespace A090539.P7630068655237635214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092288 (A152947 (n + 1)).toNat - A000007 n

end

end A090539.P7630068655237635214

/-! ## A090539.P15037167441916641597

`A002828(n²)*A092288(A152947(n+1))`
-/

namespace A090539.P15037167441916641597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002828 (n ^ 2) * A092288 (A152947 (n + 1)).toNat

end

end A090539.P15037167441916641597

/-! ## A090539.P15703615477706549663

`A092288(A152947(n+1))%A000041(4*n)`
-/

namespace A090539.P15703615477706549663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A092288 (A152947 (n + 1)).toNat) (A000041 (4 * n))

end

end A090539.P15703615477706549663

/-! ## A090539.P4957034704909262231

`A092288(A152947(n+1))-(2-A000122(n²))`
-/

namespace A090539.P4957034704909262231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092288 (A152947 (n + 1)).toNat - (2 - A000122 (n ^ 2))

end

end A090539.P4957034704909262231

/-! ## A090539.P2675588964926365265

`A092288(A152947(n+1))-A000122(∑[2*n])`
-/

namespace A090539.P2675588964926365265
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092288 (A152947 (n + 1)).toNat - A000122 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A090539.P2675588964926365265

/-! ## A090539.P9120267904939853716

`A000040(n+1)%2*A092288(A152947(n+1))`
-/

namespace A090539.P9120267904939853716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1)) 2 * A092288 (A152947 (n + 1)).toNat

end

end A090539.P9120267904939853716

/-! ## A090539.P9927685730364876568

`A092288(A152947(n+1))-and(1, A000010(n+2))`
-/

namespace A090539.P9927685730364876568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092288 (A152947 (n + 1)).toNat - Int.land 1 (A000010 (n + 2))

end

end A090539.P9927685730364876568

/-! ## A090539.P14855008561257197349

`A092288(A152947(n+1))-A000045(C(2, n+2))`
-/

namespace A090539.P14855008561257197349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092288 (A152947 (n + 1)).toNat - A000045 (Nat.choose 2 (n + 2))

end

end A090539.P14855008561257197349

/-! ## A090539.P320597381851929111

`record[A014963(n+2)]%2*A092288(A152947(n+1))`
-/

namespace A090539.P320597381851929111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) 2 * A092288 (A152947 (n + 1)).toNat

end

end A090539.P320597381851929111

/-!
# A090541: a(n) = floor((Sum_{r=1..n} r)*(Sum_{r=1..n} 1/r)).

The programs for A090541, the canonical program `A090541.P13750845077177101517` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A090541 has offset 1).

The definition of A090541 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1949 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A090541.P13750845077177101517

`floor(∑[1/(n+1)]*∑[n+1])`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A090541

/-- `floor(∑[1/(n+1)]*∑[n+1])` -/
def P13750845077177101517.Spec : Prop :=
  ∀ n, P13750845077177101517.a n = A090541 (n + 1)

theorem P13750845077177101517.correct : P13750845077177101517.Spec := by
  intro n
  simp only [A090541, Nat.add_sub_cancel]

end A090541

/-! ## A090541.P10178757706814150059

`∑[∑[A220517(or(1, n*(n+2)))]]`
-/

namespace A090541.P10178757706814150059
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220517 (Nat.lor 1 (n * (n + 2)))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A090541.P10178757706814150059

namespace A090541

/-- `∑[∑[A220517(or(1, n*(n+2)))]]` -/
def P10178757706814150059.Spec : Prop :=
  ∀ n, P10178757706814150059.a n = A090541 (n + 1)

end A090541

/-! ## A090541.P9289816614385556870

`∑[∑[A060501(A175165(n))]]`
-/

namespace A090541.P9289816614385556870
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060501 (A175165 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A090541.P9289816614385556870

namespace A090541

/-- `∑[∑[A060501(A175165(n))]]` -/
def P9289816614385556870.Spec : Prop :=
  ∀ n, P9289816614385556870.a n = A090541 (n + 1)

end A090541

/-! ## A090541.P2516685249063888594

`∑[∑[A194550(A085046(n+1))]]`
-/

namespace A090541.P2516685249063888594
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194550 (A085046 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A090541.P2516685249063888594

namespace A090541

/-- `∑[∑[A194550(A085046(n+1))]]` -/
def P2516685249063888594.Spec : Prop :=
  ∀ n, P2516685249063888594.a n = A090541 (n + 1)

end A090541

/-! ## A090541.P15282438818490441429

`∑[A291883(n)+A055570(3*n)]`
-/

namespace A090541.P15282438818490441429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291883 n + A055570 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A090541.P15282438818490441429

namespace A090541

/-- `∑[A291883(n)+A055570(3*n)]` -/
def P15282438818490441429.Spec : Prop :=
  ∀ n, P15282438818490441429.a n = A090541 (n + 1)

end A090541

/-!
# A090543: a(1) = 3, then a(n) = least prime, not already present, beginning with the digit reversal of a(n-1).

The programs for A090543, there is no canonical definition to state claims against.
-/

/-! ## A090543.P8527800483364212930

`p?[A034050(A175840(n))]`
-/

namespace A090543.P8527800483364212930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034050 (A175840 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A090543.P8527800483364212930

/-!
# A090544: Let f(k) = k + pi(k); a(n) = least number of steps for f(f(f(...(n)))) to reach a prime.

The programs for A090544, there is no canonical definition to state claims against.
-/

/-! ## A090544.P1274130924945724612

`A276010(A276010(n))+A265333(A048578(n))`
-/

namespace A090544.P1274130924945724612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276010 (A276010 n).toNat + A265333 (A048578 n).toNat

end

end A090544.P1274130924945724612

/-!
# A090547: Leading entries in triangle in A090548 and A113470.

The programs for A090547, there is no canonical definition to state claims against.
-/

/-! ## A090547.P14372503455559648649

`A087308(n+1)%A041384(n)`
-/

namespace A090547.P14372503455559648649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A087308 (n + 1)) (A041384 n)

end

end A090547.P14372503455559648649

/-! ## A090547.P12436637873679881936

`A087308(A000027(n+1))%A322417(n)`
-/

namespace A090547.P12436637873679881936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A087308 (A000027 (n + 1)).toNat) (A322417 n)

end

end A090547.P12436637873679881936

/-! ## A090547.P4229134040223646114

`A087308(A090108(n+1))%A322417(n)`
-/

namespace A090547.P4229134040223646114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A087308 (A090108 (n + 1)).toNat) (A322417 n)

end

end A090547.P4229134040223646114

/-! ## A090547.P16617665175790721483

`(A322417(n)+A087308(n+1))%A322417(n)`
-/

namespace A090547.P16617665175790721483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A322417 n + A087308 (n + 1)) (A322417 n)

end

end A090547.P16617665175790721483

/-! ## A090547.P14998372957540259567

`A113470(∑[n]+1)`
-/

namespace A090547.P14998372957540259567
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113470 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A090547.P14998372957540259567

/-!
# A090548: Least number that ends an arithmetic progression of n numbers with the same number of divisors.

The programs for A090548, there is no canonical definition to state claims against.
-/

/-! ## A090548.P12911064472903655312

`A090547(n+1)+n*A090549(n+1)`
-/

namespace A090548.P12911064472903655312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090547 (n + 1) + (n : ℤ) * A090549 (n + 1)

end

end A090548.P12911064472903655312

/-! ## A090548.P6114427192682782472

`A113470(∑[n+1])`
-/

namespace A090548.P6114427192682782472
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113470 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A090548.P6114427192682782472

/-! ## A090548.P14575371954850188824

`record[A113470(A133825(n))]`
-/

namespace A090548.P14575371954850188824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113470 (A133825 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A090548.P14575371954850188824

/-! ## A090548.P601274320646479567

`or(1, A113470(A025747(n)))`
-/

namespace A090548.P601274320646479567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A113470 (A025747 n).toNat)

end

end A090548.P601274320646479567

/-! ## A090548.P16993749226013518225

`record[A113470(abs(A122432(n)))]`
-/

namespace A090548.P16993749226013518225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113470 |A122432 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A090548.P16993749226013518225

/-!
# A090549: Common difference of arithmetic progression in n-th row of A090548 and A113470.

The programs for A090549, there is no canonical definition to state claims against.
-/

/-! ## A090549.P14854229119309054590

`A087310(A249351(n+1)+A028310(n))`
-/

namespace A090549.P14854229119309054590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087310 (A249351 (n + 1) + A028310 n).toNat

end

end A090549.P14854229119309054590

/-! ## A090549.P12402298209922081242

`A034386(n)%A003963(A252167(n+1))`
-/

namespace A090549.P12402298209922081242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A034386 n) (A003963 (A252167 (n + 1)).toNat)

end

end A090549.P12402298209922081242

/-! ## A090549.P2539931205083525776

`A081375(A006530(n!))`
-/

namespace A090549.P2539931205083525776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081375 (A006530 (Nat.factorial n)).toNat

end

end A090549.P2539931205083525776

/-! ## A090549.P17286721573928906777

`A081375(A087133(n!))`
-/

namespace A090549.P17286721573928906777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081375 (A087133 (Nat.factorial n)).toNat

end

end A090549.P17286721573928906777

/-! ## A090549.P11267257707147100847

`A034386(n)%A053319(A000302(n))`
-/

namespace A090549.P11267257707147100847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A034386 n) (A053319 (A000302 n).toNat)

end

end A090549.P11267257707147100847

/-!
# A090550: Decimal expansion of solution to n/x = x - n for n = 5.

The programs for A090550, there is no canonical definition to state claims against.
-/

/-! ## A090550.P10696593829295974598

`A134973(floor(acot(n)²+n))`
-/

namespace A090550.P10696593829295974598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134973 (⌊SequenceMachineLib.acot (n : ℝ) ^ 2 + (n : ℝ)⌋.toNat + 1)

end

end A090550.P10696593829295974598

/-! ## A090550.P503307626185137700

`A134973(or(n, floor(acot(n)²)))`
-/

namespace A090550.P503307626185137700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134973 ((Int.lor (n : ℤ) ⌊SequenceMachineLib.acot (n : ℝ) ^ 2⌋).toNat + 1)

end

end A090550.P503307626185137700

/-! ## A090550.P8227111891790197470

`A134973(xor(n, floor(acot(n)²)))`
-/

namespace A090550.P8227111891790197470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134973 ((Int.xor (n : ℤ) ⌊SequenceMachineLib.acot (n : ℝ) ^ 2⌋).toNat + 1)

end

end A090550.P8227111891790197470

/-! ## A090550.P11622187569141070520

`A134973(gcd(n, round(acot(n)+n)))`
-/

namespace A090550.P11622187569141070520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134973 (Int.gcd (n : ℤ) (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))) + 1)

end

end A090550.P11622187569141070520

/-! ## A090550.P5152715357803970566

`A134973(A000038(n)+n)`
-/

namespace A090550.P5152715357803970566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134973 ((A000038 n + (n : ℤ)).toNat + 1)

end

end A090550.P5152715357803970566

/-! ## A090550.P12839028264800999998

`A001622(n)+A374883(n)-A104457(n)`
-/

namespace A090550.P12839028264800999998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001622 (n + 1) + (A374883 (n + 1) - A104457 (n + 1))

end

end A090550.P12839028264800999998

/-! ## A090550.P7381163131317666008

`A003462(n)+A374883(n)-A261547(n)`
-/

namespace A090550.P7381163131317666008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003462 n + (A374883 (n + 1) - A261547 n)

end

end A090550.P7381163131317666008

/-!
# A090552: a(1)=1; for n>1, a(n) is the smallest positive integer for which sigma(a(n)) is a multiple of sigma(a(n-1)).

The programs for A090552, there is no canonical definition to state claims against.
-/

/-! ## A090552.P18340117480857822138

`A069789(a(n-1))` with `a(0)=1`
-/

namespace A090552.P18340117480857822138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A069789 (a (n - 1)).toNat

end

end A090552.P18340117480857822138

/-! ## A090552.P10757657069183281875

`A282255(a(n-1))+a(n-1)` with `a(0)=1`
-/

namespace A090552.P10757657069183281875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A282255 (a (n - 1)).toNat + a (n - 1)

end

end A090552.P10757657069183281875

/-! ## A090552.P4140297935442802897

`A069789(ceil(a(A023443(n))))` with `a(0)=1`

`ceil` is left out, it is the identity on integers.
-/

namespace A090552.P4140297935442802897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A069789 (a (A023443 n).toNat).toNat

end

end A090552.P4140297935442802897

/-!
# A090553: Sigma(A090552(n)).

The programs for A090553, there is no canonical definition to state claims against.
-/

/-! ## A090553.P15434195003535832219

`∑{d}[A090552(n+1), #]`
-/

namespace A090553.P15434195003535832219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090552 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A090553.P15434195003535832219

/-! ## A090553.P10551139294570073929

`∑{d}[A069789(a(n-1)), #]` with `a(0)=1`
-/

namespace A090553.P10551139294570073929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A069789 (f1 (n - 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A090553.P10551139294570073929

/-! ## A090553.P14154853299991381692

`∑{d}[A282255(a(n-1))+a(n-1), #]` with `a(0)=1`
-/

namespace A090553.P14154853299991381692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A282255 (f1 (n - 1)).toNat + f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A090553.P14154853299991381692

/-! ## A090553.P7546348402189552380

`A000113(A090552(n+1))`
-/

namespace A090553.P7546348402189552380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000113 (A090552 (n + 1)).toNat

end

end A090553.P7546348402189552380

/-! ## A090553.P9339573978667588285

`A000203(∏{p}[A090552(n+1), #])`
-/

namespace A090553.P9339573978667588285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090552 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A090553.P9339573978667588285

/-! ## A090553.P3553843015882800807

`∏{p}[A090552(n+1), A000027(#+1)]`
-/

namespace A090553.P3553843015882800807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090552 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000027 (p + 1)

end

end A090553.P3553843015882800807

/-! ## A090553.P4839417704608493944

`A000203(gcd(C(2, n²), A090552(n+1)))`
-/

namespace A090553.P4839417704608493944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (Int.gcd (Nat.choose 2 (n ^ 2) : ℤ) (A090552 (n + 1)))

end

end A090553.P4839417704608493944

/-! ## A090553.P8018786907037791736

`∏{p}[A090552(n+1), A000005(gcd(n, n+1))+#]`
-/

namespace A090553.P8018786907037791736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090552 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (A000005 (Nat.gcd n (n + 1)) + (p : ℤ))

end

end A090553.P8018786907037791736

/-!
# A090556: Beginning with 1, a(n) = least number m > a(n-1) such that phi(a(n-1)) divides phi(m).

The programs for A090556, there is no canonical definition to state claims against.
-/

/-! ## A090556.P14686270733121964186

`A069797(a(n-1))` with `a(0)=1`
-/

namespace A090556.P14686270733121964186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A069797 (a (n - 1)).toNat

end

end A090556.P14686270733121964186

/-! ## A090556.P9791165592401716754

`A282016(a(n-1))+a(n-1)` with `a(0)=1`
-/

namespace A090556.P9791165592401716754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A282016 (a (n - 1)).toNat + a (n - 1)

end

end A090556.P9791165592401716754

/-! ## A090556.P8060256550081403508

`record[A069797(a(A064989(n)))]` with `a(0)=1, a(1)=1`
-/

namespace A090556.P8060256550081403508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  A069797 (f1 (A064989 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A090556.P8060256550081403508

/-!
# A090557: a(n) = phi(A090556(n)).

The programs for A090557, there is no canonical definition to state claims against.
-/

/-! ## A090557.P3171398563239155788

`A000010(A090556(n+1))`
-/

namespace A090557.P3171398563239155788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A090556 (n + 1)).toNat

end

end A090557.P3171398563239155788

/-! ## A090557.P12875574025182013259

`A225530(A090556(n+1)+A000007(n))`
-/

namespace A090557.P12875574025182013259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225530 (A090556 (n + 1) + A000007 n).toNat

end

end A090557.P12875574025182013259

/-! ## A090557.P3311705407235838489

`A225530(A090556(n+1)%A027649(n))`
-/

namespace A090557.P3311705407235838489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225530 (Int.tmod (A090556 (n + 1)) (A027649 n)).toNat

end

end A090557.P3311705407235838489

/-! ## A090557.P16948127872484253662

`A225530(A090556(n+1)+and(1, A225530(n)))`
-/

namespace A090557.P16948127872484253662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225530 (A090556 (n + 1) + Int.land 1 (A225530 n)).toNat

end

end A090557.P16948127872484253662

/-! ## A090557.P9805909825789791563

`A225530(lcm(2, A090556(n+1)))`
-/

namespace A090557.P9805909825789791563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225530 (Int.lcm 2 (A090556 (n + 1)))

end

end A090557.P9805909825789791563

/-!
# A090559: Beginning with 2, least number such that concatenation of r copies of a(r), r = 1 to n is prime.

The programs for A090559, there is no canonical definition to state claims against.
-/

/-! ## A090559.P7607343680125591773

`gcd(A053387(n+1), A113581(A074664(n+1)))`
-/

namespace A090559.P7607343680125591773
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A053387 (n + 1)) (A113581 (A074664 (n + 1)).toNat)

end

end A090559.P7607343680125591773

/-! ## A090559.P4162089007219182105

`A020137(n+5)%A065190(A084955(n+1))`
-/

namespace A090559.P4162089007219182105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A020137 (n + 5)) (A065190 (A084955 (n + 1)).toNat)

end

end A090559.P4162089007219182105

/-!
# A090561: Least n-th power that begins with k^(n-1) for some k > 1.

The programs for A090561, there is no canonical definition to state claims against.
-/

/-! ## A090561.P12912541598918277480

`A090568(n+1)^(n+1)`
-/

namespace A090561.P12912541598918277480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090568 (n + 1) ^ (n + 1)

end

end A090561.P12912541598918277480

/-! ## A090561.P18390040579910874187

`root(A090568(n+1), 2/A103517(n))`
-/

namespace A090561.P18390040579910874187
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A090568 (n + 1) : ℝ) ^ (1 / (2 / (A103517 n : ℚ) : ℝ))

end

end A090561.P18390040579910874187

/-! ## A090561.P11293377918922088393

`root(A090568(n+1), 1/A000027(n+1))`
-/

namespace A090561.P11293377918922088393
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A090568 (n + 1) : ℝ) ^ (1 / (1 / (A000027 (n + 1) : ℚ) : ℝ))

end

end A090561.P11293377918922088393

/-!
# A090562: Primes of the form 5k^2 + 5k + 1.

The programs for A090562, the canonical program `A090562.P2628072817141354298` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A090562 has offset 1).

The definition of A090562 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2468 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A090562.P2628072817141354298

`A062786(A090563(n+1)+1)`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A090562

/-- `A062786(A090563(n+1)+1)` -/
def P2628072817141354298.Spec : Prop :=
  ∀ n, P2628072817141354298.a n = A090562 (n + 1)

theorem P2628072817141354298.correct : P2628072817141354298.Spec := by
  intro n
  simp only [A090562, Nat.add_sub_cancel]

end A090562

/-! ## A090562.P13149962195762203597

`A328479(A091088(n))+A124080(A090563(n+1))`
-/

namespace A090562.P13149962195762203597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328479 (A091088 n).toNat + A124080 (A090563 (n + 1)).toNat

end

end A090562.P13149962195762203597

namespace A090562

/-- `A328479(A091088(n))+A124080(A090563(n+1))` -/
def P13149962195762203597.Spec : Prop :=
  ∀ n, P13149962195762203597.a n = A090562 (n + 1)

end A090562

/-! ## A090562.P17456082595062290924

`A350090(A111251(n+1))+A124080(A090563(n+1))`
-/

namespace A090562.P17456082595062290924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350090 (A111251 (n + 1)).toNat + A124080 (A090563 (n + 1)).toNat

end

end A090562.P17456082595062290924

namespace A090562

/-- `A350090(A111251(n+1))+A124080(A090563(n+1))` -/
def P17456082595062290924.Spec : Prop :=
  ∀ n, P17456082595062290924.a n = A090562 (n + 1)

end A090562

/-! ## A090562.P7520143121062502849

`record[A125239(n+1)]`
-/

namespace A090562.P7520143121062502849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125239 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A090562.P7520143121062502849

namespace A090562

/-- `record[A125239(n+1)]` -/
def P7520143121062502849.Spec : Prop :=
  ∀ n, P7520143121062502849.a n = A090562 (n + 1)

end A090562

/-! ## A090562.P3037050021803818753

`A125239(A090563(n+1))`
-/

namespace A090562.P3037050021803818753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125239 (A090563 (n + 1)).toNat

end

end A090562.P3037050021803818753

namespace A090562

/-- `A125239(A090563(n+1))` -/
def P3037050021803818753.Spec : Prop :=
  ∀ n, P3037050021803818753.a n = A090562 (n + 1)

end A090562

/-! ## A090562.P12094681796897689759

`record[A125239(A028310(n))%A016898(n)]`
-/

namespace A090562.P12094681796897689759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A125239 (A028310 n).toNat) (A016898 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A090562.P12094681796897689759

namespace A090562

/-- `record[A125239(A028310(n))%A016898(n)]` -/
def P12094681796897689759.Spec : Prop :=
  ∀ n, P12094681796897689759.a n = A090562 (n + 1)

end A090562

/-! ## A090562.P1843453584567611694

`record[A125239(A028310(n))-A000035(2*n)]`
-/

namespace A090562.P1843453584567611694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125239 (A028310 n).toNat - A000035 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A090562.P1843453584567611694

namespace A090562

/-- `record[A125239(A028310(n))-A000035(2*n)]` -/
def P1843453584567611694.Spec : Prop :=
  ∀ n, P1843453584567611694.a n = A090562 (n + 1)

end A090562

/-! ## A090562.P14560399713339837864

`A328479(A317790(n))+A124080(A090563(n+1))`
-/

namespace A090562.P14560399713339837864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328479 (A317790 n).toNat + A124080 (A090563 (n + 1)).toNat

end

end A090562.P14560399713339837864

namespace A090562

/-- `A328479(A317790(n))+A124080(A090563(n+1))` -/
def P14560399713339837864.Spec : Prop :=
  ∀ n, P14560399713339837864.a n = A090562 (n + 1)

end A090562

/-! ## A090562.P6789630123094926402

`p?[∑[10*n]+1]`
-/

namespace A090562.P6789630123094926402
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A090562.P6789630123094926402

namespace A090562

/-- `p?[∑[10*n]+1]` -/
def P6789630123094926402.Spec : Prop :=
  ∀ n, (P6789630123094926402.a n : ℤ) = A090562 (n + 1)

end A090562

/-! ## A090562.P11913379133377103258

`∑{p}[p?[5*(n²+n)+1], #]`
-/

namespace A090562.P11913379133377103258
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * (n ^ 2 + n) + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), p

end

end A090562.P11913379133377103258

namespace A090562

/-- `∑{p}[p?[5*(n²+n)+1], #]` -/
def P11913379133377103258.Spec : Prop :=
  ∀ n, (P11913379133377103258.a n : ℤ) = A090562 (n + 1)

end A090562

/-! ## A090562.P18341783520803807234

`∏{p}[p?[(2*n+1)²+n²+n], #]`
-/

namespace A090562.P18341783520803807234
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) ^ 2 + n ^ 2 + n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), p

end

end A090562.P18341783520803807234

namespace A090562

/-- `∏{p}[p?[(2*n+1)²+n²+n], #]` -/
def P18341783520803807234.Spec : Prop :=
  ∀ n, (P18341783520803807234.a n : ℤ) = A090562 (n + 1)

end A090562

/-! ## A090562.P10228301020310760855

`abs(2-p?[(n-1)*5*n+1])+2`
-/

namespace A090562.P10228301020310760855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * (5 * n : ℤ) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)| + 2

end

end A090562.P10228301020310760855

namespace A090562

/-- `abs(2-p?[(n-1)*5*n+1])+2` -/
def P10228301020310760855.Spec : Prop :=
  ∀ n, P10228301020310760855.a n = A090562 (n + 1)

end A090562

/-! ## A090562.P5030104563291818779

`or(1, p?[A239767(n)])`
-/

namespace A090562.P5030104563291818779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239767 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A090562.P5030104563291818779

namespace A090562

/-- `or(1, p?[A239767(n)])` -/
def P5030104563291818779.Spec : Prop :=
  ∀ n, P5030104563291818779.a n = A090562 (n + 1)

end A090562

/-! ## A090562.P7648055390755873816

`or(1, p?[A062786(n+1)])`
-/

namespace A090562.P7648055390755873816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062786 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A090562.P7648055390755873816

namespace A090562

/-- `or(1, p?[A062786(n+1)])` -/
def P7648055390755873816.Spec : Prop :=
  ∀ n, P7648055390755873816.a n = A090562 (n + 1)

end A090562

/-! ## A090562.P4902926974573299699

`or(1, p?[A032527(2*n+1)])`
-/

namespace A090562.P4902926974573299699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032527 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A090562.P4902926974573299699

namespace A090562

/-- `or(1, p?[A032527(2*n+1)])` -/
def P4902926974573299699.Spec : Prop :=
  ∀ n, P4902926974573299699.a n = A090562 (n + 1)

end A090562

/-! ## A090562.P3990374687670412574

`record[p?[A032527(A052938(n))]]`
-/

namespace A090562.P3990374687670412574
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032527 (A052938 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A090562.P3990374687670412574

namespace A090562

/-- `record[p?[A032527(A052938(n))]]` -/
def P3990374687670412574.Spec : Prop :=
  ∀ n, P3990374687670412574.a n = A090562 (n + 1)

end A090562

/-! ## A090562.P6005942796632002002

`p?[A062786(n+1)]%A062749(n)`
-/

namespace A090562.P6005942796632002002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062786 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A062749 n)

end

end A090562.P6005942796632002002

namespace A090562

/-- `p?[A062786(n+1)]%A062749(n)` -/
def P6005942796632002002.Spec : Prop :=
  ∀ n, P6005942796632002002.a n = A090562 (n + 1)

end A090562

/-! ## A090562.P17738231523242477504

`A000027(p?[∑[A008706(2*n)]])`
-/

namespace A090562.P17738231523242477504
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A090562.P17738231523242477504

namespace A090562

/-- `A000027(p?[∑[A008706(2*n)]])` -/
def P17738231523242477504.Spec : Prop :=
  ∀ n, P17738231523242477504.a n = A090562 (n + 1)

end A090562

/-! ## A090562.P8350007137688692034

`∩[A030430(n+1), A032527(n)]`
-/

namespace A090562.P8350007137688692034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030430 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032527 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A090562.P8350007137688692034

namespace A090562

/-- `∩[A030430(n+1), A032527(n)]` -/
def P8350007137688692034.Spec : Prop :=
  ∀ n, (P8350007137688692034.a n : ℤ) = A090562 (n + 1)

end A090562

/-! ## A090562.P12352906862289773399

`∩[A090756(n+1), A032527(n)]`
-/

namespace A090562.P12352906862289773399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090756 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032527 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A090562.P12352906862289773399

namespace A090562

/-- `∩[A090756(n+1), A032527(n)]` -/
def P12352906862289773399.Spec : Prop :=
  ∀ n, (P12352906862289773399.a n : ℤ) = A090562 (n + 1)

end A090562

/-!
# A090563: Numbers k such that 5*k^2 + 5*k + 1 is prime.

The programs for A090563, the canonical program `A090563.P10804829428092419224` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A090563 has offset 1).

The definition of A090563 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 622 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A090563.P10804829428092419224

`eq[6, A278247(A016861(n))]`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A090563

/-- `eq[6, A278247(A016861(n))]` -/
def P10804829428092419224.Spec : Prop :=
  ∀ n, (P10804829428092419224.a n : ℤ) = A090563 (n + 1)

theorem P10804829428092419224.correct : P10804829428092419224.Spec := by
  intro n
  simp only [A090563, Nat.add_sub_cancel]

end A090563

/-! ## A090563.P7410302888540687665

`lt[n², A125239(n+1)]+1`
-/

namespace A090563.P7410302888540687665
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125239 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A090563.P7410302888540687665

namespace A090563

/-- `lt[n², A125239(n+1)]+1` -/
def P7410302888540687665.Spec : Prop :=
  ∀ n, (P7410302888540687665.a n : ℤ) = A090563 (n + 1)

end A090563

/-! ## A090563.P4329480893939980677

`eq[A062786(n+1), A125239(A028310(n))]`
-/

namespace A090563.P4329480893939980677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062786 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125239 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A090563.P4329480893939980677

namespace A090563

/-- `eq[A062786(n+1), A125239(A028310(n))]` -/
def P4329480893939980677.Spec : Prop :=
  ∀ n, (P4329480893939980677.a n : ℤ) = A090563 (n + 1)

end A090563

/-! ## A090563.P3567303608546700695

`eq[2*A125239(A028310(n)), A273366(n)]`
-/

namespace A090563.P3567303608546700695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A125239 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273366 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A090563.P3567303608546700695

namespace A090563

/-- `eq[2*A125239(A028310(n)), A273366(n)]` -/
def P3567303608546700695.Spec : Prop :=
  ∀ n, (P3567303608546700695.a n : ℤ) = A090563 (n + 1)

end A090563

/-! ## A090563.P5945222895460515575

`eq[(A001545(n)+1)/5, A125239(A028310(n))]`
-/

namespace A090563.P5945222895460515575
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001545 n + 1 : ℚ) / 5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125239 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℚ)) n

end

end A090563.P5945222895460515575

namespace A090563

/-- `eq[(A001545(n)+1)/5, A125239(A028310(n))]` -/
def P5945222895460515575.Spec : Prop :=
  ∀ n, (P5945222895460515575.a n : ℤ) = A090563 (n + 1)

end A090563

/-! ## A090563.P8332052733722565973

`eq[(A069133(n+1)+1)/2, A125239(A028310(n))]`
-/

namespace A090563.P8332052733722565973
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069133 (n + 1) + 1 : ℚ) / 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125239 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℚ)) n

end

end A090563.P8332052733722565973

namespace A090563

/-- `eq[(A069133(n+1)+1)/2, A125239(A028310(n))]` -/
def P8332052733722565973.Spec : Prop :=
  ∀ n, (P8332052733722565973.a n : ℤ) = A090563 (n + 1)

end A090563

/-! ## A090563.P8489997167146659967

`eq[A005904(n)/(2*n+1), A125239(A028310(n))]`
-/

namespace A090563.P8489997167146659967
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005904 n : ℚ) / (2 * n + 1 : ℚ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125239 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℚ)) n

end

end A090563.P8489997167146659967

namespace A090563

/-- `eq[A005904(n)/(2*n+1), A125239(A028310(n))]` -/
def P8489997167146659967.Spec : Prop :=
  ∀ n, (P8489997167146659967.a n : ℤ) = A090563 (n + 1)

end A090563

/-! ## A090563.P15291208195463045597

`eq[1, ∑{e}[∑[A008592(n)]+1, #]]`
-/

namespace A090563.P15291208195463045597
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008592 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n).natAbs, Nat.factorization (f3 n).natAbs p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A090563.P15291208195463045597

namespace A090563

/-- `eq[1, ∑{e}[∑[A008592(n)]+1, #]]` -/
def P15291208195463045597.Spec : Prop :=
  ∀ n, (P15291208195463045597.a n : ℤ) = A090563 (n + 1)

end A090563

/-! ## A090563.P6131649068003654739

`eq[1, A001222(∑[10*n]+1)]`
-/

namespace A090563.P6131649068003654739
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∑ j ∈ Finset.range (n + 1), f3 j + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A090563.P6131649068003654739

namespace A090563

/-- `eq[1, A001222(∑[10*n]+1)]` -/
def P6131649068003654739.Spec : Prop :=
  ∀ n, (P6131649068003654739.a n : ℤ) = A090563 (n + 1)

end A090563

/-! ## A090563.P8543776580312748733

`eq[2, A000005(∑[10*n]+1)]`
-/

namespace A090563.P8543776580312748733
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (∑ j ∈ Finset.range (n + 1), f3 j + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A090563.P8543776580312748733

namespace A090563

/-- `eq[2, A000005(∑[10*n]+1)]` -/
def P8543776580312748733.Spec : Prop :=
  ∀ n, (P8543776580312748733.a n : ℤ) = A090563 (n + 1)

end A090563

/-!
# A090566: a(1) = 1; thereafter a(n) = smallest number > a(n-1) such that the concatenation of a(n-1) and a(n) is a square.

The programs for A090566, there is no canonical definition to state claims against.
-/

/-! ## A090566.P4950126146473429408

`A243091(a(n-1))` with `a(0)=1`
-/

namespace A090566.P4950126146473429408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A243091 (a (n - 1)).toNat

end

end A090566.P4950126146473429408

/-! ## A090566.P18032829415786480536

`A243093(a(n-1))` with `a(0)=1`
-/

namespace A090566.P18032829415786480536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A243093 (a (n - 1)).toNat

end

end A090566.P18032829415786480536

/-!
# A090567: Squares arising in A082209.

The programs for A090567, there is no canonical definition to state claims against.
-/

/-! ## A090567.P1848423303427286399

`A082210(n+2)²`
-/

namespace A090567.P1848423303427286399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082210 (n + 2) ^ 2

end

end A090567.P1848423303427286399

/-!
# A090568: Least m such that m^n begins with k^(n-1) for some k > 1.

The programs for A090568, there is no canonical definition to state claims against.
-/

/-! ## A090568.P217882356479590243

`a(n-1)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=3, a(4)=7, a(5)=10`
-/

namespace A090568.P217882356479590243
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 4, 3, 7, 10] fun n a =>
  a (n - 1)

end

end A090568.P217882356479590243

/-!
# A090569: The survivor w(n,2) in a modified Josephus problem, with a step of 2.

The programs for A090569, the canonical program `A090569.P5602088444619369122` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A090569 has offset 1).

The definition of A090569 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A090569.P5602088444619369122

`2*(floor(n/2)-a(floor(n/2)))+3` with `a(0)=1`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A090569

/-- `2*(floor(n/2)-a(floor(n/2)))+3` -/
def P5602088444619369122.Spec : Prop :=
  ∀ n, P5602088444619369122.a n = A090569 (n + 1)

theorem P5602088444619369122.correct : P5602088444619369122.Spec := by
  intro n
  simp only [A090569, Nat.add_sub_cancel]

end A090569

/-! ## A090569.P17885564529260380571

`xor(n%2-2*a(floor(n/2)), xor(n, -1))` with `a(0)=1`
-/

namespace A090569.P17885564529260380571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.xor (((n % 2 : ℕ) : ℤ) - 2 * a ⌊(n : ℚ) / 2⌋.toNat) (Int.xor (n : ℤ) (-1))

end

end A090569.P17885564529260380571

namespace A090569

/-- `xor(n%2-2*a(floor(n/2)), xor(n, -1))` -/
def P17885564529260380571.Spec : Prop :=
  ∀ n, P17885564529260380571.a n = A090569 (n + 1)

end A090569

/-! ## A090569.P7796603014024756614

`A063695(n)+1`
-/

namespace A090569.P7796603014024756614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063695 n + 1

end

end A090569.P7796603014024756614

namespace A090569

/-- `A063695(n)+1` -/
def P7796603014024756614.Spec : Prop :=
  ∀ n, P7796603014024756614.a n = A090569 (n + 1)

end A090569

/-! ## A090569.P9570533631381420289

`A088442(floor(n/2))`
-/

namespace A090569.P9570533631381420289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088442 ⌊(n : ℚ) / 2⌋.toNat

end

end A090569.P9570533631381420289

namespace A090569

/-- `A088442(floor(n/2))` -/
def P9570533631381420289.Spec : Prop :=
  ∀ n, P9570533631381420289.a n = A090569 (n + 1)

end A090569

/-! ## A090569.P4123478558285625246

`1-A063694(n)+n`
-/

namespace A090569.P4123478558285625246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A063694 n + (n : ℤ)

end

end A090569.P4123478558285625246

namespace A090569

/-- `1-A063694(n)+n` -/
def P4123478558285625246.Spec : Prop :=
  ∀ n, P4123478558285625246.a n = A090569 (n + 1)

end A090569

/-! ## A090569.P11056173534645632065

`xor(n, A063694(xor(1, n)))`
-/

namespace A090569.P11056173534645632065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A063694 (Nat.xor 1 n))

end

end A090569.P11056173534645632065

namespace A090569

/-- `xor(n, A063694(xor(1, n)))` -/
def P11056173534645632065.Spec : Prop :=
  ∀ n, P11056173534645632065.a n = A090569 (n + 1)

end A090569

/-! ## A090569.P5498561443139891302

`n+1-A004514(n)/2`
-/

namespace A090569.P5498561443139891302
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) - (A004514 n : ℚ) / 2

end

end A090569.P5498561443139891302

namespace A090569

/-- `n+1-A004514(n)/2` -/
def P5498561443139891302.Spec : Prop :=
  ∀ n, P5498561443139891302.a n = (A090569 (n + 1) : ℚ)

end A090569

/-! ## A090569.P15891976122613333178

`A004442(A063695(n))`
-/

namespace A090569.P15891976122613333178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A063695 n).toNat

end

end A090569.P15891976122613333178

namespace A090569

/-- `A004442(A063695(n))` -/
def P15891976122613333178.Spec : Prop :=
  ∀ n, P15891976122613333178.a n = A090569 (n + 1)

end A090569

/-! ## A090569.P18075762265834633044

`A004514(A004526(n))+1`
-/

namespace A090569.P18075762265834633044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004514 (A004526 n).toNat + 1

end

end A090569.P18075762265834633044

namespace A090569

/-- `A004514(A004526(n))+1` -/
def P18075762265834633044.Spec : Prop :=
  ∀ n, P18075762265834633044.a n = A090569 (n + 1)

end A090569

/-! ## A090569.P9806403445805416468

`A062880(A059906(n))+1`
-/

namespace A090569.P9806403445805416468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062880 (A059906 n).toNat + 1

end

end A090569.P9806403445805416468

namespace A090569

/-- `A062880(A059906(n))+1` -/
def P9806403445805416468.Spec : Prop :=
  ∀ n, P9806403445805416468.a n = A090569 (n + 1)

end A090569

/-! ## A090569.P3205980749702783926

`A004442(n-A063694(n))`
-/

namespace A090569.P3205980749702783926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 ((n : ℤ) - A063694 n).toNat

end

end A090569.P3205980749702783926

namespace A090569

/-- `A004442(n-A063694(n))` -/
def P3205980749702783926.Spec : Prop :=
  ∀ n, P3205980749702783926.a n = A090569 (n + 1)

end A090569

/-! ## A090569.P12957874389321402461

`A004442(xor(n, A063694(n)))`
-/

namespace A090569.P12957874389321402461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (Int.xor (n : ℤ) (A063694 n)).toNat

end

end A090569.P12957874389321402461

namespace A090569

/-- `A004442(xor(n, A063694(n)))` -/
def P12957874389321402461.Spec : Prop :=
  ∀ n, P12957874389321402461.a n = A090569 (n + 1)

end A090569

/-! ## A090569.P12675182155041203761

`A317050(A004514(n))+n+1`
-/

namespace A090569.P12675182155041203761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317050 (A004514 n).toNat + (n + 1 : ℤ)

end

end A090569.P12675182155041203761

namespace A090569

/-- `A317050(A004514(n))+n+1` -/
def P12675182155041203761.Spec : Prop :=
  ∀ n, P12675182155041203761.a n = A090569 (n + 1)

end A090569

/-! ## A090569.P4060119449639074955

`n+1-A000695(A059905(n))`
-/

namespace A090569.P4060119449639074955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A000695 (A059905 n).toNat

end

end A090569.P4060119449639074955

namespace A090569

/-- `n+1-A000695(A059905(n))` -/
def P4060119449639074955.Spec : Prop :=
  ∀ n, P4060119449639074955.a n = A090569 (n + 1)

end A090569

/-! ## A090569.P368502228758374674

`A000265(n+2-A053985(n))`
-/

namespace A090569.P368502228758374674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 ((n + 2 : ℤ) - A053985 n).toNat

end

end A090569.P368502228758374674

namespace A090569

/-- `A000265(n+2-A053985(n))` -/
def P368502228758374674.Spec : Prop :=
  ∀ n, P368502228758374674.a n = A090569 (n + 1)

end A090569

/-! ## A090569.P6556020005743593525

`1-(A053985(n)-A063694(n))`
-/

namespace A090569.P6556020005743593525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A053985 n - A063694 n)

end

end A090569.P6556020005743593525

namespace A090569

/-- `1-(A053985(n)-A063694(n))` -/
def P6556020005743593525.Spec : Prop :=
  ∀ n, P6556020005743593525.a n = A090569 (n + 1)

end A090569

/-! ## A090569.P17472427791567288414

`xor(A006015(n), A057300(n))+1`
-/

namespace A090569.P17472427791567288414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A006015 n) (A057300 n) + 1

end

end A090569.P17472427791567288414

namespace A090569

/-- `xor(A006015(n), A057300(n))+1` -/
def P17472427791567288414.Spec : Prop :=
  ∀ n, P17472427791567288414.a n = A090569 (n + 1)

end A090569

/-! ## A090569.P5156466656806308391

`n+1-A000695(A059253(A163355(n)))`
-/

namespace A090569.P5156466656806308391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A000695 (A059253 (A163355 n).toNat).toNat

end

end A090569.P5156466656806308391

namespace A090569

/-- `n+1-A000695(A059253(A163355(n)))` -/
def P5156466656806308391.Spec : Prop :=
  ∀ n, P5156466656806308391.a n = A090569 (n + 1)

end A090569

/-! ## A090569.P9067151439439428869

`A317050(1-A053985(n)+n)`
-/

namespace A090569.P9067151439439428869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317050 (1 - A053985 n + (n : ℤ)).toNat

end

end A090569.P9067151439439428869

namespace A090569

/-- `A317050(1-A053985(n)+n)` -/
def P9067151439439428869.Spec : Prop :=
  ∀ n, P9067151439439428869.a n = A090569 (n + 1)

end A090569

/-! ## A090569.P11373886624005208458

`A053985(A057300(2*n+1)-(n+1))`
-/

namespace A090569.P11373886624005208458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053985 (A057300 (2 * n + 1) - (n + 1 : ℤ)).toNat

end

end A090569.P11373886624005208458

namespace A090569

/-- `A053985(A057300(2*n+1)-(n+1))` -/
def P11373886624005208458.Spec : Prop :=
  ∀ n, P11373886624005208458.a n = A090569 (n + 1)

end A090569

/-!
# A090570: Numbers that are congruent to {0, 1} mod 9.

The programs for A090570, the canonical program `A090570.P7136330921936533099` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A090570 has offset 1).

The definition of A090570 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A090570.P17702639093744366752

`record[n/(n%9)!]`
-/

namespace A090570.P17702639093744366752
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (Nat.factorial (n % 9) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A090570.P17702639093744366752

namespace A090570

/-- `record[n/(n%9)!]` -/
def P17702639093744366752.Spec : Prop :=
  ∀ n, P17702639093744366752.a n = (A090570 (n + 1) : ℚ)

end A090570

/-! ## A090570.P7136330921936533099

`9+a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A090570

/-- `9+a(n-2)` -/
def P7136330921936533099.Spec : Prop :=
  ∀ n, (P7136330921936533099.a n : ℤ) = A090570 (n + 1)

theorem P7136330921936533099.correct : P7136330921936533099.Spec := by
  intro n
  simp only [A090570, Nat.add_sub_cancel]

end A090570

/-! ## A090570.P11196786841495726436

`∑[gcd(2, n)^3]-8`
-/

namespace A090570.P11196786841495726436
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 n ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 8

end

end A090570.P11196786841495726436

namespace A090570

/-- `∑[gcd(2, n)^3]-8` -/
def P11196786841495726436.Spec : Prop :=
  ∀ n, P11196786841495726436.a n = A090570 (n + 1)

end A090570

/-! ## A090570.P3212986626961325187

`∑[gcd(8, and(1, n))]-8`
-/

namespace A090570.P3212986626961325187
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 8 (Nat.land 1 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 8

end

end A090570.P3212986626961325187

namespace A090570

/-- `∑[gcd(8, and(1, n))]-8` -/
def P3212986626961325187.Spec : Prop :=
  ∀ n, P3212986626961325187.a n = A090570 (n + 1)

end A090570

/-! ## A090570.P17228739637910398661

`∑[C(8, a(n-1))]` with `a(0)=0`
-/

namespace A090570.P17228739637910398661
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  Nat.choose 8 (f1 (n - 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A090570.P17228739637910398661

namespace A090570

/-- `∑[C(8, a(n-1))]` -/
def P17228739637910398661.Spec : Prop :=
  ∀ n, (P17228739637910398661.a n : ℤ) = A090570 (n + 1)

end A090570

/-! ## A090570.P18196996528884939583

`7*floor(n/2)+n`
-/

namespace A090570.P18196996528884939583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * ⌊(n : ℚ) / 2⌋ + (n : ℤ)

end

end A090570.P18196996528884939583

namespace A090570

/-- `7*floor(n/2)+n` -/
def P18196996528884939583.Spec : Prop :=
  ∀ n, P18196996528884939583.a n = A090570 (n + 1)

end A090570

/-! ## A090570.P198660731561746480

`record[n-dr(n^5)²]`
-/

namespace A090570.P198660731561746480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (SequenceMachineLib.digitalRoot (n ^ 5 : ℤ) ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A090570.P198660731561746480

namespace A090570

/-- `record[n-dr(n^5)²]` -/
def P198660731561746480.Spec : Prop :=
  ∀ n, P198660731561746480.a n = A090570 (n + 1)

end A090570

/-! ## A090570.P6514901473571813023

`∑[9-a(n-1)]` with `a(0)=0, a(1)=1`
-/

namespace A090570.P6514901473571813023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  9 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A090570.P6514901473571813023

namespace A090570

/-- `∑[9-a(n-1)]` -/
def P6514901473571813023.Spec : Prop :=
  ∀ n, P6514901473571813023.a n = A090570 (n + 1)

end A090570

/-! ## A090570.P14899053471885662145

`∑[floor(8^((n-1)%2))]`
-/

namespace A090570.P14899053471885662145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(8 : ℚ) ^ (Int.tmod ((n : ℤ) - 1) 2 : ℤ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A090570.P14899053471885662145

namespace A090570

/-- `∑[floor(8^((n-1)%2))]` -/
def P14899053471885662145.Spec : Prop :=
  ∀ n, P14899053471885662145.a n = A090570 (n + 1)

end A090570

/-! ## A090570.P11390105143593339960

`lt[n*(dr(n+1)-2), 1]`
-/

namespace A090570.P11390105143593339960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ((SequenceMachineLib.digitalRoot (n + 1 : ℤ) : ℤ) - 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A090570.P11390105143593339960

namespace A090570

/-- `lt[n*(dr(n+1)-2), 1]` -/
def P11390105143593339960.Spec : Prop :=
  ∀ n, (P11390105143593339960.a n : ℤ) = A090570 (n + 1)

end A090570

/-! ## A090570.P1006922203737580069

`∑[dr(comp[3*(n+1)]^3)]`
-/

namespace A090570.P1006922203737580069
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n ^ 3 : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A090570.P1006922203737580069

namespace A090570

/-- `∑[dr(comp[3*(n+1)]^3)]` -/
def P1006922203737580069.Spec : Prop :=
  ∀ n, (P1006922203737580069.a n : ℤ) = A090570 (n + 1)

end A090570

/-! ## A090570.P13803430876176624439

`lt[dr(n+1)+n, n+3]`
-/

namespace A090570.P13803430876176624439
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (n + 1 : ℤ) + n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A090570.P13803430876176624439

namespace A090570

/-- `lt[dr(n+1)+n, n+3]` -/
def P13803430876176624439.Spec : Prop :=
  ∀ n, (P13803430876176624439.a n : ℤ) = A090570 (n + 1)

end A090570

/-! ## A090570.P10011454316672611276

`record[n-4*dr((2*n)²)]`
-/

namespace A090570.P10011454316672611276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (4 * SequenceMachineLib.digitalRoot ((2 * n) ^ 2 : ℤ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A090570.P10011454316672611276

namespace A090570

/-- `record[n-4*dr((2*n)²)]` -/
def P10011454316672611276.Spec : Prop :=
  ∀ n, P10011454316672611276.a n = A090570 (n + 1)

end A090570

/-! ## A090570.P12751479422293096192

`record[n/(dr(n+1)-1)!]`
-/

namespace A090570.P12751479422293096192
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (Nat.factorial ((SequenceMachineLib.digitalRoot (n + 1 : ℤ) : ℤ) - 1).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A090570.P12751479422293096192

namespace A090570

/-- `record[n/(dr(n+1)-1)!]` -/
def P12751479422293096192.Spec : Prop :=
  ∀ n, P12751479422293096192.a n = (A090570 (n + 1) : ℚ)

end A090570

/-! ## A090570.P3844637076227189113

`lt[1, val((n+3)²+2*n, 3)]`
-/

namespace A090570.P3844637076227189113
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation ((n + 3) ^ 2 + 2 * n) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A090570.P3844637076227189113

namespace A090570

/-- `lt[1, val((n+3)²+2*n, 3)]` -/
def P3844637076227189113.Spec : Prop :=
  ∀ n, (P3844637076227189113.a n : ℤ) = A090570 (n + 1)

end A090570

/-! ## A090570.P14748144157458291476

`record[n+1-(dr(n+1)-1)!]`
-/

namespace A090570.P14748144157458291476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - (Nat.factorial ((SequenceMachineLib.digitalRoot (n + 1 : ℤ) : ℤ) - 1).toNat : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A090570.P14748144157458291476

namespace A090570

/-- `record[n+1-(dr(n+1)-1)!]` -/
def P14748144157458291476.Spec : Prop :=
  ∀ n, P14748144157458291476.a n = A090570 (n + 1)

end A090570

/-! ## A090570.P11788026914246330918

`record[n+1-dr((2*n+1)^5)]`
-/

namespace A090570.P11788026914246330918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - (SequenceMachineLib.digitalRoot ((2 * n + 1) ^ 5 : ℤ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A090570.P11788026914246330918

namespace A090570

/-- `record[n+1-dr((2*n+1)^5)]` -/
def P11788026914246330918.Spec : Prop :=
  ∀ n, P11788026914246330918.a n = A090570 (n + 1)

end A090570

/-! ## A090570.P2087820420079702685

`3*(4-(3-a(n-2))/3)` with `a(0)=0, a(1)=1`
-/

namespace A090570.P2087820420079702685
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 1] fun n a =>
  3 * (4 - (3 - a (n - 2)) / 3)

end

end A090570.P2087820420079702685

namespace A090570

/-- `3*(4-(3-a(n-2))/3)` -/
def P2087820420079702685.Spec : Prop :=
  ∀ n, P2087820420079702685.a n = (A090570 (n + 1) : ℚ)

end A090570

/-!
# A090573: Number of configurations of the 3-dimensional 3 X 3 X 3 sliding cube puzzle that require a minimum of n moves to be reached, starting with the empty space at one of the enclosing cube corners.

The programs for A090573, there is no canonical definition to state claims against.
-/

/-! ## A090573.P3279634028198757854

`A156562(or(2*3^n-∑[2^n], C(n, 2)))`
-/

namespace A090573.P3279634028198757854
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156562 (Int.lor ((2 * 3 ^ n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)) (Nat.choose n 2 : ℤ)).toNat

end

end A090573.P3279634028198757854

/-! ## A090573.P8055290230237117150

`A278085(A293070(n))`
-/

namespace A090573.P8055290230237117150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278085 (A293070 n).toNat

end

end A090573.P8055290230237117150

/-!
# A090574: Number of configurations of the 3-dimensional 3 X 3 X 3 sliding cube puzzle that require a minimum of n moves to be reached, starting with the empty space in the center of the combination cube.

The programs for A090574, there is no canonical definition to state claims against.
-/

/-! ## A090574.P2888152261866846976

`record[A005875(A081674(n))]`
-/

namespace A090574.P2888152261866846976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005875 (A081674 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A090574.P2888152261866846976

/-! ## A090574.P16993421526566381236

`record[A004013(A236392(n))]`
-/

namespace A090574.P16993421526566381236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004013 (A236392 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A090574.P16993421526566381236

/-!
# A090575: Number of configurations of the 3-dimensional 3 X 3 X 3 sliding cube puzzle that require a minimum of n moves to be reached, starting with the empty space at the center of one of the 6 faces of the combination cube.

The programs for A090575, there is no canonical definition to state claims against.
-/

/-! ## A090575.P15047347646396290397

`A048621(A033876(n))`
-/

namespace A090575.P15047347646396290397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048621 (A033876 n).toNat

end

end A090575.P15047347646396290397

/-!
# A090576: Number of configurations of the 3-dimensional 3 X 3 X 3 sliding cube puzzle that require a minimum of n moves to be reached, starting with the empty space at mid-side of one of the 12 edges of the combination cube.

The programs for A090576, there is no canonical definition to state claims against.
-/

/-! ## A090576.P550605418300754482

`A276216(A255631(n))`
-/

namespace A090576.P550605418300754482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276216 (A255631 n).toNat

end

end A090576.P550605418300754482

/-! ## A090576.P16249368646983966121

`A226190(Δ[A033505(n)])`
-/

namespace A090576.P16249368646983966121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033505 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226190 (f1 (n + 1) - f1 n).toNat

end

end A090576.P16249368646983966121

/-!
# A090577: Number of configurations of a variant of the 3-dimensional 3 X 3 X 3 sliding cube puzzle that require a minimum of n moves to be reached, starting with the empty space at one of the enclosing cube corners.

The programs for A090577, there is no canonical definition to state claims against.
-/

/-! ## A090577.P662717553529890072

`A174873(A018002(n))`
-/

namespace A090577.P662717553529890072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174873 (A018002 n).toNat

end

end A090577.P662717553529890072

/-! ## A090577.P9583194027673520526

`A053447(abs(A298308(n)))`
-/

namespace A090577.P9583194027673520526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053447 |A298308 n|.toNat

end

end A090577.P9583194027673520526

/-!
# A090578: Number of configurations of a variant of the 3-dimensional 3 X 3 X 3 sliding cube puzzle that require a minimum of n moves to be reached, starting with the empty space at mid-edge of one of the 12 edges of the combination cube.

The programs for A090578, there is no canonical definition to state claims against.
-/

/-! ## A090578.P16630919629373305880

`Δ[A359402(A260668(n))]`
-/

namespace A090578.P16630919629373305880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359402 (A260668 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A090578.P16630919629373305880

/-! ## A090578.P360811176697559649

`A182195(A000991(n+1))`
-/

namespace A090578.P360811176697559649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182195 (A000991 (n + 1)).toNat

end

end A090578.P360811176697559649

/-!
# A090579: Number of numbers with 4 decimal digits and sum of digits = n.

The programs for A090579, there is no canonical definition to state claims against.
-/

/-! ## A090579.P16924943138896425454

`A289410(n+55)`
-/

namespace A090579.P16924943138896425454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289410 (n + 55)

end

end A090579.P16924943138896425454

/-! ## A090579.P4494666480014461466

`∑[∑[dr(A345406(n+2))]]`
-/

namespace A090579.P4494666480014461466
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A345406 (n + 2))

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A090579.P4494666480014461466

/-! ## A090579.P4878659210567856944

`∑[∑[dr(A270393(n+1))]]`
-/

namespace A090579.P4878659210567856944
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A270393 (n + 1))

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A090579.P4878659210567856944

/-! ## A090579.P14027562283397040708

`∑[∑[A353907(n+1)%15]]`
-/

namespace A090579.P14027562283397040708
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A353907 (n + 1)) 15

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A090579.P14027562283397040708

/-! ## A090579.P277411002758180571

`record[A058187(n)-A165878(n)]`
-/

namespace A090579.P277411002758180571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058187 n - A165878 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A090579.P277411002758180571

/-!
# A090580: Number of numbers with 5 decimal digits and sum of digits = n.

The programs for A090580, there is no canonical definition to state claims against.
-/

/-! ## A090580.P10766766584179680454

`A289410(n+91)`
-/

namespace A090580.P10766766584179680454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289410 (n + 91)

end

end A090580.P10766766584179680454

/-! ## A090580.P6836772679456997081

`∑[∑[∑[A092596(n+1)%10]]]`
-/

namespace A090580.P6836772679456997081
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A092596 (n + 1)) 10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A090580.P6836772679456997081

/-! ## A090580.P415176980625296538

`xor(C(n+4, 4), A144569(C(n, 7)))`
-/

namespace A090580.P415176980625296538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (Nat.choose (n + 4) 4 : ℤ) (A144569 (Nat.choose n 7))

end

end A090580.P415176980625296538

/-! ## A090580.P6315071697931235061

`A143129(A217838(n))`
-/

namespace A090580.P6315071697931235061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143129 (A217838 n).toNat

end

end A090580.P6315071697931235061

/-! ## A090580.P13411546396576278696

`∑[A090579(A082216(n)+1)]`
-/

namespace A090580.P13411546396576278696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090579 (A082216 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A090580.P13411546396576278696

/-!
# A090581: Number of numbers with 6 decimal digits and sum of digits = n.

The programs for A090581, there is no canonical definition to state claims against.
-/

/-! ## A090581.P15891493539292798700

`xor(A022307(A255379(n+1)), A189980(2*n))`
-/

namespace A090581.P15891493539292798700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A022307 (A255379 (n + 1)).toNat) (A189980 (2 * n + 10))

end

end A090581.P15891493539292798700

/-! ## A090581.P14237324185799481310

`a(n-1)+C(n+4, 4)-A025441(n^3*∑{d}[n, #])` with `a(0)=1`
-/

namespace A090581.P14237324185799481310
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + ((Nat.choose (n + 4) 4 : ℤ) - A025441 (n ^ 3 * (∑ d ∈ Nat.divisors (f1 n), d)))

end

end A090581.P14237324185799481310

/-! ## A090581.P11070683059724327848

`A143130(A217838(n))`
-/

namespace A090581.P11070683059724327848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143130 (A217838 n).toNat

end

end A090581.P11070683059724327848

/-! ## A090581.P5885769665432405047

`record[A143130(A000929(n))]`
-/

namespace A090581.P5885769665432405047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143130 (A000929 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A090581.P5885769665432405047

/-! ## A090581.P17579192244377404056

`record[A143130(A341165(n))]`
-/

namespace A090581.P17579192244377404056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143130 (A341165 (n + 28)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A090581.P17579192244377404056

/-!
# A090582: T(n, k) = Sum_{j=0..n-k} (-1)^j*binomial(n - k + 1, j)*(n - k + 1 - j)^n. Triangle read by rows, T(n, k) for 1 <= k <= n.

The programs for A090582, there is no canonical definition to state claims against.
-/

/-! ## A090582.P2019341339497974010

`A004736(n+1)*A130850(n)`
-/

namespace A090582.P2019341339497974010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1) * A130850 n

end

end A090582.P2019341339497974010

/-! ## A090582.P6898207358509088505

`(A025581(n)+1)*A130850(n)`
-/

namespace A090582.P6898207358509088505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A025581 n + 1) * A130850 n

end

end A090582.P6898207358509088505

/-! ## A090582.P3865696198722392582

`abs(A004736(n+1)*A075263(n))`
-/

namespace A090582.P3865696198722392582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A004736 (n + 1) * A075263 n|

end

end A090582.P3865696198722392582

/-! ## A090582.P11064190957515096300

`abs((A025581(n)+1)*A075263(n))`
-/

namespace A090582.P11064190957515096300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(A025581 n + 1) * A075263 n|

end

end A090582.P11064190957515096300

/-! ## A090582.P13732587209515133655

`A019538(A038722(n+1))`
-/

namespace A090582.P13732587209515133655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019538 (A038722 (n + 1)).toNat

end

end A090582.P13732587209515133655

/-! ## A090582.P13609490734983349621

`A019538(A061579(n)+1)`
-/

namespace A090582.P13609490734983349621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019538 (A061579 n + 1).toNat

end

end A090582.P13609490734983349621

/-! ## A090582.P12715109055408255365

`A131689(A099375(n)+1+n)`
-/

namespace A090582.P12715109055408255365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131689 (A099375 n + 1 + (n : ℤ)).toNat

end

end A090582.P12715109055408255365

/-! ## A090582.P6896525007167732248

`A019538(A168038(n+1)-n)`
-/

namespace A090582.P6896525007167732248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019538 (A168038 (n + 1) - (n : ℤ)).toNat

end

end A090582.P6896525007167732248

/-! ## A090582.P8046549870822762173

`A019538(A002024(n+1)²-n)`
-/

namespace A090582.P8046549870822762173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019538 (A002024 (n + 1) ^ 2 - (n : ℤ)).toNat

end

end A090582.P8046549870822762173

/-! ## A090582.P6787485851373004311

`A131689(2*A004736(n+1)+n)`
-/

namespace A090582.P6787485851373004311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131689 (2 * A004736 (n + 1) + (n : ℤ)).toNat

end

end A090582.P6787485851373004311

/-! ## A090582.P9960251988539935976

`A019538(A053187(2*(n+1))-n)`
-/

namespace A090582.P9960251988539935976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019538 (A053187 (2 * (n + 1)) - (n : ℤ)).toNat

end

end A090582.P9960251988539935976

/-! ## A090582.P87981038400607876

`A131689(A014132(n+1)+A061579(n)-n)`
-/

namespace A090582.P87981038400607876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131689 (A014132 (n + 1) + (A061579 n - (n : ℤ))).toNat

end

end A090582.P87981038400607876

/-! ## A090582.P9180876956769595156

`A131689(A004736(n+1)+A004736(n+1)+n)`
-/

namespace A090582.P9180876956769595156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131689 (A004736 (n + 1) + (A004736 (n + 1) + (n : ℤ))).toNat

end

end A090582.P9180876956769595156

/-!
# A090583: Gosper's approximation to n!, sqrt((2*n+1/3)*Pi)*n^n/e^n, rounded to nearest integer.

The programs for A090583, the canonical program `A090583.P3426733957663163184` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A090583 has offset 0).

The definition of A090583 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A090583.P3426733957663163184

`round(sqrt((2*n+1/3)*π)*n^n/exp(n))`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A090583

/-- `round(sqrt((2*n+1/3)*π)*n^n/exp(n))` -/
def P3426733957663163184.Spec : Prop :=
  ∀ n, P3426733957663163184.a n = A090583 n

theorem P3426733957663163184.correct : P3426733957663163184.Spec := by
  intro n
  simp only [A090583]

end A090583

/-! ## A090583.P9194579322286503045

`n!-A029837(A309861(n))`
-/

namespace A090583.P9194579322286503045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) - A029837 (A309861 n).toNat

end

end A090583.P9194579322286503045

namespace A090583

/-- `n!-A029837(A309861(n))` -/
def P9194579322286503045.Spec : Prop :=
  ∀ n, P9194579322286503045.a n = A090583 n

end A090583

/-! ## A090583.P6824616274912031711

`n!-A363808(A001790(n))`
-/

namespace A090583.P6824616274912031711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) - A363808 (A001790 n).toNat

end

end A090583.P6824616274912031711

namespace A090583

/-- `n!-A363808(A001790(n))` -/
def P6824616274912031711.Spec : Prop :=
  ∀ n, P6824616274912031711.a n = A090583 n

end A090583

/-! ## A090583.P12286116856581429842

`n!-A059984(A281921(n+1))`
-/

namespace A090583.P12286116856581429842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) - A059984 (A281921 (n + 1)).toNat

end

end A090583.P12286116856581429842

namespace A090583

/-- `n!-A059984(A281921(n+1))` -/
def P12286116856581429842.Spec : Prop :=
  ∀ n, P12286116856581429842.a n = A090583 n

end A090583

/-! ## A090583.P4517495174730364872

`A358611(n)+A122924(A001405(n))`
-/

namespace A090583.P4517495174730364872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358611 n + A122924 (A001405 n).toNat

end

end A090583.P4517495174730364872

namespace A090583

/-- `A358611(n)+A122924(A001405(n))` -/
def P4517495174730364872.Spec : Prop :=
  ∀ n, P4517495174730364872.a n = A090583 n

end A090583

/-!
# A090584: Smallest number m >= 0 such that n with m threes appended yields a prime or -1 if no such m exists.

The programs for A090584, there is no canonical definition to state claims against.
-/

/-! ## A090584.P2755521163978781857

`A005171(n+1)*A372262(n+1)`
-/

namespace A090584.P2755521163978781857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005171 (n + 1) * A372262 (n + 1)

end

end A090584.P2755521163978781857

/-! ## A090584.P768453138317353590

`A000007(A049084(n+1))*A372262(n+1)`
-/

namespace A090584.P768453138317353590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A049084 (n + 1)).toNat * A372262 (n + 1)

end

end A090584.P768453138317353590

/-! ## A090584.P17829535177152772560

`A090464(n+1)/A363922(n+1)*A372262(n+1)`
-/

namespace A090584.P17829535177152772560
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A090464 (n + 1) : ℚ) / (A363922 (n + 1) : ℚ) * (A372262 (n + 1) : ℚ)

end

end A090584.P17829535177152772560

/-! ## A090584.P7204155776936371796

`A090465(n+1)*A372262(n+1)/A373201(n+1)`
-/

namespace A090584.P7204155776936371796
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A090465 (n + 1) * A372262 (n + 1) : ℚ) / (A373201 (n + 1) : ℚ)

end

end A090584.P7204155776936371796

/-! ## A090584.P8930113101531648211

`A083747(n+1)/A069568(n+1)*A372262(n+1)`
-/

namespace A090584.P8930113101531648211
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083747 (n + 1) : ℚ) / (A069568 (n + 1) : ℚ) * (A372262 (n + 1) : ℚ)

end

end A090584.P8930113101531648211

/-!
# A090585: Numerator of (Sum_{k=1..n} k) / (Product_{k=1..n} k).

The programs for A090585, the canonical program `A090585.P14463148610154552064` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A090585 has offset 1).

The definition of A090585 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A090585.P14463148610154552064

`or(1, C(∏{p}[n+2, #-1], n))`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A090585

/-- `or(1, C(∏{p}[n+2, #-1], n))` -/
def P14463148610154552064.Spec : Prop :=
  ∀ n, (P14463148610154552064.a n : ℤ) = A090585 (n + 1)

theorem P14463148610154552064.correct : P14463148610154552064.Spec := by
  intro n
  simp only [A090585, Nat.add_sub_cancel]

end A090585

/-! ## A090585.P4339392841872644752

`∏{p}[n+2, C(#, #%(n+1))]`
-/

namespace A090585.P4339392841872644752
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), Nat.choose p (p % (n + 1))

end

end A090585.P4339392841872644752

namespace A090585

/-- `∏{p}[n+2, C(#, #%(n+1))]` -/
def P4339392841872644752.Spec : Prop :=
  ∀ n, (P4339392841872644752.a n : ℤ) = A090585 (n + 1)

end A090585

/-! ## A090585.P16326925092989594555

`and(n+1, ∏{p}[n+2, C(#, n+1)])+1`
-/

namespace A090585.P16326925092989594555
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land (n + 1) (∏ p ∈ Nat.primeFactors (f1 n), Nat.choose p (n + 1)) + 1

end

end A090585.P16326925092989594555

namespace A090585

/-- `and(n+1, ∏{p}[n+2, C(#, n+1)])+1` -/
def P16326925092989594555.Spec : Prop :=
  ∀ n, (P16326925092989594555.a n : ℤ) = A090585 (n + 1)

end A090585

/-! ## A090585.P3201431120571494380

`A119690(n+1)+1`
-/

namespace A090585.P3201431120571494380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119690 (n + 1) + 1

end

end A090585.P3201431120571494380

namespace A090585

/-- `A119690(n+1)+1` -/
def P3201431120571494380.Spec : Prop :=
  ∀ n, P3201431120571494380.a n = A090585 (n + 1)

end A090585

/-! ## A090585.P10686430384188050342

`gcd(n+2, A110560(n))`
-/

namespace A090585.P10686430384188050342
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 2 : ℤ) (A110560 n)

end

end A090585.P10686430384188050342

namespace A090585

/-- `gcd(n+2, A110560(n))` -/
def P10686430384188050342.Spec : Prop :=
  ∀ n, (P10686430384188050342.a n : ℤ) = A090585 (n + 1)

end A090585

/-! ## A090585.P4404819230103681630

`∑[n+1]/A069268(n+1)`
-/

namespace A090585.P4404819230103681630
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / (A069268 (n + 1) : ℚ)

end

end A090585.P4404819230103681630

namespace A090585

/-- `∑[n+1]/A069268(n+1)` -/
def P4404819230103681630.Spec : Prop :=
  ∀ n, P4404819230103681630.a n = (A090585 (n + 1) : ℚ)

end A090585

/-! ## A090585.P14784436564275282535

`A110560(n+1-a(n-1))` with `a(0)=1`
-/

namespace A090585.P14784436564275282535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A110560 ((n + 1 : ℤ) - a (n - 1)).toNat

end

end A090585.P14784436564275282535

namespace A090585

/-- `A110560(n+1-a(n-1))` -/
def P14784436564275282535.Spec : Prop :=
  ∀ n, P14784436564275282535.a n = A090585 (n + 1)

end A090585

/-! ## A090585.P11221798121067879814

`A004442(A119690(n+1))`
-/

namespace A090585.P11221798121067879814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A119690 (n + 1)).toNat

end

end A090585.P11221798121067879814

namespace A090585

/-- `A004442(A119690(n+1))` -/
def P11221798121067879814.Spec : Prop :=
  ∀ n, P11221798121067879814.a n = A090585 (n + 1)

end A090585

/-! ## A090585.P15977822346010291401

`A128059(A133622(n+1))`
-/

namespace A090585.P15977822346010291401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128059 (A133622 (n + 1)).toNat

end

end A090585.P15977822346010291401

namespace A090585

/-- `A128059(A133622(n+1))` -/
def P15977822346010291401.Spec : Prop :=
  ∀ n, P15977822346010291401.a n = A090585 (n + 1)

end A090585

/-! ## A090585.P18415975814905919677

`A110560(n*A000035(n))`
-/

namespace A090585.P18415975814905919677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110560 ((n : ℤ) * A000035 n).toNat

end

end A090585.P18415975814905919677

namespace A090585

/-- `A110560(n*A000035(n))` -/
def P18415975814905919677.Spec : Prop :=
  ∀ n, P18415975814905919677.a n = A090585 (n + 1)

end A090585

/-! ## A090585.P3994629376576540947

`A110560(and(n, A033999(n)))`
-/

namespace A090585.P3994629376576540947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110560 (Int.land (n : ℤ) (A033999 n)).toNat

end

end A090585.P3994629376576540947

namespace A090585

/-- `A110560(and(n, A033999(n)))` -/
def P3994629376576540947.Spec : Prop :=
  ∀ n, P3994629376576540947.a n = A090585 (n + 1)

end A090585

/-! ## A090585.P1850162530783602670

`A110560(n)%A027760(n+1)`
-/

namespace A090585.P1850162530783602670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A110560 n) (A027760 (n + 1))

end

end A090585.P1850162530783602670

namespace A090585

/-- `A110560(n)%A027760(n+1)` -/
def P1850162530783602670.Spec : Prop :=
  ∀ n, P1850162530783602670.a n = A090585 (n + 1)

end A090585

/-! ## A090585.P11367068242345215973

`gcd(A006414(n), A034694(n+1))`
-/

namespace A090585.P11367068242345215973
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A006414 n) (A034694 (n + 1))

end

end A090585.P11367068242345215973

namespace A090585

/-- `gcd(A006414(n), A034694(n+1))` -/
def P11367068242345215973.Spec : Prop :=
  ∀ n, (P11367068242345215973.a n : ℤ) = A090585 (n + 1)

end A090585

/-! ## A090585.P6563334033304951855

`gcd(A005718(n), A059843(n+1))`
-/

namespace A090585.P6563334033304951855
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A005718 n) (A059843 (n + 1))

end

end A090585.P6563334033304951855

namespace A090585

/-- `gcd(A005718(n), A059843(n+1))` -/
def P6563334033304951855.Spec : Prop :=
  ∀ n, (P6563334033304951855.a n : ℤ) = A090585 (n + 1)

end A090585

/-! ## A090585.P9798736085279076695

`gcd(A004256(n), A066169(n+1))`
-/

namespace A090585.P9798736085279076695
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A004256 n) (A066169 (n + 1))

end

end A090585.P9798736085279076695

namespace A090585

/-- `gcd(A004256(n), A066169(n+1))` -/
def P9798736085279076695.Spec : Prop :=
  ∀ n, (P9798736085279076695.a n : ℤ) = A090585 (n + 1)

end A090585

/-! ## A090585.P3419872542181008160

`gcd(A030661(n+1), A045896(n))`
-/

namespace A090585.P3419872542181008160
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A030661 (n + 1)) (A045896 n)

end

end A090585.P3419872542181008160

namespace A090585

/-- `gcd(A030661(n+1), A045896(n))` -/
def P3419872542181008160.Spec : Prop :=
  ∀ n, (P3419872542181008160.a n : ℤ) = A090585 (n + 1)

end A090585

/-! ## A090585.P11911550162087011540

`gcd(A006857(n), A086507(n+1))`
-/

namespace A090585.P11911550162087011540
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A006857 n) (A086507 (n + 1))

end

end A090585.P11911550162087011540

namespace A090585

/-- `gcd(A006857(n), A086507(n+1))` -/
def P11911550162087011540.Spec : Prop :=
  ∀ n, (P11911550162087011540.a n : ℤ) = A090585 (n + 1)

end A090585

/-! ## A090585.P3752811100878688877

`gcd(A071054(n), A193873(n+1))`
-/

namespace A090585.P3752811100878688877
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A071054 n) (A193873 (n + 1))

end

end A090585.P3752811100878688877

namespace A090585

/-- `gcd(A071054(n), A193873(n+1))` -/
def P3752811100878688877.Spec : Prop :=
  ∀ n, (P3752811100878688877.a n : ℤ) = A090585 (n + 1)

end A090585

/-! ## A090585.P4171747303290085619

`gcd(A058794(n), A270753(n+1))`
-/

namespace A090585.P4171747303290085619
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A058794 n) (A270753 (n + 1))

end

end A090585.P4171747303290085619

namespace A090585

/-- `gcd(A058794(n), A270753(n+1))` -/
def P4171747303290085619.Spec : Prop :=
  ∀ n, (P4171747303290085619.a n : ℤ) = A090585 (n + 1)

end A090585

/-! ## A090585.P7086895689218890589

`gcd(A063417(n), A266620(n+1))`
-/

namespace A090585.P7086895689218890589
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A063417 n) (A266620 (n + 1))

end

end A090585.P7086895689218890589

namespace A090585

/-- `gcd(A063417(n), A266620(n+1))` -/
def P7086895689218890589.Spec : Prop :=
  ∀ n, (P7086895689218890589.a n : ℤ) = A090585 (n + 1)

end A090585

/-!
# A090586: Denominator of Sum/Product of first n numbers.

The programs for A090586, there is no canonical definition to state claims against.
-/

/-! ## A090586.P2711178868869733510

`A006882(n+1)/A069268(n+1)*A006882(n)`
-/

namespace A090586.P2711178868869733510
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006882 (n + 1) : ℚ) / (A069268 (n + 1) : ℚ) * (A006882 n : ℚ)

end

end A090586.P2711178868869733510

/-! ## A090586.P1042986343212376470

`A056971(n+1)/A069268(n+1)*A132862(n+1)`
-/

namespace A090586.P1042986343212376470
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056971 (n + 1) : ℚ) / (A069268 (n + 1) : ℚ) * (A132862 (n + 1) : ℚ)

end

end A090586.P1042986343212376470

/-! ## A090586.P2152135746930692648

`A145642(n+1)/A069268(n+1)*A248762(n+1)`
-/

namespace A090586.P2152135746930692648
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A145642 (n + 1) : ℚ) / (A069268 (n + 1) : ℚ) * (A248762 (n + 1) : ℚ)

end

end A090586.P2152135746930692648

/-! ## A090586.P5477334194687981960

`A248767(n+1)/A069268(n+1)*A248769(n+1)`
-/

namespace A090586.P5477334194687981960
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A248767 (n + 1) : ℚ) / (A069268 (n + 1) : ℚ) * (A248769 (n + 1) : ℚ)

end

end A090586.P5477334194687981960

/-! ## A090586.P18416436790299212367

`A248770(n+1)/A069268(n+1)*A248772(n+1)`
-/

namespace A090586.P18416436790299212367
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A248770 (n + 1) : ℚ) / (A069268 (n + 1) : ℚ) * (A248772 (n + 1) : ℚ)

end

end A090586.P18416436790299212367

/-! ## A090586.P5707073589673511387

`A248773(n+1)/A069268(n+1)*A248775(n+1)`
-/

namespace A090586.P5707073589673511387
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A248773 (n + 1) : ℚ) / (A069268 (n + 1) : ℚ) * (A248775 (n + 1) : ℚ)

end

end A090586.P5707073589673511387

/-! ## A090586.P15608874278088181485

`A093422(∑[n+1])`
-/

namespace A090586.P15608874278088181485
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093422 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A090586.P15608874278088181485

/-! ## A090586.P7113212012751653427

`A110561(n+1)/A000217(n+1)*A069268(n+2)`
-/

namespace A090586.P7113212012751653427
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110561 (n + 1) : ℚ) / (A000217 (n + 1) : ℚ) * (A069268 (n + 2) : ℚ)

end

end A090586.P7113212012751653427

/-! ## A090586.P6757282883448941652

`lcm(n+2, 2*n!)/(n+2)`
-/

namespace A090586.P6757282883448941652
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm (n + 2) (2 * Nat.factorial n) : ℚ) / (n + 2 : ℚ)

end

end A090586.P6757282883448941652

/-! ## A090586.P11192191726731402683

`(n+1)!/gcd((n+1)!, ∑[n+1])`
-/

namespace A090586.P11192191726731402683
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 1) : ℚ) / (Nat.gcd (Nat.factorial (n + 1)) (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A090586.P11192191726731402683

/-!
# A090588: Number of labeled idempotent groupoids.

The programs for A090588, the canonical program `A090588.P5306948835430638427` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A090588 has offset 0).

The definition of A090588 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A090588.P5306948835430638427

`n^(n²-n)`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A090588

/-- `n^(n²-n)` -/
def P5306948835430638427.Spec : Prop :=
  ∀ n, P5306948835430638427.a n = (A090588 n : ℚ)

end A090588

/-! ## A090588.P10454590408429029733

`(n^C(n, 2))²`
-/

namespace A090588.P10454590408429029733
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n ^ Nat.choose n 2) ^ 2

end

end A090588.P10454590408429029733

namespace A090588

/-- `(n^C(n, 2))²` -/
def P10454590408429029733.Spec : Prop :=
  ∀ n, (P10454590408429029733.a n : ℤ) = A090588 n

end A090588

/-! ## A090588.P14657631176119895071

`(n^∑[floor(n²*acot(n))])²`
-/

namespace A090588.P14657631176119895071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n ^ 2 : ℝ) * SequenceMachineLib.acot (n : ℝ)⌋

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℚ) ^ (∑ j ∈ Finset.range (n + 1), f1 j : ℤ)) ^ 2

end

end A090588.P14657631176119895071

namespace A090588

/-- `(n^∑[floor(n²*acot(n))])²` -/
def P14657631176119895071.Spec : Prop :=
  ∀ n, P14657631176119895071.a n = (A090588 n : ℚ)

end A090588

/-! ## A090588.P358461017958427758

`(n^∑[floor(n/(acot(n)+1))])²`
-/

namespace A090588.P358461017958427758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) / (SequenceMachineLib.acot (n : ℝ) + 1)⌋

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℚ) ^ (∑ j ∈ Finset.range (n + 1), f1 j : ℤ)) ^ 2

end

end A090588.P358461017958427758

namespace A090588

/-- `(n^∑[floor(n/(acot(n)+1))])²` -/
def P358461017958427758.Spec : Prop :=
  ∀ n, P358461017958427758.a n = (A090588 n : ℚ)

end A090588

/-! ## A090588.P5831614186553298741

`(n^∑[floor(n/2^acot(n))])²`
-/

namespace A090588.P5831614186553298741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) / (2 : ℝ) ^ (SequenceMachineLib.acot (n : ℝ))⌋

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℚ) ^ (∑ j ∈ Finset.range (n + 1), f1 j : ℤ)) ^ 2

end

end A090588.P5831614186553298741

namespace A090588

/-- `(n^∑[floor(n/2^acot(n))])²` -/
def P5831614186553298741.Spec : Prop :=
  ∀ n, P5831614186553298741.a n = (A090588 n : ℚ)

end A090588

/-!
# A090590: (1,1) entry of powers of the orthogonal design shown below.

The programs for A090590, the canonical program `A090590.P17300259565815474088` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A090590 has offset 1).

The definition of A090590 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A090590.P17300259565815474088

`2*a(n-1)-8*a(n-2)` with `a(0)=1, a(1)=-6`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A090590

/-- `2*a(n-1)-8*a(n-2)` -/
def P17300259565815474088.Spec : Prop :=
  ∀ n, P17300259565815474088.a n = A090590 (n + 1)

theorem P17300259565815474088.correct : P17300259565815474088.Spec := by
  intro n
  simp only [A090590, Nat.add_sub_cancel]

end A090590

/-! ## A090590.P11891995708989434783

`∏[2-8/a(n-1)]` with `a(0)=1`
-/

namespace A090590.P11891995708989434783
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  2 - 8 / f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A090590.P11891995708989434783

namespace A090590

/-- `∏[2-8/a(n-1)]` -/
def P11891995708989434783.Spec : Prop :=
  ∀ n, P11891995708989434783.a n = (A090590 (n + 1) : ℚ)

end A090590

/-! ## A090590.P6558251766536889187

`Δ[A090591(n)]`
-/

namespace A090590.P6558251766536889187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090591 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A090590.P6558251766536889187

namespace A090590

/-- `Δ[A090591(n)]` -/
def P6558251766536889187.Spec : Prop :=
  ∀ n, P6558251766536889187.a n = A090590 (n + 1)

end A090590

/-! ## A090590.P2100215296048101530

`2^n*A002249(n+1)`
-/

namespace A090590.P2100215296048101530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A002249 (n + 1)

end

end A090590.P2100215296048101530

namespace A090590

/-- `2^n*A002249(n+1)` -/
def P2100215296048101530.Spec : Prop :=
  ∀ n, P2100215296048101530.a n = A090590 (n + 1)

end A090590

/-! ## A090590.P9266791329316983343

`Δ[2^n*∑[A078020(n)]]`
-/

namespace A090590.P9266791329316983343
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078020 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A090590.P9266791329316983343

namespace A090590

/-- `Δ[2^n*∑[A078020(n)]]` -/
def P9266791329316983343.Spec : Prop :=
  ∀ n, P9266791329316983343.a n = A090590 (n + 1)

end A090590

/-! ## A090590.P13029478539727748020

`Δ[2^n*A107920(n+1)]`
-/

namespace A090590.P13029478539727748020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A107920 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A090590.P13029478539727748020

namespace A090590

/-- `Δ[2^n*A107920(n+1)]` -/
def P13029478539727748020.Spec : Prop :=
  ∀ n, P13029478539727748020.a n = A090590 (n + 1)

end A090590

/-! ## A090590.P2776734668452723534

`A090591(n+1)-A090591(n)`
-/

namespace A090590.P2776734668452723534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090591 (n + 1) - A090591 n

end

end A090590.P2776734668452723534

namespace A090590

/-- `A090591(n+1)-A090591(n)` -/
def P2776734668452723534.Spec : Prop :=
  ∀ n, P2776734668452723534.a n = A090590 (n + 1)

end A090590

/-! ## A090590.P11680497998433060249

`A002249(n+1)/A014551(n+1)*A003665(n+1)`
-/

namespace A090590.P11680497998433060249
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002249 (n + 1) : ℚ) / (A014551 (n + 1) : ℚ) * (A003665 (n + 1) : ℚ)

end

end A090590.P11680497998433060249

namespace A090590

/-- `A002249(n+1)/A014551(n+1)*A003665(n+1)` -/
def P11680497998433060249.Spec : Prop :=
  ∀ n, P11680497998433060249.a n = (A090590 (n + 1) : ℚ)

end A090590

/-! ## A090590.P16433599572665604144

`2*A000079(n)²*A002249(n+1)/A000079(n+1)`
-/

namespace A090590.P16433599572665604144
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * A000079 n ^ 2 * A002249 (n + 1) : ℚ) / (A000079 (n + 1) : ℚ)

end

end A090590.P16433599572665604144

namespace A090590

/-- `2*A000079(n)²*A002249(n+1)/A000079(n+1)` -/
def P16433599572665604144.Spec : Prop :=
  ∀ n, P16433599572665604144.a n = (A090590 (n + 1) : ℚ)

end A090590

/-! ## A090590.P725899575413377949

`A000079(2*n+1)*A002249(n+1)/A000079(n+1)`
-/

namespace A090590.P725899575413377949
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000079 (2 * n + 1) * A002249 (n + 1) : ℚ) / (A000079 (n + 1) : ℚ)

end

end A090590.P725899575413377949

namespace A090590

/-- `A000079(2*n+1)*A002249(n+1)/A000079(n+1)` -/
def P725899575413377949.Spec : Prop :=
  ∀ n, P725899575413377949.a n = (A090590 (n + 1) : ℚ)

end A090590

/-!
# A090591: Expansion of g.f. 1/(1 - 2*x + 8*x^2).

The programs for A090591, the canonical program `A090591.P16377758992807948129` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A090591 has offset 0).

The definition of A090591 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A090591.P16377758992807948129

`2*a(n-1)-8*a(n-2)` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A090591

/-- `2*a(n-1)-8*a(n-2)` -/
def P16377758992807948129.Spec : Prop :=
  ∀ n, P16377758992807948129.a n = A090591 n

theorem P16377758992807948129.correct : P16377758992807948129.Spec := by
  intro n
  simp only [A090591]

end A090591

/-! ## A090591.P10336232750841603900

`∏[2-8/a(n-1)]` with `a(0)=1, a(1)=2`
-/

namespace A090591.P10336232750841603900
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  2 - 8 / f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A090591.P10336232750841603900

namespace A090591

/-- `∏[2-8/a(n-1)]` -/
def P10336232750841603900.Spec : Prop :=
  ∀ n, P10336232750841603900.a n = (A090591 n : ℚ)

end A090591

/-! ## A090591.P4273329965481986674

`2^n*∑[A078020(n)]`
-/

namespace A090591.P4273329965481986674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078020 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A090591.P4273329965481986674

namespace A090591

/-- `2^n*∑[A078020(n)]` -/
def P4273329965481986674.Spec : Prop :=
  ∀ n, P4273329965481986674.a n = A090591 n

end A090591

/-! ## A090591.P8056176811404512693

`2^n*A107920(n+1)`
-/

namespace A090591.P8056176811404512693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A107920 (n + 1)

end

end A090591.P8056176811404512693

namespace A090591

/-- `2^n*A107920(n+1)` -/
def P8056176811404512693.Spec : Prop :=
  ∀ n, P8056176811404512693.a n = A090591 n

end A090591

/-! ## A090591.P8335574669429237781

`∑[A078020(n)]*A000079(n)`
-/

namespace A090591.P8335574669429237781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078020 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A000079 n

end

end A090591.P8335574669429237781

namespace A090591

/-- `∑[A078020(n)]*A000079(n)` -/
def P8335574669429237781.Spec : Prop :=
  ∀ n, P8335574669429237781.a n = A090591 n

end A090591

/-! ## A090591.P8780683825560171841

`∑[A000079(n)/2*A002249(n)]`
-/

namespace A090591.P8780683825560171841
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000079 n : ℚ) / 2 * (A002249 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A090591.P8780683825560171841

namespace A090591

/-- `∑[A000079(n)/2*A002249(n)]` -/
def P8780683825560171841.Spec : Prop :=
  ∀ n, P8780683825560171841.a n = (A090591 n : ℚ)

end A090591

/-! ## A090591.P325510347855315825

`A014551(n)*A107920(n+1)-A001607(n+1)`
-/

namespace A090591.P325510347855315825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014551 n * A107920 (n + 1) - A001607 (n + 1)

end

end A090591.P325510347855315825

namespace A090591

/-- `A014551(n)*A107920(n+1)-A001607(n+1)` -/
def P325510347855315825.Spec : Prop :=
  ∀ n, P325510347855315825.a n = A090591 n

end A090591

/-! ## A090591.P13524697450164073959

`A090590(n)+a(n-1)` with `a(0)=1`
-/

namespace A090591.P13524697450164073959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A090590 n + a (n - 1)

end

end A090591.P13524697450164073959

namespace A090591

/-- `A090590(n)+a(n-1)` -/
def P13524697450164073959.Spec : Prop :=
  ∀ n, P13524697450164073959.a n = A090591 n

end A090591

/-! ## A090591.P13633370853506823527

`2*A000079(n)²*A107920(n+1)/A000079(n+1)`
-/

namespace A090591.P13633370853506823527
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * A000079 n ^ 2 * A107920 (n + 1) : ℚ) / (A000079 (n + 1) : ℚ)

end

end A090591.P13633370853506823527

namespace A090591

/-- `2*A000079(n)²*A107920(n+1)/A000079(n+1)` -/
def P13633370853506823527.Spec : Prop :=
  ∀ n, P13633370853506823527.a n = (A090591 n : ℚ)

end A090591

/-! ## A090591.P13361812342258326129

`A000079(2*n+1)*A107920(n+1)/A000079(n+1)`
-/

namespace A090591.P13361812342258326129
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000079 (2 * n + 1) * A107920 (n + 1) : ℚ) / (A000079 (n + 1) : ℚ)

end

end A090591.P13361812342258326129

namespace A090591

/-- `A000079(2*n+1)*A107920(n+1)/A000079(n+1)` -/
def P13361812342258326129.Spec : Prop :=
  ∀ n, P13361812342258326129.a n = (A090591 n : ℚ)

end A090591

/-!
# A090592: (1,1) entry of powers of the orthogonal design shown below.

The programs for A090592, the canonical program `A090592.P17648775674649772599` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A090592 has offset 1).

The definition of A090592 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A090592.P17648775674649772599

`2*a(n-1)-7*a(n-2)` with `a(0)=1, a(1)=-5`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A090592

/-- `2*a(n-1)-7*a(n-2)` -/
def P17648775674649772599.Spec : Prop :=
  ∀ n, P17648775674649772599.a n = A090592 (n + 1)

theorem P17648775674649772599.correct : P17648775674649772599.Spec := by
  intro n
  simp only [A090592, Nat.add_sub_cancel]

end A090592

/-! ## A090592.P15497858048871316995

`∏[2-7/a(n-1)]` with `a(0)=1`
-/

namespace A090592.P15497858048871316995
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  2 - 7 / f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A090592.P15497858048871316995

namespace A090592

/-- `∏[2-7/a(n-1)]` -/
def P15497858048871316995.Spec : Prop :=
  ∀ n, P15497858048871316995.a n = (A090592 (n + 1) : ℚ)

end A090592

/-! ## A090592.P7379484337929612577

`Δ[A089181(n+1)]`
-/

namespace A090592.P7379484337929612577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089181 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A090592.P7379484337929612577

namespace A090592

/-- `Δ[A089181(n+1)]` -/
def P7379484337929612577.Spec : Prop :=
  ∀ n, P7379484337929612577.a n = A090592 (n + 1)

end A090592

/-! ## A090592.P5804233280297428028

`A089181(n+2)-A089181(n+1)`
-/

namespace A090592.P5804233280297428028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089181 (n + 2) - A089181 (n + 1)

end

end A090592.P5804233280297428028

namespace A090592

/-- `A089181(n+2)-A089181(n+1)` -/
def P5804233280297428028.Spec : Prop :=
  ∀ n, P5804233280297428028.a n = A090592 (n + 1)

end A090592

/-!
# A090593: Smallest prime with exactly n consecutive ones in the longest run of ones in its binary expansion.

The programs for A090593, there is no canonical definition to state claims against.
-/

/-! ## A090593.P9935519244310753235

`and(p?[2^n-1], p?[∑[2^n]+(-2)^n])`
-/

namespace A090593.P9935519244310753235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f3 j : ℕ) : ℤ) + (-2) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n))

end

end A090593.P9935519244310753235

/-! ## A090593.P6062045806677590299

`p?[A201914(n)^gcd(7, 1-n)]`
-/

namespace A090593.P6062045806677590299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201914 n ^ Int.gcd 7 (1 - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A090593.P6062045806677590299

/-! ## A090593.P5381956501331023161

`A181351(A331217(n+1))`
-/

namespace A090593.P5381956501331023161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181351 (A331217 (n + 1)).toNat

end

end A090593.P5381956501331023161

/-!
# A090594: G.f. satisfies: A(x + x*A(-x)) = x + x*A(x).

The programs for A090594, there is no canonical definition to state claims against.
-/

/-! ## A090594.P14349664323120557768

`A069585(A107284(n))`
-/

namespace A090594.P14349664323120557768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069585 (A107284 n).toNat

end

end A090594.P14349664323120557768

/-! ## A090594.P11325026226299157561

`A253092(A149884(n))`
-/

namespace A090594.P11325026226299157561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253092 (A149884 n).toNat

end

end A090594.P11325026226299157561

/-! ## A090594.P4506849473609991593

`A081753(A126322(n)+A052905(n))`
-/

namespace A090594.P4506849473609991593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081753 (A126322 n + A052905 n).toNat

end

end A090594.P4506849473609991593

/-!
# A090595: Fourth column (k=3) of triangle A084938.

The programs for A090595, there is no canonical definition to state claims against.
-/

/-! ## A090595.P12931617190571673815

`A084938(∑[n+3]+6)`
-/

namespace A090595.P12931617190571673815
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084938 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A090595.P12931617190571673815

/-! ## A090595.P15673706717416732443

`record[A084938(∑[abs(2-n)])]`
-/

namespace A090595.P15673706717416732443
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - (n : ℤ)|

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084938 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A090595.P15673706717416732443

/-! ## A090595.P5995882541057204011

`record[A084938(n+4)/A208907(n+2)]`
-/

namespace A090595.P5995882541057204011
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A084938 (n + 4) : ℚ) / (A208907 (n + 2) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A090595.P5995882541057204011

/-! ## A090595.P14685538777330100605

`record[A084938(n+4)/A130850(n)]`
-/

namespace A090595.P14685538777330100605
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A084938 (n + 4) : ℚ) / (A130850 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A090595.P14685538777330100605

/-! ## A090595.P11135399714916604117

`record[A084938(n+4)/A049352(n+1)]`
-/

namespace A090595.P11135399714916604117
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A084938 (n + 4) : ℚ) / (A049352 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A090595.P11135399714916604117

/-!
# A090597: a(n) = - a(n-1) + 5(a(n-2) + a(n-3)) - 2(a(n-4) + a(n-5)) - 8(a(n-6) + a(n-7)).

The programs for A090597, the canonical program `A090597.P5152117482432165234` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A090597 has offset 3).

The definition of A090597 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A090597.P5152117482432165234

`a(n-1)+3*a(n-2)-a(n-3)-2*a(n-5)-4*a(n-6)` with `a(0)=0, a(1)=1, a(2)=1, a(3)=3, a(4)=3, a(5)=8`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A090597

/-- `a(n-1)+3*a(n-2)-a(n-3)-2*a(n-5)-4*a(n-6)` -/
def P5152117482432165234.Spec : Prop :=
  ∀ n, P5152117482432165234.a n = A090597 (n + 3)

theorem P5152117482432165234.correct : P5152117482432165234.Spec := by
  intro n
  simp only [A090597, Nat.add_sub_cancel]

end A090597

/-! ## A090597.P5854349718404748244

`A005418(n+1)-A018240(n+3)`
-/

namespace A090597.P5854349718404748244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005418 (n + 1) - A018240 (n + 3)

end

end A090597.P5854349718404748244

namespace A090597

/-- `A005418(n+1)-A018240(n+3)` -/
def P5854349718404748244.Spec : Prop :=
  ∀ n, P5854349718404748244.a n = A090597 (n + 3)

end A090597

/-! ## A090597.P10447834272050727757

`A056326(n+1)+1-A018240(n+3)`
-/

namespace A090597.P10447834272050727757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056326 (n + 1) + (1 - A018240 (n + 3))

end

end A090597.P10447834272050727757

namespace A090597

/-- `A056326(n+1)+1-A018240(n+3)` -/
def P10447834272050727757.Spec : Prop :=
  ∀ n, P10447834272050727757.a n = A090597 (n + 3)

end A090597

/-! ## A090597.P14999569938018369291

`(A001045(n)+A001045(A030451(n)))/2`
-/

namespace A090597.P14999569938018369291
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001045 n + A001045 (A030451 n).toNat : ℚ) / 2

end

end A090597.P14999569938018369291

namespace A090597

/-- `(A001045(n)+A001045(A030451(n)))/2` -/
def P14999569938018369291.Spec : Prop :=
  ∀ n, P14999569938018369291.a n = (A090597 (n + 3) : ℚ)

end A090597

/-! ## A090597.P11167498390947417360

`A007148(n+1)-(A059053(n+1)+A018240(n+3))`
-/

namespace A090597.P11167498390947417360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007148 (n + 1) - (A059053 (n + 1) + A018240 (n + 3))

end

end A090597.P11167498390947417360

namespace A090597

/-- `A007148(n+1)-(A059053(n+1)+A018240(n+3))` -/
def P11167498390947417360.Spec : Prop :=
  ∀ n, P11167498390947417360.a n = A090597 (n + 3)

end A090597

/-! ## A090597.P11150573090891455005

`Δ[A290075(n+3)]-A018240(n+3)`
-/

namespace A090597.P11150573090891455005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290075 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A018240 (n + 3)

end

end A090597.P11150573090891455005

namespace A090597

/-- `Δ[A290075(n+3)]-A018240(n+3)` -/
def P11150573090891455005.Spec : Prop :=
  ∀ n, P11150573090891455005.a n = A090597 (n + 3)

end A090597

/-! ## A090597.P2597893000862792617

`(A018240(n+3)*A056326(n+1))%A005418(n+1)`
-/

namespace A090597.P2597893000862792617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A018240 (n + 3) * A056326 (n + 1)) (A005418 (n + 1))

end

end A090597.P2597893000862792617

namespace A090597

/-- `(A018240(n+3)*A056326(n+1))%A005418(n+1)` -/
def P2597893000862792617.Spec : Prop :=
  ∀ n, P2597893000862792617.a n = A090597 (n + 3)

end A090597

/-! ## A090597.P128701905540762256

`A048645(A061925(n))-A018240(n+3)`
-/

namespace A090597.P128701905540762256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048645 (A061925 n).toNat - A018240 (n + 3)

end

end A090597.P128701905540762256

namespace A090597

/-- `A048645(A061925(n))-A018240(n+3)` -/
def P128701905540762256.Spec : Prop :=
  ∀ n, P128701905540762256.a n = A090597 (n + 3)

end A090597

/-!
# A090598: a(n) = 5^(n-1/2) * (2*n-1)!! * Integral_{x = 0..1/2} 1/(1+x^2)^(n + 1/2) dx.

The programs for A090598, there is no canonical definition to state claims against.
-/

/-! ## A090598.P11929286924421472724

`A000165(n)*A144635(n)`
-/

namespace A090598.P11929286924421472724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000165 n * A144635 n

end

end A090598.P11929286924421472724

/-! ## A090598.P6223655775495075225

`∏[A004277(n)]*A144635(n)`
-/

namespace A090598.P6223655775495075225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * A144635 n

end

end A090598.P6223655775495075225

/-! ## A090598.P15502048121570119267

`A000165(n)*A100095(A103517(n))`
-/

namespace A090598.P15502048121570119267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000165 n * A100095 (A103517 n).toNat

end

end A090598.P15502048121570119267

/-!
# A090599: Number of n-element labeled commutative groupoids with an identity.

The programs for A090599, there is no canonical definition to state claims against.
-/

/-! ## A090599.P16723064276571817450

`(n+1)^(∑[n]+1)`
-/

namespace A090599.P16723064276571817450
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A090599.P16723064276571817450

/-! ## A090599.P13145915045820865267

`(n+1)*(n+1)^C(n+1, 2)`
-/

namespace A090599.P13145915045820865267
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (n + 1) ^ Nat.choose (n + 1) 2

end

end A090599.P13145915045820865267

/-! ## A090599.P13522567945208218370

`(n+1)*∏{d}[2^n, (n+1)^log2(#)]`
-/

namespace A090599.P13522567945208218370
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℝ) * (∏ d ∈ Nat.divisors (f1 n), (n + 1 : ℝ) ^ (Real.logb 2 (d : ℝ)))

end

end A090599.P13522567945208218370

/-! ## A090599.P3629053792907027185

`(n+1)*(n+1)^floor(n*cosh(log(n+1)))`
-/

namespace A090599.P3629053792907027185
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * (n + 1 : ℚ) ^ (⌊(n : ℝ) * Real.cosh (Real.log (n + 1 : ℝ))⌋ : ℤ)

end

end A090599.P3629053792907027185

/-! ## A090599.P16177860669593457919

`(n+1)*(n+1)^((n²+n)*cot(atan(2)))`
-/

namespace A090599.P16177860669593457919
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℝ) * (n + 1 : ℝ) ^ ((n ^ 2 + n : ℝ) * Real.cot (Real.arctan (2 : ℝ)))

end

end A090599.P16177860669593457919

