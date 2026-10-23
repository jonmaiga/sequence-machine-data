import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C006
import Seq.B000.C007
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
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C008
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
import Seq.B013.C000
import Seq.B014.C000
import Seq.Opaque.C000
import Seq.Opaque.C001
import Seq.Opaque.C002
import Seq.Opaque.C003
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
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C024
import Seq.Opaque.C025

/-!
# A321800: Delete the decimal digits of n that appear exactly once; write -1 if all digits disappear.

The programs for A321800, there is no canonical definition to state claims against.
-/

/-! ## A321800.P6004924788205580191

`A321797(n)-A178788(n)`
-/

namespace A321800.P6004924788205580191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321797 n - A178788 n

end

end A321800.P6004924788205580191

/-! ## A321800.P14330938601932369586

`A321797(n)-char[A010784(n+1)]`
-/

namespace A321800.P14330938601932369586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010784 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321797 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A321800.P14330938601932369586

/-! ## A321800.P11871670497140397550

`A321797(n)-char[A333832(n+1)]`
-/

namespace A321800.P11871670497140397550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333832 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321797 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A321800.P11871670497140397550

/-! ## A321800.P9811821802032354702

`A321797(n)-A014802(A332550(n))`
-/

namespace A321800.P9811821802032354702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321797 n - A014802 (A332550 n).toNat

end

end A321800.P9811821802032354702

/-! ## A321800.P429244064870445411

`A321797(n)-char[A137564(n)]`
-/

namespace A321800.P429244064870445411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137564 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321797 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A321800.P429244064870445411

/-! ## A321800.P1337226356102109650

`A321797(n)-char[A320485(n)]`
-/

namespace A321800.P1337226356102109650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320485 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321797 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A321800.P1337226356102109650

/-! ## A321800.P17359622921274095165

`A321797(n)-char[A320486(n)]`
-/

namespace A321800.P17359622921274095165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320486 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321797 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A321800.P17359622921274095165

/-! ## A321800.P6006595199089764026

`and(A321804(A004185(n)), A321804(n))`
-/

namespace A321800.P6006595199089764026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A321804 (A004185 n).toNat) (A321804 n)

end

end A321800.P6006595199089764026

/-! ## A321800.P3555540160835130733

`and(A321804(A321797(n)), A321804(n))`
-/

namespace A321800.P3555540160835130733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A321804 (A321797 n).toNat) (A321804 n)

end

end A321800.P3555540160835130733

/-! ## A321800.P17473920938090181161

`A321804(A004186(n))`
-/

namespace A321800.P17473920938090181161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321804 (A004186 n).toNat

end

end A321800.P17473920938090181161

/-! ## A321800.P3158609423929950683

`A321804(A321804(n+9)+n+1)`
-/

namespace A321800.P3158609423929950683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321804 (A321804 (n + 9) + (n + 1 : ℤ)).toNat

end

end A321800.P3158609423929950683

/-! ## A321800.P9287627422283473097

`A267845(n²)*A321804(n)`
-/

namespace A321800.P9287627422283473097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267845 (n ^ 2) * A321804 n

end

end A321800.P9287627422283473097

/-! ## A321800.P2241002141747132405

`A321804(n)+A002483(A002378(n))`
-/

namespace A321800.P2241002141747132405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321804 n + A002483 (A002378 n).toNat

end

end A321800.P2241002141747132405

/-!
# A321801: Delete all consecutive identical decimal digits of n; write 0 if all digits disappear.

The programs for A321801, there is no canonical definition to state claims against.
-/

/-! ## A321801.P9679087946477046733

`A289207(A321802(n)+2)`
-/

namespace A321801.P9679087946477046733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A321802 n + 2).toNat

end

end A321801.P9679087946477046733

/-! ## A321801.P9722664025061080294

`A321802(n)*A332602(A321538(n))`
-/

namespace A321801.P9722664025061080294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321802 n * A332602 (A321538 n).toNat

end

end A321801.P9722664025061080294

/-!
# A321803: 

The programs for A321803, there is no canonical definition to state claims against.
-/

/-! ## A321803.P9372181029807998106

`A321538(n)%122`
-/

namespace A321803.P9372181029807998106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A321538 n) 122

end

end A321803.P9372181029807998106

/-! ## A321803.P14405097862065866918

`A321538(n*char[comp[C(n, 3)]])`
-/

namespace A321803.P14405097862065866918
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 3

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321538 (n * (if ∃ j, f1 j = n then 1 else 0))

end

end A321803.P14405097862065866918

/-! ## A321803.P14162274073924691098

`A178358(A321537(n))`
-/

namespace A321803.P14162274073924691098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178358 (A321537 n).toNat

end

end A321803.P14162274073924691098

/-! ## A321803.P17580900732094730791

`A254109(A321538(n))`
-/

namespace A321803.P17580900732094730791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254109 (A321538 n).toNat

end

end A321803.P17580900732094730791

/-! ## A321803.P6374541684973083563

`A182324(10*A321537(n))`
-/

namespace A321803.P6374541684973083563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182324 (10 * A321537 n).toNat

end

end A321803.P6374541684973083563

/-! ## A321803.P10244327636925185913

`A262038(10*A321537(n))`
-/

namespace A321803.P10244327636925185913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262038 (10 * A321537 n).toNat

end

end A321803.P10244327636925185913

/-! ## A321803.P11786922350959688963

`A265558(10*A321537(n))`
-/

namespace A321803.P11786922350959688963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265558 (10 * A321537 n).toNat

end

end A321803.P11786922350959688963

/-! ## A321803.P15280357412647516462

`A355222(10*A321537(n))`
-/

namespace A321803.P15280357412647516462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355222 (10 * A321537 n).toNat

end

end A321803.P15280357412647516462

/-! ## A321803.P3658212868147370991

`A355223(11*A321537(n))`
-/

namespace A321803.P3658212868147370991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355223 (11 * A321537 n).toNat

end

end A321803.P3658212868147370991

/-! ## A321803.P10482391323639241480

`lcm(A000030(n), A321538(n))`
-/

namespace A321803.P10482391323639241480
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000030 n) (A321538 n)

end

end A321803.P10482391323639241480

/-! ## A321803.P18167351148971917870

`filter[A321538(n), A071038(#)]`
-/

namespace A321803.P18167351148971917870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321538 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A071038 (f1 j).toNat = 1) n)

end

end A321803.P18167351148971917870

/-! ## A321803.P2764765201976194730

`filter[A321538(n), A136522(#)]`
-/

namespace A321803.P2764765201976194730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321538 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A136522 (f1 j).toNat = 1) n)

end

end A321803.P2764765201976194730

/-! ## A321803.P12452859707965313380

`filter[A321538(n), A202022(#)]`
-/

namespace A321803.P12452859707965313380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321538 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A202022 (f1 j).toNat = 1) n)

end

end A321803.P12452859707965313380

/-! ## A321803.P17667471882161354522

`char[A056967(n)]*A321797(n)`
-/

namespace A321803.P17667471882161354522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056967 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A321797 n

end

end A321803.P17667471882161354522

/-! ## A321803.P1223910937448024879

`(1-A196368(n))*A321797(n)`
-/

namespace A321803.P1223910937448024879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A196368 n) * A321797 n

end

end A321803.P1223910937448024879

/-! ## A321803.P13477781306091595442

`(1-A196368(n))*A321800(n)`
-/

namespace A321803.P13477781306091595442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A196368 n) * A321800 n

end

end A321803.P13477781306091595442

/-! ## A321803.P10660417862220808820

`and(A127229(n+5), A321538(n))`
-/

namespace A321803.P10660417862220808820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A127229 (n + 5)) (A321538 n)

end

end A321803.P10660417862220808820

/-! ## A321803.P6448942281439253420

`A321797(gcd(n, C(A351868(n), n)))`
-/

namespace A321803.P6448942281439253420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321797 (Nat.gcd n (Nat.choose (A351868 n).toNat n))

end

end A321803.P6448942281439253420

/-!
# A321804: Keep only consecutive identical decimal digits of n; write -1 if all digits disappear.

The programs for A321804, there is no canonical definition to state claims against.
-/

/-! ## A321804.P14577303794471425722

`A321538(n)-A196368(n)`
-/

namespace A321804.P14577303794471425722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321538 n - A196368 n

end

end A321804.P14577303794471425722

/-! ## A321804.P17608348538673186847

`A321800(gcd(n, A355223(n)))`
-/

namespace A321804.P17608348538673186847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321800 (Int.gcd (n : ℤ) (A355223 n))

end

end A321804.P17608348538673186847

/-! ## A321804.P3861892627960298488

`or(-A196368(n), A321797(n))`
-/

namespace A321804.P3861892627960298488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (-A196368 n) (A321797 n)

end

end A321804.P3861892627960298488

/-! ## A321804.P1545022501957369055

`or(-A196368(n), A321800(n))`
-/

namespace A321804.P1545022501957369055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (-A196368 n) (A321800 n)

end

end A321804.P1545022501957369055

/-! ## A321804.P754672295085794227

`A321538(n)-char[record[A321802(n)]]`
-/

namespace A321804.P754672295085794227
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321802 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321538 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A321804.P754672295085794227

/-! ## A321804.P5669399454412191250

`A321538(n)-char[record[A351868(n)]]`
-/

namespace A321804.P5669399454412191250
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351868 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321538 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A321804.P5669399454412191250

/-! ## A321804.P32666940924499032

`A321538(n)-char[A043096(n+1)]`
-/

namespace A321804.P32666940924499032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043096 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321538 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A321804.P32666940924499032

/-! ## A321804.P11715680908623025135

`A321800(n*char[A171901(n+1)])`
-/

namespace A321804.P11715680908623025135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171901 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321800 (n * (if ∃ j, f1 j = (n : ℤ) then 1 else 0))

end

end A321804.P11715680908623025135

/-! ## A321804.P18259258043363571607

`A321800(n*char[A171904(n+1)])`
-/

namespace A321804.P18259258043363571607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171904 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321800 (n * (if ∃ j, f1 j = (n : ℤ) then 1 else 0))

end

end A321804.P18259258043363571607

/-! ## A321804.P12486378422614344928

`A321538(n)-A188642(A139337(n))`
-/

namespace A321804.P12486378422614344928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321538 n - A188642 (A139337 n).toNat

end

end A321804.P12486378422614344928

/-! ## A321804.P486188780686444039

`A321536(A321537(n))-A196368(n)`
-/

namespace A321804.P486188780686444039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321536 (A321537 n).toNat - A196368 n

end

end A321804.P486188780686444039

/-! ## A321804.P534087936470509729

`or(A131851(A139337(n)), A321800(n))`
-/

namespace A321804.P534087936470509729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A131851 (A139337 n).toNat) (A321800 n)

end

end A321804.P534087936470509729

/-!
# A321806: Number of zeros in palindromic strings of the form '123456789'|'1...0...1'|'987654321' whose decimal expansions are primes (palindromic).

The programs for A321806, there is no canonical definition to state claims against.
-/

/-! ## A321806.P17103357347792976803

`A375818(A387197(n+2))`
-/

namespace A321806.P17103357347792976803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375818 (A387197 (n + 2)).toNat

end

end A321806.P17103357347792976803

/-!
# A321807: a(n) = Sum_{d divides n} (-1)^(d + n/d) * d^10.

The programs for A321807, the canonical program `A321807.P6794963280001786157` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A321807 has offset 1).

The definition of A321807 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A321807.P6794963280001786157

`∑{d}[n+1, (-1)^(#+(n+1)/#)*#^10]`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A321807

/-- `∑{d}[n+1, (-1)^(#+(n+1)/#)*#^10]` -/
def P6794963280001786157.Spec : Prop :=
  ∀ n, P6794963280001786157.a n = (A321807 (n + 1) : ℝ)

end A321807

/-!
# A321808: a(n) = Sum_{d divides n} (-1)^(d + n/d) * d^11.

The programs for A321808, the canonical program `A321808.P5681001142793064751` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A321808 has offset 1).

The definition of A321808 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A321808.P5681001142793064751

`∑{d}[n+1, (-1)^(#+(n+1)/#)*#^11]`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A321808

/-- `∑{d}[n+1, (-1)^(#+(n+1)/#)*#^11]` -/
def P5681001142793064751.Spec : Prop :=
  ∀ n, P5681001142793064751.a n = (A321808 (n + 1) : ℝ)

end A321808

/-!
# A321809: a(n) = Sum_{d divides n} (-1)^(d + n/d) * d^12.

The programs for A321809, the canonical program `A321809.P11915834614212208712` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A321809 has offset 1).

The definition of A321809 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A321809.P11915834614212208712

`∑{d}[n+1, (-1)^(#+(n+1)/#)*#^12]`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A321809

/-- `∑{d}[n+1, (-1)^(#+(n+1)/#)*#^12]` -/
def P11915834614212208712.Spec : Prop :=
  ∀ n, P11915834614212208712.a n = (A321809 (n + 1) : ℝ)

end A321809

/-!
# A321810: Sum of 6th powers of odd divisors of n.

The programs for A321810, the canonical program `A321810.P12349094334803389434` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A321810 has offset 1).

The definition of A321810 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000265, A013954, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A321810.P12349094334803389434

`A013954(A000265(n+1))`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A321810

/-- `A013954(A000265(n+1))` -/
def P12349094334803389434.Spec : Prop :=
  ∀ n, P12349094334803389434.a n = A321810 (n + 1)

theorem P12349094334803389434.correct : P12349094334803389434.Spec := by
  intro n
  simp only [A321810, Nat.add_sub_cancel]

end A321810

/-! ## A321810.P9028704615635120725

`∑{d}[n+1, lcm(#^6, A134452(#))]`
-/

namespace A321810.P9028704615635120725
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Int.lcm (d ^ 6 : ℤ) (A134452 d)

end

end A321810.P9028704615635120725

namespace A321810

/-- `∑{d}[n+1, lcm(#^6, A134452(#))]` -/
def P9028704615635120725.Spec : Prop :=
  ∀ n, (P9028704615635120725.a n : ℤ) = A321810 (n + 1)

end A321810

/-! ## A321810.P16759028186601145317

`A284927((n+1)/and(n+1, -(n+1)))`
-/

namespace A321810.P16759028186601145317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284927 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ))).toNat

end

end A321810.P16759028186601145317

namespace A321810

/-- `A284927((n+1)/and(n+1, -(n+1)))` -/
def P16759028186601145317.Spec : Prop :=
  ∀ n, P16759028186601145317.a n = A321810 (n + 1)

end A321810

/-! ## A321810.P886813472780801223

`A013954(A153733(n)+1)`
-/

namespace A321810.P886813472780801223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013954 (A153733 n + 1).toNat

end

end A321810.P886813472780801223

namespace A321810

/-- `A013954(A153733(n)+1)` -/
def P886813472780801223.Spec : Prop :=
  ∀ n, P886813472780801223.a n = A321810 (n + 1)

end A321810

/-! ## A321810.P4092807355051905128

`A321817(A153733(n)+1)`
-/

namespace A321810.P4092807355051905128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321817 (A153733 n + 1).toNat

end

end A321810.P4092807355051905128

namespace A321810

/-- `A321817(A153733(n)+1)` -/
def P4092807355051905128.Spec : Prop :=
  ∀ n, P4092807355051905128.a n = A321810 (n + 1)

end A321810

/-! ## A321810.P16898803291965143346

`gcd(A013954(n+1), A284927(n+1))`
-/

namespace A321810.P16898803291965143346
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A013954 (n + 1)) (A284927 (n + 1))

end

end A321810.P16898803291965143346

namespace A321810

/-- `gcd(A013954(n+1), A284927(n+1))` -/
def P16898803291965143346.Spec : Prop :=
  ∀ n, (P16898803291965143346.a n : ℤ) = A321810 (n + 1)

end A321810

/-! ## A321810.P9650871228503998248

`gcd(A321545(n+1), A321562(n+1))`
-/

namespace A321810.P9650871228503998248
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A321545 (n + 1)) (A321562 (n + 1))

end

end A321810.P9650871228503998248

namespace A321810

/-- `gcd(A321545(n+1), A321562(n+1))` -/
def P9650871228503998248.Spec : Prop :=
  ∀ n, (P9650871228503998248.a n : ℤ) = A321810 (n + 1)

end A321810

/-! ## A321810.P1418659394731098872

`∑{d}[n+1, A306411(#)*A321544((n+1)/#)]`
-/

namespace A321810.P1418659394731098872
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A306411 d * A321544 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A321810.P1418659394731098872

namespace A321810

/-- `∑{d}[n+1, A306411(#)*A321544((n+1)/#)]` -/
def P1418659394731098872.Spec : Prop :=
  ∀ n, P1418659394731098872.a n = A321810 (n + 1)

end A321810

/-! ## A321810.P17341180754283534752

`A321817(A326125(n+1)/∑{d}[2*(n+1), (n+1)%#])`
-/

namespace A321810.P17341180754283534752
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321817 (SequenceMachineLib.roundAway ((A326125 (n + 1) : ℚ) / ((∑ d ∈ Nat.divisors (f1 n), (n + 1) % d : ℕ) : ℚ))).toNat

end

end A321810.P17341180754283534752

namespace A321810

/-- `A321817(A326125(n+1)/∑{d}[2*(n+1), (n+1)%#])` -/
def P17341180754283534752.Spec : Prop :=
  ∀ n, P17341180754283534752.a n = A321810 (n + 1)

end A321810

/-! ## A321810.P15928378957577494779

`A284927(n+1)/A284927(A006519(n+1))`
-/

namespace A321810.P15928378957577494779
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A284927 (n + 1) : ℚ) / (A284927 (A006519 (n + 1)).toNat : ℚ)

end

end A321810.P15928378957577494779

namespace A321810

/-- `A284927(n+1)/A284927(A006519(n+1))` -/
def P15928378957577494779.Spec : Prop :=
  ∀ n, P15928378957577494779.a n = (A321810 (n + 1) : ℚ)

end A321810

/-! ## A321810.P14615911085940493858

`A321817(A326125(n+1)/A002131(n+1))`
-/

namespace A321810.P14615911085940493858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321817 (SequenceMachineLib.roundAway ((A326125 (n + 1) : ℚ) / (A002131 (n + 1) : ℚ))).toNat

end

end A321810.P14615911085940493858

namespace A321810

/-- `A321817(A326125(n+1)/A002131(n+1))` -/
def P14615911085940493858.Spec : Prop :=
  ∀ n, P14615911085940493858.a n = A321810 (n + 1)

end A321810

/-! ## A321810.P230985554769077324

`A352034(2*(n+1))`
-/

namespace A321810.P230985554769077324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352034 (2 * (n + 1))

end

end A321810.P230985554769077324

namespace A321810

/-- `A352034(2*(n+1))` -/
def P230985554769077324.Spec : Prop :=
  ∀ n, P230985554769077324.a n = A321810 (n + 1)

end A321810

/-! ## A321810.P6000412365700147769

`A351308(A191871(n+1))`
-/

namespace A321810.P6000412365700147769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351308 (A191871 (n + 1)).toNat

end

end A321810.P6000412365700147769

namespace A321810

/-- `A351308(A191871(n+1))` -/
def P6000412365700147769.Spec : Prop :=
  ∀ n, P6000412365700147769.a n = A321810 (n + 1)

end A321810

/-!
# A321811: Sum of 7th powers of odd divisors of n.

The programs for A321811, the canonical program `A321811.P8939995854044414177` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A321811 has offset 1).

The definition of A321811 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000265, A013955, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A321811.P8939995854044414177

`A013955(A000265(n+1))`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A321811

/-- `A013955(A000265(n+1))` -/
def P8939995854044414177.Spec : Prop :=
  ∀ n, P8939995854044414177.a n = A321811 (n + 1)

theorem P8939995854044414177.correct : P8939995854044414177.Spec := by
  intro n
  simp only [A321811, Nat.add_sub_cancel]

end A321811

/-! ## A321811.P440276512735764621

`A081865(A003602(n+1))`
-/

namespace A321811.P440276512735764621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081865 (A003602 (n + 1)).toNat

end

end A321811.P440276512735764621

namespace A321811

/-- `A081865(A003602(n+1))` -/
def P440276512735764621.Spec : Prop :=
  ∀ n, P440276512735764621.a n = A321811 (n + 1)

end A321811

/-! ## A321811.P9218127194473127473

`A081865(A025480(n)+1)`
-/

namespace A321811.P9218127194473127473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081865 (A025480 n + 1).toNat

end

end A321811.P9218127194473127473

namespace A321811

/-- `A081865(A025480(n)+1)` -/
def P9218127194473127473.Spec : Prop :=
  ∀ n, P9218127194473127473.a n = A321811 (n + 1)

end A321811

/-! ## A321811.P4731846518555842597

`A013955(A153733(n)+1)`
-/

namespace A321811.P4731846518555842597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013955 (A153733 n + 1).toNat

end

end A321811.P4731846518555842597

namespace A321811

/-- `A013955(A153733(n)+1)` -/
def P4731846518555842597.Spec : Prop :=
  ∀ n, P4731846518555842597.a n = A321811 (n + 1)

end A321811

/-! ## A321811.P10624710782151057306

`A096961(A153733(n)+1)`
-/

namespace A321811.P10624710782151057306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096961 (A153733 n + 1).toNat

end

end A321811.P10624710782151057306

namespace A321811

/-- `A096961(A153733(n)+1)` -/
def P10624710782151057306.Spec : Prop :=
  ∀ n, P10624710782151057306.a n = A321811 (n + 1)

end A321811

/-! ## A321811.P17247423781920999416

`A096961((n+1)/A006519(n+1))`
-/

namespace A321811.P17247423781920999416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096961 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A006519 (n + 1) : ℚ))).toNat

end

end A321811.P17247423781920999416

namespace A321811

/-- `A096961((n+1)/A006519(n+1))` -/
def P17247423781920999416.Spec : Prop :=
  ∀ n, P17247423781920999416.a n = A321811 (n + 1)

end A321811

/-! ## A321811.P12854467243173580323

`gcd(A013955(n+1), A096961(n+1))`
-/

namespace A321811.P12854467243173580323
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A013955 (n + 1)) (A096961 (n + 1))

end

end A321811.P12854467243173580323

namespace A321811

/-- `gcd(A013955(n+1), A096961(n+1))` -/
def P12854467243173580323.Spec : Prop :=
  ∀ n, (P12854467243173580323.a n : ℤ) = A321811 (n + 1)

end A321811

/-! ## A321811.P1102198354849492673

`gcd(A321546(n+1), A321563(n+1))`
-/

namespace A321811.P1102198354849492673
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A321546 (n + 1)) (A321563 (n + 1))

end

end A321811.P1102198354849492673

namespace A321811

/-- `gcd(A321546(n+1), A321563(n+1))` -/
def P1102198354849492673.Spec : Prop :=
  ∀ n, (P1102198354849492673.a n : ℤ) = A321811 (n + 1)

end A321811

/-! ## A321811.P7517650156632537530

`∑{d}[n+1, A239442(#)*A321545((n+1)/#)]`
-/

namespace A321811.P7517650156632537530
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A239442 d * A321545 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A321811.P7517650156632537530

namespace A321811

/-- `∑{d}[n+1, A239442(#)*A321545((n+1)/#)]` -/
def P7517650156632537530.Spec : Prop :=
  ∀ n, P7517650156632537530.a n = A321811 (n + 1)

end A321811

/-! ## A321811.P6132465322993056638

`A096961(A326125(n+1)/∑{d}[2*(n+1), (n+1)%#])`
-/

namespace A321811.P6132465322993056638
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096961 (SequenceMachineLib.roundAway ((A326125 (n + 1) : ℚ) / ((∑ d ∈ Nat.divisors (f1 n), (n + 1) % d : ℕ) : ℚ))).toNat

end

end A321811.P6132465322993056638

namespace A321811

/-- `A096961(A326125(n+1)/∑{d}[2*(n+1), (n+1)%#])` -/
def P6132465322993056638.Spec : Prop :=
  ∀ n, P6132465322993056638.a n = A321811 (n + 1)

end A321811

/-! ## A321811.P8009981921208361111

`A096961(A326125(n+1)/A002131(n+1))`
-/

namespace A321811.P8009981921208361111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096961 (SequenceMachineLib.roundAway ((A326125 (n + 1) : ℚ) / (A002131 (n + 1) : ℚ))).toNat

end

end A321811.P8009981921208361111

namespace A321811

/-- `A096961(A326125(n+1)/A002131(n+1))` -/
def P8009981921208361111.Spec : Prop :=
  ∀ n, P8009981921208361111.a n = A321811 (n + 1)

end A321811

/-! ## A321811.P2367235129736562132

`A352035(2*(n+1))`
-/

namespace A321811.P2367235129736562132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352035 (2 * (n + 1))

end

end A321811.P2367235129736562132

namespace A321811

/-- `A352035(2*(n+1))` -/
def P2367235129736562132.Spec : Prop :=
  ∀ n, P2367235129736562132.a n = A321811 (n + 1)

end A321811

/-! ## A321811.P6803773985405227941

`gcd(A321552(2*(n+1)), A321552(n+1))`
-/

namespace A321811.P6803773985405227941
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A321552 (2 * (n + 1))) (A321552 (n + 1))

end

end A321811.P6803773985405227941

namespace A321811

/-- `gcd(A321552(2*(n+1)), A321552(n+1))` -/
def P6803773985405227941.Spec : Prop :=
  ∀ n, (P6803773985405227941.a n : ℤ) = A321811 (n + 1)

end A321811

/-! ## A321811.P3785289880846684592

`gcd(A013955(n+1), A013955(A103517(n)))`
-/

namespace A321811.P3785289880846684592
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A013955 (n + 1)) (A013955 (A103517 n).toNat)

end

end A321811.P3785289880846684592

namespace A321811

/-- `gcd(A013955(n+1), A013955(A103517(n)))` -/
def P3785289880846684592.Spec : Prop :=
  ∀ n, (P3785289880846684592.a n : ℤ) = A321811 (n + 1)

end A321811

/-!
# A321812: Sum of 8th powers of odd divisors of n.

The programs for A321812, the canonical program `A321812.P13373836646123341388` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A321812 has offset 1).

The definition of A321812 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000265, A013956, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A321812.P13373836646123341388

`A013956(A000265(n+1))`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A321812

/-- `A013956(A000265(n+1))` -/
def P13373836646123341388.Spec : Prop :=
  ∀ n, P13373836646123341388.a n = A321812 (n + 1)

theorem P13373836646123341388.correct : P13373836646123341388.Spec := by
  intro n
  simp only [A321812, Nat.add_sub_cancel]

end A321812

/-! ## A321812.P13571476246550712720

`∑{d}[(n+1)/and(n+1, -(n+1)), A001016(#)]`
-/

namespace A321812.P13571476246550712720
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f1 n)).natAbs, A001016 d

end

end A321812.P13571476246550712720

namespace A321812

/-- `∑{d}[(n+1)/and(n+1, -(n+1)), A001016(#)]` -/
def P13571476246550712720.Spec : Prop :=
  ∀ n, P13571476246550712720.a n = A321812 (n + 1)

end A321812

/-! ## A321812.P5617413236024974696

`A013956(A153733(n)+1)`
-/

namespace A321812.P5617413236024974696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013956 (A153733 n + 1).toNat

end

end A321812.P5617413236024974696

namespace A321812

/-- `A013956(A153733(n)+1)` -/
def P5617413236024974696.Spec : Prop :=
  ∀ n, P5617413236024974696.a n = A321812 (n + 1)

end A321812

/-! ## A321812.P14527722267312474437

`A321818(A153733(n)+1)`
-/

namespace A321812.P14527722267312474437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321818 (A153733 n + 1).toNat

end

end A321812.P14527722267312474437

namespace A321812

/-- `A321818(A153733(n)+1)` -/
def P14527722267312474437.Spec : Prop :=
  ∀ n, P14527722267312474437.a n = A321812 (n + 1)

end A321812

/-! ## A321812.P1544899123267158739

`gcd(A013956(n+1), A321547(n+1))`
-/

namespace A321812.P1544899123267158739
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A013956 (n + 1)) (A321547 (n + 1))

end

end A321812.P1544899123267158739

namespace A321812

/-- `gcd(A013956(n+1), A321547(n+1))` -/
def P1544899123267158739.Spec : Prop :=
  ∀ n, (P1544899123267158739.a n : ℤ) = A321812 (n + 1)

end A321812

/-! ## A321812.P11367930774118390643

`gcd(A321553(n+1), A321564(n+1))`
-/

namespace A321812.P11367930774118390643
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A321553 (n + 1)) (A321564 (n + 1))

end

end A321812.P11367930774118390643

namespace A321812

/-- `gcd(A321553(n+1), A321564(n+1))` -/
def P11367930774118390643.Spec : Prop :=
  ∀ n, (P11367930774118390643.a n : ℤ) = A321812 (n + 1)

end A321812

/-! ## A321812.P16988018718043813366

`gcd(n²*A321564(n+1), A321818(n+1))`
-/

namespace A321812.P16988018718043813366
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((n ^ 2 : ℤ) * A321564 (n + 1)) (A321818 (n + 1))

end

end A321812.P16988018718043813366

namespace A321812

/-- `gcd(n²*A321564(n+1), A321818(n+1))` -/
def P16988018718043813366.Spec : Prop :=
  ∀ n, (P16988018718043813366.a n : ℤ) = A321812 (n + 1)

end A321812

/-! ## A321812.P13368081523260822183

`∑{d}[n+1, A306412(#)*A321546((n+1)/#)]`
-/

namespace A321812.P13368081523260822183
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A306412 d * A321546 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A321812.P13368081523260822183

namespace A321812

/-- `∑{d}[n+1, A306412(#)*A321546((n+1)/#)]` -/
def P13368081523260822183.Spec : Prop :=
  ∀ n, P13368081523260822183.a n = A321812 (n + 1)

end A321812

/-! ## A321812.P9510372053569091711

`A321818(A326125(n+1)/∑{d}[2*(n+1), (n+1)%#])`
-/

namespace A321812.P9510372053569091711
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321818 (SequenceMachineLib.roundAway ((A326125 (n + 1) : ℚ) / ((∑ d ∈ Nat.divisors (f1 n), (n + 1) % d : ℕ) : ℚ))).toNat

end

end A321812.P9510372053569091711

namespace A321812

/-- `A321818(A326125(n+1)/∑{d}[2*(n+1), (n+1)%#])` -/
def P9510372053569091711.Spec : Prop :=
  ∀ n, P9510372053569091711.a n = A321812 (n + 1)

end A321812

/-! ## A321812.P2826710660413858111

`A321818(A326125(n+1)/A002131(n+1))`
-/

namespace A321812.P2826710660413858111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321818 (SequenceMachineLib.roundAway ((A326125 (n + 1) : ℚ) / (A002131 (n + 1) : ℚ))).toNat

end

end A321812.P2826710660413858111

namespace A321812

/-- `A321818(A326125(n+1)/A002131(n+1))` -/
def P2826710660413858111.Spec : Prop :=
  ∀ n, P2826710660413858111.a n = A321812 (n + 1)

end A321812

/-! ## A321812.P10000327344949202875

`A352036(2*(n+1))`
-/

namespace A321812.P10000327344949202875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352036 (2 * (n + 1))

end

end A321812.P10000327344949202875

namespace A321812

/-- `A352036(2*(n+1))` -/
def P10000327344949202875.Spec : Prop :=
  ∀ n, P10000327344949202875.a n = A321812 (n + 1)

end A321812

/-! ## A321812.P4850974014970343010

`gcd(A321564(2*(n+1)), A321818(2*(n+1)))`
-/

namespace A321812.P4850974014970343010
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A321564 (2 * (n + 1))) (A321818 (2 * (n + 1)))

end

end A321812.P4850974014970343010

namespace A321812

/-- `gcd(A321564(2*(n+1)), A321818(2*(n+1)))` -/
def P4850974014970343010.Spec : Prop :=
  ∀ n, (P4850974014970343010.a n : ℤ) = A321812 (n + 1)

end A321812

/-! ## A321812.P731848498941890905

`A351309(A191871(n+1))`
-/

namespace A321812.P731848498941890905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351309 (A191871 (n + 1)).toNat

end

end A321812.P731848498941890905

namespace A321812

/-- `A351309(A191871(n+1))` -/
def P731848498941890905.Spec : Prop :=
  ∀ n, P731848498941890905.a n = A321812 (n + 1)

end A321812

/-!
# A321813: Sum of 9th powers of odd divisors of n.

The programs for A321813, the canonical program `A321813.P7308859813220665967` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A321813 has offset 1).

The definition of A321813 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000265, A013957, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A321813.P7308859813220665967

`A013957(A000265(n+1))`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A321813

