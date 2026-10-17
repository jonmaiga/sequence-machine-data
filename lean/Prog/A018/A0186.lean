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
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C032
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C002
import Seq.B007.C000
import Seq.B008.C000
import Seq.B008.C001
import Seq.B009.C000
import Seq.B010.C000
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
import Seq.Opaque.C025

/-!
# A018600: Divisors of 704.

The programs for A018600, there is no canonical definition to state claims against.
-/

/-! ## A018600.P7071558619889093502

`A057889(A018671(n+1))`
-/

namespace A018600.P7071558619889093502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057889 (A018671 (n + 1)).toNat

end

end A018600.P7071558619889093502

/-! ## A018600.P13938373399719990305

`A385344(A261293(n+1))`
-/

namespace A018600.P13938373399719990305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385344 (A261293 (n + 1)).toNat

end

end A018600.P13938373399719990305

/-! ## A018600.P5537822702119545215

`A051119(11*A018671(n+1))`
-/

namespace A018600.P5537822702119545215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051119 (11 * A018671 (n + 1)).toNat

end

end A018600.P5537822702119545215

/-! ## A018600.P18254468572162281725

`A052126(11*A018671(n+1))`
-/

namespace A018600.P18254468572162281725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052126 (11 * A018671 (n + 1)).toNat

end

end A018600.P18254468572162281725

/-! ## A018600.P8443075605797003867

`A051119(lcm(11, A018671(n+1)))`
-/

namespace A018600.P8443075605797003867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051119 (Int.lcm 11 (A018671 (n + 1)))

end

end A018600.P8443075605797003867

/-!
# A018601: Divisors of 705.

The programs for A018601, there is no canonical definition to state claims against.
-/

/-! ## A018601.P7286123036266848978

`A072026(A050614(n))`
-/

namespace A018601.P7286123036266848978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072026 (A050614 n).toNat

end

end A018601.P7286123036266848978

/-! ## A018601.P7778823124041951268

`A357977(A001317(n))`
-/

namespace A018601.P7778823124041951268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357977 (A001317 n).toNat

end

end A018601.P7778823124041951268

/-! ## A018601.P12415754331125196169

`A357977(A053576(n))`
-/

namespace A018601.P12415754331125196169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357977 (A053576 n).toNat

end

end A018601.P12415754331125196169

/-! ## A018601.P4532971333079292280

`A003961(A018359(n+1))`
-/

namespace A018601.P4532971333079292280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (A018359 (n + 1)).toNat

end

end A018601.P4532971333079292280

/-!
# A018602: Divisors of 708.

The programs for A018602, there is no canonical definition to state claims against.
-/

/-! ## A018602.P9459024224938938625

`A263272(A018521(n+1))`
-/

namespace A018602.P9459024224938938625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263272 (A018521 (n + 1)).toNat

end

end A018602.P9459024224938938625

/-! ## A018602.P3252110361763962182

`A332808(A018616(n+1))`
-/

namespace A018602.P3252110361763962182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332808 (A018616 (n + 1)).toNat

end

end A018602.P3252110361763962182

/-! ## A018602.P15603150097370972634

`2*A018561(n+1)-A018521(n+1)`
-/

namespace A018602.P15603150097370972634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A018561 (n + 1) - A018521 (n + 1)

end

end A018602.P15603150097370972634

/-! ## A018602.P12445409447952333165

`∪[2*A018409(n+1), A018409(n+1)]`
-/

namespace A018602.P12445409447952333165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A018409 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018409 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A018602.P12445409447952333165

/-! ## A018602.P4693812030720720571

`∪[3*A018348(n+1), A018348(n+1)]`
-/

namespace A018602.P4693812030720720571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A018348 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018348 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A018602.P4693812030720720571

/-!
# A018603: Divisors of 710.

The programs for A018603, there is no canonical definition to state claims against.
-/

/-! ## A018603.P12290606429769170413

`A332808(A018584(n+1))`
-/

namespace A018603.P12290606429769170413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332808 (A018584 (n + 1)).toNat

end

end A018603.P12290606429769170413

/-! ## A018603.P5651805290493326982

`eq[1, A222216(A106611(n))]`
-/

namespace A018603.P5651805290493326982
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222216 (A106611 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A018603.P5651805290493326982

/-! ## A018603.P1896713520926198811

`∏{p}[A001317(n), A333259(#)]`
-/

namespace A018603.P1896713520926198811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001317 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A333259 p

end

end A018603.P1896713520926198811

/-! ## A018603.P6460770045249207681

`A065769(2*A132997(n+1))`
-/

namespace A018603.P6460770045249207681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065769 (2 * A132997 (n + 1)).toNat

end

end A018603.P6460770045249207681

/-!
# A018604: Divisors of 711.

The programs for A018604, there is no canonical definition to state claims against.
-/

/-! ## A018604.P15650523658705032727

`lcm(n, 3*a(n-1)-1)+1` with `a(0)=1`
-/

namespace A018604.P15650523658705032727
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Int.lcm (n : ℤ) ((3 * a (n - 1) : ℤ) - 1) + 1

end

end A018604.P15650523658705032727

/-!
# A018605: Divisors of 712.

The programs for A018605, there is no canonical definition to state claims against.
-/

/-! ## A018605.P16302018462805603673

`or(2^n, A018532(n+1))`
-/

namespace A018605.P16302018462805603673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (2 ^ n : ℤ) (A018532 (n + 1))

end

end A018605.P16302018462805603673

/-! ## A018605.P14304578315332753208

`A254116(A018395(n+1))`
-/

namespace A018605.P14304578315332753208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254116 (A018395 (n + 1)).toNat

end

end A018605.P14304578315332753208

/-! ## A018605.P10085209628370388139

`A269172(A018686(n+1))`
-/

namespace A018605.P10085209628370388139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269172 (A018686 (n + 1)).toNat

end

end A018605.P10085209628370388139

/-! ## A018605.P13786749546045279882

`A332213(A018523(n+1))`
-/

namespace A018605.P13786749546045279882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332213 (A018523 (n + 1)).toNat

end

end A018605.P13786749546045279882

/-!
# A018606: Divisors of 714.

The programs for A018606, there is no canonical definition to state claims against.
-/

/-! ## A018606.P14947663055567390037

`eq[gcd(3, n), A106618(lcm(14, n)/14)]`
-/

namespace A018606.P14947663055567390037
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 3 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106618 (SequenceMachineLib.roundAway ((Nat.lcm 14 n : ℚ) / 14)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A018606.P14947663055567390037

/-! ## A018606.P16942379244577050461

`eq[gcd(6, n), A106618(A106608(n))]`
-/

namespace A018606.P16942379244577050461
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 6 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106618 (A106608 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A018606.P16942379244577050461

/-! ## A018606.P11293212654565946656

`record[gcd(A078898(n), A151556(n+1))]`
-/

namespace A018606.P11293212654565946656
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A078898 n) (A151556 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018606.P11293212654565946656

/-! ## A018606.P16000162124062068597

`record[gcd(A156854(n+1), A327938(n+1))]`
-/

namespace A018606.P16000162124062068597
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A156854 (n + 1)) (A327938 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018606.P16000162124062068597

/-! ## A018606.P15160443225513790828

`∪[2*A018411(n+1), A018411(n+1)]`
-/

namespace A018606.P15160443225513790828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A018411 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018411 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A018606.P15160443225513790828

/-!
# A018607: Divisors of 715.

The programs for A018607, there is no canonical definition to state claims against.
-/

/-! ## A018607.P6871629646797894932

`record[∏{p}[n, A000010(#+8)+1]]`
-/

namespace A018607.P6871629646797894932
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), (A000010 (p + 8) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018607.P6871629646797894932

/-! ## A018607.P3804196047232704725

`record[gcd(12*12*(n+1)-1, A310470(n))]`
-/

namespace A018607.P3804196047232704725
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((12 * (12 * (n + 1)) : ℤ) - 1) (A310470 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018607.P3804196047232704725

/-! ## A018607.P17888877499769830313

`A239615(A057743(n))`
-/

namespace A018607.P17888877499769830313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239615 (A057743 n).toNat

end

end A018607.P17888877499769830313

/-! ## A018607.P14530324433478020739

`A239615(A194360(n))`
-/

namespace A018607.P14530324433478020739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239615 (A194360 n).toNat

end

end A018607.P14530324433478020739

/-!
# A018608: Divisors of 716.

The programs for A018608, there is no canonical definition to state claims against.
-/

/-! ## A018608.P7948277411581050476

`or((comp[2*(n+1)]-1)², A018573(n+1))`
-/

namespace A018608.P7948277411581050476
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - 1) ^ 2) (A018573 (n + 1))

end

end A018608.P7948277411581050476

/-!
# A018609: Divisors of 720.

The programs for A018609, there is no canonical definition to state claims against.
-/

/-! ## A018609.P12246322840578860023

`A079210(n+32)`
-/

namespace A018609.P12246322840578860023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079210 (n + 32)

end

end A018609.P12246322840578860023

/-! ## A018609.P5574351207200335409

`eq[48, lcm(48, A106616(n))]`
-/

namespace A018609.P5574351207200335409
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  48

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 48 (A106616 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A018609.P5574351207200335409

/-! ## A018609.P4266469036803386121

`eq[60, lcm(60, A051724(n))]`
-/

namespace A018609.P4266469036803386121
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  60

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 60 (A051724 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A018609.P4266469036803386121

/-! ## A018609.P3178502341938026099

`eq[90, lcm(90, A106609(n))]`
-/

namespace A018609.P3178502341938026099
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  90

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 90 (A106609 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A018609.P3178502341938026099

/-! ## A018609.P12284678484934563994

`record[A106608(A178858(n+1))]`
-/

namespace A018609.P12284678484934563994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106608 (A178858 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018609.P12284678484934563994

/-!
# A018611: Divisors of 724.

The programs for A018611, there is no canonical definition to state claims against.
-/

/-! ## A018611.P3749175166903846861

`a(n-3)*A258637(round(sqrt(n)))` with `a(0)=1, a(1)=2, a(2)=4`
-/

namespace A018611.P3749175166903846861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 4] fun n a =>
  a (n - 3) * A258637 (SequenceMachineLib.roundAway (Real.sqrt (n : ℝ))).toNat

end

end A018611.P3749175166903846861

/-!
# A018612: Divisors of 725.

The programs for A018612, there is no canonical definition to state claims against.
-/

/-! ## A018612.P17225825129557511255

`29*a(n-3)` with `a(0)=1, a(1)=5, a(2)=25`
-/

namespace A018612.P17225825129557511255
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 5, 25] fun n a =>
  29 * a (n - 3)

end

end A018612.P17225825129557511255

/-!
# A018613: Divisors of 726.

The programs for A018613, there is no canonical definition to state claims against.
-/

/-! ## A018613.P1890716517337441895

`11*a(n-4)` with `a(0)=1, a(1)=2, a(2)=3, a(3)=6`
-/

namespace A018613.P1890716517337441895
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 3, 6] fun n a =>
  11 * a (n - 4)

end

end A018613.P1890716517337441895

/-! ## A018613.P5915874570681130205

`A289437(11*a(n-2))` with `a(0)=1, a(1)=2`
-/

namespace A018613.P5915874570681130205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A289437 (11 * a (n - 2)).toNat

end

end A018613.P5915874570681130205

/-! ## A018613.P3951477890344535094

`A116912(A245479(n+1))`
-/

namespace A018613.P3951477890344535094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116912 (A245479 (n + 1)).toNat

end

end A018613.P3951477890344535094

/-! ## A018613.P5442916005006231469

`A235200(A245480(n+1))`
-/

namespace A018613.P5442916005006231469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235200 (A245480 (n + 1)).toNat

end

end A018613.P5442916005006231469

/-! ## A018613.P9363825080967606018

`eq[A056960(n), A089128(n)]`
-/

namespace A018613.P9363825080967606018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056960 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089128 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A018613.P9363825080967606018

/-!
# A018614: Divisors of 728.

The programs for A018614, there is no canonical definition to state claims against.
-/

/-! ## A018614.P15159277098165504552

`A235027(A018552(n+1))`
-/

namespace A018614.P15159277098165504552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235027 (A018552 (n + 1)).toNat

end

end A018614.P15159277098165504552

/-! ## A018614.P5543286375489069939

`record[gcd(A008513(n), A106466(n))]`
-/

namespace A018614.P5543286375489069939
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008513 n) (A106466 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018614.P5543286375489069939

/-! ## A018614.P7267930414092129938

`filter[A336656(n+1), A122255(#)]`
-/

namespace A018614.P7267930414092129938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336656 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A122255 (f1 j).toNat = 1) n)

end

end A018614.P7267930414092129938

/-! ## A018614.P16706309830338524084

`record[gcd(2*A220892(n), A126759(n))]`
-/

namespace A018614.P16706309830338524084
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (2 * A220892 n) (A126759 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018614.P16706309830338524084

/-!
# A018615: Divisors of 730.

The programs for A018615, there is no canonical definition to state claims against.
-/

/-! ## A018615.P17085879015469093198

`record[gcd(floor(n/(xor(n, n+1)+1))+1, 27*27*(n+1)-1)]`
-/

namespace A018615.P17085879015469093198
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (⌊(n : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ)⌋ + 1) ((27 * (27 * (n + 1)) : ℤ) - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018615.P17085879015469093198

/-! ## A018615.P5614603965463059041

`eq[n, A129810(n+1)]+1`
-/

namespace A018615.P5614603965463059041
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129810 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A018615.P5614603965463059041

/-! ## A018615.P6385703023377946416

`lt[111%A322907(n+1), 1]+1`
-/

namespace A018615.P6385703023377946416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 111 (A322907 (n + 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A018615.P6385703023377946416

/-! ## A018615.P6775841734830896444

`A235201(lt[(C(n+33, 2)-n)%(n+1), 1]+1)`
-/

namespace A018615.P6775841734830896444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((Nat.choose (n + 33) 2 : ℤ) - (n : ℤ)) (n + 1 : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235201 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A018615.P6775841734830896444

/-!
# A018616: Divisors of 732.

The programs for A018616, there is no canonical definition to state claims against.
-/

/-! ## A018616.P16172549780716361602

`eq[gcd(61, n), A051724(n)]`
-/

namespace A018616.P16172549780716361602
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 61 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051724 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A018616.P16172549780716361602

/-! ## A018616.P8585816624189266118

`record[gcd(n+1, A264854(n+4))]`
-/

namespace A018616.P8585816624189266118
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A264854 (n + 4))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018616.P8585816624189266118

/-! ## A018616.P14132420188759002167

`A245453(A018521(n+1))`
-/

namespace A018616.P14132420188759002167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245453 (A018521 (n + 1)).toNat

end

end A018616.P14132420188759002167

/-! ## A018616.P1427319696899995243

`A332808(A018602(n+1))`
-/

namespace A018616.P1427319696899995243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332808 (A018602 (n + 1)).toNat

end

end A018616.P1427319696899995243

/-! ## A018616.P10129384876512058374

`2*A018655(n+1)-A018698(n+1)`
-/

namespace A018616.P10129384876512058374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A018655 (n + 1) - A018698 (n + 1)

end

end A018616.P10129384876512058374

/-!
# A018617: Divisors of 735.

The programs for A018617, there is no canonical definition to state claims against.
-/

/-! ## A018617.P4999404113182758295

`eq[49, lcm(49, lcm(15, n)/15)]`
-/

namespace A018617.P4999404113182758295
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  49

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 49 (SequenceMachineLib.roundAway ((Nat.lcm 15 n : ℚ) / 15))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A018617.P4999404113182758295

/-! ## A018617.P12127725241986103768

`A003961(A018305(n+1))`
-/

namespace A018617.P12127725241986103768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (A018305 (n + 1)).toNat

end

end A018617.P12127725241986103768

/-! ## A018617.P6500962499332708577

`A064614(A018483(n+1))`
-/

namespace A018617.P6500962499332708577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064614 (A018483 (n + 1)).toNat

end

end A018617.P6500962499332708577

/-! ## A018617.P6152972461038933186

`A335115(2*A018483(n+1))`
-/

namespace A018617.P6152972461038933186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335115 (2 * A018483 (n + 1)).toNat

end

end A018617.P6152972461038933186

/-! ## A018617.P751333108140930198

`A028234(3*A018483(n+1))`
-/

namespace A018617.P751333108140930198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028234 (3 * A018483 (n + 1)).toNat

end

end A018617.P751333108140930198

/-!
# A018618: Divisors of 736.

The programs for A018618, there is no canonical definition to state claims against.
-/

/-! ## A018618.P5745339282314402914

`A057889(A018726(n+1))`
-/

namespace A018618.P5745339282314402914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057889 (A018726 (n + 1)).toNat

end

end A018618.P5745339282314402914

/-! ## A018618.P8893837572973323285

`A254115(A018547(n+1))`
-/

namespace A018618.P8893837572973323285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254115 (A018547 (n + 1)).toNat

end

end A018618.P8893837572973323285

/-! ## A018618.P12855208649701484472

`eq[2, A324395(A227140(n))]`
-/

namespace A018618.P12855208649701484472
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324395 (A227140 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A018618.P12855208649701484472

/-! ## A018618.P12130899047802997880

`A053645(3*A018726(n+1))`
-/

namespace A018618.P12130899047802997880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053645 (3 * A018726 (n + 1)).toNat

end

end A018618.P12130899047802997880

/-! ## A018618.P3621147153110160831

`A292600(3*A018547(n+1))`
-/

namespace A018618.P3621147153110160831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292600 (3 * A018547 (n + 1)).toNat

end

end A018618.P3621147153110160831

/-!
# A018620: Divisors of 740.

The programs for A018620, there is no canonical definition to state claims against.
-/

/-! ## A018620.P6424268367612101279

`record[gcd(A127883(n+1), A289440(n+6))]`
-/

namespace A018620.P6424268367612101279
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A127883 (n + 1)) (A289440 (n + 6))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018620.P6424268367612101279

/-! ## A018620.P3027652062629341066

`∩[A064383(n+1), A180252(n+1)]`
-/

namespace A018620.P3027652062629341066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064383 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180252 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A018620.P3027652062629341066

/-! ## A018620.P16037137481973633414

`filter[A120577(n+2), A122255(#)]`
-/

namespace A018620.P16037137481973633414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120577 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A122255 (f1 j).toNat = 1) n)

end

end A018620.P16037137481973633414

/-! ## A018620.P7021409788176373488

`filter[A166578(n+2), A122255(#)]`
-/

namespace A018620.P7021409788176373488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166578 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A122255 (f1 j).toNat = 1) n)

end

end A018620.P7021409788176373488

/-! ## A018620.P6136668106891572535

`filter[A166578(n+2), A122261(#)]`
-/

namespace A018620.P6136668106891572535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166578 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A122261 (f1 j).toNat = 1) n)