/-- `A013957(A000265(n+1))` -/
def P7308859813220665967.Spec : Prop :=
  ∀ n, P7308859813220665967.a n = A321813 (n + 1)

theorem P7308859813220665967.correct : P7308859813220665967.Spec := by
  intro n
  simp only [A321813, Nat.add_sub_cancel]

end A321813

/-! ## A321813.P14993975587849174139

`A081866(A003602(n+1))`
-/

namespace A321813.P14993975587849174139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081866 (A003602 (n + 1)).toNat

end

end A321813.P14993975587849174139

namespace A321813

/-- `A081866(A003602(n+1))` -/
def P14993975587849174139.Spec : Prop :=
  ∀ n, P14993975587849174139.a n = A321813 (n + 1)

end A321813

/-! ## A321813.P3486523550090966204

`A013957(A153733(n)+1)`
-/

namespace A321813.P3486523550090966204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013957 (A153733 n + 1).toNat

end

end A321813.P3486523550090966204

namespace A321813

/-- `A013957(A153733(n)+1)` -/
def P3486523550090966204.Spec : Prop :=
  ∀ n, P3486523550090966204.a n = A321813 (n + 1)

end A321813

/-! ## A321813.P7563253037377637234

`A096962(A153733(n)+1)`
-/

namespace A321813.P7563253037377637234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096962 (A153733 n + 1).toNat

end

end A321813.P7563253037377637234

namespace A321813

/-- `A096962(A153733(n)+1)` -/
def P7563253037377637234.Spec : Prop :=
  ∀ n, P7563253037377637234.a n = A321813 (n + 1)

end A321813

/-! ## A321813.P3447698874789838324

`A321565(A000265(2*(n+1)))`
-/

namespace A321813.P3447698874789838324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321565 (A000265 (2 * (n + 1))).toNat

end

end A321813.P3447698874789838324

namespace A321813

/-- `A321565(A000265(2*(n+1)))` -/
def P3447698874789838324.Spec : Prop :=
  ∀ n, P3447698874789838324.a n = A321813 (n + 1)

end A321813

/-! ## A321813.P16084028707366495771

`A096962((n+1)/A006519(n+1))`
-/

namespace A321813.P16084028707366495771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096962 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A006519 (n + 1) : ℚ))).toNat

end

end A321813.P16084028707366495771

namespace A321813

/-- `A096962((n+1)/A006519(n+1))` -/
def P16084028707366495771.Spec : Prop :=
  ∀ n, P16084028707366495771.a n = A321813 (n + 1)

end A321813

/-! ## A321813.P5811952180377979892

`gcd(A013957(n+1), A096962(n+1))`
-/

namespace A321813.P5811952180377979892
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A013957 (n + 1)) (A096962 (n + 1))

end

end A321813.P5811952180377979892

namespace A321813

/-- `gcd(A013957(n+1), A096962(n+1))` -/
def P5811952180377979892.Spec : Prop :=
  ∀ n, (P5811952180377979892.a n : ℤ) = A321813 (n + 1)

end A321813

/-! ## A321813.P84925475041968645

`gcd(A321548(n+1), A321565(n+1))`
-/

namespace A321813.P84925475041968645
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A321548 (n + 1)) (A321565 (n + 1))

end

end A321813.P84925475041968645

namespace A321813

/-- `gcd(A321548(n+1), A321565(n+1))` -/
def P84925475041968645.Spec : Prop :=
  ∀ n, (P84925475041968645.a n : ℤ) = A321813 (n + 1)

end A321813

/-! ## A321813.P1162960607348811790

`∑{d}[A000265(n+1), A000265(#)^9]`
-/

namespace A321813.P1162960607348811790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000265 d ^ 9

end

end A321813.P1162960607348811790

namespace A321813

/-- `∑{d}[A000265(n+1), A000265(#)^9]` -/
def P1162960607348811790.Spec : Prop :=
  ∀ n, P1162960607348811790.a n = A321813 (n + 1)

end A321813

/-! ## A321813.P3637496353005216063

`∑{d}[n+1, A239443(#)*A321547((n+1)/#)]`
-/

namespace A321813.P3637496353005216063
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A239443 d * A321547 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A321813.P3637496353005216063

namespace A321813

/-- `∑{d}[n+1, A239443(#)*A321547((n+1)/#)]` -/
def P3637496353005216063.Spec : Prop :=
  ∀ n, P3637496353005216063.a n = A321813 (n + 1)

end A321813

/-! ## A321813.P5841926376428123817

`A096962(A326125(n+1)/∑{d}[2*(n+1), (n+1)%#])`
-/

namespace A321813.P5841926376428123817
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096962 (SequenceMachineLib.roundAway ((A326125 (n + 1) : ℚ) / ((∑ d ∈ Nat.divisors (f1 n), (n + 1) % d : ℕ) : ℚ))).toNat

end

end A321813.P5841926376428123817

namespace A321813

/-- `A096962(A326125(n+1)/∑{d}[2*(n+1), (n+1)%#])` -/
def P5841926376428123817.Spec : Prop :=
  ∀ n, P5841926376428123817.a n = A321813 (n + 1)

end A321813

/-! ## A321813.P12060560738383606738

`A096962(A326125(n+1)/A002131(n+1))`
-/

namespace A321813.P12060560738383606738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096962 (SequenceMachineLib.roundAway ((A326125 (n + 1) : ℚ) / (A002131 (n + 1) : ℚ))).toNat

end

end A321813.P12060560738383606738

namespace A321813

/-- `A096962(A326125(n+1)/A002131(n+1))` -/
def P12060560738383606738.Spec : Prop :=
  ∀ n, P12060560738383606738.a n = A321813 (n + 1)

end A321813

/-! ## A321813.P15034863421883625089

`A352037(2*(n+1))`
-/

namespace A321813.P15034863421883625089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352037 (2 * (n + 1))

end

end A321813.P15034863421883625089

namespace A321813

/-- `A352037(2*(n+1))` -/
def P15034863421883625089.Spec : Prop :=
  ∀ n, P15034863421883625089.a n = A321813 (n + 1)

end A321813

/-! ## A321813.P4730909658724666120

`gcd(A321554(2*(n+1)), A321554(n+1))`
-/

namespace A321813.P4730909658724666120
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A321554 (2 * (n + 1))) (A321554 (n + 1))

end

end A321813.P4730909658724666120

namespace A321813

/-- `gcd(A321554(2*(n+1)), A321554(n+1))` -/
def P4730909658724666120.Spec : Prop :=
  ∀ n, (P4730909658724666120.a n : ℤ) = A321813 (n + 1)

end A321813

/-!
# A321814: Sum of 10th powers of odd divisors of n.

The programs for A321814, the canonical program `A321814.P1566758576426474649` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A321814 has offset 1).

The definition of A321814 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000265, A013958, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A321814.P1566758576426474649

`A013958(A000265(n+1))`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A321814

/-- `A013958(A000265(n+1))` -/
def P1566758576426474649.Spec : Prop :=
  ∀ n, P1566758576426474649.a n = A321814 (n + 1)

theorem P1566758576426474649.correct : P1566758576426474649.Spec := by
  intro n
  simp only [A321814, Nat.add_sub_cancel]

end A321814

/-! ## A321814.P17935361331095550174

`∑{d}[n+1, (#*#%2)^10]`
-/

namespace A321814.P17935361331095550174
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d * (d % 2)) ^ 10

end

end A321814.P17935361331095550174

namespace A321814

/-- `∑{d}[n+1, (#*#%2)^10]` -/
def P17935361331095550174.Spec : Prop :=
  ∀ n, (P17935361331095550174.a n : ℤ) = A321814 (n + 1)

end A321814

/-! ## A321814.P105894046585202179

`A321807(A000265(2*(n+1)))`
-/

namespace A321814.P105894046585202179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321807 (A000265 (2 * (n + 1))).toNat

end

end A321814.P105894046585202179

namespace A321814

/-- `A321807(A000265(2*(n+1)))` -/
def P105894046585202179.Spec : Prop :=
  ∀ n, P105894046585202179.a n = A321814 (n + 1)

end A321814

/-! ## A321814.P11591441045778459712

`gcd(A013958(n+1), A321549(n+1))`
-/

namespace A321814.P11591441045778459712
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A013958 (n + 1)) (A321549 (n + 1))

end

end A321814.P11591441045778459712

namespace A321814

/-- `gcd(A013958(n+1), A321549(n+1))` -/
def P11591441045778459712.Spec : Prop :=
  ∀ n, (P11591441045778459712.a n : ℤ) = A321814 (n + 1)

end A321814

/-! ## A321814.P15044456972583640972

`gcd(A321555(n+1), A321807(n+1))`
-/

namespace A321814.P15044456972583640972
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A321555 (n + 1)) (A321807 (n + 1))

end

end A321814.P15044456972583640972

namespace A321814

/-- `gcd(A321555(n+1), A321807(n+1))` -/
def P15044456972583640972.Spec : Prop :=
  ∀ n, (P15044456972583640972.a n : ℤ) = A321814 (n + 1)

end A321814

/-! ## A321814.P14912540381349322556

`∑{d}[A000265(n+1), A000265(#)^10]`
-/

namespace A321814.P14912540381349322556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000265 d ^ 10

end

end A321814.P14912540381349322556

namespace A321814

/-- `∑{d}[A000265(n+1), A000265(#)^10]` -/
def P14912540381349322556.Spec : Prop :=
  ∀ n, P14912540381349322556.a n = A321814 (n + 1)

end A321814

/-! ## A321814.P11187489170640937730

`∑{d}[A000265(n+1), A008455(#)/#]`
-/

namespace A321814.P11187489170640937730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, (A008455 d : ℚ) / (d : ℚ)

end

end A321814.P11187489170640937730

namespace A321814

/-- `∑{d}[A000265(n+1), A008455(#)/#]` -/
def P11187489170640937730.Spec : Prop :=
  ∀ n, P11187489170640937730.a n = (A321814 (n + 1) : ℚ)

end A321814

/-! ## A321814.P13278597242674987851

`∑{d}[n+1, (#*A000035(#))^10]`
-/

namespace A321814.P13278597242674987851
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), ((d : ℤ) * A000035 d) ^ 10

end

end A321814.P13278597242674987851

namespace A321814

/-- `∑{d}[n+1, (#*A000035(#))^10]` -/
def P13278597242674987851.Spec : Prop :=
  ∀ n, P13278597242674987851.a n = A321814 (n + 1)

end A321814

/-! ## A321814.P106414689166677246

`∑{d}[A030101(A030101(n+1)), (#^2)^5]`
-/

namespace A321814.P106414689166677246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (A030101 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, (d ^ 2) ^ 5

end

end A321814.P106414689166677246

namespace A321814

/-- `∑{d}[A030101(A030101(n+1)), (#^2)^5]` -/
def P106414689166677246.Spec : Prop :=
  ∀ n, (P106414689166677246.a n : ℤ) = A321814 (n + 1)

end A321814

/-! ## A321814.P14295975264309607927

`A352038(2*(n+1))`
-/

namespace A321814.P14295975264309607927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352038 (2 * (n + 1))

end

end A321814.P14295975264309607927

namespace A321814

/-- `A352038(2*(n+1))` -/
def P14295975264309607927.Spec : Prop :=
  ∀ n, P14295975264309607927.a n = A321814 (n + 1)

end A321814

/-! ## A321814.P11723962465701787129

`∑{d}[n+1, and(#, A286671(#))^10]`
-/

namespace A321814.P11723962465701787129
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Int.land (d : ℤ) (A286671 d) ^ 10

end

end A321814.P11723962465701787129

namespace A321814

/-- `∑{d}[n+1, and(#, A286671(#))^10]` -/
def P11723962465701787129.Spec : Prop :=
  ∀ n, P11723962465701787129.a n = A321814 (n + 1)

end A321814

/-! ## A321814.P14791833020816217621

`A351310(A191871(n+1))`
-/

namespace A321814.P14791833020816217621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351310 (A191871 (n + 1)).toNat

end

end A321814.P14791833020816217621

namespace A321814

/-- `A351310(A191871(n+1))` -/
def P14791833020816217621.Spec : Prop :=
  ∀ n, P14791833020816217621.a n = A321814 (n + 1)

end A321814

/-!
# A321815: Sum of 11th powers of odd divisors of n.

The programs for A321815, the canonical program `A321815.P3885244428543788558` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A321815 has offset 1).

The definition of A321815 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000265, A013959, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A321815.P3885244428543788558

`A013959(A000265(n+1))`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A321815

/-- `A013959(A000265(n+1))` -/
def P3885244428543788558.Spec : Prop :=
  ∀ n, P3885244428543788558.a n = A321815 (n + 1)

theorem P3885244428543788558.correct : P3885244428543788558.Spec := by
  intro n
  simp only [A321815, Nat.add_sub_cancel]

end A321815

/-! ## A321815.P4162427308327519536

`A096963(A153733(n)+1)`
-/

namespace A321815.P4162427308327519536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096963 (A153733 n + 1).toNat

end

end A321815.P4162427308327519536

namespace A321815

/-- `A096963(A153733(n)+1)` -/
def P4162427308327519536.Spec : Prop :=
  ∀ n, P4162427308327519536.a n = A321815 (n + 1)

end A321815

/-! ## A321815.P2688458720309198396

`A096963((n+1)/A006519(n+1))`
-/

namespace A321815.P2688458720309198396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096963 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A006519 (n + 1) : ℚ))).toNat

end

end A321815.P2688458720309198396

namespace A321815

/-- `A096963((n+1)/A006519(n+1))` -/
def P2688458720309198396.Spec : Prop :=
  ∀ n, P2688458720309198396.a n = A321815 (n + 1)

end A321815

/-! ## A321815.P11108933124830749896

`gcd(A013959(n+1), A096963(n+1))`
-/

namespace A321815.P11108933124830749896
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A013959 (n + 1)) (A096963 (n + 1))

end

end A321815.P11108933124830749896

namespace A321815

/-- `gcd(A013959(n+1), A096963(n+1))` -/
def P11108933124830749896.Spec : Prop :=
  ∀ n, (P11108933124830749896.a n : ℤ) = A321815 (n + 1)

end A321815

/-! ## A321815.P1673247120633964621

`A321550(gcd(n+1, A299149(n+1)))`
-/

namespace A321815.P1673247120633964621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321550 (Int.gcd (n + 1 : ℤ) (A299149 (n + 1)))

end

end A321815.P1673247120633964621

namespace A321815

/-- `A321550(gcd(n+1, A299149(n+1)))` -/
def P1673247120633964621.Spec : Prop :=
  ∀ n, P1673247120633964621.a n = A321815 (n + 1)

end A321815

/-! ## A321815.P8049321551777477588

`gcd(A321550(n+1), A321808(n+1))`
-/

namespace A321815.P8049321551777477588
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A321550 (n + 1)) (A321808 (n + 1))

end

end A321815.P8049321551777477588

namespace A321815

/-- `gcd(A321550(n+1), A321808(n+1))` -/
def P8049321551777477588.Spec : Prop :=
  ∀ n, (P8049321551777477588.a n : ℤ) = A321815 (n + 1)

end A321815

/-! ## A321815.P9336573306415138053

`A096963(A326125(n+1)/∑{d}[2*(n+1), (n+1)%#])`
-/

namespace A321815.P9336573306415138053
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096963 (SequenceMachineLib.roundAway ((A326125 (n + 1) : ℚ) / ((∑ d ∈ Nat.divisors (f1 n), (n + 1) % d : ℕ) : ℚ))).toNat

end

end A321815.P9336573306415138053

namespace A321815

/-- `A096963(A326125(n+1)/∑{d}[2*(n+1), (n+1)%#])` -/
def P9336573306415138053.Spec : Prop :=
  ∀ n, P9336573306415138053.a n = A321815 (n + 1)

end A321815

/-! ## A321815.P571382508748107183

`A096963(A326125(n+1)/A002131(n+1))`
-/

namespace A321815.P571382508748107183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096963 (SequenceMachineLib.roundAway ((A326125 (n + 1) : ℚ) / (A002131 (n + 1) : ℚ))).toNat

end

end A321815.P571382508748107183

namespace A321815

/-- `A096963(A326125(n+1)/A002131(n+1))` -/
def P571382508748107183.Spec : Prop :=
  ∀ n, P571382508748107183.a n = A321815 (n + 1)

end A321815

/-! ## A321815.P14865446806356959128

`∑{d}[A030101(A030101(n+1)), #^11]`
-/

namespace A321815.P14865446806356959128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (A030101 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d ^ 11

end

end A321815.P14865446806356959128

namespace A321815

/-- `∑{d}[A030101(A030101(n+1)), #^11]` -/
def P14865446806356959128.Spec : Prop :=
  ∀ n, (P14865446806356959128.a n : ℤ) = A321815 (n + 1)

end A321815

/-!
# A321816: Sum of 12th powers of odd divisors of n.

The programs for A321816, the canonical program `A321816.P6005944185191397818` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A321816 has offset 1).

The definition of A321816 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000265, A013960, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A321816.P6005944185191397818

`A013960(A000265(n+1))`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A321816

/-- `A013960(A000265(n+1))` -/
def P6005944185191397818.Spec : Prop :=
  ∀ n, P6005944185191397818.a n = A321816 (n + 1)

theorem P6005944185191397818.correct : P6005944185191397818.Spec := by
  intro n
  simp only [A321816, Nat.add_sub_cancel]

end A321816

/-! ## A321816.P14913732715766457030

`∑{d}[n+1, #^12*#%2]`
-/

namespace A321816.P14913732715766457030
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), d ^ 12 * (d % 2)

end

end A321816.P14913732715766457030

namespace A321816

/-- `∑{d}[n+1, #^12*#%2]` -/
def P14913732715766457030.Spec : Prop :=
  ∀ n, (P14913732715766457030.a n : ℤ) = A321816 (n + 1)

end A321816

/-! ## A321816.P16732438255716389965

`A013960((n+1)/2^val(n+1, 2))`
-/

namespace A321816.P16732438255716389965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013960 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat

end

end A321816.P16732438255716389965

namespace A321816

/-- `A013960((n+1)/2^val(n+1, 2))` -/
def P16732438255716389965.Spec : Prop :=
  ∀ n, P16732438255716389965.a n = A321816 (n + 1)

end A321816

/-! ## A321816.P7205241808238653897

`A321809((n+1)/2^val(n+1, 2))`
-/

namespace A321816.P7205241808238653897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321809 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat

end

end A321816.P7205241808238653897

namespace A321816

/-- `A321809((n+1)/2^val(n+1, 2))` -/
def P7205241808238653897.Spec : Prop :=
  ∀ n, P7205241808238653897.a n = A321816 (n + 1)

end A321816

/-! ## A321816.P10615635811147851385

`A013960((n+1)/(or(n, n+1)-n))`
-/

namespace A321816.P10615635811147851385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013960 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((Nat.lor n (n + 1) : ℤ) - (n : ℤ) : ℚ))).toNat

end

end A321816.P10615635811147851385

namespace A321816

/-- `A013960((n+1)/(or(n, n+1)-n))` -/
def P10615635811147851385.Spec : Prop :=
  ∀ n, P10615635811147851385.a n = A321816 (n + 1)

end A321816

/-! ## A321816.P13247740929317172705

`A013960(2^(log2(n+1)-val(n+1, 2)))`
-/

namespace A321816.P13247740929317172705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013960 (SequenceMachineLib.roundAway ((2 : ℝ) ^ (Real.logb 2 (n + 1 : ℝ) - (SequenceMachineLib.valuation (n + 1) 2 : ℝ)))).toNat

end

end A321816.P13247740929317172705

namespace A321816

/-- `A013960(2^(log2(n+1)-val(n+1, 2)))` -/
def P13247740929317172705.Spec : Prop :=
  ∀ n, P13247740929317172705.a n = A321816 (n + 1)

end A321816

/-! ## A321816.P5248012834124579850

`A013960((n+1)/ceil(xor(n, n+1)/2))`
-/

namespace A321816.P5248012834124579850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013960 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (⌈(Nat.xor n (n + 1) : ℚ) / 2⌉ : ℚ))).toNat

end

end A321816.P5248012834124579850

namespace A321816

/-- `A013960((n+1)/ceil(xor(n, n+1)/2))` -/
def P5248012834124579850.Spec : Prop :=
  ∀ n, P5248012834124579850.a n = A321816 (n + 1)

end A321816

/-! ## A321816.P2116452902565554702

`A013960((n+1)/round(xor(n, n+1)/2))`
-/

namespace A321816.P2116452902565554702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013960 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (SequenceMachineLib.roundAway ((Nat.xor n (n + 1) : ℚ) / 2) : ℚ))).toNat

end

end A321816.P2116452902565554702

namespace A321816

/-- `A013960((n+1)/round(xor(n, n+1)/2))` -/
def P2116452902565554702.Spec : Prop :=
  ∀ n, P2116452902565554702.a n = A321816 (n + 1)

end A321816

/-! ## A321816.P12131569943233321122

`A013960((n+1)/gcd(n+1, (3-n)^10))`
-/

namespace A321816.P12131569943233321122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013960 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (Int.gcd (n + 1 : ℤ) ((3 - (n : ℤ)) ^ 10) : ℚ))).toNat

end

end A321816.P12131569943233321122

namespace A321816

/-- `A013960((n+1)/gcd(n+1, (3-n)^10))` -/
def P12131569943233321122.Spec : Prop :=
  ∀ n, P12131569943233321122.a n = A321816 (n + 1)

end A321816

/-! ## A321816.P8972715467417284583

`A013960(abs((n+1)/or(n+1, -(n+1))))`
-/

namespace A321816.P8972715467417284583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013960 (SequenceMachineLib.roundAway |(n + 1 : ℚ) / (Int.lor (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ)|).toNat

end

end A321816.P8972715467417284583

namespace A321816

/-- `A013960(abs((n+1)/or(n+1, -(n+1))))` -/
def P8972715467417284583.Spec : Prop :=
  ∀ n, P8972715467417284583.a n = A321816 (n + 1)

end A321816

/-! ## A321816.P2837627190369616261

`A013960(-floor((2*n+1)/xor(n, -(n+2))))`
-/

namespace A321816.P2837627190369616261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013960 (-⌊(2 * n + 1 : ℚ) / (Int.xor (n : ℤ) (-(n + 2 : ℤ)) : ℚ)⌋).toNat

end

end A321816.P2837627190369616261

namespace A321816

/-- `A013960(-floor((2*n+1)/xor(n, -(n+2))))` -/
def P2837627190369616261.Spec : Prop :=
  ∀ n, P2837627190369616261.a n = A321816 (n + 1)

end A321816

/-! ## A321816.P5304008859341121852

`A321820(A153733(n)+1)`
-/

namespace A321816.P5304008859341121852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321820 (A153733 n + 1).toNat

end

end A321816.P5304008859341121852

namespace A321816

/-- `A321820(A153733(n)+1)` -/
def P5304008859341121852.Spec : Prop :=
  ∀ n, P5304008859341121852.a n = A321816 (n + 1)

end A321816

/-! ## A321816.P2320974327429028557

`A013960((n+1)/A000010(xor(n, n+1)+1))`
-/

namespace A321816.P2320974327429028557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013960 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A000010 (Nat.xor n (n + 1) + 1) : ℚ))).toNat

end

end A321816.P2320974327429028557

namespace A321816

/-- `A013960((n+1)/A000010(xor(n, n+1)+1))` -/
def P2320974327429028557.Spec : Prop :=
  ∀ n, P2320974327429028557.a n = A321816 (n + 1)

end A321816

/-! ## A321816.P7473421345052069118

`A321820(A326125(n+1)/∑{d}[2*(n+1), (n+1)%#])`
-/

namespace A321816.P7473421345052069118
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321820 (SequenceMachineLib.roundAway ((A326125 (n + 1) : ℚ) / ((∑ d ∈ Nat.divisors (f1 n), (n + 1) % d : ℕ) : ℚ))).toNat

end

end A321816.P7473421345052069118

namespace A321816

/-- `A321820(A326125(n+1)/∑{d}[2*(n+1), (n+1)%#])` -/
def P7473421345052069118.Spec : Prop :=
  ∀ n, P7473421345052069118.a n = A321816 (n + 1)

end A321816

/-! ## A321816.P8560243729975726312

`A321820(A326125(n+1)/A002131(n+1))`
-/

namespace A321816.P8560243729975726312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321820 (SequenceMachineLib.roundAway ((A326125 (n + 1) : ℚ) / (A002131 (n + 1) : ℚ))).toNat

end

end A321816.P8560243729975726312

namespace A321816

/-- `A321820(A326125(n+1)/A002131(n+1))` -/
def P8560243729975726312.Spec : Prop :=
  ∀ n, P8560243729975726312.a n = A321816 (n + 1)

end A321816

/-! ## A321816.P13183593945329372918

`gcd(A013960(n+1), A013960(A103517(n)))`
-/

namespace A321816.P13183593945329372918
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A013960 (n + 1)) (A013960 (A103517 n).toNat)

end

end A321816.P13183593945329372918

namespace A321816

/-- `gcd(A013960(n+1), A013960(A103517(n)))` -/
def P13183593945329372918.Spec : Prop :=
  ∀ n, (P13183593945329372918.a n : ℤ) = A321816 (n + 1)

end A321816

/-! ## A321816.P16033164595959941628

`A351311(A191871(n+1))`
-/

namespace A321816.P16033164595959941628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351311 (A191871 (n + 1)).toNat

end

end A321816.P16033164595959941628

namespace A321816

/-- `A351311(A191871(n+1))` -/
def P16033164595959941628.Spec : Prop :=
  ∀ n, P16033164595959941628.a n = A321816 (n + 1)

end A321816

/-!
# A321817: a(n) = Sum_{d|n, n/d odd} d^6 for n > 0.

The programs for A321817, the canonical program `A321817.P15016838120887643165` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A321817 has offset 1).

The definition of A321817 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A321817.P34372887079566840

`∑{d}[A000265(n+1), ((n+1)/#)^6]`
-/

namespace A321817.P34372887079566840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, ((n + 1 : ℚ) / (d : ℚ)) ^ 6

end

end A321817.P34372887079566840

namespace A321817

/-- `∑{d}[A000265(n+1), ((n+1)/#)^6]` -/
def P34372887079566840.Spec : Prop :=
  ∀ n, P34372887079566840.a n = (A321817 (n + 1) : ℚ)

end A321817

/-! ## A321817.P15016838120887643165

`∑{d}[n+1, ((n+1)%A005843(#))^6]`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A321817

/-- `∑{d}[n+1, ((n+1)%A005843(#))^6]` -/
def P15016838120887643165.Spec : Prop :=
  ∀ n, P15016838120887643165.a n = A321817 (n + 1)

theorem P15016838120887643165.correct : P15016838120887643165.Spec := by
  intro n
  simp only [A321817, Nat.add_sub_cancel]

end A321817

/-! ## A321817.P4171289859705016677

`A352052(n+1)+A059841(n)`
-/

namespace A321817.P4171289859705016677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352052 (n + 1) + A059841 n

end

end A321817.P4171289859705016677

namespace A321817

/-- `A352052(n+1)+A059841(n)` -/
def P4171289859705016677.Spec : Prop :=
  ∀ n, P4171289859705016677.a n = A321817 (n + 1)

end A321817

/-! ## A321817.P8213865212292978626

`A352052(n+1)+1-A000035(n)`
-/

namespace A321817.P8213865212292978626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352052 (n + 1) + (1 - A000035 n)

end

end A321817.P8213865212292978626

namespace A321817

/-- `A352052(n+1)+1-A000035(n)` -/
def P8213865212292978626.Spec : Prop :=
  ∀ n, P8213865212292978626.a n = A321817 (n + 1)

end A321817

/-! ## A321817.P5069902831779434040

`(A284927(n+1)+A013954(n+1))/2`
-/

namespace A321817.P5069902831779434040
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A284927 (n + 1) + A013954 (n + 1) : ℚ) / 2

end

end A321817.P5069902831779434040

namespace A321817

/-- `(A284927(n+1)+A013954(n+1))/2` -/
def P5069902831779434040.Spec : Prop :=
  ∀ n, P5069902831779434040.a n = (A321817 (n + 1) : ℚ)

end A321817

/-! ## A321817.P3866642610611581049

`A321810(n+1)*A006519(n+1)^6`
-/

namespace A321817.P3866642610611581049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321810 (n + 1) * A006519 (n + 1) ^ 6

end

end A321817.P3866642610611581049

namespace A321817

/-- `A321810(n+1)*A006519(n+1)^6` -/
def P3866642610611581049.Spec : Prop :=
  ∀ n, P3866642610611581049.a n = A321817 (n + 1)

end A321817

/-! ## A321817.P285056007592414859

`∑{d}[n+1, A001227(#)*A069091((n+1)/#)]`
-/

namespace A321817.P285056007592414859
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001227 d * A069091 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A321817.P285056007592414859

namespace A321817

/-- `∑{d}[n+1, A001227(#)*A069091((n+1)/#)]` -/
def P285056007592414859.Spec : Prop :=
  ∀ n, P285056007592414859.a n = A321817 (n + 1)

end A321817

/-! ## A321817.P1979957903250100943

`∑{d}[n+1, A013954(#)*A154955((n+1)/#)]`
-/

namespace A321817.P1979957903250100943
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A013954 d * A154955 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A321817.P1979957903250100943

namespace A321817

/-- `∑{d}[n+1, A013954(#)*A154955((n+1)/#)]` -/
def P1979957903250100943.Spec : Prop :=
  ∀ n, P1979957903250100943.a n = A321817 (n + 1)

end A321817

/-! ## A321817.P10144040619197553340

`∑{d}[n+1, A096960(#)*A306411((n+1)/#)]`
-/

namespace A321817.P10144040619197553340
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A096960 d * A306411 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A321817.P10144040619197553340

namespace A321817

/-- `∑{d}[n+1, A096960(#)*A306411((n+1)/#)]` -/
def P10144040619197553340.Spec : Prop :=
  ∀ n, P10144040619197553340.a n = A321817 (n + 1)

end A321817

/-! ## A321817.P15373884216398741727

`∑{d}[n+1, A143259(#)*A351301((n+1)/#)]`
-/

namespace A321817.P15373884216398741727
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A143259 d * A351301 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A321817.P15373884216398741727

namespace A321817

/-- `∑{d}[n+1, A143259(#)*A351301((n+1)/#)]` -/
def P15373884216398741727.Spec : Prop :=
  ∀ n, P15373884216398741727.a n = A321817 (n + 1)

end A321817

/-! ## A321817.P11317160738218563615

`A002131(n+1)+A352052(n+1)-A352047(n+1)`
-/

namespace A321817.P11317160738218563615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002131 (n + 1) + (A352052 (n + 1) - A352047 (n + 1))

end

end A321817.P11317160738218563615

namespace A321817

/-- `A002131(n+1)+A352052(n+1)-A352047(n+1)` -/
def P11317160738218563615.Spec : Prop :=
  ∀ n, P11317160738218563615.a n = A321817 (n + 1)

end A321817

/-! ## A321817.P8901898249919718919

`A352052(n+1)+A000035(n+1)`
-/

namespace A321817.P8901898249919718919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352052 (n + 1) + A000035 (n + 1)

end

end A321817.P8901898249919718919

namespace A321817

/-- `A352052(n+1)+A000035(n+1)` -/
def P8901898249919718919.Spec : Prop :=
  ∀ n, P8901898249919718919.a n = A321817 (n + 1)

end A321817

/-!
# A321818: a(n) = Sum_{d|n, n/d odd} d^8 for n > 0.

The programs for A321818, the canonical program `A321818.P11557806207317153073` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A321818 has offset 1).

The definition of A321818 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A321818.P17668114366462312192

`A352054(n+1)+A059841(n)`
-/

namespace A321818.P17668114366462312192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352054 (n + 1) + A059841 n

end

end A321818.P17668114366462312192

namespace A321818

/-- `A352054(n+1)+A059841(n)` -/
def P17668114366462312192.Spec : Prop :=
  ∀ n, P17668114366462312192.a n = A321818 (n + 1)

end A321818

/-! ## A321818.P5500553709962675642

`(A321553(n+1)+A013956(n+1))/2`
-/

namespace A321818.P5500553709962675642
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A321553 (n + 1) + A013956 (n + 1) : ℚ) / 2

end

end A321818.P5500553709962675642

namespace A321818

/-- `(A321553(n+1)+A013956(n+1))/2` -/
def P5500553709962675642.Spec : Prop :=
  ∀ n, P5500553709962675642.a n = (A321818 (n + 1) : ℚ)

end A321818

/-! ## A321818.P12033917946663584554

`A321812(n+1)*A006519(n+1)^8`
-/