end

end A018620.P6136668106891572535

/-!
# A018621: Divisors of 741.

The programs for A018621, there is no canonical definition to state claims against.
-/

/-! ## A018621.P9771957999894805591

`∏{p}[A018485(n+1), or(1, #)]`
-/

namespace A018621.P9771957999894805591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018485 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.lor 1 p

end

end A018621.P9771957999894805591

/-! ## A018621.P3258740663020242246

`A003961(A018420(n+1))`
-/

namespace A018621.P3258740663020242246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (A018420 (n + 1)).toNat

end

end A018621.P3258740663020242246

/-! ## A018621.P13546609792328734509

`A064614(A018485(n+1))`
-/

namespace A018621.P13546609792328734509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064614 (A018485 (n + 1)).toNat

end

end A018621.P13546609792328734509

/-! ## A018621.P1318590011443477139

`∏{p}[A018270(n+1), A000043(#)]`
-/

namespace A018621.P1318590011443477139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018270 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000043 p

end

end A018621.P1318590011443477139

/-!
# A018622: Divisors of 742.

The programs for A018622, there is no canonical definition to state claims against.
-/

/-! ## A018622.P13919126303870128280

`A325094(record[n-and(2*n, ∑[4^n])])`
-/

namespace A018622.P13919126303870128280
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 ^ n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (Nat.land (2 * n) (∑ j ∈ Finset.range (n + 1), f2 j) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325094 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A018622.P13919126303870128280

/-! ## A018622.P17715110023303998449

`A325094(eq[n, n-and(2*n, ∑[4^n])])`
-/

namespace A018622.P17715110023303998449
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 ^ n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (Nat.land (2 * n) (∑ j ∈ Finset.range (n + 1), f3 j) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325094 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A018622.P17715110023303998449

/-! ## A018622.P13216323811227392499

`A325094(eq[2*n, and(2*n, ∑[(-2)^n])])`
-/

namespace A018622.P13216323811227392499
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-2) ^ n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (2 * n : ℤ) (∑ j ∈ Finset.range (n + 1), f3 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325094 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A018622.P13216323811227392499

/-! ## A018622.P6033231826045124598

`A325094(((2*∑[and(n, -n)²]+n)/3)%(11^n))`
-/

namespace A018622.P6033231826045124598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-(n : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325094 (Int.tmod (SequenceMachineLib.roundAway (((2 * (∑ j ∈ Finset.range (n + 1), f1 j) + (n : ℤ) : ℤ) : ℚ) / 3)) (11 ^ n : ℤ)).toNat

end

end A018622.P6033231826045124598

/-!
# A018623: Divisors of 744.

The programs for A018623, there is no canonical definition to state claims against.
-/

/-! ## A018623.P4853900141252964716

`eq[A029265(n), A087180(n)]`
-/

namespace A018623.P4853900141252964716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029265 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087180 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A018623.P4853900141252964716

/-! ## A018623.P114334924239991744

`eq[A351954(n), A385886(n)]`
-/

namespace A018623.P114334924239991744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351954 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385886 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A018623.P114334924239991744

/-! ## A018623.P8272509807461869307

`record[A238442(∑[A218379(n)])]`
-/

namespace A018623.P8272509807461869307
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218379 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238442 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018623.P8272509807461869307

/-! ## A018623.P7912911136395008208

`record[A366611(A082043(n)+n)]`
-/

namespace A018623.P7912911136395008208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366611 (A082043 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018623.P7912911136395008208

/-! ## A018623.P3209942392970024198

`record[A161710(n)-A326444(n)]`
-/

namespace A018623.P3209942392970024198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161710 n - A326444 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018623.P3209942392970024198

/-!
# A018624: Divisors of 747.

The programs for A018624, there is no canonical definition to state claims against.
-/

/-! ## A018624.P9531725551412450023

`record[gcd(A133263(n)², 8*n+7)]`
-/

namespace A018624.P9531725551412450023
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A133263 n ^ 2) (8 * n + 7 : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018624.P9531725551412450023

/-!
# A018625: Divisors of 748.

The programs for A018625, there is no canonical definition to state claims against.
-/

/-! ## A018625.P7751460614988547553

`A235027(A018701(n+1))`
-/

namespace A018625.P7751460614988547553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235027 (A018701 (n + 1)).toNat

end

end A018625.P7751460614988547553

/-! ## A018625.P13312276165045332584

`A007431(4*A018761(n+1))`
-/

namespace A018625.P13312276165045332584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007431 (4 * A018761 (n + 1)).toNat

end

end A018625.P13312276165045332584

/-! ## A018625.P8653261985898886568

`A184997(4*A018761(n+1))`
-/

namespace A018625.P8653261985898886568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184997 (4 * A018761 (n + 1)).toNat

end

end A018625.P8653261985898886568

/-! ## A018625.P4192138127171078849

`eq[gcd(4, n), A106618(A106612(n))]`
-/

namespace A018625.P4192138127171078849
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 4 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106618 (A106612 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A018625.P4192138127171078849

/-! ## A018625.P17326236954415987851

`∪[2*A018420(n+1), A018420(n+1)]`
-/

namespace A018625.P17326236954415987851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A018420 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018420 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A018625.P17326236954415987851

/-!
# A018626: Divisors of 750.

The programs for A018626, there is no canonical definition to state claims against.
-/

/-! ## A018626.P16305344629986233281

`record[gcd(n+1, A244726(7*n+2))]`
-/

namespace A018626.P16305344629986233281
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A244726 (7 * n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018626.P16305344629986233281

/-! ## A018626.P7024243414408793516

`A235027(A018524(n+1))`
-/

namespace A018626.P7024243414408793516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235027 (A018524 (n + 1)).toNat

end

end A018626.P7024243414408793516

/-! ## A018626.P4290864122992253169

`∏{p}[A018524(n+1), A007093(#)]`
-/

namespace A018626.P4290864122992253169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018524 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A007093 p

end

end A018626.P4290864122992253169

/-! ## A018626.P6076036581984835571

`∏{p}[A018594(n+1), A007095(#)]`
-/

namespace A018626.P6076036581984835571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018594 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A007095 p

end

end A018626.P6076036581984835571

/-! ## A018626.P7820985712936412066

`∏{p}[A018524(n+1), A037471(#)]`
-/

namespace A018626.P7820985712936412066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018524 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A037471 p

end

end A018626.P7820985712936412066

/-!
# A018627: Divisors of 752.

The programs for A018627, there is no canonical definition to state claims against.
-/

/-! ## A018627.P11411456655338544874

`2^(n+1)-A018366(n+1)`
-/

namespace A018627.P11411456655338544874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) : ℤ) - A018366 (n + 1)

end

end A018627.P11411456655338544874

/-! ## A018627.P6142898340324865192

`3*a(n-1)-A053165(a(n-1))` with `a(0)=1`
-/

namespace A018627.P6142898340324865192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  3 * a (n - 1) - A053165 (a (n - 1)).toNat

end

end A018627.P6142898340324865192

/-! ## A018627.P12348286393121668074

`record[gcd(A171763(n+1)-1, 47*(n+1))]`
-/

namespace A018627.P12348286393121668074
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A171763 (n + 1) - 1) (47 * (n + 1) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018627.P12348286393121668074

/-! ## A018627.P11274184448170399856

`A053645(ceil(8^n/sqrt(∑[16^n])))+2^n`
-/

namespace A018627.P11274184448170399856
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053645 ⌈(8 ^ n : ℝ) / Real.sqrt ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ)⌉.toNat + (2 ^ n : ℤ)

end

end A018627.P11274184448170399856

/-!
# A018628: Divisors of 754.

The programs for A018628, there is no canonical definition to state claims against.
-/

/-! ## A018628.P9826683343280116415

`record[gcd(51*n-7, A023545(n+1))]`
-/

namespace A018628.P9826683343280116415
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((51 * n : ℤ) - 7) (A023545 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018628.P9826683343280116415

/-! ## A018628.P15992438348729186921

`∏{p}[A334110(n), A261327(#)]`
-/

namespace A018628.P15992438348729186921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334110 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A261327 p

end

end A018628.P15992438348729186921

/-! ## A018628.P83213730284085963

`record[gcd(A017017(7*n+11), A155212(7*n+6))]`
-/

namespace A018628.P83213730284085963
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A017017 (7 * n + 11)) (A155212 (7 * n + 6))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018628.P83213730284085963

/-!
# A018629: Divisors of 756.

The programs for A018629, there is no canonical definition to state claims against.
-/

/-! ## A018629.P17017587881218043206

`eq[63, lcm(63, A051724(n))]`
-/

namespace A018629.P17017587881218043206
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  63

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 63 (A051724 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A018629.P17017587881218043206

/-! ## A018629.P17005072052107198761

`A235489(A018585(n+1))`
-/

namespace A018629.P17005072052107198761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235489 (A018585 (n + 1)).toNat

end

end A018629.P17005072052107198761

/-! ## A018629.P1586056397178044310

`record[gcd(A136006(n), A278539(n+1))]`
-/

namespace A018629.P1586056397178044310
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A136006 n) (A278539 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018629.P1586056397178044310

/-! ## A018629.P12054533254510391601

`record[gcd(2*A157116(n+1), A008619(n))]`
-/

namespace A018629.P12054533254510391601
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (2 * A157116 (n + 1)) (A008619 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018629.P12054533254510391601

/-! ## A018629.P582464364818890644

`∪[2*A018423(n+1), A018423(n+1)]`
-/

namespace A018629.P582464364818890644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A018423 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018423 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A018629.P582464364818890644

/-!
# A018630: Divisors of 759.

The programs for A018630, there is no canonical definition to state claims against.
-/

/-! ## A018630.P14687065778015709171

`∏{p}[A161715(n), A090707(#)]`
-/

namespace A018630.P14687065778015709171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161715 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A090707 p

end

end A018630.P14687065778015709171

/-! ## A018630.P9972334346446497004

`∏{p}[A161715(n), A098700(#)]`
-/

namespace A018630.P9972334346446497004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161715 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A098700 p

end

end A018630.P9972334346446497004

/-! ## A018630.P1815270714150627694

`∏{p}[A194358(n), A292473(#)]`
-/

namespace A018630.P1815270714150627694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194358 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A292473 p

end

end A018630.P1815270714150627694

/-! ## A018630.P18170909145554290164

`record[gcd(A006000(n), A158732(n))]`
-/

namespace A018630.P18170909145554290164
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A006000 n) (A158732 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018630.P18170909145554290164

/-!
# A018631: Divisors of 760.

The programs for A018631, there is no canonical definition to state claims against.
-/

/-! ## A018631.P16996370735991138943

`record[gcd(A033586(2*n), A260429(n+3))]`
-/

namespace A018631.P16996370735991138943
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A033586 (2 * n)) (A260429 (n + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018631.P16996370735991138943

/-! ## A018631.P9284294999677594751

`2*A018565(n+1)-A018498(n+1)`
-/

namespace A018631.P9284294999677594751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A018565 (n + 1) - A018498 (n + 1)

end

end A018631.P9284294999677594751

/-! ## A018631.P600826411277370718

`∪[2*A018424(n+1), A018424(n+1)]`
-/

namespace A018631.P600826411277370718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A018424 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018424 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A018631.P600826411277370718

/-! ## A018631.P15569494512961711880

`A004277(A018565(n+1))-A018498(n+1)`
-/

namespace A018631.P15569494512961711880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A018565 (n + 1)).toNat - A018498 (n + 1)

end

end A018631.P15569494512961711880

/-! ## A018631.P13637443272636754158

`or(A018589(n+1), A049804(A018589(n+1)))`
-/

namespace A018631.P13637443272636754158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A018589 (n + 1)) (A049804 (A018589 (n + 1)).toNat)

end

end A018631.P13637443272636754158

/-!
# A018632: Divisors of 762.

The programs for A018632, there is no canonical definition to state claims against.
-/

/-! ## A018632.P8388553989024676192

`record[∏{p}[n, A075019(#)]]`
-/

namespace A018632.P8388553989024676192
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), A075019 p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018632.P8388553989024676192

/-! ## A018632.P10772302126014028058

`record[gcd(4*C(n, 2)+2, A233583(n+20))]`
-/

namespace A018632.P10772302126014028058
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (4 * Nat.choose n 2 + 2 : ℤ) (A233583 (n + 20))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018632.P10772302126014028058

/-! ## A018632.P5356359930961682397

`record[gcd(C(n+1, 3)+1+n, A004006(2*n))]`
-/

namespace A018632.P5356359930961682397
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Nat.choose (n + 1) 3 + 1 + n : ℤ) (A004006 (2 * n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018632.P5356359930961682397

/-! ## A018632.P17575645381927615246

`record[gcd(2*C(n, 3)+1+n, A167471(3*(n+1)))]`
-/

namespace A018632.P17575645381927615246
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (2 * Nat.choose n 3 + 1 + n : ℤ) (A167471 (3 * (n + 1)))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018632.P17575645381927615246

/-!
# A018633: Divisors of 764.

The programs for A018633, there is no canonical definition to state claims against.
-/

/-! ## A018633.P3080428752705489875

`A043318(∑[2^n])-(2^n-1)`
-/

namespace A018633.P3080428752705489875
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043318 (∑ j ∈ Finset.range (n + 1), f1 j) - ((2 ^ n : ℤ) - 1)

end

end A018633.P3080428752705489875

/-!
# A018634: Divisors of 765.

The programs for A018634, there is no canonical definition to state claims against.
-/

/-! ## A018634.P9184650034963048965

`eq[gcd(5, n), A106618(lcm(9, n)/9)]`
-/

namespace A018634.P9184650034963048965
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 5 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106618 (SequenceMachineLib.roundAway ((Nat.lcm 9 n : ℚ) / 9)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A018634.P9184650034963048965

/-! ## A018634.P11787601030531834785

`A064988(A018276(n+1))`
-/

namespace A018634.P11787601030531834785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064988 (A018276 (n + 1)).toNat

end

end A018634.P11787601030531834785

/-! ## A018634.P7615163027525172587

`A235487(A018685(n+1))`
-/

namespace A018634.P7615163027525172587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235487 (A018685 (n + 1)).toNat

end

end A018634.P7615163027525172587

/-! ## A018634.P3580903423679646205

`∩[A003532(n+1), A093688(n+1)]`
-/

namespace A018634.P3580903423679646205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003532 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093688 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A018634.P3580903423679646205

/-! ## A018634.P9389401251164093131

`∩[A003532(n+1), A143512(n+1)]`
-/

namespace A018634.P9389401251164093131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003532 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143512 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A018634.P9389401251164093131

/-!
# A018635: Divisors of 768.

The programs for A018635, there is no canonical definition to state claims against.
-/

/-! ## A018635.P550345637904613234

`ceil(root(n, 4))*a(n-2)` with `a(0)=1, a(1)=2, a(2)=3`
-/

namespace A018635.P550345637904613234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 3] fun n a =>
  ⌈(n : ℝ) ^ (1 / (4 : ℝ))⌉ * a (n - 2)

end

end A018635.P550345637904613234

/-! ## A018635.P8636434466520140468

`3*a(n-2)-a(n-2)%(1-n)²` with `a(0)=1, a(1)=2`
-/

namespace A018635.P8636434466520140468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  3 * a (n - 2) - Int.tmod (a (n - 2)) ((1 - (n : ℤ)) ^ 2)

end

end A018635.P8636434466520140468

/-! ## A018635.P1492526129700741753

`A029744(comp[18*n])`
-/

namespace A018635.P1492526129700741753
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  18 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029744 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A018635.P1492526129700741753

/-! ## A018635.P15092909574351121364

`eq[1, A227140(lcm(24, n)/24)]`
-/

namespace A018635.P15092909574351121364
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227140 (SequenceMachineLib.roundAway ((Nat.lcm 24 n : ℚ) / 24)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A018635.P15092909574351121364

/-! ## A018635.P7708030317029315663

`A235487(A018534(n+1))`
-/

namespace A018635.P7708030317029315663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235487 (A018534 (n + 1)).toNat

end

end A018635.P7708030317029315663

/-!
# A018636: Divisors of 770.

The programs for A018636, there is no canonical definition to state claims against.
-/

/-! ## A018636.P3125002321761768125

`A235027(A018717(n+1))`
-/

namespace A018636.P3125002321761768125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235027 (A018717 (n + 1)).toNat

end

end A018636.P3125002321761768125

/-! ## A018636.P6580501836332222973

`record[A038502(A087005(n+1))]`
-/

namespace A018636.P6580501836332222973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038502 (A087005 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018636.P6580501836332222973

/-! ## A018636.P13010230231983427665

`filter[A087005(n+1), A011655(#)]`
-/

namespace A018636.P13010230231983427665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A011655 (f1 j).toNat = 1) n)

end

end A018636.P13010230231983427665

/-! ## A018636.P7536922642079550587

`filter[A087005(n+1), A014578(#)]`
-/

namespace A018636.P7536922642079550587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A014578 (f1 j).toNat = 1) n)

end

end A018636.P7536922642079550587

/-! ## A018636.P12664603420326518219

`filter[A087005(n+1), A267208(#)]`
-/

namespace A018636.P12664603420326518219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267208 (f1 j).toNat = 1) n)

end

end A018636.P12664603420326518219

/-!
# A018637: Divisors of 772.

The programs for A018637, there is no canonical definition to state claims against.
-/

/-! ## A018637.P14413339513023304963

`xor(2^n-1, A043318(∑[2^n]))`
-/

namespace A018637.P14413339513023304963
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((2 ^ n : ℤ) - 1) (A043318 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A018637.P14413339513023304963

/-!
# A018638: Divisors of 774.

The programs for A018638, there is no canonical definition to state claims against.
-/

/-! ## A018638.P16205570861207586662

`∪[A018427(n+1), A042964(A018427(n+1))]`
-/

namespace A018638.P16205570861207586662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018427 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042964 (A018427 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A018638.P16205570861207586662

/-!
# A018639: Divisors of 775.

The programs for A018639, there is no canonical definition to state claims against.
-/

/-! ## A018639.P4716129699193909294

`31*a(n-3)` with `a(0)=1, a(1)=5, a(2)=25`
-/

namespace A018639.P4716129699193909294
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 5, 25] fun n a =>
  31 * a (n - 3)

end

end A018639.P4716129699193909294

/-!
# A018640: Divisors of 776.

The programs for A018640, there is no canonical definition to state claims against.
-/

/-! ## A018640.P6774462883691500069

`char[4]+a(n-1)*A058005(n+2)` with `a(0)=1`
-/

namespace A018640.P6774462883691500069
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + a (n - 1) * A058005 (n + 2)

end

end A018640.P6774462883691500069

/-! ## A018640.P15608782598538754004

`A057889(A018507(n+1))`
-/

namespace A018640.P15608782598538754004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057889 (A018507 (n + 1)).toNat

end

end A018640.P15608782598538754004

/-! ## A018640.P6865275506877706865

`A071786(A018560(n+1))`
-/

namespace A018640.P6865275506877706865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071786 (A018560 (n + 1)).toNat

end

end A018640.P6865275506877706865

/-! ## A018640.P11766298957066682637

`A116912(A018658(n+1))`
-/

namespace A018640.P11766298957066682637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116912 (A018658 (n + 1)).toNat

end

end A018640.P11766298957066682637

/-!
# A018641: Divisors of 777.

The programs for A018641, there is no canonical definition to state claims against.
-/

/-! ## A018641.P9487301559413309455

`record[∏{p}[n, A079387(#)]]`
-/

namespace A018641.P9487301559413309455
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), A079387 p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018641.P9487301559413309455