namespace A321818.P12033917946663584554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321812 (n + 1) * A006519 (n + 1) ^ 8

end

end A321818.P12033917946663584554

namespace A321818

/-- `A321812(n+1)*A006519(n+1)^8` -/
def P12033917946663584554.Spec : Prop :=
  ∀ n, P12033917946663584554.a n = A321818 (n + 1)

end A321818

/-! ## A321818.P2015221277278279508

`∑{d}[n+1, A001227(#)*A069093((n+1)/#)]`
-/

namespace A321818.P2015221277278279508
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001227 d * A069093 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A321818.P2015221277278279508

namespace A321818

/-- `∑{d}[n+1, A001227(#)*A069093((n+1)/#)]` -/
def P2015221277278279508.Spec : Prop :=
  ∀ n, P2015221277278279508.a n = A321818 (n + 1)

end A321818

/-! ## A321818.P2758266247829854907

`∑{d}[n+1, A013956(#)*A154955((n+1)/#)]`
-/

namespace A321818.P2758266247829854907
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A013956 d * A154955 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A321818.P2758266247829854907

namespace A321818

/-- `∑{d}[n+1, A013956(#)*A154955((n+1)/#)]` -/
def P2758266247829854907.Spec : Prop :=
  ∀ n, P2758266247829854907.a n = A321818 (n + 1)

end A321818

/-! ## A321818.P11557806207317153073

`∑{d}[n+1, A096961(#)*A306412((n+1)/#)]`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A321818

/-- `∑{d}[n+1, A096961(#)*A306412((n+1)/#)]` -/
def P11557806207317153073.Spec : Prop :=
  ∀ n, P11557806207317153073.a n = A321818 (n + 1)

theorem P11557806207317153073.correct : P11557806207317153073.Spec := by
  intro n
  simp only [A321818, Nat.add_sub_cancel]

end A321818

/-! ## A321818.P10006998820766094102

`∑{d}[n+1, A143259(#)*A351303((n+1)/#)]`
-/

namespace A321818.P10006998820766094102
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A143259 d * A351303 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A321818.P10006998820766094102

namespace A321818

/-- `∑{d}[n+1, A143259(#)*A351303((n+1)/#)]` -/
def P10006998820766094102.Spec : Prop :=
  ∀ n, P10006998820766094102.a n = A321818 (n + 1)

end A321818

/-! ## A321818.P1414281507027623451

`∑{d}[n+1, A001016((n+1)%(#+#))]`
-/

namespace A321818.P1414281507027623451
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001016 ((n + 1) % (d + d))

end

end A321818.P1414281507027623451

namespace A321818

/-- `∑{d}[n+1, A001016((n+1)%(#+#))]` -/
def P1414281507027623451.Spec : Prop :=
  ∀ n, P1414281507027623451.a n = A321818 (n + 1)

end A321818

/-! ## A321818.P14243729033944840993

`A352054(n+1)+A000035(n+1)`
-/

namespace A321818.P14243729033944840993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352054 (n + 1) + A000035 (n + 1)

end

end A321818.P14243729033944840993

namespace A321818

/-- `A352054(n+1)+A000035(n+1)` -/
def P14243729033944840993.Spec : Prop :=
  ∀ n, P14243729033944840993.a n = A321818 (n + 1)

end A321818

/-! ## A321818.P2521604998156477708

`∑{d}[n+1, ((n+1)²%A122080(#)²)²²]`
-/

namespace A321818.P2521604998156477708
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (Int.tmod ((n + 1) ^ 2 : ℤ) (A122080 d ^ 2) ^ 2) ^ 2

end

end A321818.P2521604998156477708

namespace A321818

/-- `∑{d}[n+1, ((n+1)²%A122080(#)²)²²]` -/
def P2521604998156477708.Spec : Prop :=
  ∀ n, P2521604998156477708.a n = A321818 (n + 1)

end A321818

/-!
# A321819: a(n) = Sum_{d|n, n/d odd} d^10 for n > 0.

The programs for A321819, the canonical program `A321819.P9564001513595774620` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A321819 has offset 1).

The definition of A321819 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A321819.P9564001513595774620

`∑{d}[2*(n+1), ((n+1)%#)^10]`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A321819

/-- `∑{d}[2*(n+1), ((n+1)%#)^10]` -/
def P9564001513595774620.Spec : Prop :=
  ∀ n, (P9564001513595774620.a n : ℤ) = A321819 (n + 1)

theorem P9564001513595774620.correct : P9564001513595774620.Spec := by
  intro n
  simp only [A321819, Nat.add_sub_cancel]

end A321819

/-! ## A321819.P1026726723655206049

`∑{d}[A000265(n+1), ((n+1)/#)^10]`
-/

namespace A321819.P1026726723655206049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, ((n + 1 : ℚ) / (d : ℚ)) ^ 10

end

end A321819.P1026726723655206049

namespace A321819

/-- `∑{d}[A000265(n+1), ((n+1)/#)^10]` -/
def P1026726723655206049.Spec : Prop :=
  ∀ n, P1026726723655206049.a n = (A321819 (n + 1) : ℚ)

end A321819

/-! ## A321819.P10913071886189854453

`A352056(n+1)+A059841(n)`
-/

namespace A321819.P10913071886189854453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352056 (n + 1) + A059841 n

end

end A321819.P10913071886189854453

namespace A321819

/-- `A352056(n+1)+A059841(n)` -/
def P10913071886189854453.Spec : Prop :=
  ∀ n, P10913071886189854453.a n = A321819 (n + 1)

end A321819

/-! ## A321819.P4789442527354084047

`(A321555(n+1)+A013958(n+1))/2`
-/

namespace A321819.P4789442527354084047
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A321555 (n + 1) + A013958 (n + 1) : ℚ) / 2

end

end A321819.P4789442527354084047

namespace A321819

/-- `(A321555(n+1)+A013958(n+1))/2` -/
def P4789442527354084047.Spec : Prop :=
  ∀ n, P4789442527354084047.a n = (A321819 (n + 1) : ℚ)

end A321819

/-! ## A321819.P8108659489994483416

`A321814(n+1)*A006519(n+1)^10`
-/

namespace A321819.P8108659489994483416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321814 (n + 1) * A006519 (n + 1) ^ 10

end

end A321819.P8108659489994483416

namespace A321819

/-- `A321814(n+1)*A006519(n+1)^10` -/
def P8108659489994483416.Spec : Prop :=
  ∀ n, P8108659489994483416.a n = A321819 (n + 1)

end A321819

/-! ## A321819.P12673224372306897759

`∑{d}[n+1, A001227(#)*A069095((n+1)/#)]`
-/

namespace A321819.P12673224372306897759
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001227 d * A069095 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A321819.P12673224372306897759

namespace A321819

/-- `∑{d}[n+1, A001227(#)*A069095((n+1)/#)]` -/
def P12673224372306897759.Spec : Prop :=
  ∀ n, P12673224372306897759.a n = A321819 (n + 1)

end A321819

/-! ## A321819.P3962189606626189534

`∑{d}[n+1, A013958(#)*A154955((n+1)/#)]`
-/

namespace A321819.P3962189606626189534
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A013958 d * A154955 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A321819.P3962189606626189534

namespace A321819

/-- `∑{d}[n+1, A013958(#)*A154955((n+1)/#)]` -/
def P3962189606626189534.Spec : Prop :=
  ∀ n, P3962189606626189534.a n = A321819 (n + 1)

end A321819

/-! ## A321819.P11353580262823773667

`∑{d}[n+1, A143259(#)*A351305((n+1)/#)]`
-/

namespace A321819.P11353580262823773667
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A143259 d * A351305 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A321819.P11353580262823773667

namespace A321819

/-- `∑{d}[n+1, A143259(#)*A351305((n+1)/#)]` -/
def P11353580262823773667.Spec : Prop :=
  ∀ n, P11353580262823773667.a n = A321819 (n + 1)

end A321819

/-! ## A321819.P4996739435917679638

`A008454(A006519(n+1))*A321814(n+1)`
-/

namespace A321819.P4996739435917679638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008454 (A006519 (n + 1)).toNat * A321814 (n + 1)

end

end A321819.P4996739435917679638

namespace A321819

/-- `A008454(A006519(n+1))*A321814(n+1)` -/
def P4996739435917679638.Spec : Prop :=
  ∀ n, P4996739435917679638.a n = A321819 (n + 1)

end A321819

/-! ## A321819.P3367539916006610651

`A002131(n+1)+A352056(n+1)-A352047(n+1)`
-/

namespace A321819.P3367539916006610651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002131 (n + 1) + (A352056 (n + 1) - A352047 (n + 1))

end

end A321819.P3367539916006610651

namespace A321819

/-- `A002131(n+1)+A352056(n+1)-A352047(n+1)` -/
def P3367539916006610651.Spec : Prop :=
  ∀ n, P3367539916006610651.a n = A321819 (n + 1)

end A321819

/-! ## A321819.P5395617144430857607

`A352056(n+1)+A000035(n+1)`
-/

namespace A321819.P5395617144430857607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352056 (n + 1) + A000035 (n + 1)

end

end A321819.P5395617144430857607

namespace A321819

/-- `A352056(n+1)+A000035(n+1)` -/
def P5395617144430857607.Spec : Prop :=
  ∀ n, P5395617144430857607.a n = A321819 (n + 1)

end A321819

/-!
# A321820: a(n) = Sum_{d|n, n/d odd} d^12 for n > 0.

The programs for A321820, the canonical program `A321820.P17771679812244269438` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A321820 has offset 1).

The definition of A321820 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A321820.P17771679812244269438

`∑{d}[2*(n+1), ((n+1)%#)^12]`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A321820

/-- `∑{d}[2*(n+1), ((n+1)%#)^12]` -/
def P17771679812244269438.Spec : Prop :=
  ∀ n, (P17771679812244269438.a n : ℤ) = A321820 (n + 1)

theorem P17771679812244269438.correct : P17771679812244269438.Spec := by
  intro n
  simp only [A321820, Nat.add_sub_cancel]

end A321820

/-! ## A321820.P9593150618877649133

`(A321557(n+1)+A013960(n+1))/2`
-/

namespace A321820.P9593150618877649133
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A321557 (n + 1) + A013960 (n + 1) : ℚ) / 2

end

end A321820.P9593150618877649133

namespace A321820

/-- `(A321557(n+1)+A013960(n+1))/2` -/
def P9593150618877649133.Spec : Prop :=
  ∀ n, P9593150618877649133.a n = (A321820 (n + 1) : ℚ)

end A321820

/-! ## A321820.P8195572184443521699

`∑{d}[n+1, A013960(#)*A154955((n+1)/#)]`
-/

namespace A321820.P8195572184443521699
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A013960 d * A154955 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A321820.P8195572184443521699

namespace A321820

/-- `∑{d}[n+1, A013960(#)*A154955((n+1)/#)]` -/
def P8195572184443521699.Spec : Prop :=
  ∀ n, P8195572184443521699.a n = A321820 (n + 1)

end A321820

/-! ## A321820.P12048832812828794695

`A321816(n+1)*A321836(A006519(n+1))`
-/

namespace A321820.P12048832812828794695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321816 (n + 1) * A321836 (A006519 (n + 1)).toNat

end

end A321820.P12048832812828794695

namespace A321820

/-- `A321816(n+1)*A321836(A006519(n+1))` -/
def P12048832812828794695.Spec : Prop :=
  ∀ n, P12048832812828794695.a n = A321820 (n + 1)

end A321820

/-! ## A321820.P15344196050865972968

`A321836(A006519(n+1))*A351311(A328407(n+1))`
-/

namespace A321820.P15344196050865972968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321836 (A006519 (n + 1)).toNat * A351311 (A328407 (n + 1)).toNat

end

end A321820.P15344196050865972968

namespace A321820

/-- `A321836(A006519(n+1))*A351311(A328407(n+1))` -/
def P15344196050865972968.Spec : Prop :=
  ∀ n, P15344196050865972968.a n = A321820 (n + 1)

end A321820

/-!
# A321821: a(n) = Sum_{d|n, d==1 mod 4} d^5 - Sum_{d|n, d==3 mod 4} d^5.

The programs for A321821, the canonical program `A321821.P17126405008062713316` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A321821 has offset 1).

The definition of A321821 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A321821.P12450413099194093814

`Δ[xor(n, 2*n)]%2*A321829((n+1)/2^val(n+1, 2))`
-/

namespace A321821.P12450413099194093814
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) 2 * A321829 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat

end

end A321821.P12450413099194093814

namespace A321821

/-- `Δ[xor(n, 2*n)]%2*A321829((n+1)/2^val(n+1, 2))` -/
def P12450413099194093814.Spec : Prop :=
  ∀ n, P12450413099194093814.a n = A321821 (n + 1)

end A321821

/-! ## A321821.P4845637544581880301

`A034947(n+1)*A321829((n+1)/2^val(n+1, 2))`
-/

namespace A321821.P4845637544581880301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034947 (n + 1) * A321829 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat

end

end A321821.P4845637544581880301

namespace A321821

/-- `A034947(n+1)*A321829((n+1)/2^val(n+1, 2))` -/
def P4845637544581880301.Spec : Prop :=
  ∀ n, P4845637544581880301.a n = A321821 (n + 1)

end A321821

/-! ## A321821.P17126405008062713316

`A034947(n+1)*A321829((n+1)/(or(n, n+1)-n))`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A321821

/-- `A034947(n+1)*A321829((n+1)/(or(n, n+1)-n))` -/
def P17126405008062713316.Spec : Prop :=
  ∀ n, P17126405008062713316.a n = A321821 (n + 1)

theorem P17126405008062713316.correct : P17126405008062713316.Spec := by
  intro n
  simp only [A321821, Nat.add_sub_cancel]

end A321821

/-! ## A321821.P17545100160854195311

`A034947(n+1)*A321829((n+1)/xor(n, or(n, n+1)))`
-/

namespace A321821.P17545100160854195311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034947 (n + 1) * A321829 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (Nat.xor n (Nat.lor n (n + 1)) : ℚ))).toNat

end

end A321821.P17545100160854195311

namespace A321821

/-- `A034947(n+1)*A321829((n+1)/xor(n, or(n, n+1)))` -/
def P17545100160854195311.Spec : Prop :=
  ∀ n, P17545100160854195311.a n = A321821 (n + 1)

end A321821

/-! ## A321821.P11266663727743421168

`A034947(n+1)*A321829((n+1)*2^-val(n+1, 2))`
-/

namespace A321821.P11266663727743421168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034947 (n + 1) * A321829 (SequenceMachineLib.roundAway ((n + 1 : ℚ) * (2 : ℚ) ^ (-(SequenceMachineLib.valuation (n + 1) 2 : ℤ) : ℤ))).toNat

end

end A321821.P11266663727743421168

namespace A321821

/-- `A034947(n+1)*A321829((n+1)*2^-val(n+1, 2))` -/
def P11266663727743421168.Spec : Prop :=
  ∀ n, P11266663727743421168.a n = A321821 (n + 1)

end A321821

/-! ## A321821.P2347266275249460094

`A034947(n+1)*A321829((n+1)/round(xor(n, n+1)/2))`
-/

namespace A321821.P2347266275249460094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034947 (n + 1) * A321829 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (SequenceMachineLib.roundAway ((Nat.xor n (n + 1) : ℚ) / 2) : ℚ))).toNat

end

end A321821.P2347266275249460094

namespace A321821

/-- `A034947(n+1)*A321829((n+1)/round(xor(n, n+1)/2))` -/
def P2347266275249460094.Spec : Prop :=
  ∀ n, P2347266275249460094.a n = A321821 (n + 1)

end A321821

/-! ## A321821.P16218480889679056109

`A034947(n+1)*A321829(abs((n+1)/or(n+1, -(n+1))))`
-/

namespace A321821.P16218480889679056109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034947 (n + 1) * A321829 (SequenceMachineLib.roundAway |(n + 1 : ℚ) / (Int.lor (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ)|).toNat

end

end A321821.P16218480889679056109

namespace A321821

/-- `A034947(n+1)*A321829(abs((n+1)/or(n+1, -(n+1))))` -/
def P16218480889679056109.Spec : Prop :=
  ∀ n, P16218480889679056109.a n = A321821 (n + 1)

end A321821

/-! ## A321821.P4460113428035528674

`A321829(-floor((2*n+1)/xor(n, -(n+2))))/A034947(n+1)`
-/

namespace A321821.P4460113428035528674
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A321829 (-⌊(2 * n + 1 : ℚ) / (Int.xor (n : ℤ) (-(n + 2 : ℤ)) : ℚ)⌋).toNat : ℚ) / (A034947 (n + 1) : ℚ)

end

end A321821.P4460113428035528674

namespace A321821

/-- `A321829(-floor((2*n+1)/xor(n, -(n+2))))/A034947(n+1)` -/
def P4460113428035528674.Spec : Prop :=
  ∀ n, P4460113428035528674.a n = (A321821 (n + 1) : ℚ)

end A321821

/-! ## A321821.P16605088246129680860

`A034947(n+1)*A321829(A000265(n+1))`
-/

namespace A321821.P16605088246129680860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034947 (n + 1) * A321829 (A000265 (n + 1)).toNat

end

end A321821.P16605088246129680860

namespace A321821

/-- `A034947(n+1)*A321829(A000265(n+1))` -/
def P16605088246129680860.Spec : Prop :=
  ∀ n, P16605088246129680860.a n = A321821 (n + 1)

end A321821

/-! ## A321821.P18256273793457230260

`A034947(n+1)*A321829(A171435(2*(n+1)))`
-/

namespace A321821.P18256273793457230260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034947 (n + 1) * A321829 (A171435 (2 * (n + 1))).toNat

end

end A321821.P18256273793457230260

namespace A321821

/-- `A034947(n+1)*A321829(A171435(2*(n+1)))` -/
def P18256273793457230260.Spec : Prop :=
  ∀ n, P18256273793457230260.a n = A321821 (n + 1)

end A321821

/-!
# A321822: a(n) = Sum_{d|n, d==1 mod 4} d^6 - Sum_{d|n, d==3 mod 4} d^6.

The programs for A321822, the canonical program `A321822.P16781590860431614431` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A321822 has offset 1).

The definition of A321822 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A321822.P8527829617636879958

`Δ[xor(n, 2*n)]%2*A321830((n+1)/2^val(n+1, 2))`
-/

namespace A321822.P8527829617636879958
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) 2 * A321830 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat

end

end A321822.P8527829617636879958

namespace A321822

/-- `Δ[xor(n, 2*n)]%2*A321830((n+1)/2^val(n+1, 2))` -/
def P8527829617636879958.Spec : Prop :=
  ∀ n, P8527829617636879958.a n = A321822 (n + 1)

end A321822

/-! ## A321822.P16781590860431614431

`Δ[A005811(n)]*A321830(A000265(n+1))`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A321822

/-- `Δ[A005811(n)]*A321830(A000265(n+1))` -/
def P16781590860431614431.Spec : Prop :=
  ∀ n, P16781590860431614431.a n = A321822 (n + 1)

theorem P16781590860431614431.correct : P16781590860431614431.Spec := by
  intro n
  simp only [A321822, Nat.add_sub_cancel]

end A321822

/-! ## A321822.P15114996955263265975

`Δ[A088748(n)]*A321830(A000265(n+1))`
-/

namespace A321822.P15114996955263265975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088748 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A321830 (A000265 (n + 1)).toNat

end

end A321822.P15114996955263265975

namespace A321822

/-- `Δ[A088748(n)]*A321830(A000265(n+1))` -/
def P15114996955263265975.Spec : Prop :=
  ∀ n, P15114996955263265975.a n = A321822 (n + 1)

end A321822

/-! ## A321822.P10588937804941678342

`A034947(n+1)*A321830(A000265(n+1))`
-/

namespace A321822.P10588937804941678342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034947 (n + 1) * A321830 (A000265 (n + 1)).toNat

end

end A321822.P10588937804941678342

namespace A321822

/-- `A034947(n+1)*A321830(A000265(n+1))` -/
def P10588937804941678342.Spec : Prop :=
  ∀ n, P10588937804941678342.a n = A321822 (n + 1)

end A321822

/-! ## A321822.P1556880654596815697

`A033999(A025480(n))*A321830(A000265(n+1))`
-/

namespace A321822.P1556880654596815697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A025480 n).toNat * A321830 (A000265 (n + 1)).toNat

end

end A321822.P1556880654596815697

namespace A321822

/-- `A033999(A025480(n))*A321830(A000265(n+1))` -/
def P1556880654596815697.Spec : Prop :=
  ∀ n, P1556880654596815697.a n = A321822 (n + 1)

end A321822

/-!
# A321823: a(n) = Sum_{d|n, d==1 mod 4} d^7 - Sum_{d|n, d==3 mod 4} d^7.

The programs for A321823, the canonical program `A321823.P6269813539326752658` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A321823 has offset 1).

The definition of A321823 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A321823.P5024345969730046472

`Δ[xor(n, 2*n)]%2*A321831((n+1)/2^val(n+1, 2))`
-/

namespace A321823.P5024345969730046472
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) 2 * A321831 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat

end

end A321823.P5024345969730046472

namespace A321823

/-- `Δ[xor(n, 2*n)]%2*A321831((n+1)/2^val(n+1, 2))` -/
def P5024345969730046472.Spec : Prop :=
  ∀ n, P5024345969730046472.a n = A321823 (n + 1)

end A321823

/-! ## A321823.P6269813539326752658

`A034947(n+1)*A321831(A000265(n+1))`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A321823

/-- `A034947(n+1)*A321831(A000265(n+1))` -/
def P6269813539326752658.Spec : Prop :=
  ∀ n, P6269813539326752658.a n = A321823 (n + 1)

theorem P6269813539326752658.correct : P6269813539326752658.Spec := by
  intro n
  simp only [A321823, Nat.add_sub_cancel]

end A321823

/-! ## A321823.P15838346660878395155

`A322143(eq[5, A219347(n)])`
-/

namespace A321823.P15838346660878395155
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322143 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A321823.P15838346660878395155

namespace A321823

/-- `A322143(eq[5, A219347(n)])` -/
def P15838346660878395155.Spec : Prop :=
  ∀ n, P15838346660878395155.a n = A321823 (n + 1)

end A321823

/-!
# A321824: a(n) = Sum_{d|n, d==1 mod 4} d^8 - Sum_{d|n, d==3 mod 4} d^8.

The programs for A321824, the canonical program `A321824.P5077356996736192432` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A321824 has offset 1).

The definition of A321824 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A321824.P2712191172304299278

`Δ[xor(n, 2*n)]%2*A321832((n+1)/2^val(n+1, 2))`
-/

namespace A321824.P2712191172304299278
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) 2 * A321832 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat

end

end A321824.P2712191172304299278

namespace A321824

/-- `Δ[xor(n, 2*n)]%2*A321832((n+1)/2^val(n+1, 2))` -/
def P2712191172304299278.Spec : Prop :=
  ∀ n, P2712191172304299278.a n = A321824 (n + 1)

end A321824

/-! ## A321824.P6728604276521520925

`A034947(n+1)*A321832((n+1)/2^val(n+1, 2))`
-/

namespace A321824.P6728604276521520925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034947 (n + 1) * A321832 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat

end

end A321824.P6728604276521520925

namespace A321824

/-- `A034947(n+1)*A321832((n+1)/2^val(n+1, 2))` -/
def P6728604276521520925.Spec : Prop :=
  ∀ n, P6728604276521520925.a n = A321824 (n + 1)

end A321824

/-! ## A321824.P12377475247304850593

`A034947(n+1)*A321832((n+1)/(or(n, n+1)-n))`
-/

namespace A321824.P12377475247304850593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034947 (n + 1) * A321832 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((Nat.lor n (n + 1) : ℤ) - (n : ℤ) : ℚ))).toNat

end

end A321824.P12377475247304850593

namespace A321824

/-- `A034947(n+1)*A321832((n+1)/(or(n, n+1)-n))` -/
def P12377475247304850593.Spec : Prop :=
  ∀ n, P12377475247304850593.a n = A321824 (n + 1)

end A321824

/-! ## A321824.P9642481674007861506

`A034947(n+1)*A321832(A000265(n+1))`
-/

namespace A321824.P9642481674007861506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034947 (n + 1) * A321832 (A000265 (n + 1)).toNat

end

end A321824.P9642481674007861506

namespace A321824

/-- `A034947(n+1)*A321832(A000265(n+1))` -/
def P9642481674007861506.Spec : Prop :=
  ∀ n, P9642481674007861506.a n = A321824 (n + 1)

end A321824

/-! ## A321824.P5077356996736192432

`A112347(n+1)*A321832(A000265(n+1))`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A321824

/-- `A112347(n+1)*A321832(A000265(n+1))` -/
def P5077356996736192432.Spec : Prop :=
  ∀ n, P5077356996736192432.a n = A321824 (n + 1)

theorem P5077356996736192432.correct : P5077356996736192432.Spec := by
  intro n
  simp only [A321824, Nat.add_sub_cancel]

end A321824

/-! ## A321824.P2587328221471205139

`A062157(A003602(n+1))*A321832(A000265(n+1))`
-/

namespace A321824.P2587328221471205139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 (A003602 (n + 1)).toNat * A321832 (A000265 (n + 1)).toNat

end

end A321824.P2587328221471205139

namespace A321824

/-- `A062157(A003602(n+1))*A321832(A000265(n+1))` -/
def P2587328221471205139.Spec : Prop :=
  ∀ n, P2587328221471205139.a n = A321824 (n + 1)

end A321824

/-!
# A321825: a(n) = Sum_{d|n, d==1 (mod 4)} d^9 - Sum_{d|n, d==3 (mod 4)} d^9.

The programs for A321825, the canonical program `A321825.P11819625589540989309` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A321825 has offset 1).

The definition of A321825 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A321825.P11819625589540989309

`Δ[A005811(n)]*A321833(A000265(n+1))`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A321825

/-- `Δ[A005811(n)]*A321833(A000265(n+1))` -/
def P11819625589540989309.Spec : Prop :=
  ∀ n, P11819625589540989309.a n = A321825 (n + 1)

theorem P11819625589540989309.correct : P11819625589540989309.Spec := by
  intro n
  simp only [A321825, Nat.add_sub_cancel]

end A321825

/-! ## A321825.P1045420364031742776

`A034947(n+1)*A321833(A000265(n+1))`
-/

namespace A321825.P1045420364031742776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034947 (n + 1) * A321833 (A000265 (n + 1)).toNat

end

end A321825.P1045420364031742776

namespace A321825

/-- `A034947(n+1)*A321833(A000265(n+1))` -/
def P1045420364031742776.Spec : Prop :=
  ∀ n, P1045420364031742776.a n = A321825 (n + 1)

end A321825

/-! ## A321825.P2146427230581755514

`A033999(A025480(n))*A321833(A000265(n+1))`
-/

namespace A321825.P2146427230581755514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A025480 n).toNat * A321833 (A000265 (n + 1)).toNat

end

end A321825.P2146427230581755514

namespace A321825

/-- `A033999(A025480(n))*A321833(A000265(n+1))` -/
def P2146427230581755514.Spec : Prop :=
  ∀ n, P2146427230581755514.a n = A321825 (n + 1)

end A321825

/-! ## A321825.P4581131473395573710

`A321833(A000265(n+1))/A034947(A259445(n+1))`
-/

namespace A321825.P4581131473395573710
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A321833 (A000265 (n + 1)).toNat : ℚ) / (A034947 (A259445 (n + 1)).toNat : ℚ)

end

end A321825.P4581131473395573710

namespace A321825

/-- `A321833(A000265(n+1))/A034947(A259445(n+1))` -/
def P4581131473395573710.Spec : Prop :=
  ∀ n, P4581131473395573710.a n = (A321825 (n + 1) : ℚ)

end A321825

/-!
# A321826: a(n) = Sum_{d|n, d==1 mod 4} d^10 - Sum_{d|n, d==3 mod 4} d^10.

The programs for A321826, the canonical program `A321826.P12390080085549705837` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A321826 has offset 1).

The definition of A321826 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A321826.P12390080085549705837

`Δ[xor(n, 2*n)]%2*A321834((n+1)/2^val(n+1, 2))`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A321826

/-- `Δ[xor(n, 2*n)]%2*A321834((n+1)/2^val(n+1, 2))` -/
def P12390080085549705837.Spec : Prop :=
  ∀ n, P12390080085549705837.a n = A321826 (n + 1)

theorem P12390080085549705837.correct : P12390080085549705837.Spec := by
  intro n
  simp only [A321826, Nat.add_sub_cancel]

end A321826

/-! ## A321826.P18059282086001475534

`A321834((n+1)/2^val(n+1, 2))/A034947(n+1)`
-/

namespace A321826.P18059282086001475534
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A321834 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat : ℚ) / (A034947 (n + 1) : ℚ)

end

end A321826.P18059282086001475534

namespace A321826

/-- `A321834((n+1)/2^val(n+1, 2))/A034947(n+1)` -/
def P18059282086001475534.Spec : Prop :=
  ∀ n, P18059282086001475534.a n = (A321826 (n + 1) : ℚ)

end A321826

/-! ## A321826.P7312359732486774185

`A321834((n+1)/(or(n, n+1)-n))/A034947(n+1)`
-/

namespace A321826.P7312359732486774185
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A321834 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((Nat.lor n (n + 1) : ℤ) - (n : ℤ) : ℚ))).toNat : ℚ) / (A034947 (n + 1) : ℚ)

end

end A321826.P7312359732486774185

namespace A321826

/-- `A321834((n+1)/(or(n, n+1)-n))/A034947(n+1)` -/
def P7312359732486774185.Spec : Prop :=
  ∀ n, P7312359732486774185.a n = (A321826 (n + 1) : ℚ)

end A321826

/-! ## A321826.P12238778955388058967

`A321834((n+1)/xor(n, or(n, n+1)))/A034947(n+1)`
-/

namespace A321826.P12238778955388058967
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A321834 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (Nat.xor n (Nat.lor n (n + 1)) : ℚ))).toNat : ℚ) / (A034947 (n + 1) : ℚ)

end

end A321826.P12238778955388058967

namespace A321826

/-- `A321834((n+1)/xor(n, or(n, n+1)))/A034947(n+1)` -/
def P12238778955388058967.Spec : Prop :=
  ∀ n, P12238778955388058967.a n = (A321826 (n + 1) : ℚ)

end A321826

/-! ## A321826.P2206598488798102672

`A321834((n+1)/and(n+1, -(n+1)))/A034947(n+1)`
-/

namespace A321826.P2206598488798102672
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A321834 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ))).toNat : ℚ) / (A034947 (n + 1) : ℚ)

end

end A321826.P2206598488798102672

namespace A321826

/-- `A321834((n+1)/and(n+1, -(n+1)))/A034947(n+1)` -/
def P2206598488798102672.Spec : Prop :=
  ∀ n, P2206598488798102672.a n = (A321826 (n + 1) : ℚ)

end A321826

/-! ## A321826.P10466716334210846951

`A321834((n+1)/ceil(xor(n, n+1)/2))/A034947(n+1)`
-/

namespace A321826.P10466716334210846951
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A321834 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (⌈(Nat.xor n (n + 1) : ℚ) / 2⌉ : ℚ))).toNat : ℚ) / (A034947 (n + 1) : ℚ)

end

end A321826.P10466716334210846951

namespace A321826

/-- `A321834((n+1)/ceil(xor(n, n+1)/2))/A034947(n+1)` -/
def P10466716334210846951.Spec : Prop :=
  ∀ n, P10466716334210846951.a n = (A321826 (n + 1) : ℚ)

end A321826

/-! ## A321826.P15896897086687029847

`A321834((n+1)/round(xor(n, n+1)/2))/A034947(n+1)`
-/

namespace A321826.P15896897086687029847
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A321834 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (SequenceMachineLib.roundAway ((Nat.xor n (n + 1) : ℚ) / 2) : ℚ))).toNat : ℚ) / (A034947 (n + 1) : ℚ)

end

end A321826.P15896897086687029847

namespace A321826

/-- `A321834((n+1)/round(xor(n, n+1)/2))/A034947(n+1)` -/
def P15896897086687029847.Spec : Prop :=
  ∀ n, P15896897086687029847.a n = (A321826 (n + 1) : ℚ)

end A321826

/-! ## A321826.P9339864573112259258

`A321834(2*(n+1)/(xor(n, n+1)+1))/A034947(n+1)`
-/

namespace A321826.P9339864573112259258
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A321834 (SequenceMachineLib.roundAway ((2 * (n + 1) : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ))).toNat : ℚ) / (A034947 (n + 1) : ℚ)

end

end A321826.P9339864573112259258

namespace A321826

/-- `A321834(2*(n+1)/(xor(n, n+1)+1))/A034947(n+1)` -/
def P9339864573112259258.Spec : Prop :=
  ∀ n, P9339864573112259258.a n = (A321826 (n + 1) : ℚ)

end A321826

/-! ## A321826.P9447971467565162762

`A321834((n+1)/A000010(xor(n, n+1)+1))/A034947(n+1)`
-/

namespace A321826.P9447971467565162762
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A321834 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A000010 (Nat.xor n (n + 1) + 1) : ℚ))).toNat : ℚ) / (A034947 (n + 1) : ℚ)

end

end A321826.P9447971467565162762

namespace A321826

/-- `A321834((n+1)/A000010(xor(n, n+1)+1))/A034947(n+1)` -/
def P9447971467565162762.Spec : Prop :=
  ∀ n, P9447971467565162762.a n = (A321826 (n + 1) : ℚ)

end A321826

/-!
# A321827: a(n) = Sum_{d|n, d==1 (mod 4)} d^11 - Sum_{d|n, d==3 (mod 4)} d^11.

The programs for A321827, the canonical program `A321827.P8848987711594622306` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A321827 has offset 1).

The definition of A321827 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A321827.P16589214618151608021

`Δ[xor(n, 2*n)]%2*A321835((n+1)/2^val(n+1, 2))`
-/

namespace A321827.P16589214618151608021
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) 2 * A321835 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat

end

end A321827.P16589214618151608021

namespace A321827

/-- `Δ[xor(n, 2*n)]%2*A321835((n+1)/2^val(n+1, 2))` -/
def P16589214618151608021.Spec : Prop :=
  ∀ n, P16589214618151608021.a n = A321827 (n + 1)

end A321827

/-! ## A321827.P13556219439744515132

`A034947(n+1)*A321835((n+1)/2^val(n+1, 2))`
-/

namespace A321827.P13556219439744515132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034947 (n + 1) * A321835 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat

end

end A321827.P13556219439744515132

namespace A321827

/-- `A034947(n+1)*A321835((n+1)/2^val(n+1, 2))` -/
def P13556219439744515132.Spec : Prop :=
  ∀ n, P13556219439744515132.a n = A321827 (n + 1)

end A321827

/-! ## A321827.P8848987711594622306

`A034947(n+1)*A321835((n+1)/(or(n, n+1)-n))`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A321827

/-- `A034947(n+1)*A321835((n+1)/(or(n, n+1)-n))` -/
def P8848987711594622306.Spec : Prop :=
  ∀ n, P8848987711594622306.a n = A321827 (n + 1)

theorem P8848987711594622306.correct : P8848987711594622306.Spec := by
  intro n
  simp only [A321827, Nat.add_sub_cancel]

end A321827

/-! ## A321827.P4440562614607813685

`A034947(n+1)*A321835((n+1)/xor(n, or(n, n+1)))`
-/

namespace A321827.P4440562614607813685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034947 (n + 1) * A321835 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (Nat.xor n (Nat.lor n (n + 1)) : ℚ))).toNat

end

end A321827.P4440562614607813685

namespace A321827

/-- `A034947(n+1)*A321835((n+1)/xor(n, or(n, n+1)))` -/
def P4440562614607813685.Spec : Prop :=
  ∀ n, P4440562614607813685.a n = A321827 (n + 1)

end A321827

/-! ## A321827.P2848447479256079014

`A034947(n+1)*A321835((n+1)*2^-val(n+1, 2))`
-/

namespace A321827.P2848447479256079014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034947 (n + 1) * A321835 (SequenceMachineLib.roundAway ((n + 1 : ℚ) * (2 : ℚ) ^ (-(SequenceMachineLib.valuation (n + 1) 2 : ℤ) : ℤ))).toNat

end

end A321827.P2848447479256079014

namespace A321827

/-- `A034947(n+1)*A321835((n+1)*2^-val(n+1, 2))` -/
def P2848447479256079014.Spec : Prop :=
  ∀ n, P2848447479256079014.a n = A321827 (n + 1)

end A321827

/-! ## A321827.P4661874664495687354

`A034947(n+1)*A321835(2^(log2(n+1)-val(n+1, 2)))`
-/

namespace A321827.P4661874664495687354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034947 (n + 1) * A321835 (SequenceMachineLib.roundAway ((2 : ℝ) ^ (Real.logb 2 (n + 1 : ℝ) - (SequenceMachineLib.valuation (n + 1) 2 : ℝ)))).toNat

end

end A321827.P4661874664495687354

namespace A321827

/-- `A034947(n+1)*A321835(2^(log2(n+1)-val(n+1, 2)))` -/
def P4661874664495687354.Spec : Prop :=
  ∀ n, P4661874664495687354.a n = A321827 (n + 1)

end A321827

/-! ## A321827.P13410362035074699353

`A034947(n+1)*A321835((n+1)/and(n+1, -(n+1)))`
-/

namespace A321827.P13410362035074699353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034947 (n + 1) * A321835 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ))).toNat

end

end A321827.P13410362035074699353

namespace A321827

/-- `A034947(n+1)*A321835((n+1)/and(n+1, -(n+1)))` -/
def P13410362035074699353.Spec : Prop :=
  ∀ n, P13410362035074699353.a n = A321827 (n + 1)

end A321827

/-! ## A321827.P16954728037003454017

`A034947(n+1)*A321835((n+1)/ceil(xor(n, n+1)/2))`
-/

namespace A321827.P16954728037003454017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034947 (n + 1) * A321835 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (⌈(Nat.xor n (n + 1) : ℚ) / 2⌉ : ℚ))).toNat

end

end A321827.P16954728037003454017

namespace A321827

/-- `A034947(n+1)*A321835((n+1)/ceil(xor(n, n+1)/2))` -/
def P16954728037003454017.Spec : Prop :=
  ∀ n, P16954728037003454017.a n = A321827 (n + 1)

end A321827

/-! ## A321827.P16261728998811138255

`A034947(n+1)*A321835(2*(n+1)/(xor(n, n+1)+1))`
-/

namespace A321827.P16261728998811138255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034947 (n + 1) * A321835 (SequenceMachineLib.roundAway ((2 * (n + 1) : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ))).toNat

end

end A321827.P16261728998811138255

namespace A321827

/-- `A034947(n+1)*A321835(2*(n+1)/(xor(n, n+1)+1))` -/
def P16261728998811138255.Spec : Prop :=
  ∀ n, P16261728998811138255.a n = A321827 (n + 1)

end A321827

/-! ## A321827.P14588902640688381787

`A034947(n+1)*A321835(-((n+1)/or(n+1, -(n+1))))`
-/

namespace A321827.P14588902640688381787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034947 (n + 1) * A321835 (SequenceMachineLib.roundAway (-((n + 1 : ℚ) / (Int.lor (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ)))).toNat

end

end A321827.P14588902640688381787

namespace A321827

/-- `A034947(n+1)*A321835(-((n+1)/or(n+1, -(n+1))))` -/
def P14588902640688381787.Spec : Prop :=
  ∀ n, P14588902640688381787.a n = A321827 (n + 1)

end A321827

/-! ## A321827.P3662776219542782363

`A034947(n+1)*A321835(A000265(n+1))`
-/

namespace A321827.P3662776219542782363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034947 (n + 1) * A321835 (A000265 (n + 1)).toNat

end

end A321827.P3662776219542782363

namespace A321827

/-- `A034947(n+1)*A321835(A000265(n+1))` -/
def P3662776219542782363.Spec : Prop :=
  ∀ n, P3662776219542782363.a n = A321827 (n + 1)

end A321827

/-! ## A321827.P9680127866868636230

`A034947(n+1)*A321835(A153733(n)+1)`
-/

namespace A321827.P9680127866868636230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034947 (n + 1) * A321835 (A153733 n + 1).toNat

end

end A321827.P9680127866868636230

namespace A321827

/-- `A034947(n+1)*A321835(A153733(n)+1)` -/
def P9680127866868636230.Spec : Prop :=
  ∀ n, P9680127866868636230.a n = A321827 (n + 1)

end A321827

/-! ## A321827.P17720897910051509159

`A034947(n+1)*A321835(2*A025480(n)+1)`
-/

namespace A321827.P17720897910051509159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034947 (n + 1) * A321835 (2 * A025480 n + 1).toNat

end

end A321827.P17720897910051509159

namespace A321827

/-- `A034947(n+1)*A321835(2*A025480(n)+1)` -/
def P17720897910051509159.Spec : Prop :=
  ∀ n, P17720897910051509159.a n = A321827 (n + 1)

end A321827

/-!
# A321828: a(n) = Sum_{d|n, d==1 mod 4} d^12 - Sum_{d|n, d==3 mod 4} d^12.

The programs for A321828, the canonical program `A321828.P17421371183857854868` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A321828 has offset 1).

The definition of A321828 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A321828.P17346773611255096376

`A321836((n+1)/2^val(n+1, 2))/Δ[xor(n, 2*n)]%2`
-/

namespace A321828.P17346773611255096376
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A321836 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat : ℚ) / (Int.tmod ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) 2 : ℚ)

end

end A321828.P17346773611255096376

namespace A321828

/-- `A321836((n+1)/2^val(n+1, 2))/Δ[xor(n, 2*n)]%2` -/
def P17346773611255096376.Spec : Prop :=
  ∀ n, P17346773611255096376.a n = (A321828 (n + 1) : ℚ)

end A321828

/-! ## A321828.P16770824943734968097

`A034947(n+1)*A321836(A000265(n+1))`
-/

namespace A321828.P16770824943734968097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034947 (n + 1) * A321836 (A000265 (n + 1)).toNat

end

end A321828.P16770824943734968097

namespace A321828

/-- `A034947(n+1)*A321836(A000265(n+1))` -/
def P16770824943734968097.Spec : Prop :=
  ∀ n, P16770824943734968097.a n = A321828 (n + 1)

end A321828

/-! ## A321828.P17421371183857854868

`A033999(A025480(n))*A321836(A000265(n+1))`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A321828

/-- `A033999(A025480(n))*A321836(A000265(n+1))` -/
def P17421371183857854868.Spec : Prop :=
  ∀ n, P17421371183857854868.a n = A321828 (n + 1)

theorem P17421371183857854868.correct : P17421371183857854868.Spec := by
  intro n
  simp only [A321828, Nat.add_sub_cancel]

end A321828

/-! ## A321828.P17411603305871436184

`A321836(A000265(n+1))/A034947(A000027(n+1))`
-/

namespace A321828.P17411603305871436184
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A321836 (A000265 (n + 1)).toNat : ℚ) / (A034947 (A000027 (n + 1)).toNat : ℚ)

end

end A321828.P17411603305871436184

namespace A321828

/-- `A321836(A000265(n+1))/A034947(A000027(n+1))` -/
def P17411603305871436184.Spec : Prop :=
  ∀ n, P17411603305871436184.a n = (A321828 (n + 1) : ℚ)

end A321828

/-!
# A321829: a(n) = Sum_{d|n, n/d==1 mod 4} d^5 - Sum_{d|n, n/d==3 mod 4} d^5.

The programs for A321829, the canonical program `A321829.P14830422946865690571` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A321829 has offset 1).

The definition of A321829 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A321829.P14830422946865690571

`∑{d}[n+1, A002654(#)*A059378((n+1)/#)]`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A321829

/-- `∑{d}[n+1, A002654(#)*A059378((n+1)/#)]` -/
def P14830422946865690571.Spec : Prop :=
  ∀ n, P14830422946865690571.a n = A321829 (n + 1)

theorem P14830422946865690571.correct : P14830422946865690571.Spec := by
  intro n
  simp only [A321829, Nat.add_sub_cancel]

end A321829

/-! ## A321829.P5022786664715137932

`∑{d}[n+1, A050470(#)*A115224((n+1)/#)]`
-/

namespace A321829.P5022786664715137932
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A050470 d * A115224 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A321829.P5022786664715137932

namespace A321829

/-- `∑{d}[n+1, A050470(#)*A115224((n+1)/#)]` -/
def P5022786664715137932.Spec : Prop :=
  ∀ n, P5022786664715137932.a n = A321829 (n + 1)

end A321829

/-! ## A321829.P9669124611643703853

`∑{d}[n+1, A001160(#)*A275966((n+1)/#)]`
-/

namespace A321829.P9669124611643703853
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001160 d * A275966 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A321829.P9669124611643703853

namespace A321829

/-- `∑{d}[n+1, A001160(#)*A275966((n+1)/#)]` -/
def P9669124611643703853.Spec : Prop :=
  ∀ n, P9669124611643703853.a n = A321829 (n + 1)

end A321829

/-! ## A321829.P8660230769035301919

`∑{d}[n+1, A050468(#)*A238533((n+1)/#)]`
-/

namespace A321829.P8660230769035301919
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A050468 d * A238533 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A321829.P8660230769035301919

namespace A321829

/-- `∑{d}[n+1, A050468(#)*A238533((n+1)/#)]` -/
def P8660230769035301919.Spec : Prop :=
  ∀ n, P8660230769035301919.a n = A321829 (n + 1)

end A321829

/-! ## A321829.P6195230879672067585

`∑{d}[n+1, A327123(#)*A372961((n+1)/#)]`
-/

namespace A321829.P6195230879672067585
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A327123 d * A372961 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A321829.P6195230879672067585

namespace A321829

/-- `∑{d}[n+1, A327123(#)*A372961((n+1)/#)]` -/
def P6195230879672067585.Spec : Prop :=
  ∀ n, P6195230879672067585.a n = A321829 (n + 1)

end A321829

/-!
# A321830: a(n) = Sum_{d|n, n/d==1 mod 4} d^6 - Sum_{d|n, n/d==3 mod 4} d^6.

The programs for A321830, the canonical program `A321830.P17682808874254868364` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A321830 has offset 1).

The definition of A321830 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A321830.P17682808874254868364

`∑{d}[n+1, A002654(#)*A069091((n+1)/#)]`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A321830

/-- `∑{d}[n+1, A002654(#)*A069091((n+1)/#)]` -/
def P17682808874254868364.Spec : Prop :=
  ∀ n, P17682808874254868364.a n = A321830 (n + 1)

theorem P17682808874254868364.correct : P17682808874254868364.Spec := by
  intro n
  simp only [A321830, Nat.add_sub_cancel]

end A321830

/-! ## A321830.P4881923493564332423

`∑{d}[n+1, A013954(#)*A275966((n+1)/#)]`
-/

namespace A321830.P4881923493564332423
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A013954 d * A275966 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A321830.P4881923493564332423

namespace A321830

/-- `∑{d}[n+1, A013954(#)*A275966((n+1)/#)]` -/
def P4881923493564332423.Spec : Prop :=
  ∀ n, P4881923493564332423.a n = A321830 (n + 1)

end A321830

/-! ## A321830.P12099081800899480570

`∑{d}[n+1, A306411(#)*A321829((n+1)/#)]`
-/

namespace A321830.P12099081800899480570
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A306411 d * A321829 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A321830.P12099081800899480570

namespace A321830

/-- `∑{d}[n+1, A306411(#)*A321829((n+1)/#)]` -/
def P12099081800899480570.Spec : Prop :=
  ∀ n, P12099081800899480570.a n = A321830 (n + 1)

end A321830

/-! ## A321830.P4727315478062668746

`∑{d}[n+1, A327123(#)*A371878((n+1)/#)]`
-/

namespace A321830.P4727315478062668746
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A327123 d * A371878 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A321830.P4727315478062668746

namespace A321830

/-- `∑{d}[n+1, A327123(#)*A371878((n+1)/#)]` -/
def P4727315478062668746.Spec : Prop :=
  ∀ n, P4727315478062668746.a n = A321830 (n + 1)

end A321830

/-!
# A321831: a(n) = Sum_{d|n, n/d==1 mod 4} d^7 - Sum_{d|n, n/d==3 mod 4} d^7.

The programs for A321831, the canonical program `A321831.P12423229635950529028` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A321831 has offset 1).

The definition of A321831 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A321831.P12423229635950529028

`∑{d}[n+1, A002654(#)*A069092((n+1)/#)]`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A321831

/-- `∑{d}[n+1, A002654(#)*A069092((n+1)/#)]` -/
def P12423229635950529028.Spec : Prop :=
  ∀ n, P12423229635950529028.a n = A321831 (n + 1)

theorem P12423229635950529028.correct : P12423229635950529028.Spec := by
  intro n
  simp only [A321831, Nat.add_sub_cancel]

end A321831

/-! ## A321831.P258717781171948574

`∑{d}[n+1, A013955(#)*A275966((n+1)/#)]`
-/

namespace A321831.P258717781171948574
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A013955 d * A275966 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A321831.P258717781171948574

namespace A321831

/-- `∑{d}[n+1, A013955(#)*A275966((n+1)/#)]` -/
def P258717781171948574.Spec : Prop :=
  ∀ n, P258717781171948574.a n = A321831 (n + 1)

end A321831

/-! ## A321831.P15987377815383325784

`∑{d}[n+1, A239442(#)*A321830((n+1)/#)]`
-/

namespace A321831.P15987377815383325784
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A239442 d * A321830 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A321831.P15987377815383325784

namespace A321831

/-- `∑{d}[n+1, A239442(#)*A321830((n+1)/#)]` -/
def P15987377815383325784.Spec : Prop :=
  ∀ n, P15987377815383325784.a n = A321831 (n + 1)

end A321831

/-! ## A321831.P7629288062899678842

`A322084(A055999(n+5)-1)`
-/

namespace A321831.P7629288062899678842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322084 (A055999 (n + 5) - 1).toNat

end

end A321831.P7629288062899678842

namespace A321831

/-- `A322084(A055999(n+5)-1)` -/
def P7629288062899678842.Spec : Prop :=
  ∀ n, P7629288062899678842.a n = A321831 (n + 1)

end A321831

/-! ## A321831.P15862399884443251798

`A322084(eq[7, A025581(n)]+1)`
-/

namespace A321831.P15862399884443251798
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322084 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A321831.P15862399884443251798

namespace A321831

/-- `A322084(eq[7, A025581(n)]+1)` -/
def P15862399884443251798.Spec : Prop :=
  ∀ n, P15862399884443251798.a n = A321831 (n + 1)

end A321831

/-!
# A321832: a(n) = Sum_{d|n, n/d==1 (mod 4)} d^8 - Sum_{d|n, n/d==3 (mod 4)} d^8.

The programs for A321832, the canonical program `A321832.P3017616455920005884` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A321832 has offset 1).

The definition of A321832 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A321832.P3017616455920005884

`∑{d}[n+1, A002654(#)*A069093((n+1)/#)]`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A321832

/-- `∑{d}[n+1, A002654(#)*A069093((n+1)/#)]` -/
def P3017616455920005884.Spec : Prop :=
  ∀ n, P3017616455920005884.a n = A321832 (n + 1)

theorem P3017616455920005884.correct : P3017616455920005884.Spec := by
  intro n
  simp only [A321832, Nat.add_sub_cancel]

end A321832

/-! ## A321832.P5902051064348231086

`∑{d}[n+1, A013956(#)*A275966((n+1)/#)]`
-/

namespace A321832.P5902051064348231086
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A013956 d * A275966 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A321832.P5902051064348231086

namespace A321832

/-- `∑{d}[n+1, A013956(#)*A275966((n+1)/#)]` -/
def P5902051064348231086.Spec : Prop :=
  ∀ n, P5902051064348231086.a n = A321832 (n + 1)

end A321832

/-! ## A321832.P14398039556095787305

`∑{d}[n+1, A306412(#)*A321831((n+1)/#)]`
-/

namespace A321832.P14398039556095787305
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A306412 d * A321831 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A321832.P14398039556095787305

namespace A321832

/-- `∑{d}[n+1, A306412(#)*A321831((n+1)/#)]` -/
def P14398039556095787305.Spec : Prop :=
  ∀ n, P14398039556095787305.a n = A321832 (n + 1)

end A321832

/-!
# A321833: a(n) = Sum_{d|n, n/d==1 mod 4} d^9 - Sum_{d|n, n/d==3 mod 4} d^9.

The programs for A321833, the canonical program `A321833.P4727301258101739177` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A321833 has offset 1).

The definition of A321833 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A321833.P4727301258101739177

`∑{d}[n+1, A002654(#)*A069094((n+1)/#)]`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A321833

/-- `∑{d}[n+1, A002654(#)*A069094((n+1)/#)]` -/
def P4727301258101739177.Spec : Prop :=
  ∀ n, P4727301258101739177.a n = A321833 (n + 1)

theorem P4727301258101739177.correct : P4727301258101739177.Spec := by
  intro n
  simp only [A321833, Nat.add_sub_cancel]

end A321833

/-! ## A321833.P18303528738178402358

`∑{d}[n+1, A013957(#)*A275966((n+1)/#)]`
-/

namespace A321833.P18303528738178402358
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A013957 d * A275966 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A321833.P18303528738178402358

namespace A321833

/-- `∑{d}[n+1, A013957(#)*A275966((n+1)/#)]` -/
def P18303528738178402358.Spec : Prop :=
  ∀ n, P18303528738178402358.a n = A321833 (n + 1)

end A321833

/-! ## A321833.P288267387102421903

`∑{d}[n+1, A239443(#)*A321832((n+1)/#)]`
-/

namespace A321833.P288267387102421903
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A239443 d * A321832 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A321833.P288267387102421903

namespace A321833

/-- `∑{d}[n+1, A239443(#)*A321832((n+1)/#)]` -/
def P288267387102421903.Spec : Prop :=
  ∀ n, P288267387102421903.a n = A321833 (n + 1)

end A321833

/-! ## A321833.P7981058517513042405

`A322084(A005843(n+1)+eq[8, A130270(n+1)])`
-/

namespace A321833.P7981058517513042405
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130270 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322084 (A005843 (n + 1) + (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ)).toNat

end

end A321833.P7981058517513042405

namespace A321833

/-- `A322084(A005843(n+1)+eq[8, A130270(n+1)])` -/
def P7981058517513042405.Spec : Prop :=
  ∀ n, P7981058517513042405.a n = A321833 (n + 1)

end A321833

/-!
# A321834: a(n) = Sum_{d|n, n/d==1 mod 4} d^10 - Sum_{d|n, n/d==3 mod 4} d^10.

The programs for A321834, the canonical program `A321834.P3995694141505883219` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A321834 has offset 1).

The definition of A321834 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A321834.P3995694141505883219

`∑{d}[n+1, A002654(#)*A069095((n+1)/#)]`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A321834

/-- `∑{d}[n+1, A002654(#)*A069095((n+1)/#)]` -/
def P3995694141505883219.Spec : Prop :=
  ∀ n, P3995694141505883219.a n = A321834 (n + 1)

theorem P3995694141505883219.correct : P3995694141505883219.Spec := by
  intro n
  simp only [A321834, Nat.add_sub_cancel]

end A321834

/-! ## A321834.P9528838522532639420

`∑{d}[n+1, A013958(#)*A275966((n+1)/#)]`
-/

namespace A321834.P9528838522532639420
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A013958 d * A275966 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A321834.P9528838522532639420

namespace A321834

/-- `∑{d}[n+1, A013958(#)*A275966((n+1)/#)]` -/
def P9528838522532639420.Spec : Prop :=
  ∀ n, P9528838522532639420.a n = A321834 (n + 1)

end A321834

/-!
# A321835: a(n) = Sum_{d|n, n/d==1 mod 4} d^11 - Sum_{d|n, n/d==3 mod 4} d^11.

The programs for A321835, the canonical program `A321835.P224170662709353720` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A321835 has offset 1).

The definition of A321835 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A321835.P224170662709353720

`∑{d}[n+1, A013959(#)*A275966((n+1)/#)]`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A321835

/-- `∑{d}[n+1, A013959(#)*A275966((n+1)/#)]` -/
def P224170662709353720.Spec : Prop :=
  ∀ n, P224170662709353720.a n = A321835 (n + 1)

theorem P224170662709353720.correct : P224170662709353720.Spec := by
  intro n
  simp only [A321835, Nat.add_sub_cancel]

end A321835

/-!
# A321836: a(n) = Sum_{d|n, n/d==1 mod 4} d^12 - Sum_{d|n, n/d==3 mod 4} d^12.

The programs for A321836, the canonical program `A321836.P2676894862389954580` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A321836 has offset 1).

The definition of A321836 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A321836.P2676894862389954580

`∑{d}[n+1, A013960(#)*A275966((n+1)/#)]`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A321836

/-- `∑{d}[n+1, A013960(#)*A275966((n+1)/#)]` -/
def P2676894862389954580.Spec : Prop :=
  ∀ n, P2676894862389954580.a n = A321836 (n + 1)

theorem P2676894862389954580.correct : P2676894862389954580.Spec := by
  intro n
  simp only [A321836, Nat.add_sub_cancel]

end A321836

/-!
# A321837: Expansion of e.g.f.: exp(x/(1-3*x)).

The programs for A321837, the canonical program `A321837.P736822020545444226` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A321837 has offset 0).

The definition of A321837 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A321837.P736822020545444226

`(6*n-5)*a(n-1)-9*(n-2)*(n-1)*a(n-2)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A321837

/-- `(6*n-5)*a(n-1)-9*(n-2)*(n-1)*a(n-2)` -/
def P736822020545444226.Spec : Prop :=
  ∀ n, P736822020545444226.a n = A321837 n

theorem P736822020545444226.correct : P736822020545444226.Spec := by
  intro n
  simp only [A321837]

end A321837

/-! ## A321837.P7020796125299715050

`A341033(∑[n+3]+n+3)`
-/

namespace A321837.P7020796125299715050
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341033 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A321837.P7020796125299715050

namespace A321837

/-- `A341033(∑[n+3]+n+3)` -/
def P7020796125299715050.Spec : Prop :=
  ∀ n, P7020796125299715050.a n = A321837 n

end A321837

/-! ## A321837.P3731366235961774407

`or(1, A341033(A046691(n+2)))`
-/

namespace A321837.P3731366235961774407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A341033 (A046691 (n + 2)).toNat)

end

end A321837.P3731366235961774407

namespace A321837

/-- `or(1, A341033(A046691(n+2)))` -/
def P3731366235961774407.Spec : Prop :=
  ∀ n, P3731366235961774407.a n = A321837 n

end A321837

/-! ## A321837.P2561567360166295768

`A341033(A046691(n+2))+A000007(n+2)`
-/

namespace A321837.P2561567360166295768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341033 (A046691 (n + 2)).toNat + A000007 (n + 2)

end

end A321837.P2561567360166295768

namespace A321837

/-- `A341033(A046691(n+2))+A000007(n+2)` -/
def P2561567360166295768.Spec : Prop :=
  ∀ n, P2561567360166295768.a n = A321837 n

end A321837

/-! ## A321837.P14353437942401479243

`A341033(A046691(n+2))%A341330(n+3)`
-/

namespace A321837.P14353437942401479243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A341033 (A046691 (n + 2)).toNat) (A341330 (n + 3))

end

end A321837.P14353437942401479243

namespace A321837

/-- `A341033(A046691(n+2))%A341330(n+3)` -/
def P14353437942401479243.Spec : Prop :=
  ∀ n, P14353437942401479243.a n = A321837 n

end A321837

/-!
# A321838: Number of words w of length n such that each letter of the binary alphabet is used at least once and for every prefix z of w we have #(z,a_i) = 0 or #(z,a_i) >= #(z,a_j) for all j>i and #(z,a_i) counts the occurrences of the i-th letter in z.

The programs for A321838, the canonical program `A321838.P8929523525795990966` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A321838 has offset 2).

The definition of A321838 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 335 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A321838.P16265617616767212578

`A213290(n+2)-2`
-/

namespace A321838.P16265617616767212578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213290 (n + 2) - 2

end

end A321838.P16265617616767212578

namespace A321838

/-- `A213290(n+2)-2` -/
def P16265617616767212578.Spec : Prop :=
  ∀ n, P16265617616767212578.a n = A321838 (n + 2)

end A321838

/-! ## A321838.P6294902123976669642

`A208976(n)+A037952(n+1)`
-/

namespace A321838.P6294902123976669642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208976 n + A037952 (n + 1)

end

end A321838.P6294902123976669642

namespace A321838

/-- `A208976(n)+A037952(n+1)` -/
def P6294902123976669642.Spec : Prop :=
  ∀ n, P6294902123976669642.a n = A321838 (n + 2)

end A321838

/-! ## A321838.P8929523525795990966

`A014495(n+2)+A001405(n)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A321838

/-- `A014495(n+2)+A001405(n)` -/
def P8929523525795990966.Spec : Prop :=
  ∀ n, P8929523525795990966.a n = A321838 (n + 2)

theorem P8929523525795990966.correct : P8929523525795990966.Spec := by
  intro n
  simp only [A321838, Nat.add_sub_cancel]

end A321838

/-! ## A321838.P11148536752692104933

`A001405(n)+∑[A037952(n+1)]`
-/

namespace A321838.P11148536752692104933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037952 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A321838.P11148536752692104933

namespace A321838

/-- `A001405(n)+∑[A037952(n+1)]` -/
def P11148536752692104933.Spec : Prop :=
  ∀ n, P11148536752692104933.a n = A321838 (n + 2)

end A321838

/-! ## A321838.P1067411218037577538

`A208976(n)+Δ[A001405(n+1)]`
-/

namespace A321838.P1067411218037577538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208976 n + (f1 (n + 1) - f1 n)

end

end A321838.P1067411218037577538

namespace A321838

/-- `A208976(n)+Δ[A001405(n+1)]` -/
def P1067411218037577538.Spec : Prop :=
  ∀ n, P1067411218037577538.a n = A321838 (n + 2)

end A321838

/-! ## A321838.P5475960920308077198

`A208976(n)+Δ[A014495(n+1)]`
-/

namespace A321838.P5475960920308077198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014495 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208976 n + (f1 (n + 1) - f1 n)

end

end A321838.P5475960920308077198

namespace A321838

/-- `A208976(n)+Δ[A014495(n+1)]` -/
def P5475960920308077198.Spec : Prop :=
  ∀ n, P5475960920308077198.a n = A321838 (n + 2)

end A321838

/-! ## A321838.P14351502073729131814

`A014495(n+2)+A014495(n)+1`
-/

namespace A321838.P14351502073729131814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014495 (n + 2) + (A014495 n + 1)

end

end A321838.P14351502073729131814

namespace A321838

/-- `A014495(n+2)+A014495(n)+1` -/
def P14351502073729131814.Spec : Prop :=
  ∀ n, P14351502073729131814.a n = A321838 (n + 2)

end A321838

/-! ## A321838.P8273680922587151741

`A001405(n+2)+A001405(n)-1`
-/

namespace A321838.P8273680922587151741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 (n + 2) + (A001405 n - 1)

end

end A321838.P8273680922587151741

namespace A321838

/-- `A001405(n+2)+A001405(n)-1` -/
def P8273680922587151741.Spec : Prop :=
  ∀ n, P8273680922587151741.a n = A321838 (n + 2)

end A321838

/-! ## A321838.P6807954884021941367

`∑[A007007(n+1)]+A001405(n)+1`
-/

namespace A321838.P6807954884021941367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007007 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (A001405 n + 1)

end

end A321838.P6807954884021941367

namespace A321838

/-- `∑[A007007(n+1)]+A001405(n)+1` -/
def P6807954884021941367.Spec : Prop :=
  ∀ n, P6807954884021941367.a n = A321838 (n + 2)

end A321838

/-! ## A321838.P15975046220574422929

`A037952(n+1)+A050168(n+1)-1`
-/

namespace A321838.P15975046220574422929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037952 (n + 1) + (A050168 (n + 1) - 1)

end

end A321838.P15975046220574422929

namespace A321838

/-- `A037952(n+1)+A050168(n+1)-1` -/
def P15975046220574422929.Spec : Prop :=
  ∀ n, P15975046220574422929.a n = A321838 (n + 2)

end A321838

/-! ## A321838.P15477871476772637375

`A001405(n)+A191307(n)+A036256(n)`
-/

namespace A321838.P15477871476772637375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 n + (A191307 n + A036256 n)

end

end A321838.P15477871476772637375

namespace A321838

/-- `A001405(n)+A191307(n)+A036256(n)` -/
def P15477871476772637375.Spec : Prop :=
  ∀ n, P15477871476772637375.a n = A321838 (n + 2)

end A321838

/-! ## A321838.P197084215682098576

`A208976(n)-Δ[A001405(n)-A208976(n)]`
-/

namespace A321838.P197084215682098576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 n - A208976 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208976 n - (f1 (n + 1) - f1 n)

end

end A321838.P197084215682098576

namespace A321838

/-- `A208976(n)-Δ[A001405(n)-A208976(n)]` -/
def P197084215682098576.Spec : Prop :=
  ∀ n, P197084215682098576.a n = A321838 (n + 2)