/-! ## A018641.P8219662977710472508

`∏{p}[A018497(n+1), or(1, #)]`
-/

namespace A018641.P8219662977710472508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018497 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.lor 1 p

end

end A018641.P8219662977710472508

/-! ## A018641.P18197198032496670785

`A197318(∑[gcd(n, ∑[n])]+1)`
-/

namespace A018641.P18197198032496670785
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd n (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197318 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A018641.P18197198032496670785

/-! ## A018641.P14116902118265617168

`record[gcd(2*n+1, A257200(n+1))]`
-/

namespace A018641.P14116902118265617168
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (2 * n + 1 : ℤ) (A257200 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018641.P14116902118265617168

/-!
# A018642: Divisors of 780.

The programs for A018642, there is no canonical definition to state claims against.
-/

/-! ## A018642.P17090726351051695029

`record[gcd(A000026(n+1), A158768(n))]`
-/

namespace A018642.P17090726351051695029
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000026 (n + 1)) (A158768 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018642.P17090726351051695029

/-! ## A018642.P2508042016936694132

`record[gcd(n+1, A144312(A017293(n)))]`
-/

namespace A018642.P2508042016936694132
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A144312 (A017293 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018642.P2508042016936694132

/-! ## A018642.P8698514514611471870

`∪[2*A018429(n+1), A018429(n+1)]`
-/

namespace A018642.P8698514514611471870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A018429 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018429 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A018642.P8698514514611471870

/-! ## A018642.P2696957424360682013

`∪[3*A018360(n+1), A018360(n+1)]`
-/

namespace A018642.P2696957424360682013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A018360 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018360 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A018642.P2696957424360682013

/-! ## A018642.P4895504149972141954

`record[gcd(A103221(3*n), A158443(5*n+3))]`
-/

namespace A018642.P4895504149972141954
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A103221 (3 * n)) (A158443 (5 * n + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018642.P4895504149972141954

/-!
# A018643: Divisors of 782.

The programs for A018643, there is no canonical definition to state claims against.
-/

/-! ## A018643.P16360728978828068431

`record[gcd(A158223(8*n+4)+1, n+1)]`
-/

namespace A018643.P16360728978828068431
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A158223 (8 * n + 4) + 1) (n + 1 : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018643.P16360728978828068431

/-! ## A018643.P17087669117011811012

`A332808(A018759(n+1))`
-/

namespace A018643.P17087669117011811012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332808 (A018759 (n + 1)).toNat

end

end A018643.P17087669117011811012

/-! ## A018643.P10238881169056610474

`∏{p}[A018579(n+1), A006369(#)]`
-/

namespace A018643.P10238881169056610474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018579 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A006369 p

end

end A018643.P10238881169056610474

/-! ## A018643.P17949577440859101467

`∏{p}[A018579(n+1), A093714(#)]`
-/

namespace A018643.P17949577440859101467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018579 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A093714 p

end

end A018643.P17949577440859101467

/-!
# A018644: Divisors of 783.

The programs for A018644, there is no canonical definition to state claims against.
-/

/-! ## A018644.P17557646829030134128

`record[∏{p}[∑{d}[n+1, #], A033874(#)]]`
-/

namespace A018644.P17557646829030134128
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f3 n), d

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), A033874 p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018644.P17557646829030134128

/-! ## A018644.P10279706057365635652

`A302776(29*(4-ceil(abs(sin(n))))^n)`
-/

namespace A018644.P10279706057365635652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302776 (29 * (4 - ⌈|Real.sin (n : ℝ)|⌉) ^ n).toNat

end

end A018644.P10279706057365635652

/-! ## A018644.P8194877007525591737

`A050985(2*a(n-1))+a(n-1)` with `a(0)=1`
-/

namespace A018644.P8194877007525591737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A050985 (2 * a (n - 1)).toNat + a (n - 1)

end

end A018644.P8194877007525591737

/-! ## A018644.P9365520592590142865

`A056192(2*a(n-1))+a(n-1)` with `a(0)=1`
-/

namespace A018644.P9365520592590142865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A056192 (2 * a (n - 1)).toNat + a (n - 1)

end

end A018644.P9365520592590142865

/-!
# A018645: Divisors of 784.

The programs for A018645, there is no canonical definition to state claims against.
-/

/-! ## A018645.P1829238169993959061

`eq[(28*(n+1))², lcm(n, (28*(n+1))²)]`
-/

namespace A018645.P1829238169993959061
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (28 * (n + 1)) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm n ((28 * (n + 1)) ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A018645.P1829238169993959061

/-! ## A018645.P5279799913214135491

`record[gcd((28*(n+1))², A000069(n+1))]`
-/

namespace A018645.P5279799913214135491
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((28 * (n + 1)) ^ 2 : ℤ) (A000069 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018645.P5279799913214135491

/-! ## A018645.P7923922122239728983

`A064554(A018433(n+1))`
-/

namespace A018645.P7923922122239728983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064554 (A018433 (n + 1)).toNat

end

end A018645.P7923922122239728983

/-! ## A018645.P16251502494350802558

`A072010(A174843(690+n))`
-/

namespace A018645.P16251502494350802558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072010 (A174843 (690 + n)).toNat

end

end A018645.P16251502494350802558

/-! ## A018645.P16484815610608873805

`A072010(3*A018433(n+1))`
-/

namespace A018645.P16484815610608873805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072010 (3 * A018433 (n + 1)).toNat

end

end A018645.P16484815610608873805

/-!
# A018646: Divisors of 786.

The programs for A018646, there is no canonical definition to state claims against.
-/

/-! ## A018646.P13247011753823535460

`A030104(A018714(n+1))`
-/

namespace A018646.P13247011753823535460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030104 (A018714 (n + 1)).toNat

end

end A018646.P13247011753823535460

/-! ## A018646.P17581001894138897952

`A160102(A018546(n+1))`
-/

namespace A018646.P17581001894138897952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160102 (A018546 (n + 1)).toNat

end

end A018646.P17581001894138897952

/-! ## A018646.P13677074569695946434

`A332808(A018632(n+1))`
-/

namespace A018646.P13677074569695946434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332808 (A018632 (n + 1)).toNat

end

end A018646.P13677074569695946434

/-! ## A018646.P11421373531537226839

`A325094(A217761(n+1))`
-/

namespace A018646.P11421373531537226839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325094 (A217761 (n + 1)).toNat

end

end A018646.P11421373531537226839

/-!
# A018647: Divisors of 788.

The programs for A018647, there is no canonical definition to state claims against.
-/

/-! ## A018647.P3027180186263620041

`xor(2^n, A018611(n+1))+2^n`
-/

namespace A018647.P3027180186263620041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (2 ^ n : ℤ) (A018611 (n + 1)) + (2 ^ n : ℤ)

end

end A018647.P3027180186263620041

/-!
# A018648: Divisors of 790.

The programs for A018648, there is no canonical definition to state claims against.
-/

/-! ## A018648.P5048671905608877619

`A071786(A018751(n+1))`
-/

namespace A018648.P5048671905608877619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071786 (A018751 (n + 1)).toNat

end

end A018648.P5048671905608877619

/-! ## A018648.P1681351716135237634

`A332213(A018684(n+1))`
-/

namespace A018648.P1681351716135237634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332213 (A018684 (n + 1)).toNat

end

end A018648.P1681351716135237634

/-! ## A018648.P13938966927533247666

`A332808(A018603(n+1))`
-/

namespace A018648.P13938966927533247666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332808 (A018603 (n + 1)).toNat

end

end A018648.P13938966927533247666

/-! ## A018648.P11658228392755577764

`∏{p}[A019565(n), A005266(#)]`
-/

namespace A018648.P11658228392755577764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A005266 p

end

end A018648.P11658228392755577764

/-!
# A018649: Divisors of 792.

The programs for A018649, there is no canonical definition to state claims against.
-/

/-! ## A018649.P1728558057426402852

`∪[11*eq[72, lcm(72, n)], lt[(72*n)%(n+1), 1]+1]`
-/

namespace A018649.P1728558057426402852
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  72

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 72 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11 * SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  72 * n % (n + 1)

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f5 j < f6 j) n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f4 j = x) n

end

end A018649.P1728558057426402852

/-! ## A018649.P14819855440463590636

`eq[66, lcm(66, A051724(n))]`
-/

namespace A018649.P14819855440463590636
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  66

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 66 (A051724 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A018649.P14819855440463590636

/-! ## A018649.P9658001248151614628

`eq[gcd(99, n), A106609(n)]`
-/

namespace A018649.P9658001248151614628
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 99 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106609 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A018649.P9658001248151614628

/-! ## A018649.P15620066419982960258

`filter[A178864(n+1), A391183(#)]`
-/

namespace A018649.P15620066419982960258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178864 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A391183 (f1 j).toNat = 1) n)

end

end A018649.P15620066419982960258

/-! ## A018649.P16210146147059612670

`record[gcd(A001561(n), A003602(n+1))]`
-/

namespace A018649.P16210146147059612670
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001561 n) (A003602 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018649.P16210146147059612670

/-!
# A018650: Divisors of 795.

The programs for A018650, there is no canonical definition to state claims against.
-/

/-! ## A018650.P17531899851404655864

`A003961(A018372(n+1))`
-/

namespace A018650.P17531899851404655864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (A018372 (n + 1)).toNat

end

end A018650.P17531899851404655864

/-! ## A018650.P17740874008031567552

`A061898(A018577(n+1))`
-/

namespace A018650.P17740874008031567552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061898 (A018577 (n + 1)).toNat

end

end A018650.P17740874008031567552

/-! ## A018650.P13750930645609742098

`A064614(A018503(n+1))`
-/

namespace A018650.P13750930645609742098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064614 (A018503 (n + 1)).toNat

end

end A018650.P13750930645609742098

/-! ## A018650.P11051132417913502819

`A332808(A018601(n+1))`
-/

namespace A018650.P11051132417913502819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332808 (A018601 (n + 1)).toNat

end

end A018650.P11051132417913502819

/-!
# A018651: Divisors of 796.

The programs for A018651, there is no canonical definition to state claims against.
-/

/-! ## A018651.P4109255173075385979

`A043318(2^comp[or(3, n)])`
-/

namespace A018651.P4109255173075385979
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 3 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043318 (2 ^ SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A018651.P4109255173075385979

/-!
# A018652: Divisors of 798.

The programs for A018652, there is no canonical definition to state claims against.
-/

/-! ## A018652.P9214513974358689309

`filter[A325093(n+1), A122255(#)]`
-/

namespace A018652.P9214513974358689309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325093 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A122255 (f1 j).toNat = 1) n)