end A321838

/-! ## A321838.P1802203330889433652

`A208976(n)-Δ[A014495(n)-A208976(n)]`
-/

namespace A321838.P1802203330889433652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014495 n - A208976 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208976 n - (f1 (n + 1) - f1 n)

end

end A321838.P1802203330889433652

namespace A321838

/-- `A208976(n)-Δ[A014495(n)-A208976(n)]` -/
def P1802203330889433652.Spec : Prop :=
  ∀ n, P1802203330889433652.a n = A321838 (n + 2)

end A321838

/-! ## A321838.P7715508770619709544

`A210736(n+1)+A191307(n)+A036256(n)`
-/

namespace A321838.P7715508770619709544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210736 (n + 1) + (A191307 n + A036256 n)

end

end A321838.P7715508770619709544

namespace A321838

/-- `A210736(n+1)+A191307(n)+A036256(n)` -/
def P7715508770619709544.Spec : Prop :=
  ∀ n, P7715508770619709544.a n = A321838 (n + 2)

end A321838

/-! ## A321838.P8713291854203071062

`A036256(n+1)+A191307(n)-A037952(n)`
-/

namespace A321838.P8713291854203071062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036256 (n + 1) + (A191307 n - A037952 n)

end

end A321838.P8713291854203071062

namespace A321838

/-- `A036256(n+1)+A191307(n)-A037952(n)` -/
def P8713291854203071062.Spec : Prop :=
  ∀ n, P8713291854203071062.a n = A321838 (n + 2)

end A321838

/-! ## A321838.P9245680218582204811

`A001405(n+1)+A047171(n+1)+A001405(n)`
-/

namespace A321838.P9245680218582204811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 (n + 1) + (A047171 (n + 1) + A001405 n)

end

end A321838.P9245680218582204811

namespace A321838

/-- `A001405(n+1)+A047171(n+1)+A001405(n)` -/
def P9245680218582204811.Spec : Prop :=
  ∀ n, P9245680218582204811.a n = A321838 (n + 2)

end A321838

/-! ## A321838.P13242318407474508539

`A036256(n+1)+A037952(n+1)-A072100(n+1)`
-/

namespace A321838.P13242318407474508539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036256 (n + 1) + (A037952 (n + 1) - A072100 (n + 1))

end

end A321838.P13242318407474508539

namespace A321838

/-- `A036256(n+1)+A037952(n+1)-A072100(n+1)` -/
def P13242318407474508539.Spec : Prop :=
  ∀ n, P13242318407474508539.a n = A321838 (n + 2)

end A321838

/-! ## A321838.P1311668930872794100

`A063886(n+1)+A208976(n+1)-A050168(n+1)`
-/

namespace A321838.P1311668930872794100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063886 (n + 1) + (A208976 (n + 1) - A050168 (n + 1))

end

end A321838.P1311668930872794100

namespace A321838

/-- `A063886(n+1)+A208976(n+1)-A050168(n+1)` -/
def P1311668930872794100.Spec : Prop :=
  ∀ n, P1311668930872794100.a n = A321838 (n + 2)

end A321838

/-! ## A321838.P11764630568112417979

`A014495(n)+record[A046899(n+2)]`
-/

namespace A321838.P11764630568112417979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046899 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014495 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A321838.P11764630568112417979

namespace A321838

/-- `A014495(n)+record[A046899(n+2)]` -/
def P11764630568112417979.Spec : Prop :=
  ∀ n, P11764630568112417979.a n = A321838 (n + 2)

end A321838

/-!
# A321839: Number of words w of length n such that each letter of the ternary alphabet is used at least once and for every prefix z of w we have #(z,a_i) = 0 or #(z,a_i) >= #(z,a_j) for all j>i and #(z,a_i) counts the occurrences of the i-th letter in z.

The programs for A321839, there is no canonical definition to state claims against.
-/

/-! ## A321839.P2454927730707271075

`A257783(A167614(n+2))`
-/

namespace A321839.P2454927730707271075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257783 (A167614 (n + 2)).toNat

end

end A321839.P2454927730707271075

/-! ## A321839.P8035044329992175182

`A257783(A141214(n)+6)`
-/

namespace A321839.P8035044329992175182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257783 (A141214 n + 6).toNat

end

end A321839.P8035044329992175182

/-! ## A321839.P12902076324488318221

`A257783(A052905(n)+8)`
-/

namespace A321839.P12902076324488318221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257783 (A052905 n + 8).toNat

end

end A321839.P12902076324488318221

/-! ## A321839.P10700899911671151197

`A257783(A055999(n)+9)`
-/

namespace A321839.P10700899911671151197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257783 (A055999 n + 9).toNat

end

end A321839.P10700899911671151197

/-! ## A321839.P14073039372138024092

`A257783(eq[3, A002262(n)])`
-/

namespace A321839.P14073039372138024092
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257783 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A321839.P14073039372138024092

/-!
# A321840: Number of words w of length n such that each letter of the quaternary alphabet is used at least once and for every prefix z of w we have #(z,a_i) = 0 or #(z,a_i) >= #(z,a_j) for all j>i and #(z,a_i) counts the occurrences of the i-th letter in z.

The programs for A321840, there is no canonical definition to state claims against.
-/

/-! ## A321840.P13047344442032793831

`A257783(A155212(n)+12)`
-/

namespace A321840.P13047344442032793831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257783 (A155212 n + 12).toNat

end

end A321840.P13047344442032793831

/-! ## A321840.P10479424552218689239

`A257783(eq[4, A002262(n)])`
-/

namespace A321840.P10479424552218689239
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257783 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A321840.P10479424552218689239

/-! ## A321840.P18037163048916793561

`A257783(A000096(n+3)+5)`
-/

namespace A321840.P18037163048916793561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257783 (A000096 (n + 3) + 5).toNat

end

end A321840.P18037163048916793561

/-! ## A321840.P10800583847722968879

`A257783(A000217(n+4)+4)`
-/

namespace A321840.P10800583847722968879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257783 (A000217 (n + 4) + 4).toNat

end

end A321840.P10800583847722968879

/-! ## A321840.P8698180665622184634

`A257783(eq[5, A002260(n+1)])`
-/

namespace A321840.P8698180665622184634
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257783 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A321840.P8698180665622184634

/-!
# A321841: Number of words w of length n such that each letter of the quinary alphabet is used at least once and for every prefix z of w we have #(z,a_i) = 0 or #(z,a_i) >= #(z,a_j) for all j>i and #(z,a_i) counts the occurrences of the i-th letter in z.

The programs for A321841, there is no canonical definition to state claims against.
-/

/-! ## A321841.P1878123489833334379

`A257783(eq[5, A002262(n)])`
-/

namespace A321841.P1878123489833334379
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257783 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A321841.P1878123489833334379

/-! ## A321841.P7508417331520023671

`A257783(eq[32, A059268(n)])`
-/

namespace A321841.P7508417331520023671
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  32

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257783 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A321841.P7508417331520023671

/-! ## A321841.P9208118290900196461

`A257783(A000096(n+4)+6)`
-/

namespace A321841.P9208118290900196461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257783 (A000096 (n + 4) + 6).toNat

end

end A321841.P9208118290900196461

/-! ## A321841.P18425216542106378647

`A257783(eq[6, A002260(n+1)])`
-/

namespace A321841.P18425216542106378647
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257783 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A321841.P18425216542106378647

/-! ## A321841.P3172611046296719904

`A257783(eq[8, A104763(n+1)])`
-/

namespace A321841.P3172611046296719904
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104763 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257783 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A321841.P3172611046296719904

/-!
# A321842: Number of words w of length n such that each letter of the senary alphabet is used at least once and for every prefix z of w we have #(z,a_i) = 0 or #(z,a_i) >= #(z,a_j) for all j>i and #(z,a_i) counts the occurrences of the i-th letter in z.

The programs for A321842, there is no canonical definition to state claims against.
-/

/-! ## A321842.P9196415409479944824

`A257783(eq[6, A002262(n)])`
-/

namespace A321842.P9196415409479944824
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257783 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A321842.P9196415409479944824

/-! ## A321842.P13975467536804392212

`A257783(eq[6, A144328(n+1)])`
-/

namespace A321842.P13975467536804392212
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257783 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A321842.P13975467536804392212

/-! ## A321842.P15913065743502180387

`A257783(eq[7, A002260(n+1)])`
-/

namespace A321842.P15913065743502180387
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257783 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A321842.P15913065743502180387

/-! ## A321842.P16452692461134794382

`A257783(eq[8, A245093(n+1)])`
-/

namespace A321842.P16452692461134794382
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245093 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257783 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A321842.P16452692461134794382

/-!
# A321843: Number of words w of length n such that each letter of the septenary alphabet is used at least once and for every prefix z of w we have #(z,a_i) = 0 or #(z,a_i) >= #(z,a_j) for all j>i and #(z,a_i) counts the occurrences of the i-th letter in z.

The programs for A321843, there is no canonical definition to state claims against.
-/

/-! ## A321843.P15905048207670208607

`A257783(A167487(n+6))`
-/

namespace A321843.P15905048207670208607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257783 (A167487 (n + 6)).toNat

end

end A321843.P15905048207670208607

/-! ## A321843.P7811076664036434918

`A257783(eq[7, A002262(n)])`
-/

namespace A321843.P7811076664036434918
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257783 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A321843.P7811076664036434918

/-! ## A321843.P1691344228394126234

`A257783(eq[7, A130270(n+1)])`
-/

namespace A321843.P1691344228394126234
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130270 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257783 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A321843.P1691344228394126234

/-! ## A321843.P12132594317976833846

`A257783(eq[7, A144328(n+1)])`
-/

namespace A321843.P12132594317976833846
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257783 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A321843.P12132594317976833846

/-! ## A321843.P2624351046902211037

`A257783(eq[8, A002260(n+1)])`
-/

namespace A321843.P2624351046902211037
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257783 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A321843.P2624351046902211037

/-!
# A321844: Number of words w of length n such that each letter of the octonary alphabet is used at least once and for every prefix z of w we have #(z,a_i) = 0 or #(z,a_i) >= #(z,a_j) for all j>i and #(z,a_i) counts the occurrences of the i-th letter in z.

The programs for A321844, there is no canonical definition to state claims against.
-/

/-! ## A321844.P10047691535588855390

`A257783(eq[8, A002262(n)])`
-/

namespace A321844.P10047691535588855390
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257783 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A321844.P10047691535588855390

/-! ## A321844.P11331020753580778108

`A257783(eq[8, A025668(n+1)])`
-/

namespace A321844.P11331020753580778108
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025668 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257783 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A321844.P11331020753580778108

/-! ## A321844.P141429216411162311

`A257783(eq[8, A130270(n+1)])`
-/

namespace A321844.P141429216411162311
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130270 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257783 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A321844.P141429216411162311

/-! ## A321844.P7715983937803287144

`A257783(eq[8, A144328(n+1)])`
-/

namespace A321844.P7715983937803287144
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257783 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A321844.P7715983937803287144

/-!
# A321845: Number of words w of length n such that each letter of the nonary alphabet is used at least once and for every prefix z of w we have #(z,a_i) = 0 or #(z,a_i) >= #(z,a_j) for all j>i and #(z,a_i) counts the occurrences of the i-th letter in z.

The programs for A321845, there is no canonical definition to state claims against.
-/

/-! ## A321845.P2964982434282963188

`A257783(eq[9, A002262(n)])`
-/

namespace A321845.P2964982434282963188
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257783 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A321845.P2964982434282963188

/-! ## A321845.P15640848962925668244

`A257783(eq[9, A025668(n+1)])`
-/

namespace A321845.P15640848962925668244
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025668 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257783 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A321845.P15640848962925668244

/-! ## A321845.P11167666843423495482

`A257783(eq[9, A144328(n+1)])`
-/

namespace A321845.P11167666843423495482
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257783 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A321845.P11167666843423495482

/-! ## A321845.P12440335454768431920

`A257783(eq[10, A002260(n+1)])`
-/

namespace A321845.P12440335454768431920
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257783 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A321845.P12440335454768431920

/-!
# A321846: Number of words w of length n such that each letter of the denary alphabet is used at least once and for every prefix z of w we have #(z,a_i) = 0 or #(z,a_i) >= #(z,a_j) for all j>i and #(z,a_i) counts the occurrences of the i-th letter in z.

The programs for A321846, there is no canonical definition to state claims against.
-/

/-! ## A321846.P1932831903622760376

`A257783(eq[10, A002262(n)])`
-/

namespace A321846.P1932831903622760376
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257783 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A321846.P1932831903622760376

/-! ## A321846.P3138828138302388097

`A257783(eq[10, A025668(n+1)])`
-/

namespace A321846.P3138828138302388097
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025668 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257783 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A321846.P3138828138302388097

/-! ## A321846.P15817579232127595916

`A257783(eq[10, A144328(n+1)])`
-/

namespace A321846.P15817579232127595916
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257783 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A321846.P15817579232127595916

/-! ## A321846.P3115574259694854698

`A257783(eq[11, A002260(n+1)])`
-/

namespace A321846.P3115574259694854698
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257783 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A321846.P3115574259694854698

/-!
# A321847: E.g.f.: exp(x/(1 - 4*x)).

The programs for A321847, the canonical program `A321847.P12916202050829189752` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A321847 has offset 0).

The definition of A321847 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A321847.P12916202050829189752

`(8*n-7)*a(n-1)-16*(n-2)*(n-1)*a(n-2)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A321847

/-- `(8*n-7)*a(n-1)-16*(n-2)*(n-1)*a(n-2)` -/
def P12916202050829189752.Spec : Prop :=
  ∀ n, P12916202050829189752.a n = A321847 n

theorem P12916202050829189752.correct : P12916202050829189752.Spec := by
  intro n
  simp only [A321847]

end A321847

/-! ## A321847.P7312816549152628118

`A341033(A052905(n+2))`
-/

namespace A321847.P7312816549152628118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341033 (A052905 (n + 2)).toNat

end

end A321847.P7312816549152628118

namespace A321847

/-- `A341033(A052905(n+2))` -/
def P7312816549152628118.Spec : Prop :=
  ∀ n, P7312816549152628118.a n = A321847 n

end A321847

/-! ## A321847.P9623361487637872461

`A341033(eq[4, A025581(n)])`
-/

namespace A321847.P9623361487637872461
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341033 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A321847.P9623361487637872461

namespace A321847

/-- `A341033(eq[4, A025581(n)])` -/
def P9623361487637872461.Spec : Prop :=
  ∀ n, P9623361487637872461.a n = A321847 n

end A321847

/-! ## A321847.P12943556161451963535

`A341033(eq[9, A099375(n)])`
-/

namespace A321847.P12943556161451963535
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341033 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A321847.P12943556161451963535

namespace A321847

/-- `A341033(eq[9, A099375(n)])` -/
def P12943556161451963535.Spec : Prop :=
  ∀ n, P12943556161451963535.a n = A321847 n

end A321847

/-! ## A321847.P1209682065500552192

`A341033(eq[5, A004736(n+1)])`
-/

namespace A321847.P1209682065500552192
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341033 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A321847.P1209682065500552192

namespace A321847

/-- `A341033(eq[5, A004736(n+1)])` -/
def P1209682065500552192.Spec : Prop :=
  ∀ n, P1209682065500552192.a n = A321847 n

end A321847

/-!
# A321848: E.g.f.: exp(x/(1-5*x)).

The programs for A321848, the canonical program `A321848.P10603523380014498727` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A321848 has offset 0).

The definition of A321848 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A321848.P10603523380014498727

`(10*n-9)*a(n-1)-25*(n-2)*(n-1)*a(n-2)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A321848

/-- `(10*n-9)*a(n-1)-25*(n-2)*(n-1)*a(n-2)` -/
def P10603523380014498727.Spec : Prop :=
  ∀ n, P10603523380014498727.a n = A321848 n

theorem P10603523380014498727.correct : P10603523380014498727.Spec := by
  intro n
  simp only [A321848]

end A321848

/-! ## A321848.P2556937877882006211

`A341033(eq[5, A025581(n)])`
-/

namespace A321848.P2556937877882006211
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341033 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A321848.P2556937877882006211

namespace A321848

/-- `A341033(eq[5, A025581(n)])` -/
def P2556937877882006211.Spec : Prop :=
  ∀ n, P2556937877882006211.a n = A321848 n

end A321848

/-! ## A321848.P209033537728673392

`A341033(eq[6, A193739(n)])`
-/

namespace A321848.P209033537728673392
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341033 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A321848.P209033537728673392

namespace A321848

/-- `A341033(eq[6, A193739(n)])` -/
def P209033537728673392.Spec : Prop :=
  ∀ n, P209033537728673392.a n = A321848 n

end A321848

/-! ## A321848.P776945559052115726

`A341033(eq[6, A004736(n+1)])`
-/

namespace A321848.P776945559052115726
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341033 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A321848.P776945559052115726

namespace A321848

/-- `A341033(eq[6, A004736(n+1)])` -/
def P776945559052115726.Spec : Prop :=
  ∀ n, P776945559052115726.a n = A321848 n

end A321848

/-! ## A321848.P13481230265271802308

`A341033(eq[16, A155038(n+1)])`
-/

namespace A321848.P13481230265271802308
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155038 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341033 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A321848.P13481230265271802308

namespace A321848

/-- `A341033(eq[16, A155038(n+1)])` -/
def P13481230265271802308.Spec : Prop :=
  ∀ n, P13481230265271802308.a n = A321848 n

end A321848

/-!
# A321849: Expansion of e.g.f.: exp(x/(1-6*x)).

The programs for A321849, the canonical program `A321849.P10124454778823261550` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A321849 has offset 0).

The definition of A321849 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A321849.P10124454778823261550

`(12*n-11)*a(n-1)-36*(n-2)*(n-1)*a(n-2)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A321849

/-- `(12*n-11)*a(n-1)-36*(n-2)*(n-1)*a(n-2)` -/
def P10124454778823261550.Spec : Prop :=
  ∀ n, P10124454778823261550.a n = A321849 n

theorem P10124454778823261550.correct : P10124454778823261550.Spec := by
  intro n
  simp only [A321849]

end A321849

/-! ## A321849.P7597935086942677988

`A341033(eq[6, A025581(n)])`
-/

namespace A321849.P7597935086942677988
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341033 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A321849.P7597935086942677988

namespace A321849

/-- `A341033(eq[6, A025581(n)])` -/
def P7597935086942677988.Spec : Prop :=
  ∀ n, P7597935086942677988.a n = A321849 n

end A321849

/-! ## A321849.P3858615622781536161

`A341033(eq[64, A130321(n)])`
-/

namespace A321849.P3858615622781536161
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  64

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341033 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A321849.P3858615622781536161

namespace A321849

/-- `A341033(eq[64, A130321(n)])` -/
def P3858615622781536161.Spec : Prop :=
  ∀ n, P3858615622781536161.a n = A321849 n

end A321849

/-! ## A321849.P827365429608963514

`A341033(eq[7, A004736(n+1)])`
-/

namespace A321849.P827365429608963514
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341033 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A321849.P827365429608963514

namespace A321849

/-- `A341033(eq[7, A004736(n+1)])` -/
def P827365429608963514.Spec : Prop :=
  ∀ n, P827365429608963514.a n = A321849 n

end A321849

/-! ## A321849.P7879256219166828263

`A341033(A000124(n+6)+A159075(n)-1+n)`
-/

namespace A321849.P7879256219166828263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341033 (A000124 (n + 6) + (A159075 n - 1 + (n : ℤ))).toNat

end

end A321849.P7879256219166828263

namespace A321849

/-- `A341033(A000124(n+6)+A159075(n)-1+n)` -/
def P7879256219166828263.Spec : Prop :=
  ∀ n, P7879256219166828263.a n = A321849 n

end A321849

/-!
# A321850: E.g.f.: exp(x/(1-7*x)).

The programs for A321850, the canonical program `A321850.P17127211619879709094` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A321850 has offset 0).

The definition of A321850 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A321850.P17127211619879709094

`(14*n-13)*a(n-1)-49*(n-2)*(n-1)*a(n-2)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A321850

/-- `(14*n-13)*a(n-1)-49*(n-2)*(n-1)*a(n-2)` -/
def P17127211619879709094.Spec : Prop :=
  ∀ n, P17127211619879709094.a n = A321850 n

theorem P17127211619879709094.correct : P17127211619879709094.Spec := by
  intro n
  simp only [A321850]

end A321850

/-! ## A321850.P1932239225568723846

`A341033(A155212(n+4))`
-/

namespace A321850.P1932239225568723846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341033 (A155212 (n + 4)).toNat

end

end A321850.P1932239225568723846

namespace A321850

/-- `A341033(A155212(n+4))` -/
def P1932239225568723846.Spec : Prop :=
  ∀ n, P1932239225568723846.a n = A321850 n

end A321850

/-! ## A321850.P9784139950303182523

`A341033(eq[7, A025581(n)])`
-/

namespace A321850.P9784139950303182523
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341033 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A321850.P9784139950303182523

namespace A321850

/-- `A341033(eq[7, A025581(n)])` -/
def P9784139950303182523.Spec : Prop :=
  ∀ n, P9784139950303182523.a n = A321850 n

end A321850

/-! ## A321850.P4897588146061836049

`A341033(eq[8, A193739(n)])`
-/

namespace A321850.P4897588146061836049
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341033 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A321850.P4897588146061836049

namespace A321850

/-- `A341033(eq[8, A193739(n)])` -/
def P4897588146061836049.Spec : Prop :=
  ∀ n, P4897588146061836049.a n = A321850 n

end A321850

/-! ## A321850.P13156763090576112808

`A341033(eq[8, A004736(n+1)])`
-/

namespace A321850.P13156763090576112808
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341033 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A321850.P13156763090576112808

namespace A321850

/-- `A341033(eq[8, A004736(n+1)])` -/
def P13156763090576112808.Spec : Prop :=
  ∀ n, P13156763090576112808.a n = A321850 n

end A321850

/-!
# A321851: Number of solutions to |dft(a)^2 + dft(b)^2 + dft(d)^2| + |dft(c)^2| = 4n, where a,b,c,d are +1,-1 sequences of length n and dft(x) denotes the discrete Fourier transform of x.

The programs for A321851, there is no canonical definition to state claims against.
-/

/-! ## A321851.P540601546171929130

`A245080(A317246(n+1))*A317246(3*(n+1))`
-/

namespace A321851.P540601546171929130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245080 (A317246 (n + 1)).toNat * A317246 (3 * (n + 1))

end

end A321851.P540601546171929130

/-!
# A321853: a(n) is the sum of the fill times of all 1-dimensional fountains given by the permutations in S_n.

The programs for A321853, there is no canonical definition to state claims against.
-/

/-! ## A321853.P4727921399227584259

`(n+1)!*∑[∑[n/(n+1)]]`
-/

namespace A321853.P4727921399227584259
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (n + 1 : ℚ)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 1) : ℚ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A321853.P4727921399227584259

/-! ## A321853.P13287831412013305463

`∑[∑[n/(n+1)]]*∏[n+1]`
-/

namespace A321853.P13287831412013305463
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (n + 1 : ℚ)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * ((∏ j ∈ Finset.range (n + 1), f3 j : ℕ) : ℚ)

end

end A321853.P13287831412013305463

/-! ## A321853.P5314803832865677440

`A180119(n+1)-A001705(n+1)`
-/

namespace A321853.P5314803832865677440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180119 (n + 1) - A001705 (n + 1)

end

end A321853.P5314803832865677440

/-! ## A321853.P2964281887205912325

`A001286(n+2)-A001705(n+1)`
-/

namespace A321853.P2964281887205912325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001286 (n + 2) - A001705 (n + 1)

end

end A321853.P2964281887205912325

/-! ## A321853.P12540029647321946898

`A001710(n+3)-A000254(n+2)`
-/

namespace A321853.P12540029647321946898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001710 (n + 3) - A000254 (n + 2)

end

end A321853.P12540029647321946898

/-! ## A321853.P14811931101885870382

`A000142(n+1)*A000217(n+1)-A001705(n+1)`
-/

namespace A321853.P14811931101885870382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 (n + 1) * A000217 (n + 1) - A001705 (n + 1)

end

end A321853.P14811931101885870382

/-! ## A321853.P3066087728877448648

`A006675(n+2)%A001711(n)`
-/

namespace A321853.P3066087728877448648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006675 (n + 2)) (A001711 n)

end

end A321853.P3066087728877448648

/-! ## A321853.P9797874981330384386

`A067318(n+2)-A001286(n+2)`
-/

namespace A321853.P9797874981330384386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067318 (n + 2) - A001286 (n + 2)

end

end A321853.P9797874981330384386

/-! ## A321853.P17548536065085454853

`A121586(n+2)-A001710(n+3)`
-/

namespace A321853.P17548536065085454853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121586 (n + 2) - A001710 (n + 3)

end

end A321853.P17548536065085454853

/-! ## A321853.P572685785907396028

`A062119(n+2)/2-A001705(n+1)`
-/

namespace A321853.P572685785907396028
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062119 (n + 2) : ℚ) / 2 - (A001705 (n + 1) : ℚ)

end

end A321853.P572685785907396028

/-!
# A321854: Irregular triangle where T(H(u),H(v)) is the number of ways to partition the Young diagram of u into vertical sections whose sizes are the parts of v, where H is Heinz number.

The programs for A321854, there is no canonical definition to state claims against.
-/

/-! ## A321854.P14330822954713316475

`A321756(n+1)+A304572(A046682(2*n+1))`
-/

namespace A321854.P14330822954713316475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321756 (n + 1) + A304572 (A046682 (2 * n + 1)).toNat

end

end A321854.P14330822954713316475

/-! ## A321854.P10596833037449058001

`A280379(A311278(n)+2)`
-/

namespace A321854.P10596833037449058001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280379 (A311278 n + 2).toNat

end

end A321854.P10596833037449058001

/-! ## A321854.P12535816287089890534

`A000161(A087063(p?[A262065(n+1)]))`
-/

namespace A321854.P12535816287089890534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262065 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000161 (A087063 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat).toNat

end

end A321854.P12535816287089890534

/-! ## A321854.P11919861616870086847

`A326753(A089259(n)*A321742(n+1))`
-/

namespace A321854.P11919861616870086847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326753 (A089259 n * A321742 (n + 1)).toNat

end

end A321854.P11919861616870086847

/-! ## A321854.P6621174104978103737

`A071625(C(A289287(n+3), A321742(n+1)))`
-/

namespace A321854.P6621174104978103737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071625 (Nat.choose (A289287 (n + 3)).toNat (A321742 (n + 1)).toNat)

end

end A321854.P6621174104978103737

/-!
# A321856: Number of primes of the form 3*m + 2 <= n minus number of primes of the form 3*m + 1 <= n.

The programs for A321856, the canonical program `A321856.P5955438199754994366` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A321856 has offset 1).

The definition of A321856 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A340763, A340764, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A321856.P5955438199754994366

`A340764(n+1)-A340763(n+1)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A321856

/-- `A340764(n+1)-A340763(n+1)` -/
def P5955438199754994366.Spec : Prop :=
  ∀ n, P5955438199754994366.a n = A321856 (n + 1)

theorem P5955438199754994366.correct : P5955438199754994366.Spec := by
  intro n
  simp only [A321856, Nat.add_sub_cancel]

end A321856

/-! ## A321856.P15372344590810198247

`∑[1-(∑{p}[n+1, C(#, n)]+1)%3]`
-/

namespace A321856.P15372344590810198247
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (((∑ p ∈ Nat.primeFactors (f2 n), Nat.choose p n + 1) % 3 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A321856.P15372344590810198247

namespace A321856

/-- `∑[1-(∑{p}[n+1, C(#, n)]+1)%3]` -/
def P15372344590810198247.Spec : Prop :=
  ∀ n, P15372344590810198247.a n = A321856 (n + 1)

end A321856

/-! ## A321856.P11041471443590144911

`∑[-A102283(∑{p}[n+1, C(#, n)])]`
-/

namespace A321856.P11041471443590144911
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A102283 (∑ p ∈ Nat.primeFactors (f2 n), Nat.choose p n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A321856.P11041471443590144911

namespace A321856

/-- `∑[-A102283(∑{p}[n+1, C(#, n)])]` -/
def P11041471443590144911.Spec : Prop :=
  ∀ n, P11041471443590144911.a n = A321856 (n + 1)

end A321856

/-! ## A321856.P14714049455175625925

`abs(∑[A102283(A061397(n+1))])`
-/

namespace A321856.P14714049455175625925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102283 (A061397 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A321856.P14714049455175625925

namespace A321856

/-- `abs(∑[A102283(A061397(n+1))])` -/
def P14714049455175625925.Spec : Prop :=
  ∀ n, P14714049455175625925.a n = A321856 (n + 1)

end A321856

/-! ## A321856.P13556915083838701052

`∑[1-A000086(n*C(A000010(n+1), n)+1)]`
-/

namespace A321856.P13556915083838701052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A000086 (n * Nat.choose (A000010 (n + 1)).toNat n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A321856.P13556915083838701052

namespace A321856

/-- `∑[1-A000086(n*C(A000010(n+1), n)+1)]` -/
def P13556915083838701052.Spec : Prop :=
  ∀ n, P13556915083838701052.a n = A321856 (n + 1)

end A321856

/-! ## A321856.P13502852826451509047

`∑[A102283(2*A061397(n+1))]`
-/

namespace A321856.P13502852826451509047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102283 (2 * A061397 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A321856.P13502852826451509047

namespace A321856

/-- `∑[A102283(2*A061397(n+1))]` -/
def P13502852826451509047.Spec : Prop :=
  ∀ n, P13502852826451509047.a n = A321856 (n + 1)

end A321856

/-! ## A321856.P8223329129965835404

`∑[A128834(4*A061397(n+1))]`
-/

namespace A321856.P8223329129965835404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128834 (4 * A061397 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A321856.P8223329129965835404

namespace A321856

/-- `∑[A128834(4*A061397(n+1))]` -/
def P8223329129965835404.Spec : Prop :=
  ∀ n, P8223329129965835404.a n = A321856 (n + 1)

end A321856

/-! ## A321856.P9197517700378451138

`∑[char[2]-A227625(n+1)]`
-/

namespace A321856.P9197517700378451138
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ) - A227625 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A321856.P9197517700378451138

namespace A321856

/-- `∑[char[2]-A227625(n+1)]` -/
def P9197517700378451138.Spec : Prop :=
  ∀ n, P9197517700378451138.a n = A321856 (n + 1)

end A321856

/-!
# A321857: a(n) = Pi(5,2)(n) + Pi(5,3)(n) - Pi(5,1)(n) - Pi(5,4)(n) where Pi(a,b)(x) denotes the number of primes in the arithmetic progression a*k + b less than or equal to x.

The programs for A321857, the canonical program `A321857.P2619691618955025817` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A321857 has offset 1).

The definition of A321857 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A321857.P2619691618955025817

`∑[-A080891(∑{p}[n+1, C(#, n)])]`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A321857

/-- `∑[-A080891(∑{p}[n+1, C(#, n)])]` -/
def P2619691618955025817.Spec : Prop :=
  ∀ n, P2619691618955025817.a n = A321857 (n + 1)

theorem P2619691618955025817.correct : P2619691618955025817.Spec := by
  intro n
  simp only [A321857, Nat.add_sub_cancel]

end A321857

/-! ## A321857.P11016034088615377060

`abs(∑[A080891(A061397(n+1))])`
-/

namespace A321857.P11016034088615377060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080891 (A061397 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A321857.P11016034088615377060

namespace A321857

/-- `abs(∑[A080891(A061397(n+1))])` -/
def P11016034088615377060.Spec : Prop :=
  ∀ n, P11016034088615377060.a n = A321857 (n + 1)

end A321857

/-! ## A321857.P9848493242988137855

`∑[1-A035187(A089026(n+1))]`
-/

namespace A321857.P9848493242988137855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A035187 (A089026 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A321857.P9848493242988137855

namespace A321857

/-- `∑[1-A035187(A089026(n+1))]` -/
def P9848493242988137855.Spec : Prop :=
  ∀ n, P9848493242988137855.a n = A321857 (n + 1)

end A321857

/-! ## A321857.P16178831752138216303

`∑[1-A035187(A135681(n+1))]`
-/

namespace A321857.P16178831752138216303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A035187 (A135681 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A321857.P16178831752138216303

namespace A321857

/-- `∑[1-A035187(A135681(n+1))]` -/
def P16178831752138216303.Spec : Prop :=
  ∀ n, P16178831752138216303.a n = A321857 (n + 1)

end A321857

/-! ## A321857.P4698873951411619525

`-(∑[A080891(A061397(n+1))]%A000124(n))`
-/

namespace A321857.P4698873951411619525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080891 (A061397 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A000124 n)

end

end A321857.P4698873951411619525

namespace A321857

/-- `-(∑[A080891(A061397(n+1))]%A000124(n))` -/
def P4698873951411619525.Spec : Prop :=
  ∀ n, P4698873951411619525.a n = A321857 (n + 1)

end A321857

/-! ## A321857.P1961839619904584553

`A000027(n+1)-∑[A087781(A089026(n+1))]`
-/

namespace A321857.P1961839619904584553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087781 (A089026 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A321857.P1961839619904584553

namespace A321857

/-- `A000027(n+1)-∑[A087781(A089026(n+1))]` -/
def P1961839619904584553.Spec : Prop :=
  ∀ n, P1961839619904584553.a n = A321857 (n + 1)

end A321857

/-! ## A321857.P18290064347215855770

`A000007(n+1)-∑[A080891(A061397(n+1))]`
-/

namespace A321857.P18290064347215855770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080891 (A061397 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A321857.P18290064347215855770

namespace A321857

/-- `A000007(n+1)-∑[A080891(A061397(n+1))]` -/
def P18290064347215855770.Spec : Prop :=
  ∀ n, P18290064347215855770.a n = A321857 (n + 1)

end A321857

/-! ## A321857.P8793056843430512585

`∑[A080891(2*A061397(n+1))]`
-/

namespace A321857.P8793056843430512585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080891 (2 * A061397 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A321857.P8793056843430512585

namespace A321857

/-- `∑[A080891(2*A061397(n+1))]` -/
def P8793056843430512585.Spec : Prop :=
  ∀ n, P8793056843430512585.a n = A321857 (n + 1)

end A321857

/-! ## A321857.P12641108195185215234

`∑[char[A020639(n+2)-1]*A080891(2*(n+1))]`
-/

namespace A321857.P12641108195185215234
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2) - 1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A080891 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A321857.P12641108195185215234

namespace A321857

/-- `∑[char[A020639(n+2)-1]*A080891(2*(n+1))]` -/
def P12641108195185215234.Spec : Prop :=
  ∀ n, P12641108195185215234.a n = A321857 (n + 1)

end A321857

/-! ## A321857.P12265501121162389877

`∑[A008683(2^A001222(n+1)+8)*A080891(2*(n+1))]`
-/

namespace A321857.P12265501121162389877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A001222 (n + 1) : ℤ) + 8)).toNat * A080891 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A321857.P12265501121162389877

namespace A321857

/-- `∑[A008683(2^A001222(n+1)+8)*A080891(2*(n+1))]` -/
def P12265501121162389877.Spec : Prop :=
  ∀ n, P12265501121162389877.a n = A321857 (n + 1)

end A321857

/-!
# A321858: a(n) = Pi(12,5)(n) + Pi(12,7)(n) - Pi(12,1)(n) - Pi(12,11)(n) where Pi(a,b)(x) denotes the number of primes in the arithmetic progression a*k + b less than or equal to x.

The programs for A321858, the canonical program `A321858.P17327657512236204005` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A321858 has offset 1).

The definition of A321858 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A321858.P14293789477340498982

`∑[-A110161(∑{p}[n+1, C(#, n)])]`
-/

namespace A321858.P14293789477340498982
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A110161 (∑ p ∈ Nat.primeFactors (f2 n), Nat.choose p n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A321858.P14293789477340498982

namespace A321858

/-- `∑[-A110161(∑{p}[n+1, C(#, n)])]` -/
def P14293789477340498982.Spec : Prop :=
  ∀ n, P14293789477340498982.a n = A321858 (n + 1)

end A321858

/-! ## A321858.P17327657512236204005

`A321863(∑[∏{p}[n+1, C(#, n)%2]])`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A321858

/-- `A321863(∑[∏{p}[n+1, C(#, n)%2]])` -/
def P17327657512236204005.Spec : Prop :=
  ∀ n, P17327657512236204005.a n = A321858 (n + 1)

theorem P17327657512236204005.correct : P17327657512236204005.Spec := by
  intro n
  simp only [A321858, Nat.add_sub_cancel]

end A321858

/-! ## A321858.P3847276828859761262

`A321863(∑[char[p?[2*n+1]-1]]+1)`
-/

namespace A321858.P3847276828859761262
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f3 (SequenceMachineLib.nth (fun j => (f3 j).Prime) n) : ℤ) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321863 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A321858.P3847276828859761262

namespace A321858

/-- `A321863(∑[char[p?[2*n+1]-1]]+1)` -/
def P3847276828859761262.Spec : Prop :=
  ∀ n, P3847276828859761262.a n = A321858 (n + 1)

end A321858

/-! ## A321858.P18354779508698245088

`1-∑[A110161(∑{p}[2*(n+1), C(#, n)])]`
-/

namespace A321858.P18354779508698245088
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110161 (∑ p ∈ Nat.primeFactors (f2 n), Nat.choose p n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A321858.P18354779508698245088

namespace A321858

/-- `1-∑[A110161(∑{p}[2*(n+1), C(#, n)])]` -/
def P18354779508698245088.Spec : Prop :=
  ∀ n, P18354779508698245088.a n = A321858 (n + 1)

end A321858

/-! ## A321858.P2659175731413360500

`abs(∑[A110161(A118136(n))])`
-/

namespace A321858.P2659175731413360500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110161 (A118136 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A321858.P2659175731413360500

namespace A321858

/-- `abs(∑[A110161(A118136(n))])` -/
def P2659175731413360500.Spec : Prop :=
  ∀ n, P2659175731413360500.a n = A321858 (n + 1)

end A321858

/-! ## A321858.P8328722480592525592

`A321863(∑[A080545(n+1)])`
-/

namespace A321858.P8328722480592525592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321863 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A321858.P8328722480592525592

namespace A321858

/-- `A321863(∑[A080545(n+1)])` -/
def P8328722480592525592.Spec : Prop :=
  ∀ n, P8328722480592525592.a n = A321858 (n + 1)

end A321858

/-! ## A321858.P18140027998110604594

`A321863(A033270(n+1)+1)`
-/

namespace A321858.P18140027998110604594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321863 (A033270 (n + 1) + 1).toNat

end

end A321858.P18140027998110604594

namespace A321858

/-- `A321863(A033270(n+1)+1)` -/
def P18140027998110604594.Spec : Prop :=
  ∀ n, P18140027998110604594.a n = A321858 (n + 1)

end A321858

/-! ## A321858.P2651730113340461853

`abs(∑[A110161(A061397(n+1))])`
-/

namespace A321858.P2651730113340461853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110161 (A061397 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A321858.P2651730113340461853

namespace A321858

/-- `abs(∑[A110161(A061397(n+1))])` -/
def P2651730113340461853.Spec : Prop :=
  ∀ n, P2651730113340461853.a n = A321858 (n + 1)

end A321858

/-!
# A321859: Number of primes congruent to 3, 5, 6 modulo 7 and <= n minus number of primes congruent to 1, 2, 4 modulo 7 and <= n.

The programs for A321859, the canonical program `A321859.P11466113994403305771` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A321859 has offset 1).

The definition of A321859 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A321859.P11466113994403305771

`∑[-A175629(∑{p}[n+1, C(#, n)])]`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A321859

/-- `∑[-A175629(∑{p}[n+1, C(#, n)])]` -/
def P11466113994403305771.Spec : Prop :=
  ∀ n, P11466113994403305771.a n = A321859 (n + 1)

theorem P11466113994403305771.correct : P11466113994403305771.Spec := by
  intro n
  simp only [A321859, Nat.add_sub_cancel]

end A321859

/-! ## A321859.P15060557999160091395

`∑[-A175629(A061397(n+1))]`
-/

namespace A321859.P15060557999160091395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A175629 (A061397 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A321859.P15060557999160091395

namespace A321859

/-- `∑[-A175629(A061397(n+1))]` -/
def P15060557999160091395.Spec : Prop :=
  ∀ n, P15060557999160091395.a n = A321859 (n + 1)

end A321859

/-! ## A321859.P13701620039895374648

`A321864(or(C(2, n+1), A000720(n+1)))`
-/

namespace A321859.P13701620039895374648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321864 (Int.lor (Nat.choose 2 (n + 1) : ℤ) (A000720 (n + 1))).toNat

end

end A321859.P13701620039895374648

namespace A321859

/-- `A321864(or(C(2, n+1), A000720(n+1)))` -/
def P13701620039895374648.Spec : Prop :=
  ∀ n, P13701620039895374648.a n = A321859 (n + 1)

end A321859

/-! ## A321859.P13509515132440356398

`A321864(A000720(n+1)+A000038(n))`
-/

namespace A321859.P13509515132440356398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321864 (A000720 (n + 1) + A000038 n).toNat

end

end A321859.P13509515132440356398

namespace A321859

/-- `A321864(A000720(n+1)+A000038(n))` -/
def P13509515132440356398.Spec : Prop :=
  ∀ n, P13509515132440356398.a n = A321859 (n + 1)

end A321859

/-! ## A321859.P12385755737256360442

`∑[A175629(A061397(n+1))]*A057428(n)`
-/

namespace A321859.P12385755737256360442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175629 (A061397 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A057428 n

end

end A321859.P12385755737256360442

namespace A321859

/-- `∑[A175629(A061397(n+1))]*A057428(n)` -/
def P12385755737256360442.Spec : Prop :=
  ∀ n, P12385755737256360442.a n = A321859 (n + 1)

end A321859

/-! ## A321859.P12599495284690998439

`∑[A008683(n+1)*A175629(A061397(n+1))]`
-/

namespace A321859.P12599495284690998439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1) * A175629 (A061397 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A321859.P12599495284690998439

namespace A321859

/-- `∑[A008683(n+1)*A175629(A061397(n+1))]` -/
def P12599495284690998439.Spec : Prop :=
  ∀ n, P12599495284690998439.a n = A321859 (n + 1)

end A321859

/-! ## A321859.P16429999055071785471

`∑[A000035(2*n)-A175629(A061397(n+1))]`
-/

namespace A321859.P16429999055071785471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (2 * n) - A175629 (A061397 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A321859.P16429999055071785471

namespace A321859

/-- `∑[A000035(2*n)-A175629(A061397(n+1))]` -/
def P16429999055071785471.Spec : Prop :=
  ∀ n, P16429999055071785471.a n = A321859 (n + 1)

end A321859

/-!
# A321860: Number of primes congruent to 2, 6, 7, 8, 10 modulo 11 and <= n minus number of primes congruent to 1, 3, 4, 5, 9 modulo 11 and <= n.

The programs for A321860, the canonical program `A321860.P17563916367894010708` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A321860 has offset 1).

The definition of A321860 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A321860.P17563916367894010708

`∑[-A011582(∑{p}[n+1, C(#, n)])]`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A321860

/-- `∑[-A011582(∑{p}[n+1, C(#, n)])]` -/
def P17563916367894010708.Spec : Prop :=
  ∀ n, P17563916367894010708.a n = A321860 (n + 1)

theorem P17563916367894010708.correct : P17563916367894010708.Spec := by
  intro n
  simp only [A321860, Nat.add_sub_cancel]

end A321860

/-! ## A321860.P5523408229961800136

`∑[-A011582(A061397(n+1))]`
-/

namespace A321860.P5523408229961800136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A011582 (A061397 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A321860.P5523408229961800136

namespace A321860

/-- `∑[-A011582(A061397(n+1))]` -/
def P5523408229961800136.Spec : Prop :=
  ∀ n, P5523408229961800136.a n = A321860 (n + 1)

end A321860

/-! ## A321860.P2561263732205105535

`∑[1-A035179(A089026(n+1))]`
-/

namespace A321860.P2561263732205105535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A035179 (A089026 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A321860.P2561263732205105535

namespace A321860

/-- `∑[1-A035179(A089026(n+1))]` -/
def P2561263732205105535.Spec : Prop :=
  ∀ n, P2561263732205105535.a n = A321860 (n + 1)

end A321860

/-! ## A321860.P9139793053533234361

`A321865(A000720(n+1)+A000038(n))`
-/

namespace A321860.P9139793053533234361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321865 (A000720 (n + 1) + A000038 n).toNat

end

end A321860.P9139793053533234361

namespace A321860

/-- `A321865(A000720(n+1)+A000038(n))` -/
def P9139793053533234361.Spec : Prop :=
  ∀ n, P9139793053533234361.a n = A321860 (n + 1)

end A321860

/-! ## A321860.P13177523117022899201

`A321865(A033270(n+1)+A000038(n)!)`
-/

namespace A321860.P13177523117022899201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321865 (A033270 (n + 1) + (Nat.factorial (A000038 n).toNat : ℤ)).toNat

end

end A321860.P13177523117022899201

namespace A321860

/-- `A321865(A033270(n+1)+A000038(n)!)` -/
def P13177523117022899201.Spec : Prop :=
  ∀ n, P13177523117022899201.a n = A321860 (n + 1)

end A321860

/-! ## A321860.P17958656038151723709

`∑[A011582(2*A061397(n+1))]`
-/

namespace A321860.P17958656038151723709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011582 (2 * A061397 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A321860.P17958656038151723709

namespace A321860

/-- `∑[A011582(2*A061397(n+1))]` -/
def P17958656038151723709.Spec : Prop :=
  ∀ n, P17958656038151723709.a n = A321860 (n + 1)

end A321860

/-! ## A321860.P4094831985308209075

`∑[A010051(n+1)*A011582(2*(n+1))]`
-/

namespace A321860.P4094831985308209075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1) * A011582 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A321860.P4094831985308209075

namespace A321860

/-- `∑[A010051(n+1)*A011582(2*(n+1))]` -/
def P4094831985308209075.Spec : Prop :=
  ∀ n, P4094831985308209075.a n = A321860 (n + 1)

end A321860

/-!
# A321861: a(n) = A071838(prime(n)).

The programs for A321861, the canonical program `A321861.P2022339291446395564` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A321861 has offset 1).

The definition of A321861 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A321861.P7940273299627554472

`abs(∑[A226523(n+1)])`
-/

namespace A321861.P7940273299627554472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226523 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A321861.P7940273299627554472

namespace A321861

/-- `abs(∑[A226523(n+1)])` -/
def P7940273299627554472.Spec : Prop :=
  ∀ n, P7940273299627554472.a n = A321861 (n + 1)

end A321861

/-! ## A321861.P2022339291446395564

`∑[and(2, -A138420(n+1))]-n`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A321861

/-- `∑[and(2, -A138420(n+1))]-n` -/
def P2022339291446395564.Spec : Prop :=
  ∀ n, P2022339291446395564.a n = A321861 (n + 1)

theorem P2022339291446395564.correct : P2022339291446395564.Spec := by
  intro n
  simp only [A321861, Nat.add_sub_cancel]

end A321861

/-! ## A321861.P5369339004907167543

`∑[and(2, C(A000040(n+1), 2))]-n`
-/

namespace A321861.P5369339004907167543
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 2 (Nat.choose (A000040 (n + 1)).toNat 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n : ℤ)

end

end A321861.P5369339004907167543

namespace A321861

/-- `∑[and(2, C(A000040(n+1), 2))]-n` -/
def P5369339004907167543.Spec : Prop :=
  ∀ n, P5369339004907167543.a n = A321861 (n + 1)

end A321861

/-! ## A321861.P7194002572946640863

`A226523(n+2)-∑[A226523(n+2)]`
-/

namespace A321861.P7194002572946640863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226523 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226523 (n + 2) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A321861.P7194002572946640863

namespace A321861

/-- `A226523(n+2)-∑[A226523(n+2)]` -/
def P7194002572946640863.Spec : Prop :=
  ∀ n, P7194002572946640863.a n = A321861 (n + 1)

end A321861

/-! ## A321861.P4983544178013654404

`A071838(p?[xor(1, n)+1])`
-/

namespace A321861.P4983544178013654404
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071838 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A321861.P4983544178013654404

namespace A321861

/-- `A071838(p?[xor(1, n)+1])` -/
def P4983544178013654404.Spec : Prop :=
  ∀ n, P4983544178013654404.a n = A321861 (n + 1)

end A321861

/-! ## A321861.P14455020562867502473

`∑[A188510(p?[round(8*n/7)]-2)]`
-/

namespace A321861.P14455020562867502473
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188510 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) - 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A321861.P14455020562867502473

namespace A321861

/-- `∑[A188510(p?[round(8*n/7)]-2)]` -/
def P14455020562867502473.Spec : Prop :=
  ∀ n, P14455020562867502473.a n = A321861 (n + 1)

end A321861

/-! ## A321861.P12276021351550688493

`A071838(A000040(n+1))`
-/

namespace A321861.P12276021351550688493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071838 (A000040 (n + 1)).toNat

end

end A321861.P12276021351550688493

namespace A321861

/-- `A071838(A000040(n+1))` -/
def P12276021351550688493.Spec : Prop :=
  ∀ n, P12276021351550688493.a n = A321861 (n + 1)

end A321861

/-! ## A321861.P12313565554500900811

`A071838(A006005(n+1))`
-/

namespace A321861.P12313565554500900811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071838 (A006005 (n + 1)).toNat

end

end A321861.P12313565554500900811

namespace A321861

/-- `A071838(A006005(n+1))` -/
def P12313565554500900811.Spec : Prop :=
  ∀ n, P12313565554500900811.a n = A321861 (n + 1)

end A321861

/-! ## A321861.P11227964774617774984

`A071838(A055670(n+1))`
-/

namespace A321861.P11227964774617774984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071838 (A055670 (n + 1)).toNat

end

end A321861.P11227964774617774984

namespace A321861

/-- `A071838(A055670(n+1))` -/
def P11227964774617774984.Spec : Prop :=
  ∀ n, P11227964774617774984.a n = A321861 (n + 1)

end A321861

/-! ## A321861.P1886257779865536688

`A071838(A078444(n+1))`
-/

namespace A321861.P1886257779865536688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071838 (A078444 (n + 1)).toNat

end

end A321861.P1886257779865536688

namespace A321861

/-- `A071838(A078444(n+1))` -/
def P1886257779865536688.Spec : Prop :=
  ∀ n, P1886257779865536688.a n = A321861 (n + 1)

end A321861

/-! ## A321861.P11176662072382691868

`A071838(A162735(n+1))`
-/

namespace A321861.P11176662072382691868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071838 (A162735 (n + 1)).toNat

end

end A321861.P11176662072382691868

namespace A321861

/-- `A071838(A162735(n+1))` -/
def P11176662072382691868.Spec : Prop :=
  ∀ n, P11176662072382691868.a n = A321861 (n + 1)

end A321861

/-! ## A321861.P159966063080154186

`A071838(A162800(n+1))`
-/

namespace A321861.P159966063080154186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071838 (A162800 (n + 1)).toNat

end

end A321861.P159966063080154186

namespace A321861

/-- `A071838(A162800(n+1))` -/
def P159966063080154186.Spec : Prop :=
  ∀ n, P159966063080154186.a n = A321861 (n + 1)

end A321861

/-! ## A321861.P873202232841935246

`∑[A188510(A000040(n+1)-2)]`
-/

namespace A321861.P873202232841935246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188510 (A000040 (n + 1) - 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A321861.P873202232841935246

namespace A321861

/-- `∑[A188510(A000040(n+1)-2)]` -/
def P873202232841935246.Spec : Prop :=
  ∀ n, P873202232841935246.a n = A321861 (n + 1)

end A321861

/-! ## A321861.P9825679445162417885

`A071838(p?[2*n+1]-2)`
-/

namespace A321861.P9825679445162417885
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071838 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) - 2)

end

end A321861.P9825679445162417885

namespace A321861

/-- `A071838(p?[2*n+1]-2)` -/
def P9825679445162417885.Spec : Prop :=
  ∀ n, P9825679445162417885.a n = A321861 (n + 1)

end A321861

/-! ## A321861.P10714614235579172638

`A071838(and(p?[2*n+1], -2))`
-/

namespace A321861.P10714614235579172638
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071838 (Int.land (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) (-2)).toNat

end

end A321861.P10714614235579172638

namespace A321861

/-- `A071838(and(p?[2*n+1], -2))` -/
def P10714614235579172638.Spec : Prop :=
  ∀ n, P10714614235579172638.a n = A321861 (n + 1)

end A321861

/-! ## A321861.P10920118658408573923

`A071838(A157049(n+1))`
-/

namespace A321861.P10920118658408573923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071838 (A157049 (n + 1)).toNat

end

end A321861.P10920118658408573923

namespace A321861

/-- `A071838(A157049(n+1))` -/
def P10920118658408573923.Spec : Prop :=
  ∀ n, P10920118658408573923.a n = A321861 (n + 1)

end A321861

/-! ## A321861.P11632670277537549872

`A071838(A165972(n+1))`
-/

namespace A321861.P11632670277537549872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071838 (A165972 (n + 1)).toNat

end

end A321861.P11632670277537549872

namespace A321861

/-- `A071838(A165972(n+1))` -/
def P11632670277537549872.Spec : Prop :=
  ∀ n, P11632670277537549872.a n = A321861 (n + 1)

end A321861

/-! ## A321861.P996313677373188926

`A071838(A140785(n+1))`
-/

namespace A321861.P996313677373188926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071838 (A140785 (n + 1)).toNat

end

end A321861.P996313677373188926

namespace A321861

/-- `A071838(A140785(n+1))` -/
def P996313677373188926.Spec : Prop :=
  ∀ n, P996313677373188926.a n = A321861 (n + 1)

end A321861

/-! ## A321861.P12282018640933169555

`∑[A046980(3*p?[round(8*n/7)])]`
-/

namespace A321861.P12282018640933169555
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046980 (3 * f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A321861.P12282018640933169555

namespace A321861

/-- `∑[A046980(3*p?[round(8*n/7)])]` -/
def P12282018640933169555.Spec : Prop :=
  ∀ n, P12282018640933169555.a n = A321861 (n + 1)

end A321861

/-! ## A321861.P17515888076297781974

`A071838(A004789(n+1))`
-/

namespace A321861.P17515888076297781974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071838 (A004789 (n + 1)).toNat

end

end A321861.P17515888076297781974

namespace A321861

/-- `A071838(A004789(n+1))` -/
def P17515888076297781974.Spec : Prop :=
  ∀ n, P17515888076297781974.a n = A321861 (n + 1)

end A321861

/-!
# A321862: a(n) = A321857(prime(n)).

The programs for A321862, the canonical program `A321862.P7303955421962956964` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A321862 has offset 1).

The definition of A321862 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A321862.P7303955421962956964

`∑[1-(A000040(n+1)²+1)%5]`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A321862

/-- `∑[1-(A000040(n+1)²+1)%5]` -/
def P7303955421962956964.Spec : Prop :=
  ∀ n, P7303955421962956964.a n = A321862 (n + 1)

theorem P7303955421962956964.correct : P7303955421962956964.Spec := by
  intro n
  simp only [A321862, Nat.add_sub_cancel]

end A321862

/-! ## A321862.P11553841340648982955

`∑[1-(p?[xor(1, n)]²+1)%5]`
-/

namespace A321862.P11553841340648982955
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (((f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) ^ 2 + 1) % 5 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A321862.P11553841340648982955

namespace A321862

/-- `∑[1-(p?[xor(1, n)]²+1)%5]` -/
def P11553841340648982955.Spec : Prop :=
  ∀ n, P11553841340648982955.a n = A321862 (n + 1)

end A321862

/-! ## A321862.P171594422177526685

`∑[1-∑{d}[p?[xor(1, n)], #²]%5]`
-/

namespace A321862.P171594422177526685
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => (f3 j).Prime) n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (((∑ d ∈ Nat.divisors (f2 n), d ^ 2) % 5 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A321862.P171594422177526685

namespace A321862

/-- `∑[1-∑{d}[p?[xor(1, n)], #²]%5]` -/
def P171594422177526685.Spec : Prop :=
  ∀ n, P171594422177526685.a n = A321862 (n + 1)

end A321862

/-! ## A321862.P3817449477963533907

`∑[1-abs((p?[xor(1, n)]²-4)%5)]`
-/

namespace A321862.P3817449477963533907
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - |Int.tmod ((f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) ^ 2 : ℤ) - 4) 5|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A321862.P3817449477963533907

namespace A321862

/-- `∑[1-abs((p?[xor(1, n)]²-4)%5)]` -/
def P3817449477963533907.Spec : Prop :=
  ∀ n, P3817449477963533907.a n = A321862 (n + 1)

end A321862

/-! ## A321862.P3065277221719937808

`∑[1-record[A006530(n+2)²+1]%5]`
-/

namespace A321862.P3065277221719937808
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2) ^ 2 + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - Int.tmod (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)) 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A321862.P3065277221719937808

namespace A321862

/-- `∑[1-record[A006530(n+2)²+1]%5]` -/
def P3065277221719937808.Spec : Prop :=
  ∀ n, P3065277221719937808.a n = A321862 (n + 1)

end A321862

/-! ## A321862.P15503087973345154033

`∑[1-record[A020639(n+2)²-4]%5]`
-/

namespace A321862.P15503087973345154033
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2) ^ 2 - 4

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - Int.tmod (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)) 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A321862.P15503087973345154033

namespace A321862

/-- `∑[1-record[A020639(n+2)²-4]%5]` -/
def P15503087973345154033.Spec : Prop :=
  ∀ n, P15503087973345154033.a n = A321862 (n + 1)

end A321862

/-! ## A321862.P9186742562646803386

`∑[1-A035187(p?[xor(1, n)])]`
-/

namespace A321862.P9186742562646803386
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A035187 (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A321862.P9186742562646803386

namespace A321862

/-- `∑[1-A035187(p?[xor(1, n)])]` -/
def P9186742562646803386.Spec : Prop :=
  ∀ n, P9186742562646803386.a n = A321862 (n + 1)

end A321862

/-! ## A321862.P11734940187130980458

`∑[-A080891(p?[xor(1, n)+1])]`
-/

namespace A321862.P11734940187130980458
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A080891 (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A321862.P11734940187130980458

namespace A321862

/-- `∑[-A080891(p?[xor(1, n)+1])]` -/
def P11734940187130980458.Spec : Prop :=
  ∀ n, P11734940187130980458.a n = A321862 (n + 1)

end A321862

/-! ## A321862.P16922000767658862693

`A321857(A000040(n+1))`
-/

namespace A321862.P16922000767658862693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321857 (A000040 (n + 1)).toNat

end

end A321862.P16922000767658862693

namespace A321862

/-- `A321857(A000040(n+1))` -/
def P16922000767658862693.Spec : Prop :=
  ∀ n, P16922000767658862693.a n = A321862 (n + 1)

end A321862

/-! ## A321862.P9442812487807869701

`A321857(A078444(n+1))`
-/

namespace A321862.P9442812487807869701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321857 (A078444 (n + 1)).toNat

end

end A321862.P9442812487807869701

namespace A321862

/-- `A321857(A078444(n+1))` -/
def P9442812487807869701.Spec : Prop :=
  ∀ n, P9442812487807869701.a n = A321862 (n + 1)

end A321862

/-! ## A321862.P14091337874499498036

`A321857(A162800(n+1))`
-/

namespace A321862.P14091337874499498036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321857 (A162800 (n + 1)).toNat

end

end A321862.P14091337874499498036

namespace A321862

/-- `A321857(A162800(n+1))` -/
def P14091337874499498036.Spec : Prop :=
  ∀ n, P14091337874499498036.a n = A321862 (n + 1)

end A321862

/-! ## A321862.P15423431799997253896

`A321857(A008578(n+2))`
-/

namespace A321862.P15423431799997253896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321857 (A008578 (n + 2)).toNat

end

end A321862.P15423431799997253896

namespace A321862

/-- `A321857(A008578(n+2))` -/
def P15423431799997253896.Spec : Prop :=
  ∀ n, P15423431799997253896.a n = A321862 (n + 1)

end A321862

/-! ## A321862.P1348123138182307730

`A321857(A006093(n+1)+1)`
-/

namespace A321862.P1348123138182307730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321857 (A006093 (n + 1) + 1).toNat

end

end A321862.P1348123138182307730

namespace A321862

/-- `A321857(A006093(n+1)+1)` -/
def P1348123138182307730.Spec : Prop :=
  ∀ n, P1348123138182307730.a n = A321862 (n + 1)

end A321862

/-! ## A321862.P15567361872501169874

`A321857(A157049(n+1))`
-/

namespace A321862.P15567361872501169874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321857 (A157049 (n + 1)).toNat

end

end A321862.P15567361872501169874

namespace A321862

/-- `A321857(A157049(n+1))` -/
def P15567361872501169874.Spec : Prop :=
  ∀ n, P15567361872501169874.a n = A321862 (n + 1)

end A321862

/-! ## A321862.P7144781888470443393

`A321857(A006093(n+2))`
-/

namespace A321862.P7144781888470443393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321857 (A006093 (n + 2)).toNat

end

end A321862.P7144781888470443393

namespace A321862

/-- `A321857(A006093(n+2))` -/
def P7144781888470443393.Spec : Prop :=
  ∀ n, P7144781888470443393.a n = A321862 (n + 1)

end A321862

/-! ## A321862.P1369586316104802286

`A321857(A039915(n+2))`
-/

namespace A321862.P1369586316104802286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321857 (A039915 (n + 2)).toNat

end

end A321862.P1369586316104802286

namespace A321862

/-- `A321857(A039915(n+2))` -/
def P1369586316104802286.Spec : Prop :=
  ∀ n, P1369586316104802286.a n = A321862 (n + 1)

end A321862

/-! ## A321862.P3141259322459755553

`A321857(A140785(n+1))`
-/

namespace A321862.P3141259322459755553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321857 (A140785 (n + 1)).toNat

end

end A321862.P3141259322459755553

namespace A321862

/-- `A321857(A140785(n+1))` -/
def P3141259322459755553.Spec : Prop :=
  ∀ n, P3141259322459755553.a n = A321862 (n + 1)

end A321862

/-! ## A321862.P2650351430224177564

`∑[A100047(4*p?[round(8*n/7)])]`
-/

namespace A321862.P2650351430224177564
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100047 (4 * f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A321862.P2650351430224177564

namespace A321862

/-- `∑[A100047(4*p?[round(8*n/7)])]` -/
def P2650351430224177564.Spec : Prop :=
  ∀ n, P2650351430224177564.a n = A321862 (n + 1)

end A321862

/-! ## A321862.P1397390377980616114

`A321857(A004789(n+1))`
-/

namespace A321862.P1397390377980616114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321857 (A004789 (n + 1)).toNat

end

end A321862.P1397390377980616114

namespace A321862

/-- `A321857(A004789(n+1))` -/
def P1397390377980616114.Spec : Prop :=
  ∀ n, P1397390377980616114.a n = A321862 (n + 1)

end A321862

/-! ## A321862.P8777578144711611677

`∑[1-A086937(n+1)]`
-/

namespace A321862.P8777578144711611677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A086937 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A321862.P8777578144711611677

namespace A321862

/-- `∑[1-A086937(n+1)]` -/
def P8777578144711611677.Spec : Prop :=
  ∀ n, P8777578144711611677.a n = A321862 (n + 1)

end A321862

/-!
# A321863: a(n) = A321858(prime(n)).

The programs for A321863, the canonical program `A321863.P1638923899209457201` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A321863 has offset 1).

The definition of A321863 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A321863.P1638923899209457201

`∑[round(A000040(n+1)/3)%4-1]`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A321863

/-- `∑[round(A000040(n+1)/3)%4-1]` -/
def P1638923899209457201.Spec : Prop :=
  ∀ n, P1638923899209457201.a n = A321863 (n + 1)

theorem P1638923899209457201.correct : P1638923899209457201.Spec := by
  intro n
  simp only [A321863, Nat.add_sub_cancel]

end A321863

/-! ## A321863.P15892172680754867659

`∑[-A110161(Δ[A007504(n)])]`
-/

namespace A321863.P15892172680754867659
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A110161 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A321863.P15892172680754867659

namespace A321863

/-- `∑[-A110161(Δ[A007504(n)])]` -/
def P15892172680754867659.Spec : Prop :=
  ∀ n, P15892172680754867659.a n = A321863 (n + 1)

end A321863

/-! ## A321863.P16386624320922252662

`∑[-A110161(record[A006530(n+2)])]`
-/

namespace A321863.P16386624320922252662
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A110161 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A321863.P16386624320922252662

namespace A321863

/-- `∑[-A110161(record[A006530(n+2)])]` -/
def P16386624320922252662.Spec : Prop :=
  ∀ n, P16386624320922252662.a n = A321863 (n + 1)

end A321863

/-! ## A321863.P9333758191088262084

`∑[-A110161(record[A020639(n+2)])]`
-/

namespace A321863.P9333758191088262084
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A110161 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A321863.P9333758191088262084

namespace A321863

/-- `∑[-A110161(record[A020639(n+2)])]` -/
def P9333758191088262084.Spec : Prop :=
  ∀ n, P9333758191088262084.a n = A321863 (n + 1)

end A321863

/-! ## A321863.P14096357266253459692

`∑[A110161(A000040(n+1)+6)]`
-/

namespace A321863.P14096357266253459692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110161 (A000040 (n + 1) + 6).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A321863.P14096357266253459692

namespace A321863

/-- `∑[A110161(A000040(n+1)+6)]` -/
def P14096357266253459692.Spec : Prop :=
  ∀ n, P14096357266253459692.a n = A321863 (n + 1)

end A321863

/-! ## A321863.P12256092808182671412

`A321858(A000040(n+1))`
-/

namespace A321863.P12256092808182671412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321858 (A000040 (n + 1)).toNat

end

end A321863.P12256092808182671412

namespace A321863

/-- `A321858(A000040(n+1))` -/
def P12256092808182671412.Spec : Prop :=
  ∀ n, P12256092808182671412.a n = A321863 (n + 1)

end A321863

/-! ## A321863.P14915818534636077029

`A321858(A006005(n+1))`
-/

namespace A321863.P14915818534636077029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321858 (A006005 (n + 1)).toNat

end

end A321863.P14915818534636077029

namespace A321863

/-- `A321858(A006005(n+1))` -/
def P14915818534636077029.Spec : Prop :=
  ∀ n, P14915818534636077029.a n = A321863 (n + 1)

end A321863

/-! ## A321863.P15882688375991018993

`A321858(A008864(n+1))`
-/

namespace A321863.P15882688375991018993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321858 (A008864 (n + 1)).toNat

end

end A321863.P15882688375991018993

namespace A321863

/-- `A321858(A008864(n+1))` -/
def P15882688375991018993.Spec : Prop :=
  ∀ n, P15882688375991018993.a n = A321863 (n + 1)

end A321863

/-! ## A321863.P7817543593134874404

`A321858(A028815(n+1))`
-/

namespace A321863.P7817543593134874404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321858 (A028815 (n + 1)).toNat

end

end A321863.P7817543593134874404

namespace A321863

/-- `A321858(A028815(n+1))` -/
def P7817543593134874404.Spec : Prop :=
  ∀ n, P7817543593134874404.a n = A321863 (n + 1)

end A321863

/-! ## A321863.P16232867307939544025

`A321858(A055670(n+1))`
-/

namespace A321863.P16232867307939544025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321858 (A055670 (n + 1)).toNat

end

end A321863.P16232867307939544025

namespace A321863

/-- `A321858(A055670(n+1))` -/
def P16232867307939544025.Spec : Prop :=
  ∀ n, P16232867307939544025.a n = A321863 (n + 1)

end A321863

/-! ## A321863.P9518061023638131414

`A321858(A078444(n+1))`
-/

namespace A321863.P9518061023638131414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321858 (A078444 (n + 1)).toNat

end

end A321863.P9518061023638131414

namespace A321863

/-- `A321858(A078444(n+1))` -/
def P9518061023638131414.Spec : Prop :=
  ∀ n, P9518061023638131414.a n = A321863 (n + 1)

end A321863

/-! ## A321863.P4212985898886421569

`A321858(A162735(n+1))`
-/

namespace A321863.P4212985898886421569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321858 (A162735 (n + 1)).toNat

end

end A321863.P4212985898886421569

namespace A321863

/-- `A321858(A162735(n+1))` -/
def P4212985898886421569.Spec : Prop :=
  ∀ n, P4212985898886421569.a n = A321863 (n + 1)

end A321863

/-! ## A321863.P2154003754836870879

`A321858(A162800(n+1))`
-/

namespace A321863.P2154003754836870879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321858 (A162800 (n + 1)).toNat

end

end A321863.P2154003754836870879

namespace A321863

/-- `A321858(A162800(n+1))` -/
def P2154003754836870879.Spec : Prop :=
  ∀ n, P2154003754836870879.a n = A321863 (n + 1)

end A321863

/-! ## A321863.P10539067325154123119

`A321858(A175216(n+1))`
-/

namespace A321863.P10539067325154123119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321858 (A175216 (n + 1)).toNat

end

end A321863.P10539067325154123119

namespace A321863

/-- `A321858(A175216(n+1))` -/
def P10539067325154123119.Spec : Prop :=
  ∀ n, P10539067325154123119.a n = A321863 (n + 1)

end A321863

/-! ## A321863.P17001104663775593092

`∑[A309970(A000040(n+1)+6)]`
-/

namespace A321863.P17001104663775593092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309970 (A000040 (n + 1) + 6).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A321863.P17001104663775593092

namespace A321863

/-- `∑[A309970(A000040(n+1)+6)]` -/
def P17001104663775593092.Spec : Prop :=
  ∀ n, P17001104663775593092.a n = A321863 (n + 1)

end A321863

/-! ## A321863.P1667379909673861026

`abs(∑[A014021(A000040(n+1)+1)])`
-/

namespace A321863.P1667379909673861026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014021 (A000040 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A321863.P1667379909673861026

namespace A321863

/-- `abs(∑[A014021(A000040(n+1)+1)])` -/
def P1667379909673861026.Spec : Prop :=
  ∀ n, P1667379909673861026.a n = A321863 (n + 1)

end A321863

/-! ## A321863.P15263417943257780568

`A321858(A157049(n+1))`
-/

namespace A321863.P15263417943257780568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321858 (A157049 (n + 1)).toNat

end

end A321863.P15263417943257780568

namespace A321863

/-- `A321858(A157049(n+1))` -/
def P15263417943257780568.Spec : Prop :=
  ∀ n, P15263417943257780568.a n = A321863 (n + 1)

end A321863

/-! ## A321863.P3829667141875122618

`A321858(A165972(n+1))`
-/

namespace A321863.P3829667141875122618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321858 (A165972 (n + 1)).toNat

end

end A321863.P3829667141875122618

namespace A321863

/-- `A321858(A165972(n+1))` -/
def P3829667141875122618.Spec : Prop :=
  ∀ n, P3829667141875122618.a n = A321863 (n + 1)

end A321863

/-! ## A321863.P323050514077414215

`A321858(A140785(n+1))`
-/

namespace A321863.P323050514077414215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321858 (A140785 (n + 1)).toNat

end

end A321863.P323050514077414215

namespace A321863

/-- `A321858(A140785(n+1))` -/
def P323050514077414215.Spec : Prop :=
  ∀ n, P323050514077414215.a n = A321863 (n + 1)

end A321863

/-! ## A321863.P15743870652132491768

`A321858(A004789(n+1))`
-/

namespace A321863.P15743870652132491768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321858 (A004789 (n + 1)).toNat

end

end A321863.P15743870652132491768

namespace A321863

/-- `A321858(A004789(n+1))` -/
def P15743870652132491768.Spec : Prop :=
  ∀ n, P15743870652132491768.a n = A321863 (n + 1)

end A321863

/-!
# A321864: a(n) = A321859(prime(n)).

The programs for A321864, the canonical program `A321864.P11419446151730040624` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A321864 has offset 1).

The definition of A321864 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A321864.P11419446151730040624

`A321859(A000040(n+1))`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A321864

/-- `A321859(A000040(n+1))` -/
def P11419446151730040624.Spec : Prop :=
  ∀ n, P11419446151730040624.a n = A321864 (n + 1)

theorem P11419446151730040624.correct : P11419446151730040624.Spec := by
  intro n
  simp only [A321864, Nat.add_sub_cancel]

end A321864

/-! ## A321864.P1344373768784329397

`A321859(A078444(n+1))`
-/

namespace A321864.P1344373768784329397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321859 (A078444 (n + 1)).toNat

end

end A321864.P1344373768784329397

namespace A321864

/-- `A321859(A078444(n+1))` -/
def P1344373768784329397.Spec : Prop :=
  ∀ n, P1344373768784329397.a n = A321864 (n + 1)

end A321864

/-! ## A321864.P6635288564749548045

`A321859(A162800(n+1))`
-/

namespace A321864.P6635288564749548045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321859 (A162800 (n + 1)).toNat

end

end A321864.P6635288564749548045

namespace A321864

/-- `A321859(A162800(n+1))` -/
def P6635288564749548045.Spec : Prop :=
  ∀ n, P6635288564749548045.a n = A321864 (n + 1)

end A321864

/-! ## A321864.P11993297422222699296

`A321859(A008578(n+2))`
-/

namespace A321864.P11993297422222699296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321859 (A008578 (n + 2)).toNat

end

end A321864.P11993297422222699296

namespace A321864

/-- `A321859(A008578(n+2))` -/
def P11993297422222699296.Spec : Prop :=
  ∀ n, P11993297422222699296.a n = A321864 (n + 1)

end A321864

/-! ## A321864.P18005217265554638929

`A321859(A006093(n+1)+1)`
-/

namespace A321864.P18005217265554638929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321859 (A006093 (n + 1) + 1).toNat

end

end A321864.P18005217265554638929

namespace A321864

/-- `A321859(A006093(n+1)+1)` -/
def P18005217265554638929.Spec : Prop :=
  ∀ n, P18005217265554638929.a n = A321864 (n + 1)

end A321864

/-! ## A321864.P17545210012461220309

`n-∑[A035162(record[A128059(n)])]`
-/

namespace A321864.P17545210012461220309
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128059 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035162 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A321864.P17545210012461220309

namespace A321864

/-- `n-∑[A035162(record[A128059(n)])]` -/
def P17545210012461220309.Spec : Prop :=
  ∀ n, P17545210012461220309.a n = A321864 (n + 1)

end A321864

/-! ## A321864.P1288956946382002490

`∑[-A175629(record[A006530(n+2)])]`
-/

namespace A321864.P1288956946382002490
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A175629 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A321864.P1288956946382002490

namespace A321864

/-- `∑[-A175629(record[A006530(n+2)])]` -/
def P1288956946382002490.Spec : Prop :=
  ∀ n, P1288956946382002490.a n = A321864 (n + 1)

end A321864

/-! ## A321864.P4941529972763477081

`∑[-A175629(record[A014963(n+2)])]`
-/

namespace A321864.P4941529972763477081
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A175629 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A321864.P4941529972763477081

namespace A321864

/-- `∑[-A175629(record[A014963(n+2)])]` -/
def P4941529972763477081.Spec : Prop :=
  ∀ n, P4941529972763477081.a n = A321864 (n + 1)

end A321864

/-! ## A321864.P8465468132610342023

`∑[1-A035182(A067747(2*n+1))]`
-/

namespace A321864.P8465468132610342023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A035182 (A067747 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A321864.P8465468132610342023

namespace A321864

/-- `∑[1-A035182(A067747(2*n+1))]` -/
def P8465468132610342023.Spec : Prop :=
  ∀ n, P8465468132610342023.a n = A321864 (n + 1)

end A321864

/-! ## A321864.P8101298471645879789

`∑[1-A091395(eq[2, A000005(n+1)]+1)]`
-/

namespace A321864.P8101298471645879789
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A091395 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A321864.P8101298471645879789

namespace A321864

/-- `∑[1-A091395(eq[2, A000005(n+1)]+1)]` -/
def P8101298471645879789.Spec : Prop :=
  ∀ n, P8101298471645879789.a n = A321864 (n + 1)

end A321864

/-! ## A321864.P16191984883944559915

`A321859(A157049(n+1))`
-/

namespace A321864.P16191984883944559915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321859 (A157049 (n + 1)).toNat

end

end A321864.P16191984883944559915

namespace A321864

/-- `A321859(A157049(n+1))` -/
def P16191984883944559915.Spec : Prop :=
  ∀ n, P16191984883944559915.a n = A321864 (n + 1)

end A321864

/-! ## A321864.P13896419655287616445

`A321859(A006093(n+2))`
-/

namespace A321864.P13896419655287616445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321859 (A006093 (n + 2)).toNat

end

end A321864.P13896419655287616445

namespace A321864

/-- `A321859(A006093(n+2))` -/
def P13896419655287616445.Spec : Prop :=
  ∀ n, P13896419655287616445.a n = A321864 (n + 1)

end A321864

/-! ## A321864.P1264180957722914295

`A321859(A039915(n+2))`
-/

namespace A321864.P1264180957722914295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321859 (A039915 (n + 2)).toNat

end

end A321864.P1264180957722914295

namespace A321864

/-- `A321859(A039915(n+2))` -/
def P1264180957722914295.Spec : Prop :=
  ∀ n, P1264180957722914295.a n = A321864 (n + 1)

end A321864

/-! ## A321864.P4254628441821716651

`A321859(A140785(n+1))`
-/

namespace A321864.P4254628441821716651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321859 (A140785 (n + 1)).toNat

end

end A321864.P4254628441821716651

namespace A321864

/-- `A321859(A140785(n+1))` -/
def P4254628441821716651.Spec : Prop :=
  ∀ n, P4254628441821716651.a n = A321864 (n + 1)

end A321864

/-! ## A321864.P966794278756826700

`∑[1-A035182(p?[A097140(n)])]`
-/

namespace A321864.P966794278756826700
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097140 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A035182 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A321864.P966794278756826700

namespace A321864

/-- `∑[1-A035182(p?[A097140(n)])]` -/
def P966794278756826700.Spec : Prop :=
  ∀ n, P966794278756826700.a n = A321864 (n + 1)

end A321864

/-! ## A321864.P13610679796231245541

`∑[A175629(A001748(n+1))]`
-/

namespace A321864.P13610679796231245541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175629 (A001748 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A321864.P13610679796231245541

namespace A321864

/-- `∑[A175629(A001748(n+1))]` -/
def P13610679796231245541.Spec : Prop :=
  ∀ n, P13610679796231245541.a n = A321864 (n + 1)

end A321864

/-! ## A321864.P9778232066075277092

`∑[A175629(3*A000040(n+1))]`
-/

namespace A321864.P9778232066075277092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175629 (3 * A000040 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A321864.P9778232066075277092

namespace A321864

/-- `∑[A175629(3*A000040(n+1))]` -/
def P9778232066075277092.Spec : Prop :=
  ∀ n, P9778232066075277092.a n = A321864 (n + 1)

end A321864

/-! ## A321864.P18388059010523466211

`A321859(A004789(n+1))`
-/

namespace A321864.P18388059010523466211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321859 (A004789 (n + 1)).toNat

end

end A321864.P18388059010523466211

namespace A321864

/-- `A321859(A004789(n+1))` -/
def P18388059010523466211.Spec : Prop :=
  ∀ n, P18388059010523466211.a n = A321864 (n + 1)

end A321864

/-!
# A321865: a(n) = A321860(prime(n)).

The programs for A321865, the canonical program `A321865.P4320882648814004340` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A321865 has offset 1).

The definition of A321865 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A321865.P4320882648814004340

`∑[round(sin(((11*n-A000040(n+1))^5)%11))]`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A321865

/-- `∑[round(sin(((11*n-A000040(n+1))^5)%11))]` -/
def P4320882648814004340.Spec : Prop :=
  ∀ n, P4320882648814004340.a n = A321865 (n + 1)

theorem P4320882648814004340.correct : P4320882648814004340.Spec := by
  intro n
  simp only [A321865, Nat.add_sub_cancel]

end A321865

/-! ## A321865.P18020320311061920279

`∑[-A011582(p?[xor(1, n)+1])]`
-/

namespace A321865.P18020320311061920279
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A011582 (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A321865.P18020320311061920279

namespace A321865

/-- `∑[-A011582(p?[xor(1, n)+1])]` -/
def P18020320311061920279.Spec : Prop :=
  ∀ n, P18020320311061920279.a n = A321865 (n + 1)

end A321865

/-! ## A321865.P7849572082833366066

`A321860(A000040(n+1))`
-/

namespace A321865.P7849572082833366066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321860 (A000040 (n + 1)).toNat

end

end A321865.P7849572082833366066

namespace A321865

/-- `A321860(A000040(n+1))` -/
def P7849572082833366066.Spec : Prop :=
  ∀ n, P7849572082833366066.a n = A321865 (n + 1)

end A321865

/-! ## A321865.P9046693752869154170

`A321860(A078444(n+1))`
-/

namespace A321865.P9046693752869154170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321860 (A078444 (n + 1)).toNat

end

end A321865.P9046693752869154170

namespace A321865

/-- `A321860(A078444(n+1))` -/
def P9046693752869154170.Spec : Prop :=
  ∀ n, P9046693752869154170.a n = A321865 (n + 1)

end A321865

/-! ## A321865.P7646380439964407389

`A321860(A162800(n+1))`
-/

namespace A321865.P7646380439964407389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321860 (A162800 (n + 1)).toNat

end

end A321865.P7646380439964407389

namespace A321865

/-- `A321860(A162800(n+1))` -/
def P7646380439964407389.Spec : Prop :=
  ∀ n, P7646380439964407389.a n = A321865 (n + 1)

end A321865

/-! ## A321865.P7320923212532740395

`A321860(A008578(n+2))`
-/

namespace A321865.P7320923212532740395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321860 (A008578 (n + 2)).toNat

end

end A321865.P7320923212532740395

namespace A321865

/-- `A321860(A008578(n+2))` -/
def P7320923212532740395.Spec : Prop :=
  ∀ n, P7320923212532740395.a n = A321865 (n + 1)

end A321865

/-! ## A321865.P17188676180194185220

`∑[-A011582(Δ[A007504(n)])]`
-/

namespace A321865.P17188676180194185220
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A011582 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A321865.P17188676180194185220

namespace A321865

/-- `∑[-A011582(Δ[A007504(n)])]` -/
def P17188676180194185220.Spec : Prop :=
  ∀ n, P17188676180194185220.a n = A321865 (n + 1)

end A321865

/-! ## A321865.P14720468117164120848

`A321860(A006093(n+1)+1)`
-/

namespace A321865.P14720468117164120848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321860 (A006093 (n + 1) + 1).toNat

end

end A321865.P14720468117164120848

namespace A321865

/-- `A321860(A006093(n+1)+1)` -/
def P14720468117164120848.Spec : Prop :=
  ∀ n, P14720468117164120848.a n = A321865 (n + 1)

end A321865

/-! ## A321865.P4253694668838805137

`A321860(A157049(n+1))`
-/

namespace A321865.P4253694668838805137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321860 (A157049 (n + 1)).toNat

end

end A321865.P4253694668838805137

namespace A321865

/-- `A321860(A157049(n+1))` -/
def P4253694668838805137.Spec : Prop :=
  ∀ n, P4253694668838805137.a n = A321865 (n + 1)

end A321865

/-! ## A321865.P2562989505732868997

`A321860(A006093(n+2))`
-/

namespace A321865.P2562989505732868997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321860 (A006093 (n + 2)).toNat

end

end A321865.P2562989505732868997

namespace A321865

/-- `A321860(A006093(n+2))` -/
def P2562989505732868997.Spec : Prop :=
  ∀ n, P2562989505732868997.a n = A321865 (n + 1)

end A321865

/-! ## A321865.P13626110261100147289

`A321860(A039915(n+2))`
-/

namespace A321865.P13626110261100147289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321860 (A039915 (n + 2)).toNat

end

end A321865.P13626110261100147289

namespace A321865

/-- `A321860(A039915(n+2))` -/
def P13626110261100147289.Spec : Prop :=
  ∀ n, P13626110261100147289.a n = A321865 (n + 1)

end A321865

/-! ## A321865.P11711967748224755740

`A321860(A140785(n+1))`
-/

namespace A321865.P11711967748224755740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321860 (A140785 (n + 1)).toNat

end

end A321865.P11711967748224755740

namespace A321865

/-- `A321860(A140785(n+1))` -/
def P11711967748224755740.Spec : Prop :=
  ∀ n, P11711967748224755740.a n = A321865 (n + 1)

end A321865

/-! ## A321865.P17632660826859772832

`∑[A011582(2*p?[xor(1, n)+1])]`
-/

namespace A321865.P17632660826859772832
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011582 (2 * f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A321865.P17632660826859772832

namespace A321865

/-- `∑[A011582(2*p?[xor(1, n)+1])]` -/
def P17632660826859772832.Spec : Prop :=
  ∀ n, P17632660826859772832.a n = A321865 (n + 1)

end A321865

/-! ## A321865.P12701039359671142631

`∑[A011582(A001747(n+2))]`
-/

namespace A321865.P12701039359671142631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011582 (A001747 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A321865.P12701039359671142631

namespace A321865

/-- `∑[A011582(A001747(n+2))]` -/
def P12701039359671142631.Spec : Prop :=
  ∀ n, P12701039359671142631.a n = A321865 (n + 1)

end A321865

/-! ## A321865.P11804035049902165592

`∑[A011582(Δ[2*A007504(n)])]`
-/

namespace A321865.P11804035049902165592
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007504 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011582 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A321865.P11804035049902165592

namespace A321865

/-- `∑[A011582(Δ[2*A007504(n)])]` -/
def P11804035049902165592.Spec : Prop :=
  ∀ n, P11804035049902165592.a n = A321865 (n + 1)

end A321865

/-! ## A321865.P7233544212414078490

`∑[A011582(2*A000040(n+1))]`
-/

namespace A321865.P7233544212414078490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011582 (2 * A000040 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A321865.P7233544212414078490

namespace A321865

/-- `∑[A011582(2*A000040(n+1))]` -/
def P7233544212414078490.Spec : Prop :=
  ∀ n, P7233544212414078490.a n = A321865 (n + 1)

end A321865

/-! ## A321865.P5168866251832563632

`∑[-A011582(3*p?[round(8*n/7)])]`
-/

namespace A321865.P5168866251832563632
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A011582 (3 * f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A321865.P5168866251832563632

namespace A321865

/-- `∑[-A011582(3*p?[round(8*n/7)])]` -/
def P5168866251832563632.Spec : Prop :=
  ∀ n, P5168866251832563632.a n = A321865 (n + 1)

end A321865

/-! ## A321865.P11249556388404831468

`A321860(A004789(n+1))`
-/

namespace A321865.P11249556388404831468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321860 (A004789 (n + 1)).toNat

end

end A321865.P11249556388404831468

namespace A321865

/-- `A321860(A004789(n+1))` -/
def P11249556388404831468.Spec : Prop :=
  ∀ n, P11249556388404831468.a n = A321865 (n + 1)

end A321865

/-!
# A321869: Numbers k such that m = 3k^2 + 2k + 10 and 3m - 2 are both primes.

The programs for A321869, there is no canonical definition to state claims against.
-/

/-! ## A321869.P12833312049548763666

`∑[A227349(A043291(n+1))+A266722(n)²]`
-/

namespace A321869.P12833312049548763666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227349 (A043291 (n + 1)).toNat + A266722 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A321869.P12833312049548763666

/-!
# A321870: Fermat pseudoprimes to base 2 that are decagonal.

The programs for A321870, there is no canonical definition to state claims against.
-/

/-! ## A321870.P11735959640793296581

`∪[A182123(n+1), A214017(n+1)]`
-/

namespace A321870.P11735959640793296581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182123 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214017 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A321870.P11735959640793296581

/-! ## A321870.P12425580426559261333

`∩[A001567(n+1), A028993(n)]`
-/

namespace A321870.P12425580426559261333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001567 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028993 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A321870.P12425580426559261333

/-! ## A321870.P15654222226266083311

`∩[A066488(n+1), A028993(n)]`
-/

namespace A321870.P15654222226266083311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066488 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028993 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A321870.P15654222226266083311

/-! ## A321870.P1999733034266316066

`∩[A215326(n+1), A028993(n)]`
-/

namespace A321870.P1999733034266316066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215326 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028993 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A321870.P1999733034266316066

/-! ## A321870.P8632216111825790042

`∩[A001567(n+1), A004277(n)+A016813(n)²]`
-/

namespace A321870.P8632216111825790042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001567 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n + A016813 n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A321870.P8632216111825790042

/-! ## A321870.P1212532611947449676

`∩[A001567(A000027(n+1)), n*(floor(n/4)+1)]`
-/

namespace A321870.P1212532611947449676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001567 (A000027 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (⌊(n : ℚ) / 4⌋ + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A321870.P1212532611947449676

/-! ## A321870.P1242643218817730020

`∩[A001567(n+1), A001107(n)]`
-/

namespace A321870.P1242643218817730020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001567 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001107 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A321870.P1242643218817730020

/-! ## A321870.P471925867593680687

`∩[A066488(n+1), A001107(n)]`
-/

namespace A321870.P471925867593680687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066488 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001107 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A321870.P471925867593680687

/-! ## A321870.P3045234710161448596

`∩[A215326(n+1), A001107(n)]`
-/

namespace A321870.P3045234710161448596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215326 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001107 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A321870.P3045234710161448596

/-! ## A321870.P4492597814246998390

`∩[A001567(n+1), A005408(n)²+n]`
-/

namespace A321870.P4492597814246998390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001567 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n ^ 2 + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A321870.P4492597814246998390

/-! ## A321870.P2027073454479113443

`∩[A066488(n+1), A005408(n)²+n]`
-/

namespace A321870.P2027073454479113443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066488 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n ^ 2 + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A321870.P2027073454479113443

/-! ## A321870.P10996715999786880380

`∩[A001567(n+1), A035608(n)]`
-/

namespace A321870.P10996715999786880380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001567 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035608 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A321870.P10996715999786880380

/-! ## A321870.P8789381933082716664

`∩[A001567(n+1), A074377(n)]`
-/

namespace A321870.P8789381933082716664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001567 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074377 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A321870.P8789381933082716664

/-! ## A321870.P18219942386256697786

`∩[A066488(n+1), A035608(n)]`
-/

namespace A321870.P18219942386256697786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066488 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035608 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A321870.P18219942386256697786

/-! ## A321870.P15639274990741186871

`∩[A066488(n+1), A074377(n)]`
-/

namespace A321870.P15639274990741186871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066488 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074377 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A321870.P15639274990741186871

/-! ## A321870.P3390333922315587480

`∩[A001567(n+1), A213398(n)]`
-/

namespace A321870.P3390333922315587480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001567 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213398 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A321870.P3390333922315587480

/-! ## A321870.P8094465498247021892

`∩[A215326(n+1), A035608(n)]`
-/

namespace A321870.P8094465498247021892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215326 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035608 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A321870.P8094465498247021892

/-! ## A321870.P14521813298581415378

`∩[A066488(n+1), A213398(n)]`
-/

namespace A321870.P14521813298581415378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066488 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213398 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A321870.P14521813298581415378

/-! ## A321870.P16755219027456107274

`∩[A215326(n+1), A074377(n)]`
-/

namespace A321870.P16755219027456107274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215326 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074377 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A321870.P16755219027456107274

/-! ## A321870.P10937591842647590837

`∩[A215326(n+1), A213398(n)]`
-/

namespace A321870.P10937591842647590837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215326 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213398 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A321870.P10937591842647590837

/-!
# A321874: If n = Product (p_j^k_j) then a(n) = Product (prime(p_j)^prime(k_j)).

The programs for A321874, the canonical program `A321874.P10299144503015706191` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A321874 has offset 1).

The definition of A321874 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 383 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A321874.P10299144503015706191

`A304203(A064988(n+1))`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A321874

/-- `A304203(A064988(n+1))` -/
def P10299144503015706191.Spec : Prop :=
  ∀ n, P10299144503015706191.a n = A321874 (n + 1)

theorem P10299144503015706191.correct : P10299144503015706191.Spec := by
  intro n
  simp only [A321874, Nat.add_sub_cancel]

end A321874

/-! ## A321874.P4114950806730268610

`A304203(∏{p}[n+1, A000040(#)^val(n+1, #)])`
-/

namespace A321874.P4114950806730268610
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304203 (∏ p ∈ Nat.primeFactors (f1 n), A000040 p ^ SequenceMachineLib.valuation (n + 1) p).toNat

end

end A321874.P4114950806730268610

namespace A321874

/-- `A304203(∏{p}[n+1, A000040(#)^val(n+1, #)])` -/
def P4114950806730268610.Spec : Prop :=
  ∀ n, P4114950806730268610.a n = A321874 (n + 1)

end A321874

/-! ## A321874.P6457341275950140862

`A304203(A003961(A290641(n+1)))`
-/

namespace A321874.P6457341275950140862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304203 (A003961 (A290641 (n + 1)).toNat).toNat

end

end A321874.P6457341275950140862

namespace A321874

/-- `A304203(A003961(A290641(n+1)))` -/
def P6457341275950140862.Spec : Prop :=
  ∀ n, P6457341275950140862.a n = A321874 (n + 1)

end A321874

/-! ## A321874.P13464549141143067823

`A064988(A304203(-xor(n, -1)))`
-/

namespace A321874.P13464549141143067823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064988 (A304203 (-Int.xor (n : ℤ) (-1)).toNat).toNat

end

end A321874.P13464549141143067823

namespace A321874

/-- `A064988(A304203(-xor(n, -1)))` -/
def P13464549141143067823.Spec : Prop :=
  ∀ n, P13464549141143067823.a n = A321874 (n + 1)

end A321874

/-! ## A321874.P5755066154554143870

`A064988(∏{p}[n+1, #^A000040(val(n+1, #))])`
-/

namespace A321874.P5755066154554143870
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064988 (SequenceMachineLib.roundAway (∏ p ∈ Nat.primeFactors (f1 n), (p : ℚ) ^ (A000040 (SequenceMachineLib.valuation (n + 1) p) : ℤ))).toNat

end

end A321874.P5755066154554143870

namespace A321874

/-- `A064988(∏{p}[n+1, #^A000040(val(n+1, #))])` -/
def P5755066154554143870.Spec : Prop :=
  ∀ n, P5755066154554143870.a n = A321874 (n + 1)

end A321874

/-!
# A321875: a(n) = Sum_{d|n} d*d!.

The programs for A321875, there is no canonical definition to state claims against.
-/

/-! ## A321875.P15114149509156519137

`∑{d}[n+1, #*#!]`
-/

namespace A321875.P15114149509156519137
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), d * Nat.factorial d

end

end A321875.P15114149509156519137

/-! ## A321875.P5021548122795374750

`record[∑{d}[n-1, #*#!]]`
-/

namespace A321875.P5021548122795374750
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n).natAbs, d * Nat.factorial d

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A321875.P5021548122795374750

/-! ## A321875.P331228490913657213

`∑{d}[n+1, A001563(#)]`
-/

namespace A321875.P331228490913657213
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001563 d

end

end A321875.P331228490913657213

/-! ## A321875.P9869504908576927490

`∑{d}[n+1, #*A000142(#)]`
-/

namespace A321875.P9869504908576927490
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A000142 d

end

end A321875.P9869504908576927490

/-! ## A321875.P10641771519037131805

`∑{d}[n+1, A000027(#+1)!-#!]`
-/

namespace A321875.P10641771519037131805
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), ((Nat.factorial (A000027 (d + 1)).toNat : ℤ) - (Nat.factorial d : ℤ))

end

end A321875.P10641771519037131805

/-! ## A321875.P11732873543904149583

`∑{d}[n+1, #*A081123(A005843(#))]`
-/

namespace A321875.P11732873543904149583
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A081123 (A005843 d).toNat

end

end A321875.P11732873543904149583

/-!
# A321876: Square array A(n,k), n >= 0, k >= 0, read by antidiagonals, where column k is the expansion of Product_{j>=1} 1/(1 - x^j)^sigma_k(j).

The programs for A321876, there is no canonical definition to state claims against.
-/

/-! ## A321876.P1702671070893377887

`A038722(A121207(n))^A181654(A111125(n))`
-/

namespace A321876.P1702671070893377887
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038722 (A121207 n).toNat : ℚ) ^ (A181654 (A111125 n).toNat : ℤ)

end

end A321876.P1702671070893377887

/-! ## A321876.P8270670859458309471

`A038722(A121207(n))^A121207(A236376(n))`
-/

namespace A321876.P8270670859458309471
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038722 (A121207 n).toNat : ℚ) ^ (A121207 (A236376 n).toNat : ℤ)

end

end A321876.P8270670859458309471

/-! ## A321876.P6998027750953148749

`A038722(A121207(n))^A186020(A189175(n))`
-/

namespace A321876.P6998027750953148749
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038722 (A121207 n).toNat : ℚ) ^ (A186020 (A189175 n).toNat : ℤ)

end

end A321876.P6998027750953148749

/-! ## A321876.P11075468092874905523

`A038722(A121207(n))^A108087(A346520(n))`
-/

namespace A321876.P11075468092874905523
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038722 (A121207 n).toNat : ℚ) ^ (A108087 (A346520 n).toNat : ℤ)

end

end A321876.P11075468092874905523

/-!
# A321877: Square array A(n,k), n>=0, k>=0, read by antidiagonals, where column k is the expansion of Product_{j>=1} (1 + x^j)^sigma_k(j).

The programs for A321877, there is no canonical definition to state claims against.
-/

/-! ## A321877.P1001212267090512116

`A317961(A233543(n))+A144048(n)`
-/

namespace A321877.P1001212267090512116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317961 (A233543 n).toNat + A144048 n

end

end A321877.P1001212267090512116

/-! ## A321877.P3372154295145250425

`A144048(n)+A115861(A144034(n+1))`
-/

namespace A321877.P3372154295145250425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144048 n + A115861 (A144034 (n + 1)).toNat

end

end A321877.P3372154295145250425

/-! ## A321877.P5861113832428368073

`A053735(A156885(n)+2)`
-/

namespace A321877.P5861113832428368073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053735 (A156885 n + 2).toNat

end

end A321877.P5861113832428368073

/-! ## A321877.P12009370116599911977

`A081604(A144048(n)^A055679(n+1))`
-/

namespace A321877.P12009370116599911977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081604 (SequenceMachineLib.roundAway ((A144048 n : ℚ) ^ (A055679 (n + 1) : ℤ))).toNat

end

end A321877.P12009370116599911977

/-!
# A321878: Number T(n,k) of partitions of n into colored blocks of equal parts, such that all colors from a set of size k are used and the colors are introduced in increasing order; triangle T(n,k), n>=0, 0<=k<=A003056(n), read by rows.

The programs for A321878, there is no canonical definition to state claims against.
-/

/-! ## A321878.P8015813624058887599

`A092921(A322847(2*n+3)%A058952(3*(n+1)))`
-/

namespace A321878.P8015813624058887599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092921 (Int.tmod (A322847 (2 * n + 3)) (A058952 (3 * (n + 1)))).toNat

end

end A321878.P8015813624058887599

/-! ## A321878.P2086061790268824810

`A060502(A291929(n)^4)`
-/

namespace A321878.P2086061790268824810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060502 (A291929 n ^ 4).toNat

end

end A321878.P2086061790268824810

/-! ## A321878.P3352027144097814169

`A276134(A291929(n)^4)`
-/

namespace A321878.P3352027144097814169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276134 (A291929 n ^ 4).toNat

end

end A321878.P3352027144097814169

/-!
# A321879: Partial sums of the Jordan function J_2(k), for 1 <= k <= n.

The programs for A321879, the canonical program `A321879.P6831331824271311141` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A321879 has offset 0).

The definition of A321879 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A321879.P14370034739956822872

`floor(A175549(n)/24)`
-/

namespace A321879.P14370034739956822872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A175549 n : ℚ) / 24⌋

end

end A321879.P14370034739956822872

namespace A321879

/-- `floor(A175549(n)/24)` -/
def P14370034739956822872.Spec : Prop :=
  ∀ n, P14370034739956822872.a n = A321879 n

end A321879

/-! ## A321879.P6831331824271311141

`∑[∑{d}[n, A321322(#)]]`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A321879

/-- `∑[∑{d}[n, A321322(#)]]` -/
def P6831331824271311141.Spec : Prop :=
  ∀ n, P6831331824271311141.a n = A321879 n

theorem P6831331824271311141.correct : P6831331824271311141.Spec := by
  intro n
  simp only [A321879]

end A321879

/-! ## A321879.P10176777764872827270

`A007434(n)+a(n-1)` with `a(0)=0`
-/

namespace A321879.P10176777764872827270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A007434 n + a (n - 1)

end

end A321879.P10176777764872827270

namespace A321879

/-- `A007434(n)+a(n-1)` -/
def P10176777764872827270.Spec : Prop :=
  ∀ n, P10176777764872827270.a n = A321879 n

end A321879

/-! ## A321879.P16719918178212102751

`∑[A007434(n+1)]-A007434(n+1)`
-/

namespace A321879.P16719918178212102751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007434 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A007434 (n + 1)

end

end A321879.P16719918178212102751

namespace A321879

/-- `∑[A007434(n+1)]-A007434(n+1)` -/
def P16719918178212102751.Spec : Prop :=
  ∀ n, P16719918178212102751.a n = A321879 n

end A321879

/-! ## A321879.P11935663545364714400

`∑[A007434(A000007(n)+n)%A059378(n+1)]`
-/

namespace A321879.P11935663545364714400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007434 (A000007 n + (n : ℤ)).toNat) (A059378 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A321879.P11935663545364714400

namespace A321879

/-- `∑[A007434(A000007(n)+n)%A059378(n+1)]` -/
def P11935663545364714400.Spec : Prop :=
  ∀ n, P11935663545364714400.a n = A321879 n

end A321879

/-! ## A321879.P14159778463956858987

`floor(A100450(n)/4)`
-/

namespace A321879.P14159778463956858987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A100450 n : ℚ) / 4⌋

end

end A321879.P14159778463956858987

namespace A321879

/-- `floor(A100450(n)/4)` -/
def P14159778463956858987.Spec : Prop :=
  ∀ n, P14159778463956858987.a n = A321879 n

end A321879

/-!
# A321880: Number of partitions of n into colored blocks of equal parts with colors from a set of size n.

The programs for A321880, there is no canonical definition to state claims against.
-/

/-! ## A321880.P18332692731899069877

`A028310(n)*A325916(n)`
-/

namespace A321880.P18332692731899069877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n * A325916 n

end

end A321880.P18332692731899069877

/-! ## A321880.P6596737783051612936

`(A004277(n)-n)*A325916(n)`
-/

namespace A321880.P6596737783051612936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004277 n - (n : ℤ)) * A325916 n

end

end A321880.P6596737783051612936

/-! ## A321880.P15811450101859048002

`A004525(A004277(n))*A325916(n)`
-/

namespace A321880.P15811450101859048002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A004277 n).toNat * A325916 n

end

end A321880.P15811450101859048002

/-! ## A321880.P15315878886129458774

`A115756(A000124(n))*A325916(n)`
-/

namespace A321880.P15315878886129458774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115756 (A000124 n).toNat * A325916 n

end

end A321880.P15315878886129458774

/-! ## A321880.P18077036251116002743

`A003056(∑[n]+1)*A325916(n)`
-/

namespace A321880.P18077036251116002743
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (∑ j ∈ Finset.range (n + 1), f1 j + 1) * A325916 n

end

end A321880.P18077036251116002743

/-! ## A321880.P12584203231955318547

`A321884(∑[4*n])`
-/

namespace A321880.P12584203231955318547
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321884 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A321880.P12584203231955318547

/-!
# A321882: a(n) is the least base b > 1 such that the sum n + n can be computed without carry.

The programs for A321882, there is no canonical definition to state claims against.
-/

/-! ## A321882.P16373834617400366587

`A362366(∑[4*n])`
-/

namespace A321882.P16373834617400366587
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362366 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A321882.P16373834617400366587

/-! ## A321882.P8751387157099623307

`A000027(A362366(2*(n²+n)))`
-/

namespace A321882.P8751387157099623307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A362366 (2 * (n ^ 2 + n))).toNat

end

end A321882.P8751387157099623307

/-! ## A321882.P14255589296955266366

`or(A119352(n), A226949(A187829(n+1)))`
-/

namespace A321882.P14255589296955266366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A119352 n) (A226949 (A187829 (n + 1)).toNat)

end

end A321882.P14255589296955266366

/-!
# A321883: Nonnegative integers n for which n! + 1 is not a square.

The programs for A321883, the canonical program `A321883.P10759170934825099871` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A321883 has offset 1).

The definition of A321883 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A321883.P10759170934825099871

`1+a(n-1)` with `a(0)=0, a(1)=1, a(2)=2, a(3)=3, a(4)=6, a(5)=8`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A321883

/-- `1+a(n-1)` -/
def P10759170934825099871.Spec : Prop :=
  ∀ n, (P10759170934825099871.a n : ℤ) = A321883 (n + 1)

theorem P10759170934825099871.correct : P10759170934825099871.Spec := by
  intro n
  simp only [A321883, Nat.add_sub_cancel]

end A321883

/-!
# A321884: Number A(n,k) of partitions of n into colored blocks of equal parts with colors from a set of size k; square array A(n,k), n>=0, k>=0, read by antidiagonals.

The programs for A321884, there is no canonical definition to state claims against.
-/

/-! ## A321884.P10256298824168511691

`A257564(5*A246935(n))`
-/

namespace A321884.P10256298824168511691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257564 (5 * A246935 n).toNat

end

end A321884.P10256298824168511691

/-! ## A321884.P13183254794217799531

`A257564(5*A342120(n))`
-/

namespace A321884.P13183254794217799531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257564 (5 * A342120 n).toNat

end

end A321884.P13183254794217799531

/-! ## A321884.P12816021858209057238

`A256141(n)+A057428(A224118(n+1))`
-/

namespace A321884.P12816021858209057238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256141 n + A057428 (A224118 (n + 1)).toNat

end

end A321884.P12816021858209057238

/-! ## A321884.P6665134475551740437

`A086460(lt[A086417(n+1), A086455(3*n+2)])`
-/

namespace A321884.P6665134475551740437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086417 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086455 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086460 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A321884.P6665134475551740437

/-! ## A321884.P12928998381585334890

`A177903(A350448(n))`
-/

namespace A321884.P12928998381585334890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177903 (A350448 n).toNat

end

end A321884.P12928998381585334890

/-!
# A321885: a(1) = 1, a(n) = n + d(a(n-1)).

The programs for A321885, the canonical program `A321885.P14494806622824550803` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A321885 has offset 1).

The definition of A321885 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A321885.P3841605692552923580

`A334954(a(n-1))+n` with `a(0)=1`
-/

namespace A321885.P3841605692552923580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A334954 (a (n - 1)).toNat + (n : ℤ)

end

end A321885.P3841605692552923580

namespace A321885

/-- `A334954(a(n-1))+n` -/
def P3841605692552923580.Spec : Prop :=
  ∀ n, P3841605692552923580.a n = A321885 (n + 1)

end A321885

/-! ## A321885.P14494806622824550803

`A212356(a(n-1))+n` with `a(0)=1, a(1)=3`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A321885

/-- `A212356(a(n-1))+n` -/
def P14494806622824550803.Spec : Prop :=
  ∀ n, P14494806622824550803.a n = A321885 (n + 1)

theorem P14494806622824550803.correct : P14494806622824550803.Spec := by
  intro n
  simp only [A321885, Nat.add_sub_cancel]

end A321885

/-! ## A321885.P3734817411973878908

`A000005(a(n-1))+1+n` with `a(0)=1`
-/

namespace A321885.P3734817411973878908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000005 (a (n - 1)).toNat + 1 + (n : ℤ)

end

end A321885.P3734817411973878908

namespace A321885

/-- `A000005(a(n-1))+1+n` -/
def P3734817411973878908.Spec : Prop :=
  ∀ n, P3734817411973878908.a n = A321885 (n + 1)

end A321885

/-! ## A321885.P106377027923003519

`A032741(a(n-1))+n+2` with `a(0)=1`
-/

namespace A321885.P106377027923003519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A032741 (a (n - 1)).toNat + (n + 2 : ℤ)

end

end A321885.P106377027923003519

namespace A321885

/-- `A032741(a(n-1))+n+2` -/
def P106377027923003519.Spec : Prop :=
  ∀ n, P106377027923003519.a n = A321885 (n + 1)

end A321885

/-! ## A321885.P14355961598130216118

`A096737(a(n-1))+n+1` with `a(0)=1, a(1)=3`
-/

namespace A321885.P14355961598130216118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  A096737 (a (n - 1)).toNat + (n + 1 : ℤ)

end

end A321885.P14355961598130216118

namespace A321885

/-- `A096737(a(n-1))+n+1` -/
def P14355961598130216118.Spec : Prop :=
  ∀ n, P14355961598130216118.a n = A321885 (n + 1)

end A321885

/-! ## A321885.P783554939590804524

`A046951(a(n-1)²)+n+1` with `a(0)=1`
-/

namespace A321885.P783554939590804524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A046951 (a (n - 1) ^ 2).toNat + (n + 1 : ℤ)

end

end A321885.P783554939590804524

namespace A321885

/-- `A046951(a(n-1)²)+n+1` -/
def P783554939590804524.Spec : Prop :=
  ∀ n, P783554939590804524.a n = A321885 (n + 1)

end A321885

/-! ## A321885.P7178480048917863031

`A322483(a(n-1)²)+n+1` with `a(0)=1`
-/

namespace A321885.P7178480048917863031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A322483 (a (n - 1) ^ 2).toNat + (n + 1 : ℤ)

end

end A321885.P7178480048917863031

namespace A321885

/-- `A322483(a(n-1)²)+n+1` -/
def P7178480048917863031.Spec : Prop :=
  ∀ n, P7178480048917863031.a n = A321885 (n + 1)

end A321885

/-! ## A321885.P247064565112732164

`A332712(a(n-1)²)+n+1` with `a(0)=1`
-/

namespace A321885.P247064565112732164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A332712 (a (n - 1) ^ 2).toNat + (n + 1 : ℤ)

end

end A321885.P247064565112732164

namespace A321885

/-- `A332712(a(n-1)²)+n+1` -/
def P247064565112732164.Spec : Prop :=
  ∀ n, P247064565112732164.a n = A321885 (n + 1)

end A321885

/-! ## A321885.P1330077568188988454

`A365171(a(n-1)²)+n+1` with `a(0)=1`
-/

namespace A321885.P1330077568188988454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A365171 (a (n - 1) ^ 2).toNat + (n + 1 : ℤ)

end

end A321885.P1330077568188988454

namespace A321885

/-- `A365171(a(n-1)²)+n+1` -/
def P1330077568188988454.Spec : Prop :=
  ∀ n, P1330077568188988454.a n = A321885 (n + 1)

end A321885

/-!
# A321886: Irregular triangle read by rows where T(H(u),H(v)) is the coefficient of m(v) in f(u), where H is Heinz number, m is monomial symmetric functions, and f is forgotten symmetric functions.

The programs for A321886, there is no canonical definition to state claims against.
-/

/-! ## A321886.P7628130058466929159

`A321888(A066570(n+1)%A016897(n))`
-/

namespace A321886.P7628130058466929159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321888 (Int.tmod (A066570 (n + 1)) (A016897 n)).toNat

end

end A321886.P7628130058466929159

/-! ## A321886.P17257888892009356354

`A195969(A001009(n+1))*A321899(n+1)`
-/

namespace A321886.P17257888892009356354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195969 (A001009 (n + 1)).toNat * A321899 (n + 1)

end

end A321886.P17257888892009356354

/-! ## A321886.P10256517355006049113

`A170908(A105800(n+1))*A321899(n+1)`
-/

namespace A321886.P10256517355006049113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170908 (A105800 (n + 1)).toNat * A321899 (n + 1)

end

end A321886.P10256517355006049113

/-! ## A321886.P8912925831081563664

`A266681(A087854(n+1))*A321899(n+1)`
-/

namespace A321886.P8912925831081563664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266681 (A087854 (n + 1)).toNat * A321899 (n + 1)

end

end A321886.P8912925831081563664

/-! ## A321886.P11192743576382777601

`A321899(n+1)*A334441(A183092(n+1))`
-/

namespace A321886.P11192743576382777601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321899 (n + 1) * A334441 (A183092 (n + 1)).toNat

end

end A321886.P11192743576382777601

/-!
# A321888: Irregular triangle read by rows where T(H(u),H(v)) is the coefficient of f(v) in p(u), where H is Heinz number, p is power sum symmetric functions, and f is forgotten symmetric functions.

The programs for A321888, there is no canonical definition to state claims against.
-/

/-! ## A321888.P15774347300615358143

`A321750(n+1)*A321753(A000267(n))`
-/

namespace A321888.P15774347300615358143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321750 (n + 1) * A321753 (A000267 n).toNat

end

end A321888.P15774347300615358143

/-! ## A321888.P3642396630166621952

`A321750(A028310(n)+1)/A321753(A000267(n))`
-/

namespace A321888.P3642396630166621952
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A321750 (A028310 n + 1).toNat : ℚ) / (A321753 (A000267 n).toNat : ℚ)

end

end A321888.P3642396630166621952

/-! ## A321888.P12168084134492339338

`A321750(A054977(n)+n)/A321753(A000267(n))`
-/

namespace A321888.P12168084134492339338
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A321750 (A054977 n + (n : ℤ)).toNat : ℚ) / (A321753 (A000267 n).toNat : ℚ)

end

end A321888.P12168084134492339338

/-! ## A321888.P923674233013159526

`A321750(A233583(n+1)+1)/A321753(A000267(n))`
-/

namespace A321888.P923674233013159526
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A321750 (A233583 (n + 1) + 1).toNat : ℚ) / (A321753 (A000267 n).toNat : ℚ)

end

end A321888.P923674233013159526

/-! ## A321888.P9371837758629146149

`A321750(A000007(n)+1+n)/A321753(A000267(n))`
-/

namespace A321888.P9371837758629146149
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A321750 (A000007 n + 1 + (n : ℤ)).toNat : ℚ) / (A321753 (A000267 n).toNat : ℚ)