end

end A018652.P9214513974358689309

/-! ## A018652.P945170541546601110

`filter[A325093(n+1), A122261(#)]`
-/

namespace A018652.P945170541546601110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325093 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A122261 (f1 j).toNat = 1) n)

end

end A018652.P945170541546601110

/-! ## A018652.P10701034420169481337

`∏{p}[A018606(n+1), A248375(#)]`
-/

namespace A018652.P10701034420169481337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018606 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A248375 p

end

end A018652.P10701034420169481337

/-! ## A018652.P846024513036480620

`record[gcd(A053166(n+1), A156843(n))]`
-/

namespace A018652.P846024513036480620
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A053166 (n + 1)) (A156843 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018652.P846024513036480620

/-! ## A018652.P13323749947982019889

`∩[A087008(n+1), A233576(n+1)]`
-/

namespace A018652.P13323749947982019889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087008 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233576 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A018652.P13323749947982019889

/-!
# A018653: Divisors of 800.

The programs for A018653, there is no canonical definition to state claims against.
-/

/-! ## A018653.P13628479837275522468

`eq[25, lcm(25, A227140(n))]`
-/

namespace A018653.P13628479837275522468
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  25

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 25 (A227140 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A018653.P13628479837275522468

/-! ## A018653.P16039831197814717290

`eq[2, lcm(2, A106621(A106621(n)))]`
-/

namespace A018653.P16039831197814717290
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A106621 (A106621 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A018653.P16039831197814717290

/-! ## A018653.P2370034785604457630

`∩[A029461(n+1), A067938(n+1)]`
-/

namespace A018653.P2370034785604457630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029461 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067938 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A018653.P2370034785604457630

/-! ## A018653.P2027277181012968499

`∩[A003592(n+1), A245027(n+1)]`
-/

namespace A018653.P2027277181012968499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003592 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245027 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A018653.P2027277181012968499

/-! ## A018653.P2842151805869321662

`∩[A004612(n+1), A245027(n+1)]`
-/

namespace A018653.P2842151805869321662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004612 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245027 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A018653.P2842151805869321662

/-!
# A018654: Divisors of 801.

The programs for A018654, there is no canonical definition to state claims against.
-/

/-! ## A018654.P10840152671001431997

`A057367(3^comp[4*n])`
-/

namespace A018654.P10840152671001431997
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057367 (3 ^ SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A018654.P10840152671001431997

/-!
# A018655: Divisors of 804.

The programs for A018655, there is no canonical definition to state claims against.
-/

/-! ## A018655.P16248880745479527445

`A116912(A018683(n+1))`
-/

namespace A018655.P16248880745479527445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116912 (A018683 (n + 1)).toNat

end

end A018655.P16248880745479527445

/-! ## A018655.P6027539574141587779

`A332808(A018698(n+1))`
-/

namespace A018655.P6027539574141587779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332808 (A018698 (n + 1)).toNat

end

end A018655.P6027539574141587779

/-! ## A018655.P2906529239082727289

`2*A018698(n+1)-A018738(n+1)`
-/

namespace A018655.P2906529239082727289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A018698 (n + 1) - A018738 (n + 1)

end

end A018655.P2906529239082727289

/-! ## A018655.P12227325144111740553

`∪[2*A018434(n+1), A018434(n+1)]`
-/

namespace A018655.P12227325144111740553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A018434 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018434 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A018655.P12227325144111740553

/-!
# A018656: Divisors of 805.

The programs for A018656, there is no canonical definition to state claims against.
-/

/-! ## A018656.P5331731182542715791

`eq[lcm(n, 805), 805]`
-/

namespace A018656.P5331731182542715791
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm n 805

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  805

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A018656.P5331731182542715791

/-! ## A018656.P2386270084262181353

`∏{p}[A018581(n+1), or(4, #)]`
-/

namespace A018656.P2386270084262181353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018581 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.lor 4 p

end

end A018656.P2386270084262181353

/-! ## A018656.P9927057378002659722

`A332808(A018776(n+1))`
-/

namespace A018656.P9927057378002659722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332808 (A018776 (n + 1)).toNat

end

end A018656.P9927057378002659722

/-! ## A018656.P12323244630194676631

`∏{p}[A161715(n), A252281(#)]`
-/

namespace A018656.P12323244630194676631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161715 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A252281 p

end

end A018656.P12323244630194676631

/-!
# A018657: Divisors of 806.

The programs for A018657, there is no canonical definition to state claims against.
-/

/-! ## A018657.P10590746499135786421

`A327095(A334110(n))`
-/

namespace A018657.P10590746499135786421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327095 (A334110 n).toNat

end

end A018657.P10590746499135786421

/-! ## A018657.P11030950072641771751

`A327095(A019565(n)²)`
-/

namespace A018657.P11030950072641771751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327095 (A019565 n ^ 2).toNat

end

end A018657.P11030950072641771751

/-! ## A018657.P16261105370402930588

`A235027(A018590(n+1))`
-/

namespace A018657.P16261105370402930588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235027 (A018590 (n + 1)).toNat

end

end A018657.P16261105370402930588

/-! ## A018657.P11277847847157339833

`A309324(A018563(n+1))`
-/

namespace A018657.P11277847847157339833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309324 (A018563 (n + 1)).toNat

end

end A018657.P11277847847157339833

/-!
# A018658: Divisors of 808.

The programs for A018658, there is no canonical definition to state claims against.
-/

/-! ## A018658.P17172626351683541078

`A055646(2^n)`
-/

namespace A018658.P17172626351683541078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055646 (2 ^ n)

end

end A018658.P17172626351683541078

/-! ## A018658.P10859470741647039472

`A056142(A004655(n))`
-/

namespace A018658.P10859470741647039472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056142 (A004655 n).toNat

end

end A018658.P10859470741647039472

/-! ## A018658.P14647499900700598598

`A055645(A083593(n))`
-/

namespace A018658.P14647499900700598598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055645 (A083593 n).toNat

end

end A018658.P14647499900700598598

/-! ## A018658.P3481960967501666612

`A055645(∑[A115451(n)])`
-/

namespace A018658.P3481960967501666612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115451 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055645 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A018658.P3481960967501666612

/-!
# A018659: Divisors of 810.

The programs for A018659, there is no canonical definition to state claims against.
-/

/-! ## A018659.P15693038542686924257

`eq[45, lcm(45, A106619(n))]`
-/

namespace A018659.P15693038542686924257
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  45

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 45 (A106619 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A018659.P15693038542686924257

/-! ## A018659.P12864707003066201101

`eq[54, lcm(54, A106616(n))]`
-/

namespace A018659.P12864707003066201101
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  54

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 54 (A106616 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A018659.P12864707003066201101

/-! ## A018659.P11196621657318561429

`record[gcd(n+1, A182791(n))]`
-/

namespace A018659.P11196621657318561429
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A182791 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018659.P11196621657318561429

/-! ## A018659.P10705201727554040410

`∩[A161466(n+1), A191286(n+1)]`
-/

namespace A018659.P10705201727554040410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161466 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191286 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A018659.P10705201727554040410

/-! ## A018659.P16431229365585938563

`record[gcd(A027468(n+9), A233583(n+1))]`
-/

namespace A018659.P16431229365585938563
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A027468 (n + 9)) (A233583 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018659.P16431229365585938563

/-!
# A018660: Divisors of 812.

The programs for A018660, there is no canonical definition to state claims against.
-/

/-! ## A018660.P11263342417478597587

`eq[A109015(n), A318479(n)]`
-/

namespace A018660.P11263342417478597587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109015 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318479 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A018660.P11263342417478597587

/-!
# A018661: Divisors of 814.

The programs for A018661, there is no canonical definition to state claims against.
-/

/-! ## A018661.P18234033316797346595

`record[gcd(A000124(5*n+11), n+8)]`
-/

namespace A018661.P18234033316797346595
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000124 (5 * n + 11)) (n + 8 : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018661.P18234033316797346595

/-! ## A018661.P970506156505694618

`A116912(A018526(n+1))`
-/

namespace A018661.P970506156505694618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116912 (A018526 (n + 1)).toNat

end

end A018661.P970506156505694618

/-! ## A018661.P16672314109864963220

`A332808(A018657(n+1))`
-/

namespace A018661.P16672314109864963220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332808 (A018657 (n + 1)).toNat

end

end A018661.P16672314109864963220

/-!
# A018662: Divisors of 816.

The programs for A018662, there is no canonical definition to state claims against.
-/

/-! ## A018662.P13009048415639114342

`eq[51, lcm(51, A106617(n))]`
-/

namespace A018662.P13009048415639114342
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  51

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 51 (A106617 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A018662.P13009048415639114342

/-! ## A018662.P7443171651269120842

`∪[lt[(48*n)%(n+1), 1]+1, A008599(lt[(48*n)%(n+1), 1]+1)]`
-/

namespace A018662.P7443171651269120842
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  48 * n % (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n + 1

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  48 * n % (n + 1)

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008599 (SequenceMachineLib.nth (fun j => f5 j < f6 j) n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f4 j = (x : ℤ)) n

end

end A018662.P7443171651269120842

/-! ## A018662.P3757547221684843882

`eq[gcd(3, n), A106617(A106618(n))]`
-/

namespace A018662.P3757547221684843882
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 3 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106617 (A106618 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A018662.P3757547221684843882

/-! ## A018662.P4090394007861909112

`record[gcd(n+1, A202804(A008594(n)))]`
-/

namespace A018662.P4090394007861909112
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A202804 (A008594 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018662.P4090394007861909112

/-! ## A018662.P15507382397173327450

`record[gcd(A117910(n), A253218(n+1))]`
-/

namespace A018662.P15507382397173327450
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A117910 n) (A253218 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018662.P15507382397173327450

/-!
# A018663: Divisors of 819.

The programs for A018663, there is no canonical definition to state claims against.
-/

/-! ## A018663.P6273931158337397162

`eq[gcd(7, n), A106614(lcm(9, n)/9)]`
-/

namespace A018663.P6273931158337397162
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 7 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106614 (SequenceMachineLib.roundAway ((Nat.lcm 9 n : ℚ) / 9)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A018663.P6273931158337397162

/-! ## A018663.P8604922618017090795

`A332808(A018596(n+1))`
-/

namespace A018663.P8604922618017090795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332808 (A018596 (n + 1)).toNat

end

end A018663.P8604922618017090795

/-! ## A018663.P7634594393932808805

`A297002(A344826(n+1))`
-/

namespace A018663.P7634594393932808805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297002 (A344826 (n + 1)).toNat

end

end A018663.P7634594393932808805

/-! ## A018663.P440146324522290661

`eq[4, A054709(A008706(n))]`
-/

namespace A018663.P440146324522290661
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054709 (A008706 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A018663.P440146324522290661

/-! ## A018663.P12933734136081651621

`record[A132739(A003524(n+1))]`
-/

namespace A018663.P12933734136081651621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132739 (A003524 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018663.P12933734136081651621

/-!
# A018664: Divisors of 820.

The programs for A018664, there is no canonical definition to state claims against.
-/

/-! ## A018664.P374476737604926690

`∩[A027902(n+1), A057762(n+1)]`
-/

namespace A018664.P374476737604926690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027902 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057762 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A018664.P374476737604926690

/-! ## A018664.P15820952684077599441

`eq[A072405(A106621(n)), A106621(n)]`
-/

namespace A018664.P15820952684077599441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072405 (A106621 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106621 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A018664.P15820952684077599441

/-! ## A018664.P11591149436919585482

`∩[A057762(n+1), A267703(n+1)]`
-/

namespace A018664.P11591149436919585482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057762 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267703 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A018664.P11591149436919585482

/-! ## A018664.P15784833967633906830

`A345167(A188920(n))+A106798(n)`
-/

namespace A018664.P15784833967633906830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345167 (A188920 n).toNat + A106798 n

end

end A018664.P15784833967633906830

/-!
# A018665: Divisors of 822.

The programs for A018665, there is no canonical definition to state claims against.
-/

/-! ## A018665.P15582513195710857161

`record[gcd(5*n+1, A050407(4*n))]`
-/

namespace A018665.P15582513195710857161
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (5 * n + 1 : ℤ) (A050407 (4 * n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018665.P15582513195710857161

/-! ## A018665.P15005890909553513699

`A332808(record[gcd(∑[(n+1)²]+n, n^3+n)])`
-/

namespace A018665.P15005890909553513699
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (∑ j ∈ Finset.range (n + 1), f2 j + n) (n ^ 3 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332808 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A018665.P15005890909553513699

/-! ## A018665.P6026225174579496964

`A160102(A018553(n+1))`
-/

namespace A018665.P6026225174579496964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160102 (A018553 (n + 1)).toNat

end

end A018665.P6026225174579496964

/-! ## A018665.P17173658489565162157

`A263272(A018769(n+1))`
-/

namespace A018665.P17173658489565162157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263272 (A018769 (n + 1)).toNat

end

end A018665.P17173658489565162157

/-!
# A018666: Divisors of 824.

The programs for A018666, there is no canonical definition to state claims against.
-/

/-! ## A018666.P4717777813383146576

`A245453(A018403(n+1))`
-/

namespace A018666.P4717777813383146576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245453 (A018403 (n + 1)).toNat

end

end A018666.P4717777813383146576

/-! ## A018666.P12184659750410857435

`A332808(A018694(n+1))`
-/

namespace A018666.P12184659750410857435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332808 (A018694 (n + 1)).toNat

end

end A018666.P12184659750410857435

/-! ## A018666.P11419394888292082288

`∏{p}[A001317(n), A002235(#)]`
-/

namespace A018666.P11419394888292082288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001317 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A002235 p

end

end A018666.P11419394888292082288

/-! ## A018666.P8787383326173773832

`A087734(13*A018507(n+1))`
-/

namespace A018666.P8787383326173773832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087734 (13 * A018507 (n + 1)).toNat

end

end A018666.P8787383326173773832

/-!
# A018667: Divisors of 825.

The programs for A018667, there is no canonical definition to state claims against.
-/

/-! ## A018667.P8190248233548068325

`A332808(A018753(n+1))`
-/

namespace A018667.P8190248233548068325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332808 (A018753 (n + 1)).toNat

end

end A018667.P8190248233548068325

/-! ## A018667.P4529551829528407895

`record[A319986(A018762(n+1))]`
-/

namespace A018667.P4529551829528407895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319986 (A018762 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018667.P4529551829528407895

/-! ## A018667.P8405804750798266680

`record[gcd(A020715(n), A218326(n+1))]`
-/

namespace A018667.P8405804750798266680
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A020715 n) (A218326 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018667.P8405804750798266680

/-! ## A018667.P3159587664236814739

`record[gcd(A024003(n+8), A165747(n))]`
-/

namespace A018667.P3159587664236814739
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A024003 (n + 8)) (A165747 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018667.P3159587664236814739

/-! ## A018667.P13449753931273291513

`∩[A003546(n+1), A033637(n+1)]`
-/

namespace A018667.P13449753931273291513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003546 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033637 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A018667.P13449753931273291513

/-!
# A018668: Divisors of 826.

The programs for A018668, there is no canonical definition to state claims against.
-/

/-! ## A018668.P312010540532914950

`A235201(A018386(n+1))`
-/

namespace A018668.P312010540532914950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235201 (A018386 (n + 1)).toNat

end

end A018668.P312010540532914950

/-! ## A018668.P16525745273010445096

`A332808(A018684(n+1))`
-/

namespace A018668.P16525745273010445096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332808 (A018684 (n + 1)).toNat

end

end A018668.P16525745273010445096

/-! ## A018668.P4065260557843017880

`∏{p}[A050614(n), A193231(#)]`
-/

namespace A018668.P4065260557843017880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050614 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A193231 p

end

end A018668.P4065260557843017880

/-! ## A018668.P5887392077539359327

`record[gcd(A024386(n+1), A143854(n+1))]`
-/

namespace A018668.P5887392077539359327
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A024386 (n + 1)) (A143854 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018668.P5887392077539359327

/-!
# A018669: Divisors of 828.

The programs for A018669, there is no canonical definition to state claims against.
-/

/-! ## A018669.P18330650001160502103

`record[gcd(A008401(n), A328399(n))]`
-/

namespace A018669.P18330650001160502103
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008401 n) (A328399 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018669.P18330650001160502103

/-! ## A018669.P12476841878570641493

`∪[2*A018441(n+1), A018441(n+1)]`
-/

namespace A018669.P12476841878570641493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A018441 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018441 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A018669.P12476841878570641493

/-! ## A018669.P7147240425108299164

`∪[3*A018369(n+1), A018369(n+1)]`
-/

namespace A018669.P7147240425108299164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A018369 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018369 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A018669.P7147240425108299164

/-! ## A018669.P3190264369865792314

`∪[A018441(n+1), A004277(A018441(n+1))]`
-/

namespace A018669.P3190264369865792314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018441 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A018441 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A018669.P3190264369865792314

/-! ## A018669.P2377424910582395353

`∪[A018369(n+1), A008486(A018369(n+1))]`
-/

namespace A018669.P2377424910582395353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018369 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (A018369 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A018669.P2377424910582395353

/-!
# A018670: Divisors of 830.

The programs for A018670, there is no canonical definition to state claims against.
-/

/-! ## A018670.P5374940093542156849

`A332808(A018751(n+1))`
-/

namespace A018670.P5374940093542156849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332808 (A018751 (n + 1)).toNat

end

end A018670.P5374940093542156849

/-! ## A018670.P17658973624229659782

`∏{p}[A053576(n), A252938(#)]`
-/

namespace A018670.P17658973624229659782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053576 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A252938 p

end

end A018670.P17658973624229659782

/-! ## A018670.P4473950963815456147

`∏{p}[A334110(n), A179566(#)]`
-/

namespace A018670.P4473950963815456147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334110 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A179566 p

end

end A018670.P4473950963815456147

/-! ## A018670.P9021238040937167441

`A290979(5*A018580(n+1))`
-/

namespace A018670.P9021238040937167441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290979 (5 * A018580 (n + 1)).toNat

end

end A018670.P9021238040937167441

/-!
# A018671: Divisors of 832.

The programs for A018671, there is no canonical definition to state claims against.
-/

/-! ## A018671.P1660030956305135319

`∪[2^n, A233583(2*a(n-1)+1)]` with `a(0)=13`
-/

namespace A018671.P1660030956305135319
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def f2 : ℕ → ℤ := SequenceMachineLib.rec [13] fun n f2 =>
  A233583 (2 * f2 (n - 1) + 1).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A018671.P1660030956305135319

/-! ## A018671.P10641223486121179150

`A107326(∑[A172364(n)])`
-/

namespace A018671.P10641223486121179150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172364 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107326 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A018671.P10641223486121179150

/-! ## A018671.P10003338754480509874

`A057889(A018600(n+1))`
-/

namespace A018671.P10003338754480509874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057889 (A018600 (n + 1)).toNat

end

end A018671.P10003338754480509874

/-! ## A018671.P11347821227438471206

`A107326(A246088(n+2)-1)`
-/

namespace A018671.P11347821227438471206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107326 (A246088 (n + 2) - 1).toNat

end

end A018671.P11347821227438471206

/-! ## A018671.P7008717489742424975

`A107326(∑[∑[A110981(n+1)]])`
-/

namespace A018671.P7008717489742424975
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110981 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107326 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A018671.P7008717489742424975

/-!
# A018672: Divisors of 833.

The programs for A018672, there is no canonical definition to state claims against.
-/

/-! ## A018672.P5698157457122074691

`a(n-2)*a(n-3)` with `a(0)=1, a(1)=7, a(2)=17, a(3)=49`
-/

namespace A018672.P5698157457122074691
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 7, 17, 49] fun n a =>
  a (n - 2) * a (n - 3)

end

end A018672.P5698157457122074691

/-!
# A018673: Divisors of 834.

The programs for A018673, there is no canonical definition to state claims against.
-/

/-! ## A018673.P11803300530563884588

`A160102(A018566(n+1))`
-/

namespace A018673.P11803300530563884588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160102 (A018566 (n + 1)).toNat

end

end A018673.P11803300530563884588

/-! ## A018673.P1782505602386342649

`A235201(A018560(n+1))`
-/

namespace A018673.P1782505602386342649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235201 (A018560 (n + 1)).toNat

end

end A018673.P1782505602386342649

/-! ## A018673.P11763808397641032760

`A332808(A018646(n+1))`
-/

namespace A018673.P11763808397641032760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332808 (A018646 (n + 1)).toNat

end

end A018673.P11763808397641032760

/-! ## A018673.P13598646099240136820

`record[gcd(A061925(n), A062748(n))]`
-/

namespace A018673.P13598646099240136820
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A061925 n) (A062748 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018673.P13598646099240136820

/-!
# A018674: Divisors of 836.

The programs for A018674, there is no canonical definition to state claims against.
-/

/-! ## A018674.P9415231834055417057

`A332808(A018761(n+1))`
-/

namespace A018674.P9415231834055417057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332808 (A018761 (n + 1)).toNat

end

end A018674.P9415231834055417057

/-! ## A018674.P12396797510540337015

`record[gcd(A062298(n+1), A138850(n+1))]`
-/

namespace A018674.P12396797510540337015
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A062298 (n + 1)) (A138850 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018674.P12396797510540337015

/-! ## A018674.P15762256930014625329

`record[gcd(A000096(n), A236364(4*n+1))]`
-/

namespace A018674.P15762256930014625329
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000096 n) (A236364 (4 * n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018674.P15762256930014625329

/-! ## A018674.P12549195486687558016

`record[gcd(A138850(2*n+1), A286450(n+2))]`
-/

namespace A018674.P12549195486687558016
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A138850 (2 * n + 1)) (A286450 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018674.P12549195486687558016

/-! ## A018674.P6935324093820285845

`record[gcd(A138850(2*n+3), A332808(n+1))]`
-/

namespace A018674.P6935324093820285845
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A138850 (2 * n + 3)) (A332808 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018674.P6935324093820285845

/-!
# A018675: Divisors of 837.

The programs for A018675, there is no canonical definition to state claims against.
-/

/-! ## A018675.P10434081717485783736

`(3*a(n-1))%A275547(n+1)` with `a(0)=1`
-/

namespace A018675.P10434081717485783736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.tmod (3 * a (n - 1)) (A275547 (n + 1))

end

end A018675.P10434081717485783736

/-! ## A018675.P2006655123705183112

`A244042(A202907(n))`
-/

namespace A018675.P2006655123705183112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244042 (A202907 n).toNat

end

end A018675.P2006655123705183112

/-! ## A018675.P10077980141388649371

`A214361(A334110(n))`
-/

namespace A018675.P10077980141388649371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214361 (A334110 n).toNat

end

end A018675.P10077980141388649371

/-! ## A018675.P2347090467141345488

`A214361(A019565(n)²)`
-/

namespace A018675.P2347090467141345488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214361 (A019565 n ^ 2).toNat

end

end A018675.P2347090467141345488

/-!
# A018676: Divisors of 840.

The programs for A018676, there is no canonical definition to state claims against.
-/

/-! ## A018676.P7369435588311646613

`record[A032742(A178878(n+1))]`
-/

namespace A018676.P7369435588311646613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A178878 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018676.P7369435588311646613

/-! ## A018676.P15535059922823164149

`record[A302776(A085132(n+1))]`
-/

namespace A018676.P15535059922823164149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302776 (A085132 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018676.P15535059922823164149

/-! ## A018676.P9108565874519149100

`record[A025480(A178878(n+2))]`
-/

namespace A018676.P9108565874519149100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A178878 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018676.P9108565874519149100

/-! ## A018676.P14410000771447557229

`record[A175676(A165412(n+3))]`
-/

namespace A018676.P14410000771447557229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175676 (A165412 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018676.P14410000771447557229

/-! ## A018676.P9344563927276546061

`filter[A165412(n+1), A168182(#)]`
-/

namespace A018676.P9344563927276546061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165412 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168182 (f1 j).toNat = 1) n)

end

end A018676.P9344563927276546061

/-!
# A018677: Divisors of 844.

The programs for A018677, there is no canonical definition to state claims against.
-/

/-! ## A018677.P3107872293092759843

`A044914(2^comp[or(3, n)])`
-/

namespace A018677.P3107872293092759843
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 3 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044914 (2 ^ SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A018677.P3107872293092759843

/-!
# A018681: Divisors of 848.

The programs for A018681, there is no canonical definition to state claims against.
-/

/-! ## A018681.P7392601099632748910

`record[gcd(A004760(n+1)+1, 53*n)]`
-/

namespace A018681.P7392601099632748910
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A004760 (n + 1) + 1) (53 * n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018681.P7392601099632748910

/-! ## A018681.P2214916498523151148

`A209614(n+3)+2*a(n-1)` with `a(0)=1`
-/

namespace A018681.P2214916498523151148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A209614 (n + 3) + 2 * a (n - 1)

end

end A018681.P2214916498523151148

/-! ## A018681.P7525858744534439830

`A057889(A018593(n+1))`
-/

namespace A018681.P7525858744534439830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057889 (A018593 (n + 1)).toNat

end

end A018681.P7525858744534439830

/-! ## A018681.P14580141607535703419

`A332808(A018627(n+1))`
-/

namespace A018681.P14580141607535703419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332808 (A018627 (n + 1)).toNat

end

end A018681.P14580141607535703419

/-! ## A018681.P37314713035701209

`A266401(A119610(n+1))`
-/

namespace A018681.P37314713035701209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266401 (A119610 (n + 1)).toNat

end

end A018681.P37314713035701209

/-!
# A018682: Divisors of 850.

The programs for A018682, there is no canonical definition to state claims against.
-/

/-! ## A018682.P13402841315604886125

`eq[gcd(50, n), A106618(n)]`
-/

namespace A018682.P13402841315604886125
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 50 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106618 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A018682.P13402841315604886125

/-! ## A018682.P8286293587122089406

`record[gcd(6*(n+2), A226449(3*n+1))]`
-/

namespace A018682.P8286293587122089406
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (6 * (n + 2) : ℤ) (A226449 (3 * n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018682.P8286293587122089406

/-! ## A018682.P17091188146175376818

`record[A351475(A337230(n+1))]`
-/

namespace A018682.P17091188146175376818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351475 (A337230 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018682.P17091188146175376818

/-! ## A018682.P13645085227147937323

`∪[2*A018447(n+1), A018447(n+1)]`
-/

namespace A018682.P13645085227147937323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A018447 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018447 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A018682.P13645085227147937323

/-! ## A018682.P13243873533819551574

`eq[2, A285442(lcm(10, n)/10)]`
-/

namespace A018682.P13243873533819551574
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285442 (SequenceMachineLib.roundAway ((Nat.lcm 10 n : ℚ) / 10)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A018682.P13243873533819551574

/-!
# A018683: Divisors of 852.

The programs for A018683, there is no canonical definition to state claims against.
-/

/-! ## A018683.P1964505059504897175

`A071786(A018333(n+1))`
-/

namespace A018683.P1964505059504897175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071786 (A018333 (n + 1)).toNat

end

end A018683.P1964505059504897175

/-! ## A018683.P7492801842308786143

`A116912(A018655(n+1))`
-/

namespace A018683.P7492801842308786143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116912 (A018655 (n + 1)).toNat

end

end A018683.P7492801842308786143

/-! ## A018683.P16342673881483011595

`eq[1, A222216(A051724(n))]`
-/

namespace A018683.P16342673881483011595
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222216 (A051724 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A018683.P16342673881483011595

/-! ## A018683.P7730536202374883542

`A071786(eq[12, A106618(lcm(12, n))])`
-/

namespace A018683.P7730536202374883542
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106618 (Nat.lcm 12 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071786 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A018683.P7730536202374883542

/-! ## A018683.P11434503489034172123

`A071786(eq[gcd(12, n), A106618(n)])`
-/

namespace A018683.P11434503489034172123
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 12 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106618 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071786 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A018683.P11434503489034172123

/-!
# A018684: Divisors of 854.

The programs for A018684, there is no canonical definition to state claims against.
-/

/-! ## A018684.P10843154143687644643

`record[gcd(n+1, A291053(3*n+1))]`
-/

namespace A018684.P10843154143687644643
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A291053 (3 * n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018684.P10843154143687644643

/-! ## A018684.P6343512485418382503

`A332808(A018668(n+1))`
-/

namespace A018684.P6343512485418382503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332808 (A018668 (n + 1)).toNat

end

end A018684.P6343512485418382503

/-! ## A018684.P883860626852489189

`∏{p}[A019565(n), A015518(#)]`
-/

namespace A018684.P883860626852489189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A015518 p

end

end A018684.P883860626852489189

/-! ## A018684.P13647811115808085417

`∏{p}[A019565(n), A111908(#)]`
-/

namespace A018684.P13647811115808085417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A111908 p

end

end A018684.P13647811115808085417

/-!
# A018685: Divisors of 855.

The programs for A018685, there is no canonical definition to state claims against.
-/

/-! ## A018685.P3662100462749668144

`record[gcd(2*(n+1), A053743(9*n))]`
-/

namespace A018685.P3662100462749668144
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (2 * (n + 1) : ℤ) (A053743 (9 * n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018685.P3662100462749668144

/-! ## A018685.P3665450328500792610

`A235487(A018634(n+1))`
-/

namespace A018685.P3665450328500792610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235487 (A018634 (n + 1)).toNat

end

end A018685.P3665450328500792610

/-! ## A018685.P14252127337861357877

`record[A054576(A133030(n+1))]`
-/

namespace A018685.P14252127337861357877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054576 (A133030 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018685.P14252127337861357877

/-! ## A018685.P1290422988411792579

`record[gcd(A126759(n), A341043(n+1))]`
-/

namespace A018685.P1290422988411792579
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A126759 n) (A341043 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018685.P1290422988411792579

/-! ## A018685.P3768845591314695821

`eq[A106620(A106610(n)), A109009(n)]`
-/

namespace A018685.P3768845591314695821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106620 (A106610 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109009 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A018685.P3768845591314695821

/-!
# A018686: Divisors of 856.

The programs for A018686, there is no canonical definition to state claims against.
-/

/-! ## A018686.P8536907692090001707

`A064554(A018346(n+1))`
-/

namespace A018686.P8536907692090001707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064554 (A018346 (n + 1)).toNat

end

end A018686.P8536907692090001707

/-! ## A018686.P3220018080544308034

`A116912(A018666(n+1))`
-/

namespace A018686.P3220018080544308034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116912 (A018666 (n + 1)).toNat

end

end A018686.P3220018080544308034

/-! ## A018686.P640636632072121221

`A231550(A018605(n+1))`
-/

namespace A018686.P640636632072121221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231550 (A018605 (n + 1)).toNat

end

end A018686.P640636632072121221

/-! ## A018686.P5969290648097826798

`A257345(A018507(n+1))`
-/

namespace A018686.P5969290648097826798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257345 (A018507 (n + 1)).toNat

end

end A018686.P5969290648097826798

/-!
# A018687: Divisors of 858.

The programs for A018687, there is no canonical definition to state claims against.
-/

/-! ## A018687.P15789497488026297362

`eq[gcd(66, n), A106614(n)]`
-/

namespace A018687.P15789497488026297362
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 66 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106614 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A018687.P15789497488026297362

/-! ## A018687.P13129395257614260880

`A160102(A018423(n+1))`
-/

namespace A018687.P13129395257614260880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160102 (A018423 (n + 1)).toNat

end

end A018687.P13129395257614260880

/-! ## A018687.P3409123673552331192

`record[gcd(A019554(n+1), A156636(n))]`
-/

namespace A018687.P3409123673552331192
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A019554 (n + 1)) (A156636 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018687.P3409123673552331192

/-! ## A018687.P2550288316297732838

`∩[A057125(n+1), A087008(n+1)]`
-/

namespace A018687.P2550288316297732838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057125 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087008 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A018687.P2550288316297732838

/-! ## A018687.P1119080274334107647

`record[gcd(A103391(n+1), A156719(n+1))]`
-/

namespace A018687.P1119080274334107647
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A103391 (n + 1)) (A156719 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018687.P1119080274334107647

/-!
# A018688: Divisors of 860.

The programs for A018688, there is no canonical definition to state claims against.
-/

/-! ## A018688.P10780196183960790808

`eq[A106621(n), A297321(A106621(n))]`
-/

namespace A018688.P10780196183960790808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106621 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297321 (A106621 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A018688.P10780196183960790808

/-! ## A018688.P16713926916086223583

`and(A018733(n+1), A018733(n+4))`
-/

namespace A018688.P16713926916086223583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A018733 (n + 1)) (A018733 (n + 4))

end

end A018688.P16713926916086223583

/-! ## A018688.P4550806162532426276

`A024494(n+1)-A131531(A132353(n))`
-/

namespace A018688.P4550806162532426276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024494 (n + 1) - A131531 (A132353 n).toNat

end

end A018688.P4550806162532426276

/-! ## A018688.P7439163905698752589

`A024494(n+1)-A131531(A135266(n)+1)`
-/

namespace A018688.P7439163905698752589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024494 (n + 1) - A131531 (A135266 n + 1).toNat

end

end A018688.P7439163905698752589

/-! ## A018688.P3035684061959912613

`A024494(n+1)-A131531(A047926(n)+1-A194272(n+1))`
-/

namespace A018688.P3035684061959912613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024494 (n + 1) - A131531 (A047926 n + (1 - A194272 (n + 1))).toNat

end

end A018688.P3035684061959912613

/-!
# A018689: Divisors of 861.

The programs for A018689, there is no canonical definition to state claims against.
-/

/-! ## A018689.P1451594921151309335

`record[gcd(n+7, A273744(n))]`
-/

namespace A018689.P1451594921151309335
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 7 : ℤ) (A273744 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018689.P1451594921151309335

/-! ## A018689.P790435736710877696

`∏{p}[A018526(n+1), or(1, #)]`
-/

namespace A018689.P790435736710877696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018526 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.lor 1 p

end

end A018689.P790435736710877696

/-! ## A018689.P5469118615405498669

`record[gcd(n+11, A232100(n+1))]`
-/

namespace A018689.P5469118615405498669
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 11 : ℤ) (A232100 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018689.P5469118615405498669

/-! ## A018689.P12037102228187480351

`record[∏{p}[∏{e}[n+1, #+1], A059843(#)]]`
-/

namespace A018689.P12037102228187480351
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), (Nat.factorization (f3 n) p + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), A059843 p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018689.P12037102228187480351

/-!
# A018690: Divisors of 864.

The programs for A018690, there is no canonical definition to state claims against.
-/

/-! ## A018690.P4464063973573574478

`A235487(A018629(n+1))`
-/

namespace A018690.P4464063973573574478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235487 (A018629 (n + 1)).toNat

end

end A018690.P4464063973573574478

/-! ## A018690.P9539162384717010194

`record[A032742(A262609(n+1))]`
-/

namespace A018690.P9539162384717010194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A262609 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018690.P9539162384717010194

/-! ## A018690.P3367924778907398764

`record[A078898(A262609(n+2))]`
-/

namespace A018690.P3367924778907398764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (A262609 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018690.P3367924778907398764

/-! ## A018690.P6069857977014281262

`record[A211316(A262609(n+3))]`
-/

namespace A018690.P6069857977014281262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211316 (A262609 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018690.P6069857977014281262

/-! ## A018690.P7089088449805104589

`record[A262609(n+1)/A055642(n)]`
-/

namespace A018690.P7089088449805104589
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A262609 (n + 1) : ℚ) / (A055642 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018690.P7089088449805104589

/-!
# A018692: Divisors of 868.

The programs for A018692, there is no canonical definition to state claims against.
-/

/-! ## A018692.P15329089117772199743

`A269865(A033138(n+1))`
-/

namespace A018692.P15329089117772199743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269865 (A033138 (n + 1)).toNat

end

end A018692.P15329089117772199743

/-! ## A018692.P14518208935370260860

`∪[2*A018453(n+1), A018453(n+1)]`
-/

namespace A018692.P14518208935370260860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A018453 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018453 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A018692.P14518208935370260860

/-!
# A018693: Divisors of 870.

The programs for A018693, there is no canonical definition to state claims against.
-/

/-! ## A018693.P8776361504592609413

`A160102(A018438(n+1))`
-/

namespace A018693.P8776361504592609413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160102 (A018438 (n + 1)).toNat

end

end A018693.P8776361504592609413

/-! ## A018693.P11973586895301126438

`A235027(A018594(n+1))`
-/

namespace A018693.P11973586895301126438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235027 (A018594 (n + 1)).toNat

end

end A018693.P11973586895301126438

/-! ## A018693.P15694520547879811477

`∏{p}[A018494(n+1), A000961(#)]`
-/

namespace A018693.P15694520547879811477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018494 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000961 p

end

end A018693.P15694520547879811477

/-! ## A018693.P607031174641845886

`∏{p}[A018594(n+1), A005100(#)]`
-/

namespace A018693.P607031174641845886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018594 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A005100 p

end

end A018693.P607031174641845886

/-! ## A018693.P78568191098062687

`∏{p}[A018594(n+1), A037471(#)]`
-/

namespace A018693.P78568191098062687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018594 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A037471 p

end

end A018693.P78568191098062687

/-!
# A018694: Divisors of 872.

The programs for A018694, there is no canonical definition to state claims against.
-/

/-! ## A018694.P7134313618266305635

`xor(2*a(n-1), A005080(n+1))` with `a(0)=1`
-/

namespace A018694.P7134313618266305635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.xor (2 * a (n - 1)) (A005080 (n + 1))

end

end A018694.P7134313618266305635

/-! ## A018694.P13571799663865127166

`A116912(A018713(n+1))`
-/

namespace A018694.P13571799663865127166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116912 (A018713 (n + 1)).toNat

end

end A018694.P13571799663865127166

/-! ## A018694.P6488613196688159714

`A257345(A018346(n+1))`
-/

namespace A018694.P6488613196688159714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257345 (A018346 (n + 1)).toNat

end

end A018694.P6488613196688159714

/-! ## A018694.P17200964572432496216

`A257345(A018403(n+1))`
-/

namespace A018694.P17200964572432496216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257345 (A018403 (n + 1)).toNat

end

end A018694.P17200964572432496216

/-!
# A018695: Divisors of 873.

The programs for A018695, there is no canonical definition to state claims against.
-/

/-! ## A018695.P8954647578944164807

`A226203(3^comp[4*n])`
-/

namespace A018695.P8954647578944164807
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226203 (3 ^ SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A018695.P8954647578944164807

/-!
# A018696: Divisors of 874.

The programs for A018696, there is no canonical definition to state claims against.
-/

/-! ## A018696.P8647994528864747963

`∏{p}[A018643(n+1), or(2, #)]`
-/

namespace A018696.P8647994528864747963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018643 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.lor 2 p

end

end A018696.P8647994528864747963

/-! ## A018696.P15183697068970525293

`A252463(A133023(n+1))`
-/

namespace A018696.P15183697068970525293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252463 (A133023 (n + 1)).toNat

end

end A018696.P15183697068970525293

/-! ## A018696.P15737199684169970120

`∏{p}[A018540(n+1), A057509(#)]`
-/

namespace A018696.P15737199684169970120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018540 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A057509 p

end

end A018696.P15737199684169970120

/-! ## A018696.P4001821129587623161

`record[gcd(A049453(5*n), A129428(n))]`
-/

namespace A018696.P4001821129587623161
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A049453 (5 * n)) (A129428 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018696.P4001821129587623161

/-!
# A018697: Divisors of 875.

The programs for A018697, there is no canonical definition to state claims against.
-/

/-! ## A018697.P567915061160649954

`a(ceil(n/6))*a(n-2)` with `a(0)=1, a(1)=5, a(2)=7`
-/

namespace A018697.P567915061160649954
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 5, 7] fun n a =>
  a ⌈(n : ℚ) / 6⌉.toNat * a (n - 2)

end

end A018697.P567915061160649954

/-! ## A018697.P4884397867217180556

`abs(a(floor((n+1)/4))*a(n-2))` with `a(0)=1, a(1)=5, a(2)=7`
-/

namespace A018697.P4884397867217180556
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 5, 7] fun n a =>
  a ⌊(n + 1 : ℚ) / 4⌋.toNat * a (n - 2)

end

end A018697.P4884397867217180556

/-! ## A018697.P18440271320225913188

`floor(a(floor((n+1)/4))*a(n-2))` with `a(0)=1, a(1)=5, a(2)=7`

`floor` is left out, it is the identity on integers.
-/

namespace A018697.P18440271320225913188
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 5, 7] fun n a =>
  a ⌊(n + 1 : ℚ) / 4⌋.toNat * a (n - 2)

end

end A018697.P18440271320225913188

/-! ## A018697.P9819090539224550940

`A003961(eq[15, lcm(15, lcm(9, n)/9)])`
-/

namespace A018697.P9819090539224550940
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 15 (SequenceMachineLib.roundAway ((Nat.lcm 9 n : ℚ) / 9))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A018697.P9819090539224550940

/-!
# A018698: Divisors of 876.

The programs for A018698, there is no canonical definition to state claims against.
-/

/-! ## A018698.P16463987769358687794

`A071786(A018460(n+1))`
-/

namespace A018698.P16463987769358687794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071786 (A018460 (n + 1)).toNat

end

end A018698.P16463987769358687794

/-! ## A018698.P10336909829092275438

`A091204(A018561(n+1))`
-/

namespace A018698.P10336909829092275438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091204 (A018561 (n + 1)).toNat

end

end A018698.P10336909829092275438

/-! ## A018698.P17759056192018574531

`(A018738(n+1)+A018655(n+1))/2`
-/

namespace A018698.P17759056192018574531
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A018738 (n + 1) + A018655 (n + 1) : ℚ) / 2

end

end A018698.P17759056192018574531

/-! ## A018698.P7654203762416204393

`∪[2*A018456(n+1), A018456(n+1)]`
-/

namespace A018698.P7654203762416204393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A018456 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018456 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A018698.P7654203762416204393

/-! ## A018698.P8134702287965663637

`∪[3*A018378(n+1), A018378(n+1)]`
-/

namespace A018698.P8134702287965663637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A018378 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018378 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A018698.P8134702287965663637

/-!
# A018699: Divisors of 880.

The programs for A018699, there is no canonical definition to state claims against.
-/

/-! ## A018699.P4972943413334335258

`eq[gcd(5, n), A106617(A106612(n))]`
-/

namespace A018699.P4972943413334335258
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 5 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106617 (A106612 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A018699.P4972943413334335258

/-! ## A018699.P1823586507661367595

`record[gcd(A011245(n), A092038(n+1))]`
-/

namespace A018699.P1823586507661367595
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A011245 n) (A092038 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018699.P1823586507661367595

/-! ## A018699.P17790897879210194029

`record[gcd(A052938(n), A210440(3*(n+1)))]`
-/

namespace A018699.P17790897879210194029
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A052938 n) (A210440 (3 * (n + 1)))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018699.P17790897879210194029

/-! ## A018699.P13846196380396411655

`∪[2*A018457(n+1), A018457(n+1)]`
-/

namespace A018699.P13846196380396411655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A018457 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018457 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A018699.P13846196380396411655

/-! ## A018699.P4496092319237360017

`∪[11*A018275(n+1), A018275(n+1)]`
-/

namespace A018699.P4496092319237360017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  11 * A018275 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018275 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A018699.P4496092319237360017