end

end A321888.P9371837758629146149

/-!
# A321889: Sum of coefficients of forgotten symmetric functions in the power sum symmetric function of the integer partition with Heinz number n.

The programs for A321889, there is no canonical definition to state claims against.
-/

/-! ## A321889.P10031820016874646668

`A321751(n+1)*A321753(n+1)`
-/

namespace A321889.P10031820016874646668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321751 (n + 1) * A321753 (n + 1)

end

end A321889.P10031820016874646668

/-! ## A321889.P17440099485880216134

`A321751(n+1)/A321753(lcm(2, n+1))`
-/

namespace A321889.P17440099485880216134
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A321751 (n + 1) : ℚ) / (A321753 (Nat.lcm 2 (n + 1)) : ℚ)

end

end A321889.P17440099485880216134

/-! ## A321889.P4699721760534801184

`A321751(n+1)/A321753(abs(xor(n, -1)))`
-/

namespace A321889.P4699721760534801184
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A321751 (n + 1) : ℚ) / (A321753 |Int.xor (n : ℤ) (-1)|.toNat : ℚ)

end

end A321889.P4699721760534801184

/-! ## A321889.P3818817103464965549

`A321751(n+1)/A321753((n+1)/2^val(n+1, 2))`
-/

namespace A321889.P3818817103464965549
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A321751 (n + 1) : ℚ) / (A321753 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat : ℚ)

end

end A321889.P3818817103464965549

/-! ## A321889.P2555504858236251125

`A321751(n+1)/A321753(A031285(n))`
-/

namespace A321889.P2555504858236251125
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A321751 (n + 1) : ℚ) / (A321753 (A031285 n).toNat : ℚ)

end

end A321889.P2555504858236251125

/-!
# A321890: Primes of the form p^2 + 16 where p is prime.

The programs for A321890, there is no canonical definition to state claims against.
-/

/-! ## A321890.P15237706138487318238

`p?[A122062(n+1)]²+16`
-/

namespace A321890.P15237706138487318238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122062 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) ^ 2 + 16

end

end A321890.P15237706138487318238

/-! ## A321890.P7744299832743625730

`A241751(p?[A122062(n+1)])`
-/

namespace A321890.P7744299832743625730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122062 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241751 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A321890.P7744299832743625730

/-! ## A321890.P1611569110975282154

`∩[A262340(n+1), A241751(n)]`
-/

namespace A321890.P1611569110975282154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262340 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241751 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A321890.P1611569110975282154

/-! ## A321890.P9625510083176155564

`A001157(p?[A122062(n+1)])+15`
-/

namespace A321890.P9625510083176155564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122062 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001157 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat + 15

end

end A321890.P9625510083176155564

/-! ## A321890.P4344002100065879884

`A000290(p?[A122062(n+1)])+16`
-/

namespace A321890.P4344002100065879884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122062 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat + 16

end

end A321890.P4344002100065879884

/-!
# A321891: Prime numbers of the form p^3 + q, where p and q are primes.

The programs for A321891, there is no canonical definition to state claims against.
-/

/-! ## A321891.P13513316643357754970

`∪[2*A088764(n+1)+5, A048636(n+1)]`
-/

namespace A321891.P13513316643357754970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A088764 (n + 1) + 5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048636 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A321891.P13513316643357754970

/-! ## A321891.P8949206083569706545

`∪[A048636(n+1), A092402(n+1)]`
-/

namespace A321891.P8949206083569706545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048636 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092402 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A321891.P8949206083569706545

/-! ## A321891.P15548825136937510642

`p?[record[A106316(n+1)+9]]`
-/

namespace A321891.P15548825136937510642
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106316 (n + 1) + 9

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A321891.P15548825136937510642

/-! ## A321891.P5075586427986431453

`p?[record[A123870(A017904(n))]]`
-/

namespace A321891.P5075586427986431453
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123870 (A017904 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A321891.P5075586427986431453

/-! ## A321891.P7777035917455341409

`p?[eq[A131736(n), A317552(n+1)]]`
-/

namespace A321891.P7777035917455341409
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131736 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317552 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A321891.P7777035917455341409

/-!
# A321892: Irregular triangle read by rows where T(H(u),H(v)) is the coefficient of f(v) in s(u), where H is Heinz number, f is forgotten symmetric functions, and s is Schur functions.

The programs for A321892, there is no canonical definition to state claims against.
-/

/-! ## A321892.P2823581804542521779

`ceil(A321742(n+1)/A321757(2*(n+2)))`
-/

namespace A321892.P2823581804542521779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A321742 (n + 1) : ℚ) / (A321757 (2 * (n + 2)) : ℚ)⌉

end

end A321892.P2823581804542521779

/-! ## A321892.P5951866031761043322

`A069010(A321742(n+1)^A181651(n))`
-/

namespace A321892.P5951866031761043322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069010 (SequenceMachineLib.roundAway ((A321742 (n + 1) : ℚ) ^ (A181651 n : ℤ))).toNat

end

end A321892.P5951866031761043322

/-! ## A321892.P18220945063295557209

`ceil(A321742(n+1)/p?[A319226(n+1)])`
-/

namespace A321892.P18220945063295557209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319226 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A321742 (n + 1) : ℚ) / (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ)⌉

end

end A321892.P18220945063295557209

/-! ## A321892.P1987555694648922977

`A053839(A321742(n+1)^A008621(n))`
-/

namespace A321892.P1987555694648922977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053839 (SequenceMachineLib.roundAway ((A321742 (n + 1) : ℚ) ^ (A008621 n : ℤ))).toNat

end

end A321892.P1987555694648922977

/-! ## A321892.P5998169912569585743

`A000045(gcd(A184945(n+3), A321742(n+1)))`
-/

namespace A321892.P5998169912569585743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (Int.gcd (A184945 (n + 3)) (A321742 (n + 1)))

end

end A321892.P5998169912569585743

/-!
# A321893: Sum of coefficients of forgotten symmetric functions in the Schur function of the integer partition with Heinz number n.

The programs for A321893, there is no canonical definition to state claims against.
-/

/-! ## A321893.P7076438199136984612

`A071542(A296560(n+1))`
-/

namespace A321893.P7076438199136984612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071542 (A296560 (n + 1)).toNat

end

end A321893.P7076438199136984612

/-! ## A321893.P1272848258847309679

`A321762(A122111(n+1))`
-/

namespace A321893.P1272848258847309679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321762 (A122111 (n + 1)).toNat

end

end A321893.P1272848258847309679

/-! ## A321893.P16339829373245709689

`A321762(A243053(n+1))`
-/

namespace A321893.P16339829373245709689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321762 (A243053 (n + 1)).toNat

end

end A321893.P16339829373245709689

/-! ## A321893.P2728124701066793726

`A321762(A279351(n+1))`
-/

namespace A321893.P2728124701066793726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321762 (A279351 (n + 1)).toNat

end

end A321893.P2728124701066793726

/-! ## A321893.P17610481514148239380

`A321762(A279352(n+1))`
-/

namespace A321893.P17610481514148239380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321762 (A279352 (n + 1)).toNat

end

end A321893.P17610481514148239380

/-!
# A321894: Irregular triangle read by rows where T(H(u),H(v)) is the coefficient of s(v) in f(u), where H is Heinz number, f is forgotten symmetric functions, and s is Schur functions.

The programs for A321894, there is no canonical definition to state claims against.
-/

/-! ## A321894.P1003179340180629968

`A267005(A056654(n+1)%A371101(n+1))`
-/

namespace A321894.P1003179340180629968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267005 (Int.tmod (A056654 (n + 1)) (A371101 (n + 1))).toNat

end

end A321894.P1003179340180629968

/-! ## A321894.P11641351631351395066

`A281772(A229310(2*(n+2))+A074272(n+1))`
-/

namespace A321894.P11641351631351395066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281772 (A229310 (2 * (n + 2)) + A074272 (n + 1)).toNat

end

end A321894.P11641351631351395066

/-! ## A321894.P15920619017063755

`A134541(A230096(2*(n+2))-A127671(n+1))`
-/

namespace A321894.P15920619017063755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134541 (A230096 (2 * (n + 2)) - A127671 (n + 1)).toNat

end

end A321894.P15920619017063755

/-! ## A321894.P348586328317915524

`A309048(A294441(n+3))`
-/

namespace A321894.P348586328317915524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309048 (A294441 (n + 3)).toNat

end

end A321894.P348586328317915524

/-! ## A321894.P3518322374979467467

`A321930(gcd(n, A321940(n)))`
-/

namespace A321894.P3518322374979467467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321930 (Int.gcd (n : ℤ) (A321940 n))

end

end A321894.P3518322374979467467

/-!
# A321895: Irregular triangle read by rows where T(H(u),H(v)) is the coefficient of p(v) in M(u), where H is Heinz number, M is augmented monomial symmetric functions, and p is power sum symmetric functions.

The programs for A321895, there is no canonical definition to state claims against.
-/

/-! ## A321895.P12333156101813029232

`A321758(n+1)+A044941(A011782(n))`
-/

namespace A321895.P12333156101813029232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321758 (n + 1) + A044941 (A011782 n).toNat

end

end A321895.P12333156101813029232

/-! ## A321895.P1870871900990378905

`A321758(n+1)+A185284(A048327(n))`
-/

namespace A321895.P1870871900990378905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321758 (n + 1) + A185284 (A048327 n).toNat

end

end A321895.P1870871900990378905

/-! ## A321895.P12182581529630955825

`A329267(A343097(n))+A321758(n+1)`
-/

namespace A321895.P12182581529630955825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329267 (A343097 n).toNat + A321758 (n + 1)

end

end A321895.P12182581529630955825

/-! ## A321895.P6315175703981867666

`A321749(A288972(n))*A321758(n+1)`
-/

namespace A321895.P6315175703981867666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321749 (A288972 n).toNat * A321758 (n + 1)

end

end A321895.P6315175703981867666

/-! ## A321895.P4193312371750606012

`A321758(n+1)+A185238(A184155(n+1))`
-/

namespace A321895.P4193312371750606012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321758 (n + 1) + A185238 (A184155 (n + 1)).toNat

end

end A321895.P4193312371750606012

/-!
# A321897: Irregular triangle read by rows where T(H(u),H(v)) is the coefficient of p(v) in h(u) * Product_i u_i!, where H is Heinz number, h is homogeneous symmetric functions, and p is power sum symmetric functions.

The programs for A321897, there is no canonical definition to state claims against.
-/

/-! ## A321897.P970670526671436870

`abs(A321896(n+1))`
-/

namespace A321897.P970670526671436870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A321896 (n + 1)|

end

end A321897.P970670526671436870

/-! ## A321897.P17971108333757318341

`lcm(gcd(n, n+1), A321896(C(n+1, n)))`
-/

namespace A321897.P17971108333757318341
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (Nat.gcd n (n + 1) : ℤ) (A321896 (Nat.choose (n + 1) n))

end

end A321897.P17971108333757318341

/-! ## A321897.P2115653091482195175

`gcd(A000038(n), A321896(n+1))`
-/

namespace A321897.P2115653091482195175
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A321896 (n + 1))

end

end A321897.P2115653091482195175

/-! ## A321897.P2597058195150798118

`lcm(A020985(n), A321896(n+1))`
-/

namespace A321897.P2597058195150798118
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A321896 (n + 1))

end

end A321897.P2597058195150798118

/-! ## A321897.P16506041051683797573

`∑{d}[A321896(n+1), A000010(#)]`
-/

namespace A321897.P16506041051683797573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321896 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A321897.P16506041051683797573

/-!
# A321898: Sum of coefficients of power sums symmetric functions in h(y) * Product_i y_i! where h is homogeneous symmetric functions and y is the integer partition with Heinz number n.

The programs for A321898, the canonical program `A321898.P7574936046010051094` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A321898 has offset 1).

The definition of A321898 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 348 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A321898.P7574936046010051094

`∏{d}[n+1, A297109(#)!]`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A321898

/-- `∏{d}[n+1, A297109(#)!]` -/
def P7574936046010051094.Spec : Prop :=
  ∀ n, (P7574936046010051094.a n : ℤ) = A321898 (n + 1)

theorem P7574936046010051094.correct : P7574936046010051094.Spec := by
  intro n
  simp only [A321898, Nat.add_sub_cancel]

end A321898

/-! ## A321898.P7369795875385863885

`A056239(n+1)!/A318762(n+1)`
-/

namespace A321898.P7369795875385863885
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A056239 (n + 1)).toNat : ℚ) / (A318762 (n + 1) : ℚ)

end

end A321898.P7369795875385863885

namespace A321898

/-- `A056239(n+1)!/A318762(n+1)` -/
def P7369795875385863885.Spec : Prop :=
  ∀ n, P7369795875385863885.a n = (A321898 (n + 1) : ℚ)

end A321898

/-! ## A321898.P14922405037233581634

`∏{d}[A103517(n), A000720(A014963(#))!]`
-/

namespace A321898.P14922405037233581634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, Nat.factorial (A000720 (A014963 d).toNat).toNat

end

end A321898.P14922405037233581634

namespace A321898

/-- `∏{d}[A103517(n), A000720(A014963(#))!]` -/
def P14922405037233581634.Spec : Prop :=
  ∀ n, (P14922405037233581634.a n : ℤ) = A321898 (n + 1)

end A321898

/-! ## A321898.P11088602190699109521

`A323295(A056239(n+1))/A323307(n+1)`
-/

namespace A321898.P11088602190699109521
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A323295 (A056239 (n + 1)).toNat : ℚ) / (A323307 (n + 1) : ℚ)

end

end A321898.P11088602190699109521

namespace A321898

/-- `A323295(A056239(n+1))/A323307(n+1)` -/
def P11088602190699109521.Spec : Prop :=
  ∀ n, P11088602190699109521.a n = (A321898 (n + 1) : ℚ)

end A321898

/-! ## A321898.P4260591843668383699

`∏{e}[A181821(n+1), #!]`
-/

namespace A321898.P4260591843668383699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181821 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorial (Nat.factorization (f1 n).natAbs p)

end

end A321898.P4260591843668383699

namespace A321898

/-- `∏{e}[A181821(n+1), #!]` -/
def P4260591843668383699.Spec : Prop :=
  ∀ n, (P4260591843668383699.a n : ℤ) = A321898 (n + 1)

end A321898

/-! ## A321898.P1881257607090960048

`∏{e}[A181821(n+1), A000142(#)]`
-/

namespace A321898.P1881257607090960048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181821 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000142 (Nat.factorization (f1 n).natAbs p)

end

end A321898.P1881257607090960048

namespace A321898

/-- `∏{e}[A181821(n+1), A000142(#)]` -/
def P1881257607090960048.Spec : Prop :=
  ∀ n, P1881257607090960048.a n = A321898 (n + 1)

end A321898

/-! ## A321898.P13919874175061635531

`∏{e}[A181821(n+1), A081123(2*#)]`
-/

namespace A321898.P13919874175061635531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181821 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A081123 (2 * Nat.factorization (f1 n).natAbs p)

end

end A321898.P13919874175061635531

namespace A321898

/-- `∏{e}[A181821(n+1), A081123(2*#)]` -/
def P13919874175061635531.Spec : Prop :=
  ∀ n, P13919874175061635531.a n = A321898 (n + 1)

end A321898

/-! ## A321898.P4274473393501671708

`∏{d}[A181821(n+1), A306694(#)]`
-/

namespace A321898.P4274473393501671708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181821 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A306694 d

end

end A321898.P4274473393501671708

namespace A321898

/-- `∏{d}[A181821(n+1), A306694(#)]` -/
def P4274473393501671708.Spec : Prop :=
  ∀ n, P4274473393501671708.a n = A321898 (n + 1)

end A321898

