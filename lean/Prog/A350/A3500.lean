import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
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
import Seq.B000.C015
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C034
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C011
import Seq.B002.C002
import Seq.B002.C004
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
import Seq.B006.C000
import Seq.B007.C000
import Seq.B008.C000
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
# A350000: Table read by antidiagonals: T(n,k) (n >= 3, k >= 0) is the number of cells in a regular n-gon after k generations of mitosis.

The programs for A350000, there is no canonical definition to state claims against.
-/

/-! ## A350000.P7980530746992078268

`A350502(n+3)+1-A350501(n+3)`
-/

namespace A350000.P7980530746992078268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350502 (n + 3) + (1 - A350501 (n + 3))

end

end A350000.P7980530746992078268

/-! ## A350000.P9107773708729857871

`A350502(n+3)+A024000(A350501(n+3))`
-/

namespace A350000.P9107773708729857871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350502 (n + 3) + A024000 (A350501 (n + 3)).toNat

end

end A350000.P9107773708729857871

/-!
# A350005: a(n) is the smallest number that starts an arithmetic progression of n consecutive ludic numbers (A003309), or 0 if no such number exists.

The programs for A350005, there is no canonical definition to state claims against.
-/

/-! ## A350005.P18351950492680274324

`∏{p}[A057755(n), A350007(#)]`
-/

namespace A350005.P18351950492680274324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057755 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A350007 p

end

end A350005.P18351950492680274324

/-!
# A350008: a(n) = Sum_{k=0..n} k^(2*k).

The programs for A350008, there is no canonical definition to state claims against.
-/

/-! ## A350008.P11318350640782473631

`∑[(n^n)²]`
-/

namespace A350008.P11318350640782473631
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n ^ n) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A350008.P11318350640782473631

/-! ## A350008.P6466444620262754804

`xor(1, xor(1, ∑[n^(2*n)]))`
-/

namespace A350008.P6466444620262754804
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (Nat.xor 1 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A350008.P6466444620262754804

/-! ## A350008.P7309891164171671563

`a(n-1)+(n^n)²` with `a(0)=1`
-/

namespace A350008.P7309891164171671563
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (n ^ n) ^ 2

end

end A350008.P7309891164171671563

/-! ## A350008.P14231467544068863120

`∑[n^floor(2/acot(n))]+1`
-/

namespace A350008.P14231467544068863120
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) ^ (⌊2 / SequenceMachineLib.acot (n : ℝ)⌋ : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A350008.P14231467544068863120

/-! ## A350008.P14076857692293376446

`abs(a(n-1)+n^(2*n))` with `a(0)=1`
-/

namespace A350008.P14076857692293376446
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + n ^ (2 * n)

end

end A350008.P14076857692293376446

/-!
# A350009: a(n) is the number of isotopism classes containing symmetric Latin squares of order n.

The programs for A350009, there is no canonical definition to state claims against.
-/

/-! ## A350009.P17677152847134453471

`or(A144021(A036612(n)), A283100(n+1))`
-/

namespace A350009.P17677152847134453471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A144021 (A036612 n).toNat) (A283100 (n + 1))

end

end A350009.P17677152847134453471

/-! ## A350009.P7451384306511016189

`or(A144021(A036612(n)), A319711(n+1))`
-/

namespace A350009.P7451384306511016189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A144021 (A036612 n).toNat) (A319711 (n + 1))

end

end A350009.P7451384306511016189

/-! ## A350009.P7688249766578324247

`or(A144021(A036612(n)), A350026(n+1))`
-/

namespace A350009.P7688249766578324247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A144021 (A036612 n).toNat) (A350026 (n + 1))

end

end A350009.P7688249766578324247

/-! ## A350009.P8576615832253193666

`A350010(n+1)-A070176(A278315(n+1))`
-/

namespace A350009.P8576615832253193666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350010 (n + 1) - A070176 (A278315 (n + 1)).toNat

end

end A350009.P8576615832253193666

/-!
# A350010: a(n) is the number of equivalence classes of symmetric Latin squares of order n.

The programs for A350010, there is no canonical definition to state claims against.
-/

/-! ## A350010.P980586779751379589

`A350009(n+1)+A303140(A350026(n+1))`
-/

namespace A350010.P980586779751379589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350009 (n + 1) + A303140 (A350026 (n + 1)).toNat

end

end A350010.P980586779751379589

/-! ## A350010.P7822776813907262431

`A080620(A241470(n+1))+A080593(n)`
-/

namespace A350010.P7822776813907262431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080620 (A241470 (n + 1)).toNat + A080593 n

end

end A350010.P7822776813907262431

/-! ## A350010.P11446582710244151412

`A112798(A057179(n+1)-A003418(n))`
-/

namespace A350010.P11446582710244151412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112798 (A057179 (n + 1) - A003418 n).toNat

end

end A350010.P11446582710244151412

/-! ## A350010.P16747708921028715926

`A350009(n+1)+A070176(A278315(n+1))`
-/

namespace A350010.P16747708921028715926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350009 (n + 1) + A070176 (A278315 (n + 1)).toNat

end

end A350010.P16747708921028715926

/-!
# A350013: Number of integer-sided triangles with one side having length n and an adjacent angle of 60 degrees.

The programs for A350013, there is no canonical definition to state claims against.
-/

/-! ## A350013.P17677877957521490397

`A334566(3*(n+1)²)`
-/

namespace A350013.P17677877957521490397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334566 (3 * (n + 1) ^ 2)

end

end A350013.P17677877957521490397

/-! ## A350013.P4175747956136329620

`A261923(A025546(n+1))`
-/

namespace A350013.P4175747956136329620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261923 (A025546 (n + 1)).toNat

end

end A350013.P4175747956136329620

/-! ## A350013.P14153468869869801052

`A034003(A359016(n+4))`
-/

namespace A350013.P14153468869869801052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034003 (A359016 (n + 4)).toNat

end

end A350013.P14153468869869801052

/-! ## A350013.P7566828244107229699

`A002828(A010054(n)+A005803(n+1))`
-/

namespace A350013.P7566828244107229699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002828 (A010054 n + A005803 (n + 1)).toNat

end

end A350013.P7566828244107229699

/-! ## A350013.P16050557577292412663

`A001222(A208126(n)+A070081(n+1))`
-/

namespace A350013.P16050557577292412663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A208126 n + A070081 (n + 1)).toNat

end

end A350013.P16050557577292412663

/-!
# A350014: Numbers whose square has a number of divisors coprime to 6.

The programs for A350014, there is no canonical definition to state claims against.
-/

/-! ## A350014.P12288520337816960829

`sqrt(A352475(n+1))`
-/

namespace A350014.P12288520337816960829
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A352475 (n + 1) : ℝ)

end

end A350014.P12288520337816960829

/-! ## A350014.P17855762073657957312

`root(A352475(n+1), A020639(2*(n+1)))`
-/

namespace A350014.P17855762073657957312
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A352475 (n + 1) : ℝ) ^ (1 / (A020639 (2 * (n + 1)) : ℝ))

end

end A350014.P17855762073657957312

/-! ## A350014.P17937635418442380293

`A352475(n+1)^(A007310(n+1)/A063221(n+1))`
-/

namespace A350014.P17937635418442380293
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A352475 (n + 1) : ℝ) ^ ((A007310 (n + 1) : ℚ) / (A063221 (n + 1) : ℚ) : ℝ)

end

end A350014.P17937635418442380293

/-! ## A350014.P15343201768280401307

`root(A352475(n+1), A112046(4*n+1))`
-/

namespace A350014.P15343201768280401307
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A352475 (n + 1) : ℝ) ^ (1 / (A112046 (4 * n + 1) : ℝ))

end

end A350014.P15343201768280401307

/-! ## A350014.P1264943711117267090

`filter[A001694(n+1), A355448(#)]`
-/

namespace A350014.P1264943711117267090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001694 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355448 (f1 j).toNat = 1) n)

end

end A350014.P1264943711117267090

/-! ## A350014.P16529180950627080219

`filter[A325661(n+1), A355448(#)]`
-/

namespace A350014.P16529180950627080219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325661 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355448 (f1 j).toNat = 1) n)

end

end A350014.P16529180950627080219

/-! ## A350014.P11832731206071275212

`filter[A335851(n+1), A355448(#)]`
-/

namespace A350014.P11832731206071275212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335851 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355448 (f1 j).toNat = 1) n)

end

end A350014.P11832731206071275212

/-! ## A350014.P8709584428732312272

`filter[A339497(n+1), A355448(#)]`
-/

namespace A350014.P8709584428732312272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339497 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355448 (f1 j).toNat = 1) n)

end

end A350014.P8709584428732312272

/-! ## A350014.P5381666932995889683

`filter[A341645(n+1), A355448(#)]`
-/

namespace A350014.P5381666932995889683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341645 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355448 (f1 j).toNat = 1) n)

end

end A350014.P5381666932995889683

/-! ## A350014.P15760542458307408720

`filter[A378766(n+1), A355448(#)]`
-/

namespace A350014.P15760542458307408720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378766 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355448 (f1 j).toNat = 1) n)

end

end A350014.P15760542458307408720

/-! ## A350014.P4046277137316501003

`filter[A361204(n+1), A355448(#)]`
-/

namespace A350014.P4046277137316501003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361204 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355448 (f1 j).toNat = 1) n)

end

end A350014.P4046277137316501003

/-! ## A350014.P502246775392388429

`filter[A388985(n+1), A355448(#)]`
-/

namespace A350014.P502246775392388429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388985 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355448 (f1 j).toNat = 1) n)

end

end A350014.P502246775392388429

/-! ## A350014.P1317622489665785702

`filter[A001074(n+1), A355448(#)]`
-/

namespace A350014.P1317622489665785702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001074 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355448 (f1 j).toNat = 1) n)

end

end A350014.P1317622489665785702

/-! ## A350014.P323997231013832447

`filter[A048098(n+1), A355448(#)]`
-/

namespace A350014.P323997231013832447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048098 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355448 (f1 j).toNat = 1) n)

end

end A350014.P323997231013832447

/-! ## A350014.P15664071994604033035

`filter[A048944(n+1), A355448(#)]`
-/

namespace A350014.P15664071994604033035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048944 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355448 (f1 j).toNat = 1) n)

end

end A350014.P15664071994604033035

/-! ## A350014.P7698537017703370662

`record[A056552(A306458(n+1))*A306458(n+1)]`
-/

namespace A350014.P7698537017703370662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056552 (A306458 (n + 1)).toNat * A306458 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A350014.P7698537017703370662

/-! ## A350014.P90953680126845890

`filter[A387941(n+1), A355448(#)]`
-/

namespace A350014.P90953680126845890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387941 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355448 (f1 j).toNat = 1) n)

end

end A350014.P90953680126845890

/-! ## A350014.P16808484552310952961

`filter[A082377(n+1), A355448(#)]`
-/

namespace A350014.P16808484552310952961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082377 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355448 (f1 j).toNat = 1) n)

end

end A350014.P16808484552310952961

/-!
# A350017: Number of isotopism classes containing symmetric unipotent reduced Latin squares of order 2n.

The programs for A350017, there is no canonical definition to state claims against.
-/

/-! ## A350017.P2933272717522609599

`A000474(n+1)-A284117(A000110(n))`
-/

namespace A350017.P2933272717522609599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000474 (n + 1) - A284117 (A000110 n).toNat

end

end A350017.P2933272717522609599

/-! ## A350017.P13215956975894704578

`and(A000474(n+1), A112467(A253071(n)))`
-/

namespace A350017.P13215956975894704578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000474 (n + 1)) (A112467 (A253071 n).toNat)

end

end A350017.P13215956975894704578

/-!
# A350018: Number of unipotent commutative loops of order 2n.

The programs for A350018, there is no canonical definition to state claims against.
-/

/-! ## A350018.P2538688115582429170

`A350009(Δ[n²])`
-/

namespace A350018.P2538688115582429170
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350009 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A350018.P2538688115582429170

/-! ## A350018.P12867771159198035857

`A350010(Δ[n²])`
-/

namespace A350018.P12867771159198035857
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350010 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A350018.P12867771159198035857

/-! ## A350018.P18024966673934925191

`A102541(n)*A350009(2*n+1)`
-/

namespace A350018.P18024966673934925191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102541 n * A350009 (2 * n + 1)

end

end A350018.P18024966673934925191

/-!
# A350019: Number of isotopism classes containing semisymmetric Latin squares of order n.

The programs for A350019, there is no canonical definition to state claims against.
-/

/-! ## A350019.P16664010913221353716

`A184324(A259805(n+1)-A068933(2*n+3))`
-/

namespace A350019.P16664010913221353716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184324 (A259805 (n + 1) - A068933 (2 * n + 3)).toNat

end

end A350019.P16664010913221353716

/-!
# A350020: Number of species containing semisymmetric Latin squares of order n.

The programs for A350020, there is no canonical definition to state claims against.
-/

/-! ## A350020.P12148887756290880200

`A351004(A276054(n))`
-/

namespace A350020.P12148887756290880200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351004 (A276054 n).toNat

end

end A350020.P12148887756290880200

/-! ## A350020.P9024551870061349738

`A351004(A261984(n+2))`
-/

namespace A350020.P9024551870061349738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351004 (A261984 (n + 2)).toNat

end

end A350020.P9024551870061349738

/-! ## A350020.P11215154664105617453

`A351004(A014495(n)-(n-gcd(n, ∑[n])))`
-/

namespace A350020.P11215154664105617453
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351004 (A014495 n - ((n : ℤ) - (Nat.gcd n (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ))).toNat

end

end A350020.P11215154664105617453

/-! ## A350020.P4897450485792547393

`A379309(A000083(n))+A000100(n)`
-/

namespace A350020.P4897450485792547393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379309 (A000083 n).toNat + A000100 n

end

end A350020.P4897450485792547393

/-!
# A350022: Number of idempotent semisymmetric Latin squares of order n.

The programs for A350022, there is no canonical definition to state claims against.
-/

/-! ## A350022.P9009081857355543365

`A256038(Δ[A099920(n)])`
-/

namespace A350022.P9009081857355543365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099920 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256038 (f1 (n + 1) - f1 n).toNat

end

end A350022.P9009081857355543365

/-! ## A350022.P5338278082839407354

`A256038(A061165(n+1))`
-/

namespace A350022.P5338278082839407354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256038 (A061165 (n + 1)).toNat

end

end A350022.P5338278082839407354

/-! ## A350022.P13451251228905018075

`A369117(A277256(n+1))`
-/

namespace A350022.P13451251228905018075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369117 (A277256 (n + 1)).toNat

end

end A350022.P13451251228905018075

/-!
# A350028: Number of Euler tours of the complete graph on n vertices, minus a matching if n is even.

The programs for A350028, there is no canonical definition to state claims against.
-/

/-! ## A350028.P13119649420227609986

`A319274(a(n-1))` with `a(0)=1, a(1)=1, a(2)=2, a(3)=2`
-/

namespace A350028.P13119649420227609986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2, 2] fun n a =>
  A319274 (a (n - 1)).toNat

end

end A350028.P13119649420227609986

/-!
# A350029: Write n as n = k1 + k2 + ... + km, so that all k are distinct positive integers. a(n) is the maximum value of A001055(k1) + A001055(k2) + ... + A001055(km) over all such partitions.

The programs for A350029, there is no canonical definition to state claims against.
-/

/-! ## A350029.P8359366312824624497

`floor(log2(A323432(n)+A001838(n+1)))-1`
-/

namespace A350029.P8359366312824624497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.log 2 (A323432 n + A001838 (n + 1)).toNat : ℤ) - 1

end

end A350029.P8359366312824624497

/-! ## A350029.P12210060258259379516

`ceil(A296365(2*n+1)/6)`
-/

namespace A350029.P12210060258259379516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A296365 (2 * n + 1) : ℚ) / 6⌉

end

end A350029.P12210060258259379516

/-! ## A350029.P14200289960994256446

`A085423(A082538(n+1))`
-/

namespace A350029.P14200289960994256446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085423 (A082538 (n + 1)).toNat

end

end A350029.P14200289960994256446

/-! ## A350029.P16521825355810465559

`A070939(A112473(n+1)+n)`
-/

namespace A350029.P16521825355810465559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (A112473 (n + 1) + (n : ℤ)).toNat

end

end A350029.P16521825355810465559

/-! ## A350029.P5660182371748498573

`A000523(A284616(n+1)+A000010(n+1))`
-/

namespace A350029.P5660182371748498573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (A284616 (n + 1) + A000010 (n + 1)).toNat

end

end A350029.P5660182371748498573

/-!
# A350030: a(n) is the number of free n-celled unholey treelike polyominoes.

The programs for A350030, there is no canonical definition to state claims against.
-/

/-! ## A350030.P8864065712910342662

`A308300(∑[A083479(n)]+1)`
-/

namespace A350030.P8864065712910342662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083479 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308300 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A350030.P8864065712910342662

/-! ## A350030.P14448838693013749427

`A131482(n+1)-A359522(n+1)`
-/

namespace A350030.P14448838693013749427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131482 (n + 1) - A359522 (n + 1)

end

end A350030.P14448838693013749427

/-! ## A350030.P7577939951757077097

`A342243(∑[n+1])-A359522(n+1)`
-/

namespace A350030.P7577939951757077097
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342243 (∑ j ∈ Finset.range (n + 1), f1 j) - A359522 (n + 1)

end

end A350030.P7577939951757077097

/-! ## A350030.P11570798698139674658

`A342243(A000217(n+1))%A027273(n+1)-A359522(n+1)`
-/

namespace A350030.P11570798698139674658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A342243 (A000217 (n + 1)).toNat) (A027273 (n + 1)) - A359522 (n + 1)

end

end A350030.P11570798698139674658

/-! ## A350030.P9929040148928738382

`Δ[A173271(n)]-A135942(n+1)-A359522(n+1)`
-/

namespace A350030.P9929040148928738382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173271 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A135942 (n + 1) - A359522 (n + 1)

end

end A350030.P9929040148928738382

/-!
# A350032: Write n as n = k1 + k2 + ... + km, so that all k are distinct positive integers and b = A001055(k1) + A001055(k2) + ... + A001055(km) becomes maximal. a(n) is the number of such partitions which attain this maximum.

The programs for A350032, there is no canonical definition to state claims against.
-/

/-! ## A350032.P10913612217983159961

`A099563(or(n+1, A087464(n)))`
-/

namespace A350032.P10913612217983159961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099563 (Int.lor (n + 1 : ℤ) (A087464 n)).toNat

end

end A350032.P10913612217983159961

/-! ## A350032.P4675257214005201438

`A099563(xor(n+1, A087464(n)))`
-/

namespace A350032.P4675257214005201438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099563 (Int.xor (n + 1 : ℤ) (A087464 n)).toNat

end

end A350032.P4675257214005201438

/-! ## A350032.P9961779981908549248

`A067513(A208447(2*(n+1))+A185035(n))`
-/

namespace A350032.P9961779981908549248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067513 (A208447 (2 * (n + 1)) + A185035 n).toNat

end

end A350032.P9961779981908549248

/-! ## A350032.P2148700769928121706

`A334029(A064174(n+3)-A064174(n+1))`
-/

namespace A350032.P2148700769928121706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334029 (A064174 (n + 3) - A064174 (n + 1)).toNat

end

end A350032.P2148700769928121706

/-! ## A350032.P2067915600579900629

`A066099(A000201(n+1)*A127193(n+1))`
-/

namespace A350032.P2067915600579900629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066099 (A000201 (n + 1) * A127193 (n + 1)).toNat

end

end A350032.P2067915600579900629

/-!
# A350033: a(n) is the smallest positive integer k not occurring earlier such that Möbius(k) == n (mod 3).

The programs for A350033, there is no canonical definition to state claims against.
-/

/-! ## A350033.P4909519071490229907

`A085653(a(n-3))` with `a(0)=1, a(1)=2, a(2)=4`
-/

namespace A350033.P4909519071490229907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 4] fun n a =>
  A085653 (a (n - 3)).toNat

end

end A350033.P4909519071490229907

/-! ## A350033.P639301117010397359

`A093316(a(n-3))+a(n-3)` with `a(0)=1, a(1)=2, a(2)=4`
-/

namespace A350033.P639301117010397359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 4] fun n a =>
  A093316 (a (n - 3)).toNat + a (n - 3)

end

end A350033.P639301117010397359

/-!
# A350036: Numbers k such that (81^k + 1)/82 is prime.

The programs for A350036, there is no canonical definition to state claims against.
-/

/-! ## A350036.P1452087374984139300

`record[p?[A007913(A138939(n+1))]]`
-/

namespace A350036.P1452087374984139300
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A138939 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A350036.P1452087374984139300

/-! ## A350036.P6068464553729899945

`p?[A330734(A138939(n+1)/2)]`
-/

namespace A350036.P6068464553729899945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330734 (SequenceMachineLib.roundAway ((A138939 (n + 1) : ℚ) / 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A350036.P6068464553729899945

/-!
# A350037: a(n) = n^2 mod round(sqrt(n)).

The programs for A350037, the canonical program `A350037.P209896291184568721` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A350037 has offset 1).

The definition of A350037 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)²%round(sqrt(n+1))` (program `A350037.P209896291184568721`, by `A350037.P209896291184568721.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A350037.P209896291184568721

`(n+1)²%round(sqrt(n+1))`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A350037

/-- `(n+1)²%round(sqrt(n+1))` -/
def P209896291184568721.Spec : Prop :=
  ∀ n, P209896291184568721.a n = A350037 (n + 1)

theorem P209896291184568721.correct : P209896291184568721.Spec := by
  intro n
  simp only [A350037, Nat.add_sub_cancel]

end A350037

/-! ## A350037.P10662799733615910980

`A048152(n+1-C(∑[char[n²]], 2))`
-/

namespace A350037.P10662799733615910980
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048152 (n + 1 - Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2)

end

end A350037.P10662799733615910980

namespace A350037

/-- `A048152(n+1-C(∑[char[n²]], 2))` -/
def P10662799733615910980.Spec : Prop :=
  ∀ n, P10662799733615910980.a n = A350037 (n + 1)

end A350037

/-! ## A350037.P1398560645718698819

`A049759(A259361(n)+A000124(n))`
-/

namespace A350037.P1398560645718698819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049759 (A259361 n + A000124 n).toNat

end

end A350037.P1398560645718698819

namespace A350037

/-- `A049759(A259361(n)+A000124(n))` -/
def P1398560645718698819.Spec : Prop :=
  ∀ n, P1398560645718698819.a n = A350037 (n + 1)

end A350037

/-! ## A350037.P10472675348766432919

`A275714(n^A086251(n+1))`
-/

namespace A350037.P10472675348766432919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275714 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A086251 (n + 1) : ℤ))).toNat

end

end A350037.P10472675348766432919

namespace A350037

/-- `A275714(n^A086251(n+1))` -/
def P10472675348766432919.Spec : Prop :=
  ∀ n, P10472675348766432919.a n = A350037 (n + 1)

end A350037

/-! ## A350037.P11501645377543447089

`A275714(gcd(n, A292984(n+1)))`
-/

namespace A350037.P11501645377543447089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275714 (Int.gcd (n : ℤ) (A292984 (n + 1)))

end

end A350037.P11501645377543447089

namespace A350037

/-- `A275714(gcd(n, A292984(n+1)))` -/
def P11501645377543447089.Spec : Prop :=
  ∀ n, P11501645377543447089.a n = A350037 (n + 1)

end A350037

/-!
# A350040: Number of integer-sided right triangles with hypotenuse A009003(n).

The programs for A350040, the canonical program `A350040.P2213649878104145831` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A350040 has offset 1).

The definition of A350040 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6448 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A350040.P10667483810633527706

`A046080(A009003(n+1))`
-/

namespace A350040.P10667483810633527706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046080 (A009003 (n + 1)).toNat

end

end A350040.P10667483810633527706

namespace A350040

/-- `A046080(A009003(n+1))` -/
def P10667483810633527706.Spec : Prop :=
  ∀ n, P10667483810633527706.a n = A350040 (n + 1)

end A350040

/-! ## A350040.P15427080096928835263

`A046080(A072592(n+1)/2)`
-/

namespace A350040.P15427080096928835263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046080 (SequenceMachineLib.roundAway ((A072592 (n + 1) : ℚ) / 2)).toNat

end

end A350040.P15427080096928835263

namespace A350040

/-- `A046080(A072592(n+1)/2)` -/
def P15427080096928835263.Spec : Prop :=
  ∀ n, P15427080096928835263.a n = A350040 (n + 1)

end A350040

/-! ## A350040.P7148804110489762608

`A046080(A072592(n+1))`
-/

namespace A350040.P7148804110489762608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046080 (A072592 (n + 1)).toNat

end

end A350040.P7148804110489762608

namespace A350040

/-- `A046080(A072592(n+1))` -/
def P7148804110489762608.Spec : Prop :=
  ∀ n, P7148804110489762608.a n = A350040 (n + 1)

end A350040

/-! ## A350040.P13638785404395941804

`∑{d}[A009003(n+1), A024362(#)]`
-/

namespace A350040.P13638785404395941804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009003 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A024362 d

end

end A350040.P13638785404395941804

namespace A350040

/-- `∑{d}[A009003(n+1), A024362(#)]` -/
def P13638785404395941804.Spec : Prop :=
  ∀ n, P13638785404395941804.a n = A350040 (n + 1)

end A350040

/-! ## A350040.P9718260879257296794

`Δ[record[A224921(A323889(n))]]`
-/

namespace A350040.P9718260879257296794
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224921 (A323889 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A350040.P9718260879257296794

namespace A350040

/-- `Δ[record[A224921(A323889(n))]]` -/
def P9718260879257296794.Spec : Prop :=
  ∀ n, P9718260879257296794.a n = A350040 (n + 1)

end A350040

/-! ## A350040.P17856088079748975121

`Δ[record[A224921(A344180(n))]]`
-/

namespace A350040.P17856088079748975121
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224921 (A344180 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A350040.P17856088079748975121

namespace A350040

/-- `Δ[record[A224921(A344180(n))]]` -/
def P17856088079748975121.Spec : Prop :=
  ∀ n, P17856088079748975121.a n = A350040 (n + 1)

end A350040

/-! ## A350040.P9657528889935251127

`Δ[A224921(sqrt(A134422(n+1)))]`
-/

namespace A350040.P9657528889935251127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224921 (SequenceMachineLib.roundAway (Real.sqrt (A134422 (n + 1) : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A350040.P9657528889935251127

namespace A350040

/-- `Δ[A224921(sqrt(A134422(n+1)))]` -/
def P9657528889935251127.Spec : Prop :=
  ∀ n, P9657528889935251127.a n = A350040 (n + 1)

end A350040

/-! ## A350040.P2213649878104145831

`Δ[record[A224921(A103391(n+1))]]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A350040

/-- `Δ[record[A224921(A103391(n+1))]]` -/
def P2213649878104145831.Spec : Prop :=
  ∀ n, P2213649878104145831.a n = A350040 (n + 1)

theorem P2213649878104145831.correct : P2213649878104145831.Spec := by
  intro n
  simp only [A350040, Nat.add_sub_cancel]

end A350040

/-! ## A350040.P4821748589593591964

`Δ[A224921(A009003(n+1))%A005408(n)]`
-/

namespace A350040.P4821748589593591964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A224921 (A009003 (n + 1)).toNat) (A005408 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A350040.P4821748589593591964

namespace A350040

/-- `Δ[A224921(A009003(n+1))%A005408(n)]` -/
def P4821748589593591964.Spec : Prop :=
  ∀ n, P4821748589593591964.a n = A350040 (n + 1)

end A350040

/-! ## A350040.P13416877972407092736

`Δ[A224921(A009003(n+1))]%A009000(n+1)`
-/

namespace A350040.P13416877972407092736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224921 (A009003 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A009000 (n + 1))

end

end A350040.P13416877972407092736

namespace A350040

/-- `Δ[A224921(A009003(n+1))]%A009000(n+1)` -/
def P13416877972407092736.Spec : Prop :=
  ∀ n, P13416877972407092736.a n = A350040 (n + 1)

end A350040

/-! ## A350040.P350391796867243148

`A328712(lcm(2, A009003(n+1)))`
-/

namespace A350040.P350391796867243148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328712 (Int.lcm 2 (A009003 (n + 1)))

end

end A350040.P350391796867243148

namespace A350040

/-- `A328712(lcm(2, A009003(n+1)))` -/
def P350391796867243148.Spec : Prop :=
  ∀ n, P350391796867243148.a n = A350040 (n + 1)

end A350040

/-! ## A350040.P4862040822313954836

`Δ[record[A224921(A052938(n))]]`
-/

namespace A350040.P4862040822313954836
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224921 (A052938 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A350040.P4862040822313954836

namespace A350040

/-- `Δ[record[A224921(A052938(n))]]` -/
def P4862040822313954836.Spec : Prop :=
  ∀ n, P4862040822313954836.a n = A350040 (n + 1)

end A350040

/-! ## A350040.P5420325248566163725

`A328712(2*A009003(n+1))`
-/

namespace A350040.P5420325248566163725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328712 (2 * A009003 (n + 1)).toNat

end

end A350040.P5420325248566163725

namespace A350040

/-- `A328712(2*A009003(n+1))` -/
def P5420325248566163725.Spec : Prop :=
  ∀ n, P5420325248566163725.a n = A350040 (n + 1)

end A350040

/-! ## A350040.P2355047405142459064

`∑{d}[A072592(n+1), A024362(#)]`
-/

namespace A350040.P2355047405142459064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072592 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A024362 d

end

end A350040.P2355047405142459064

namespace A350040

/-- `∑{d}[A072592(n+1), A024362(#)]` -/
def P2355047405142459064.Spec : Prop :=
  ∀ n, P2355047405142459064.a n = A350040 (n + 1)

end A350040

/-! ## A350040.P16272280297864946713

`A328712(A009003(n+1)+A009003(n+1))`
-/

namespace A350040.P16272280297864946713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328712 (A009003 (n + 1) + A009003 (n + 1)).toNat

end

end A350040.P16272280297864946713

namespace A350040

/-- `A328712(A009003(n+1)+A009003(n+1))` -/
def P16272280297864946713.Spec : Prop :=
  ∀ n, P16272280297864946713.a n = A350040 (n + 1)

end A350040

/-! ## A350040.P257786691373919455

`Δ[record[A224921(A003602(n+1))]]`
-/

namespace A350040.P257786691373919455
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224921 (A003602 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A350040.P257786691373919455

namespace A350040

/-- `Δ[record[A224921(A003602(n+1))]]` -/
def P257786691373919455.Spec : Prop :=
  ∀ n, P257786691373919455.a n = A350040 (n + 1)

end A350040

/-! ## A350040.P16438671742460352347

`Δ[record[A224921(A032742(n+1))]]`
-/

namespace A350040.P16438671742460352347
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224921 (A032742 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A350040.P16438671742460352347

namespace A350040

/-- `Δ[record[A224921(A032742(n+1))]]` -/
def P16438671742460352347.Spec : Prop :=
  ∀ n, P16438671742460352347.a n = A350040 (n + 1)

end A350040

/-! ## A350040.P8173282172556236692

`A328712(2*A072592(n+1))`
-/

namespace A350040.P8173282172556236692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328712 (2 * A072592 (n + 1)).toNat

end

end A350040.P8173282172556236692

namespace A350040

/-- `A328712(2*A072592(n+1))` -/
def P8173282172556236692.Spec : Prop :=
  ∀ n, P8173282172556236692.a n = A350040 (n + 1)

end A350040

/-! ## A350040.P8383792576036574396

`Δ[record[A224921(A054576(n+1))]]`
-/

namespace A350040.P8383792576036574396
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224921 (A054576 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A350040.P8383792576036574396

namespace A350040

/-- `Δ[record[A224921(A054576(n+1))]]` -/
def P8383792576036574396.Spec : Prop :=
  ∀ n, P8383792576036574396.a n = A350040 (n + 1)

end A350040

/-!
# A350041: Number of ways of placing maximum number of nonattacking rooks on a triangular board with edge-length n (symmetric solutions count only once).

The programs for A350041, there is no canonical definition to state claims against.
-/

/-! ## A350041.P6664664548307362081

`A283113(A000212(n+3)-1)`
-/

namespace A350041.P6664664548307362081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283113 (A000212 (n + 3) - 1).toNat

end

end A350041.P6664664548307362081

/-! ## A350041.P2642791702567017885

`A283113(A007980(n)+1+n)`
-/

namespace A350041.P2642791702567017885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283113 (A007980 n + 1 + (n : ℤ)).toNat

end

end A350041.P2642791702567017885

/-! ## A350041.P13922841430097418212

`A283113(A096777(n+2)+n)`
-/

namespace A350041.P13922841430097418212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283113 (A096777 (n + 2) + (n : ℤ)).toNat

end

end A350041.P13922841430097418212

/-! ## A350041.P15455383797727975640

`A283113(∑[A008620(2*n)+1])`
-/

namespace A350041.P15455383797727975640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (2 * n) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283113 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A350041.P15455383797727975640

/-! ## A350041.P12120796472708579411

`A283113(A001399(2*n+3)-1)`
-/

namespace A350041.P12120796472708579411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283113 (A001399 (2 * n + 3) - 1).toNat

end

end A350041.P12120796472708579411

/-!
# A350042: Sum of all the parts in the partitions of n into 3 positive integer parts.

The programs for A350042, the canonical program `A350042.P861276931472324705` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A350042 has offset 0).

The definition of A350042 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A350042.P861276931472324705

`n*round(n²/12)`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A350042

/-- `n*round(n²/12)` -/
def P861276931472324705.Spec : Prop :=
  ∀ n, P861276931472324705.a n = A350042 n

theorem P861276931472324705.correct : P861276931472324705.Spec := by
  intro n
  simp only [A350042]

end A350042

/-! ## A350042.P295136919218102492

`n*ceil(or(5, n²)/12)-n`
-/

namespace A350042.P295136919218102492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ⌈(Nat.lor 5 (n ^ 2) : ℚ) / 12⌉ - (n : ℤ)

end

end A350042.P295136919218102492

namespace A350042

/-- `n*ceil(or(5, n²)/12)-n` -/
def P295136919218102492.Spec : Prop :=
  ∀ n, P295136919218102492.a n = A350042 n

end A350042

/-! ## A350042.P6858898941922456521

`abs(n*∑[∑[n%2-∑[n]%3]])`
-/

namespace A350042.P6858898941922456521
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n % 2 : ℕ) : ℤ) - (((∑ j ∈ Finset.range (n + 1), f3 j) % 3 : ℕ) : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)|

end

end A350042.P6858898941922456521

namespace A350042

/-- `abs(n*∑[∑[n%2-∑[n]%3]])` -/
def P6858898941922456521.Spec : Prop :=
  ∀ n, P6858898941922456521.a n = A350042 n

end A350042

/-! ## A350042.P8363338387439697590

`round(n²/12)/n^(floor(acot(n))-1)`
-/

namespace A350042.P8363338387439697590
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.roundAway ((n ^ 2 : ℚ) / 12) : ℚ) / (n : ℚ) ^ (⌊SequenceMachineLib.acot (n : ℝ)⌋ - 1 : ℤ)

end

end A350042.P8363338387439697590

namespace A350042

/-- `round(n²/12)/n^(floor(acot(n))-1)` -/
def P8363338387439697590.Spec : Prop :=
  ∀ n, P8363338387439697590.a n = (A350042 n : ℚ)

end A350042

/-! ## A350042.P15054083461508785684

`round(n²/12)/round(1/acot(n))^(-1)`
-/

namespace A350042.P15054083461508785684
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.roundAway ((n ^ 2 : ℚ) / 12) : ℚ) / (SequenceMachineLib.roundAway (1 / SequenceMachineLib.acot (n : ℝ)) : ℚ) ^ (-1 : ℤ)

end

end A350042.P15054083461508785684

namespace A350042

/-- `round(n²/12)/round(1/acot(n))^(-1)` -/
def P15054083461508785684.Spec : Prop :=
  ∀ n, P15054083461508785684.a n = (A350042 n : ℚ)

end A350042

/-! ## A350042.P14107242603323443192

`round(n²/12)/n^(C(2, n+2)-1)`
-/

namespace A350042.P14107242603323443192
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.roundAway ((n ^ 2 : ℚ) / 12) : ℚ) / (n : ℚ) ^ ((Nat.choose 2 (n + 2) : ℤ) - 1 : ℤ)

end

end A350042.P14107242603323443192

namespace A350042

/-- `round(n²/12)/n^(C(2, n+2)-1)` -/
def P14107242603323443192.Spec : Prop :=
  ∀ n, P14107242603323443192.a n = (A350042 n : ℚ)

end A350042

/-! ## A350042.P11184572118223338439

`n*A014591(n)-n`
-/

namespace A350042.P11184572118223338439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A014591 n - (n : ℤ)

end

end A350042.P11184572118223338439

namespace A350042

/-- `n*A014591(n)-n` -/
def P11184572118223338439.Spec : Prop :=
  ∀ n, P11184572118223338439.a n = A350042 n

end A350042

/-! ## A350042.P13787469657533505507

`abs(n*∑[n-A090168(n)])`
-/

namespace A350042.P13787469657533505507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A090168 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)|

end

end A350042.P13787469657533505507

namespace A350042

/-- `abs(n*∑[n-A090168(n)])` -/
def P13787469657533505507.Spec : Prop :=
  ∀ n, P13787469657533505507.a n = A350042 n

end A350042

/-! ## A350042.P997748574120763003

`abs(n*Δ[A181120(abs(1-n))])`
-/

namespace A350042.P997748574120763003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181120 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) * (f1 (n + 1) - f1 n)|

end

end A350042.P997748574120763003

namespace A350042

/-- `abs(n*Δ[A181120(abs(1-n))])` -/
def P997748574120763003.Spec : Prop :=
  ∀ n, P997748574120763003.a n = A350042 n

end A350042

/-! ## A350042.P6920431660906788694

`A309515(n)+A309512(n)`
-/

namespace A350042.P6920431660906788694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309515 n + A309512 n

end

end A350042.P6920431660906788694

namespace A350042

/-- `A309515(n)+A309512(n)` -/
def P6920431660906788694.Spec : Prop :=
  ∀ n, P6920431660906788694.a n = A350042 n

end A350042

/-!
# A350044: Loop starting at 187 in the Collatz-like map {x -> 3x+5 if x is odd, x/2 otherwise}.

The programs for A350044, the canonical program `A350044.P9518103623702551074` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A350044 has offset 1).

The definition of A350044 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A350044.P9518103623702551074

`A181762(a(n-1))` with `a(0)=187`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A350044

/-- `A181762(a(n-1))` -/
def P9518103623702551074.Spec : Prop :=
  ∀ n, P9518103623702551074.a n = A350044 (n + 1)

theorem P9518103623702551074.correct : P9518103623702551074.Spec := by
  intro n
  simp only [A350044, Nat.add_sub_cancel]

end A350044

/-!
# A350046: Numbers m such that, in the prime factorization of m! (with the primes in ascending order), no two successive exponents differ by a composite number.

The programs for A350046, there is no canonical definition to state claims against.
-/

/-! ## A350046.P18097095964958134949

`lt[A214253(A220413(2*n+1)), A070939(n)]`
-/

namespace A350046.P18097095964958134949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214253 (A220413 (2 * n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A350046.P18097095964958134949

/-! ## A350046.P6740397695213964660

`lt[A110657(n), dr(A324866(n+1))]`
-/

namespace A350046.P6740397695213964660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110657 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A324866 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A350046.P6740397695213964660

/-! ## A350046.P12525166831032035680

`lt[A319453(A171609(n+1)), n-2*floor(n/10)]`
-/

namespace A350046.P12525166831032035680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319453 (A171609 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 2 * ⌊(n : ℚ) / 10⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A350046.P12525166831032035680

/-! ## A350046.P4609380859908189051

`A321220(A185293(n))+A272576(n)`
-/

namespace A350046.P4609380859908189051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321220 (A185293 n).toNat + A272576 n

end

end A350046.P4609380859908189051

/-! ## A350046.P2133237052085667918

`A077168(A255380(n))+A032847(n+1)`
-/

namespace A350046.P2133237052085667918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077168 (A255380 n).toNat + A032847 (n + 1)

end

end A350046.P2133237052085667918

/-!
# A350049: a(1) = 1; for n > 1, a(n) is the smallest number with at least as many divisors as 2*a(n-1).

The programs for A350049, there is no canonical definition to state claims against.
-/

/-! ## A350049.P8369969670763220332

`A019505(comp[45*n])`
-/

namespace A350049.P8369969670763220332
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  45 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019505 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A350049.P8369969670763220332

/-! ## A350049.P953742402104888837

`A019505(n+1)+char[37]`
-/

namespace A350049.P953742402104888837
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  37

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019505 (n + 1) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A350049.P953742402104888837

/-! ## A350049.P8095246804843618179

`A066035(n)+A019505(n+1)`
-/

namespace A350049.P8095246804843618179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066035 n + A019505 (n + 1)

end

end A350049.P8095246804843618179

/-! ## A350049.P12596267525440364408

`A185245(n)+A019505(n+1)`
-/

namespace A350049.P12596267525440364408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185245 n + A019505 (n + 1)

end

end A350049.P12596267525440364408

/-! ## A350049.P4712165224340699109

`A243834(n)+A019505(n+1)`
-/

namespace A350049.P4712165224340699109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243834 n + A019505 (n + 1)

end

end A350049.P4712165224340699109

/-!
# A350050: a(n) = (2*n^4 - 6*(-1)^n*n^2 - 2*n^2 + 3*(-1)^n - 3)/96.

The programs for A350050, the canonical program `A350050.P14525690482896302436` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A350050 has offset 0).

The definition of A350050 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A350050.P14525690482896302436

`(2*n^4-6*(-1)^n*n²-2*n²+3*(-1)^n-3)/96`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A350050

/-- `(2*n^4-6*(-1)^n*n²-2*n²+3*(-1)^n-3)/96` -/
def P14525690482896302436.Spec : Prop :=
  ∀ n, P14525690482896302436.a n = (A350050 n : ℚ)

end A350050

/-! ## A350050.P4058837850013815366

`∑[C(n%2+n, 3)/2]`
-/

namespace A350050.P4058837850013815366
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n % 2 + n) 3 : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A350050.P4058837850013815366

namespace A350050

/-- `∑[C(n%2+n, 3)/2]` -/
def P4058837850013815366.Spec : Prop :=
  ∀ n, P4058837850013815366.a n = (A350050 n : ℚ)

end A350050

/-! ## A350050.P1701408234090762615

`∑[C(char[Δ[n²]]+n, 3)/2]`
-/

namespace A350050.P1701408234090762615
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f3 (n + 1) : ℤ) - (f3 n : ℤ)

open Classical in
def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose ((if ∃ j, f2 j = (n : ℤ) then 1 else 0) + n) 3 : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A350050.P1701408234090762615

namespace A350050

/-- `∑[C(char[Δ[n²]]+n, 3)/2]` -/
def P1701408234090762615.Spec : Prop :=
  ∀ n, P1701408234090762615.a n = (A350050 n : ℚ)

end A350050

/-! ## A350050.P15057317119390519320

`A002415(n)-A030179(n)`
-/

namespace A350050.P15057317119390519320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002415 n - A030179 n

end

end A350050.P15057317119390519320

namespace A350050

/-- `A002415(n)-A030179(n)` -/
def P15057317119390519320.Spec : Prop :=
  ∀ n, P15057317119390519320.a n = A350050 n

end A350050

/-! ## A350050.P3323550916809696607

`A002415(n)-A002620(n)²`
-/

namespace A350050.P3323550916809696607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002415 n - A002620 n ^ 2

end

end A350050.P3323550916809696607

namespace A350050

/-- `A002415(n)-A002620(n)²` -/
def P3323550916809696607.Spec : Prop :=
  ∀ n, P3323550916809696607.a n = A350050 n

end A350050

/-! ## A350050.P4129339029731654732

`A002415(n)-(A078126(n)+1)²`
-/

namespace A350050.P4129339029731654732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002415 n - (A078126 n + 1) ^ 2

end

end A350050.P4129339029731654732

namespace A350050

/-- `A002415(n)-(A078126(n)+1)²` -/
def P4129339029731654732.Spec : Prop :=
  ∀ n, P4129339029731654732.a n = A350050 n

end A350050

/-! ## A350050.P10062116752712728577

`A227327(n+1)-A210433(n+1)`
-/

namespace A350050.P10062116752712728577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227327 (n + 1) - A210433 (n + 1)

end

end A350050.P10062116752712728577

namespace A350050

/-- `A227327(n+1)-A210433(n+1)` -/
def P10062116752712728577.Spec : Prop :=
  ∀ n, P10062116752712728577.a n = A350050 n

end A350050

/-! ## A350050.P5441601890679546968

`∑[A011894(2*A004526(n+1))]`
-/

namespace A350050.P5441601890679546968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011894 (2 * A004526 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A350050.P5441601890679546968

namespace A350050

/-- `∑[A011894(2*A004526(n+1))]` -/
def P5441601890679546968.Spec : Prop :=
  ∀ n, P5441601890679546968.a n = A350050 n

end A350050

/-! ## A350050.P1711438093255545287

`A152749(A337483(n))`
-/

namespace A350050.P1711438093255545287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152749 (A337483 n).toNat

end

end A350050.P1711438093255545287

namespace A350050

/-- `A152749(A337483(n))` -/
def P1711438093255545287.Spec : Prop :=
  ∀ n, P1711438093255545287.a n = A350050 n

end A350050

/-! ## A350050.P12690678915151453658

`A000212(A004652(n)+1)-A004652(n)`
-/

namespace A350050.P12690678915151453658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000212 (A004652 n + 1).toNat - A004652 n

end

end A350050.P12690678915151453658

namespace A350050

/-- `A000212(A004652(n)+1)-A004652(n)` -/
def P12690678915151453658.Spec : Prop :=
  ∀ n, P12690678915151453658.a n = A350050 n

end A350050

/-! ## A350050.P2284560525486366493

`A272104(A008810(n))`
-/

namespace A350050.P2284560525486366493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272104 (A008810 n).toNat

end

end A350050.P2284560525486366493

namespace A350050

/-- `A272104(A008810(n))` -/
def P2284560525486366493.Spec : Prop :=
  ∀ n, P2284560525486366493.a n = A350050 n

end A350050

/-! ## A350050.P18055264897493221078

`A272104(A229093(n+1))`
-/

namespace A350050.P18055264897493221078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272104 (A229093 (n + 1)).toNat

end

end A350050.P18055264897493221078

namespace A350050

/-- `A272104(A229093(n+1))` -/
def P18055264897493221078.Spec : Prop :=
  ∀ n, P18055264897493221078.a n = A350050 n

end A350050

/-! ## A350050.P15413215734557620800

`A002415(n)-A002620(2*A002620(n))`
-/

namespace A350050.P15413215734557620800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002415 n - A002620 (2 * A002620 n).toNat

end

end A350050.P15413215734557620800

namespace A350050

/-- `A002415(n)-A002620(2*A002620(n))` -/
def P15413215734557620800.Spec : Prop :=
  ∀ n, P15413215734557620800.a n = A350050 n

end A350050

/-! ## A350050.P16532679596860018084

`A069905(2*A004652(n))-A069905(n)`
-/

namespace A350050.P16532679596860018084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069905 (2 * A004652 n).toNat - A069905 n

end

end A350050.P16532679596860018084

namespace A350050

/-- `A069905(2*A004652(n))-A069905(n)` -/
def P16532679596860018084.Spec : Prop :=
  ∀ n, P16532679596860018084.a n = A350050 n

end A350050

/-! ## A350050.P17529542581824018611

`A005044(abs(2-n²))`
-/

namespace A350050.P17529542581824018611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005044 |2 - (n ^ 2 : ℤ)|.toNat

end

end A350050.P17529542581824018611

namespace A350050

/-- `A005044(abs(2-n²))` -/
def P17529542581824018611.Spec : Prop :=
  ∀ n, P17529542581824018611.a n = A350050 n

end A350050

/-! ## A350050.P2321041649724543863

`A005044(n²)-A069905(n)`
-/

namespace A350050.P2321041649724543863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005044 (n ^ 2) - A069905 n

end

end A350050.P2321041649724543863

namespace A350050

/-- `A005044(n²)-A069905(n)` -/
def P2321041649724543863.Spec : Prop :=
  ∀ n, P2321041649724543863.a n = A350050 n

end A350050

/-!
# A350051: Part three of the trisection of A017101: a(n) = 19 + 24*n.

The programs for A350051, the canonical program `A350051.P14041846798359851300` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A350051 has offset 0).

The definition of A350051 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `19+24*n` (program `A350051.P14041846798359851300`, by `A350051.P14041846798359851300.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A350051.P14041846798359851300

`19+24*n`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A350051

/-- `19+24*n` -/
def P14041846798359851300.Spec : Prop :=
  ∀ n, (P14041846798359851300.a n : ℤ) = A350051 n

theorem P14041846798359851300.correct : P14041846798359851300.Spec := by
  intro n
  simp only [A350051]

end A350051

/-!
# A350052: Third part of the trisection of A017077: a(n) = 17 + 24*n.

The programs for A350052, the canonical program `A350052.P6532932718131928687` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A350052 has offset 0).

The definition of A350052 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `17+24*n` (program `A350052.P6532932718131928687`, by `A350052.P6532932718131928687.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A350052.P6532932718131928687

`17+24*n`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A350052

/-- `17+24*n` -/
def P6532932718131928687.Spec : Prop :=
  ∀ n, (P6532932718131928687.a n : ℤ) = A350052 n

theorem P6532932718131928687.correct : P6532932718131928687.Spec := by
  intro n
  simp only [A350052]

end A350052

/-!
# A350053: a(n) = (2^(3*n + 3 + (-1)^n) - (6 + (-1)^n))/9, for n >= 1.

The programs for A350053, the canonical program `A350053.P4527455284706814819` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A350053 has offset 1).

The definition of A350053 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A350053.P4527455284706814819

`(2^(3*(n+1)+3+(-1)^(n+1))-(6+(-1)^(n+1)))/9`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A350053

/-- `(2^(3*(n+1)+3+(-1)^(n+1))-(6+(-1)^(n+1)))/9` -/
def P4527455284706814819.Spec : Prop :=
  ∀ n, P4527455284706814819.a n = (A350053 (n + 1) : ℚ)

end A350053

/-! ## A350053.P5025622204918755448

`A132780(A047230(n+2))`
-/

namespace A350053.P5025622204918755448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132780 (A047230 (n + 2)).toNat

end

end A350053.P5025622204918755448

namespace A350053

/-- `A132780(A047230(n+2))` -/
def P5025622204918755448.Spec : Prop :=
  ∀ n, P5025622204918755448.a n = A350053 (n + 1)

end A350053

/-! ## A350053.P17385655977455991721

`A135350(A047239(n+2))`
-/

namespace A350053.P17385655977455991721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135350 (A047239 (n + 2)).toNat

end

end A350053.P17385655977455991721

namespace A350053

/-- `A135350(A047239(n+2))` -/
def P17385655977455991721.Spec : Prop :=
  ∀ n, P17385655977455991721.a n = A350053 (n + 1)

end A350053

/-! ## A350053.P10808663093364849929

`A153234(A047257(n+2))`
-/

namespace A350053.P10808663093364849929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153234 (A047257 (n + 2)).toNat

end

end A350053.P10808663093364849929

namespace A350053

/-- `A153234(A047257(n+2))` -/
def P10808663093364849929.Spec : Prop :=
  ∀ n, P10808663093364849929.a n = A350053 (n + 1)

end A350053

/-! ## A350053.P10683615266181388537

`A135350(A016789(n)+A010673(n))`
-/

namespace A350053.P10683615266181388537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135350 (A016789 n + A010673 n).toNat

end

end A350053.P10683615266181388537

namespace A350053

/-- `A135350(A016789(n)+A010673(n))` -/
def P10683615266181388537.Spec : Prop :=
  ∀ n, P10683615266181388537.a n = A350053 (n + 1)

end A350053

/-!
# A350054: a(n) = (4^(3*n+2) - 7)/9.

The programs for A350054, the canonical program `A350054.P8731163603145964891` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A350054 has offset 1).

The definition of A350054 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A350054.P8731163603145964891

`112*A133853(n+1)+1`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A350054

/-- `112*A133853(n+1)+1` -/
def P8731163603145964891.Spec : Prop :=
  ∀ n, P8731163603145964891.a n = A350054 (n + 1)

theorem P8731163603145964891.correct : P8731163603145964891.Spec := by
  intro n
  simp only [A350054, Nat.add_sub_cancel]

end A350054

/-! ## A350054.P17117288642133000498

`(4^(3*(n+1)+2)-7)/9`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A350054.P17117288642133000498
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((4 ^ (3 * (n + 1) + 2) : ℤ) - 7 : ℚ) / 9

end

end A350054.P17117288642133000498

namespace A350054

/-- `(4^(3*(n+1)+2)-7)/9` -/
def P17117288642133000498.Spec : Prop :=
  ∀ n, P17117288642133000498.a n = (A350054 (n + 1) : ℚ)

end A350054

/-! ## A350054.P31745899403897185

`A350053(2*(n+1))`
-/

namespace A350054.P31745899403897185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350053 (2 * (n + 1))

end

end A350054.P31745899403897185

namespace A350054

/-- `A350053(2*(n+1))` -/
def P31745899403897185.Spec : Prop :=
  ∀ n, P31745899403897185.a n = A350054 (n + 1)

end A350054

/-! ## A350054.P1295363486953829647

`A037597(3*(n+1)+1)`
-/

namespace A350054.P1295363486953829647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037597 (3 * (n + 1) + 1)

end

end A350054.P1295363486953829647

namespace A350054

/-- `A037597(3*(n+1)+1)` -/
def P1295363486953829647.Spec : Prop :=
  ∀ n, P1295363486953829647.a n = A350054 (n + 1)

end A350054

/-! ## A350054.P3197298094092006562

`A113867(3*(n+1)+1)`
-/

namespace A350054.P3197298094092006562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113867 (3 * (n + 1) + 1)

end

end A350054.P3197298094092006562

namespace A350054

/-- `A113867(3*(n+1)+1)` -/
def P3197298094092006562.Spec : Prop :=
  ∀ n, P3197298094092006562.a n = A350054 (n + 1)

end A350054

/-! ## A350054.P9658461806795409882

`A132780(3*(2*n+3))`
-/

namespace A350054.P9658461806795409882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132780 (3 * (2 * n + 3))

end

end A350054.P9658461806795409882

namespace A350054

/-- `A132780(3*(2*n+3))` -/
def P9658461806795409882.Spec : Prop :=
  ∀ n, P9658461806795409882.a n = A350054 (n + 1)

end A350054

/-! ## A350054.P8354463505429444557

`2*A152776(2*(n+1))+1`
-/

namespace A350054.P8354463505429444557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A152776 (2 * (n + 1)) + 1

end

end A350054.P8354463505429444557

namespace A350054

/-- `2*A152776(2*(n+1))+1` -/
def P8354463505429444557.Spec : Prop :=
  ∀ n, P8354463505429444557.a n = A350054 (n + 1)

end A350054

/-! ## A350054.P12670111052100013953

`A131090(A016957(n+1))`
-/

namespace A350054.P12670111052100013953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131090 (A016957 (n + 1)).toNat

end

end A350054.P12670111052100013953

namespace A350054

/-- `A131090(A016957(n+1))` -/
def P12670111052100013953.Spec : Prop :=
  ∀ n, P12670111052100013953.a n = A350054 (n + 1)

end A350054

/-! ## A350054.P10960135245459682574

`A135350(A016921(n+1))`
-/

namespace A350054.P10960135245459682574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135350 (A016921 (n + 1)).toNat

end

end A350054.P10960135245459682574

namespace A350054

/-- `A135350(A016921(n+1))` -/
def P10960135245459682574.Spec : Prop :=
  ∀ n, P10960135245459682574.a n = A350054 (n + 1)

end A350054

/-! ## A350054.P2164220405736639368

`A135350(A271114(n+1))`
-/

namespace A350054.P2164220405736639368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135350 (A271114 (n + 1)).toNat

end

end A350054.P2164220405736639368

namespace A350054

/-- `A135350(A271114(n+1))` -/
def P2164220405736639368.Spec : Prop :=
  ∀ n, P2164220405736639368.a n = A350054 (n + 1)

end A350054

/-!
# A350055: a(n) = 36*n + 35, for n >= 0.

The programs for A350055, the canonical program `A350055.P14338216184358329555` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A350055 has offset 0).

The definition of A350055 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `36*n+35` (program `A350055.P14338216184358329555`, by `A350055.P14338216184358329555.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A350055.P14338216184358329555

`36*n+35`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A350055

/-- `36*n+35` -/
def P14338216184358329555.Spec : Prop :=
  ∀ n, (P14338216184358329555.a n : ℤ) = A350055 n

theorem P14338216184358329555.correct : P14338216184358329555.Spec := by
  intro n
  simp only [A350055]

end A350055

/-!
# A350056: Perimeter of integer-sided triangle with hypotenuse A084645(n).

The programs for A350056, there is no canonical definition to state claims against.
-/

/-! ## A350056.P8866115421104393379

`A084645(n+1)+A350058(n+1)+A350057(n+1)`
-/

namespace A350056.P8866115421104393379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084645 (n + 1) + (A350058 (n + 1) + A350057 (n + 1))

end

end A350056.P8866115421104393379

/-! ## A350056.P4970591489891076715

`A362961(∩[A084646(n+1), n²])`
-/

namespace A350056.P4970591489891076715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084646 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362961 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n)

end

end A350056.P4970591489891076715

/-! ## A350056.P12756644795248647328

`∩[A010814(n+1), A137353(n+1)]`
-/

namespace A350056.P12756644795248647328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010814 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137353 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A350056.P12756644795248647328

/-! ## A350056.P3047082384202922398

`∩[A105360(n+1), A299729(n+1)]`
-/

namespace A350056.P3047082384202922398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105360 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299729 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A350056.P3047082384202922398

/-! ## A350056.P9013143495892453553

`∩[A299729(n+1), A340325(n+1)]`
-/

namespace A350056.P9013143495892453553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299729 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340325 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A350056.P9013143495892453553

/-!
# A350057: Short leg lengths of integer-sided triangles with hypotenuse A084645(n).

The programs for A350057, there is no canonical definition to state claims against.
-/

/-! ## A350057.P13682696559437204638

`A350056(n+1)-(A350058(n+1)+A084645(n+1))`
-/

namespace A350057.P13682696559437204638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350056 (n + 1) - (A350058 (n + 1) + A084645 (n + 1))

end

end A350057.P13682696559437204638

/-! ## A350057.P17771809264725938138

`A108707(A084645(n+1))`
-/

namespace A350057.P17771809264725938138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108707 (A084645 (n + 1)).toNat

end

end A350057.P17771809264725938138

/-! ## A350057.P7080417675371980610

`A108707(eq[2, A063014(n)])`
-/

namespace A350057.P7080417675371980610
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063014 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108707 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A350057.P7080417675371980610

/-! ## A350057.P1986375272202131127

`A108707(eq[12, A046109(n)])`
-/

namespace A350057.P1986375272202131127
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046109 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108707 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A350057.P1986375272202131127

/-! ## A350057.P5708340315029399064

`A108707(eq[1, A046080(n+1)]+1)`
-/

namespace A350057.P5708340315029399064
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046080 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108707 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A350057.P5708340315029399064

/-! ## A350057.P17793524885779812482

`A108707(eq[1, A083025(n+1)]+1)`
-/

namespace A350057.P17793524885779812482
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083025 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108707 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A350057.P17793524885779812482

/-! ## A350057.P16272919752325728936

`A108707(eq[2, A286361(n+1)]+1)`
-/

namespace A350057.P16272919752325728936
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286361 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108707 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A350057.P16272919752325728936

/-! ## A350057.P6333244176102746153

`A108707(eq[1, A328712(2*(n+1))]+1)`
-/

namespace A350057.P6333244176102746153
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328712 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108707 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A350057.P6333244176102746153

/-! ## A350057.P14654882021491840294

`A108707(A209922(n+1)%A266988(n+1))`
-/

namespace A350057.P14654882021491840294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108707 (Int.tmod (A209922 (n + 1)) (A266988 (n + 1))).toNat

end

end A350057.P14654882021491840294

/-! ## A350057.P17553469927365343434

`2/A350058(n+1)*A350564(n+1)`
-/

namespace A350057.P17553469927365343434
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (A350058 (n + 1) : ℚ) * (A350564 (n + 1) : ℚ)

end

end A350057.P17553469927365343434

/-!
# A350058: Long leg lengths of integer-sided triangles with hypotenuse A084645(n).

The programs for A350058, there is no canonical definition to state claims against.
-/

/-! ## A350058.P7820876248947106805

`A350056(n+1)-(A350057(n+1)+A084645(n+1))`
-/

namespace A350058.P7820876248947106805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350056 (n + 1) - (A350057 (n + 1) + A084645 (n + 1))

end

end A350058.P7820876248947106805

/-! ## A350058.P17875487381717471811

`A108708(A084645(n+1))`
-/

namespace A350058.P17875487381717471811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108708 (A084645 (n + 1)).toNat

end

end A350058.P17875487381717471811

/-! ## A350058.P535460394393806294

`A108708(eq[2, A063014(n)])`
-/

namespace A350058.P535460394393806294
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063014 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108708 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A350058.P535460394393806294

/-! ## A350058.P444192137889841199

`A108708(eq[12, A046109(n)])`
-/

namespace A350058.P444192137889841199
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046109 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108708 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A350058.P444192137889841199

/-! ## A350058.P922746992128155935

`A108708(eq[1, A046080(n+1)]+1)`
-/

namespace A350058.P922746992128155935
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046080 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108708 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A350058.P922746992128155935

/-! ## A350058.P14250373648021361923

`A108708(eq[1, A083025(n+1)]+1)`
-/

namespace A350058.P14250373648021361923
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083025 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108708 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A350058.P14250373648021361923

/-! ## A350058.P16764214329140174501

`A108708(eq[2, A286361(n+1)]+1)`
-/

namespace A350058.P16764214329140174501
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286361 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108708 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A350058.P16764214329140174501

/-! ## A350058.P15578307053530812808

`A108708(eq[1, A328712(2*(n+1))]+1)`
-/

namespace A350058.P15578307053530812808
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328712 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108708 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A350058.P15578307053530812808

/-! ## A350058.P9892487550517112068

`A108708(A209922(n+1)%A266988(n+1))`
-/

namespace A350058.P9892487550517112068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108708 (Int.tmod (A209922 (n + 1)) (A266988 (n + 1))).toNat

end

end A350058.P9892487550517112068

/-! ## A350058.P11876455188352395759

`2/A350057(n+1)*A350564(n+1)`
-/

namespace A350058.P11876455188352395759
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (A350057 (n + 1) : ℚ) * (A350564 (n + 1) : ℚ)

end

end A350058.P11876455188352395759

/-!
# A350059: Numbers k such that 3k and 4k have the same number of divisors.

The programs for A350059, there is no canonical definition to state claims against.
-/

/-! ## A350059.P10074223477401962862

`eq[A057427(n), A260031(A008458(n))]`
-/

namespace A350059.P10074223477401962862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260031 (A008458 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A350059.P10074223477401962862

/-! ## A350059.P14698790088859808701

`eq[1, A260031(A008458(n))%A265509(n)]`
-/

namespace A350059.P14698790088859808701
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A260031 (A008458 n).toNat) (A265509 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A350059.P14698790088859808701

/-! ## A350059.P3870325388664046206

`eq[A175298(n)%2, A260031(A008458(n))]`
-/

namespace A350059.P3870325388664046206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A175298 n) 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260031 (A008458 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A350059.P3870325388664046206

/-! ## A350059.P3460138146858744966

`eq[A206913(n)%2, A260031(A008458(n))]`
-/

namespace A350059.P3460138146858744966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A206913 n) 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260031 (A008458 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A350059.P3460138146858744966

/-! ## A350059.P1671376947565609912

`eq[A002385(n+1)%2, A260031(A008458(n))]`
-/

namespace A350059.P1671376947565609912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002385 (n + 1)) 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260031 (A008458 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A350059.P1671376947565609912

/-! ## A350059.P2475370152141828910

`eq[A006995(n+1)%2, A260031(A008458(n))]`
-/

namespace A350059.P2475370152141828910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006995 (n + 1)) 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260031 (A008458 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A350059.P2475370152141828910

/-!
# A350061: Numbers k for which there exists a preimage m_1 such that A349194(m_1) = k but there is no preimage m_2 such that A349278(m_2) = k.

The programs for A350061, there is no canonical definition to state claims against.
-/

/-! ## A350061.P16334977141158520423

`record[A071785(A349865(n+1))]`
-/

namespace A350061.P16334977141158520423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071785 (A349865 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A350061.P16334977141158520423

/-!
# A350062: a(n) is the smallest number with the same prime signature as A156552(n), with a(1) = 0.

The programs for A350062, there is no canonical definition to state claims against.
-/

/-! ## A350062.P10113328277965924181

`A046523(A156552(n+1)+A000038(n))-A000038(n)`
-/

namespace A350062.P10113328277965924181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A156552 (n + 1) + A000038 n).toNat - A000038 n

end

end A350062.P10113328277965924181

/-! ## A350062.P13831891547152833768

`A046523(A005941(n+1)-A178334(n))-A000007(n)`
-/

namespace A350062.P13831891547152833768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A005941 (n + 1) - A178334 n).toNat - A000007 n

end

end A350062.P13831891547152833768

/-! ## A350062.P8843099734370068158

`A046523(A156552(n+1)+A000038(n))%A000051(n)`
-/

namespace A350062.P8843099734370068158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A046523 (A156552 (n + 1) + A000038 n).toNat) (A000051 n)

end

end A350062.P8843099734370068158

/-! ## A350062.P3502727455647128434

`∑{d}[A156552(n+1), A336571(#)]`
-/

namespace A350062.P3502727455647128434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156552 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A336571 d

end

end A350062.P3502727455647128434

/-! ## A350062.P9760458872199737937

`∑{d}[A305418(A091202(n+1)), A336571(#)]`
-/

namespace A350062.P9760458872199737937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305418 (A091202 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A336571 d

end

end A350062.P9760458872199737937

/-!
# A350063: a(n) is the smallest number with the same prime signature as A322993(n), with a(1) = 0.

The programs for A350063, there is no canonical definition to state claims against.
-/

/-! ## A350063.P6512963013096610230

`A350062(A348717(n+1))`
-/

namespace A350063.P6512963013096610230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350062 (A348717 (n + 1)).toNat

end

end A350063.P6512963013096610230

/-! ## A350063.P12462715188571702803

`A333255(A350065(n+1)%A144325(n+1))`
-/

namespace A350063.P12462715188571702803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333255 (Int.tmod (A350065 (n + 1)) (A144325 (n + 1))).toNat

end

end A350063.P12462715188571702803

/-! ## A350063.P3346798246829344638

`A004275(A324117(n+1)%A141214(n))`
-/

namespace A350063.P3346798246829344638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (Int.tmod (A324117 (n + 1)) (A141214 n)).toNat

end

end A350063.P3346798246829344638

/-! ## A350063.P1570704695858476555

`A346700(A350065(n+1)^A350065(n+1))`
-/

namespace A350063.P1570704695858476555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346700 (SequenceMachineLib.roundAway ((A350065 (n + 1) : ℚ) ^ (A350065 (n + 1) : ℤ))).toNat

end

end A350063.P1570704695858476555

/-! ## A350063.P5963339790154665699

`A360676(A350065(n+1)^A350065(n+1))`
-/

namespace A350063.P5963339790154665699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360676 (SequenceMachineLib.roundAway ((A350065 (n + 1) : ℚ) ^ (A350065 (n + 1) : ℤ))).toNat

end

end A350063.P5963339790154665699

/-!
# A350064: Lexicographically earliest infinite sequence such that a(i) = a(j) => A350062(i) = A350062(j), for all i, j >= 1.

The programs for A350064, there is no canonical definition to state claims against.
-/

/-! ## A350064.P8476476966829796444

`A326644(A206740(n))+A326641(n)`
-/

namespace A350064.P8476476966829796444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326644 (A206740 n).toNat + A326641 n

end

end A350064.P8476476966829796444

/-! ## A350064.P1673595079248783709

`A326641(n)+A010178(A008292(2*(n+1)))`
-/

namespace A350064.P1673595079248783709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326641 n + A010178 (A008292 (2 * (n + 1))).toNat

end

end A350064.P1673595079248783709

/-! ## A350064.P2184841348332367307

`A088530(n+4)+A317838(A343371(n))%A181485(n+1)`
-/

namespace A350064.P2184841348332367307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088530 (n + 4) + Int.tmod (A317838 (A343371 n).toNat) (A181485 (n + 1))

end

end A350064.P2184841348332367307

/-! ## A350064.P3730185745134670544

`A078898(n)+A020639(A022916(n))`
-/

namespace A350064.P3730185745134670544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 n + A020639 (A022916 n).toNat

end

end A350064.P3730185745134670544

/-! ## A350064.P10377775579184631030

`A078898(n)+A046698(A000079(n))`
-/

namespace A350064.P10377775579184631030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 n + A046698 (A000079 n).toNat

end

end A350064.P10377775579184631030

/-!
# A350065: Lexicographically earliest infinite sequence such that a(i) = a(j) => A350063(i) = A350063(j), for all i, j >= 1.

The programs for A350065, there is no canonical definition to state claims against.
-/

/-! ## A350065.P6345721035740879041

`A084556(2^A350063(n+1))`
-/

namespace A350065.P6345721035740879041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084556 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A350063 (n + 1) : ℤ))).toNat

end

end A350065.P6345721035740879041

/-! ## A350065.P467580416917170482

`A235224(3^A350063(n+1))`
-/

namespace A350065.P467580416917170482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235224 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (A350063 (n + 1) : ℤ))).toNat

end

end A350065.P467580416917170482

/-! ## A350065.P14493669517584743789

`A034460(A175974(n+1))*A286544(A350063(n+1))`
-/

namespace A350065.P14493669517584743789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034460 (A175974 (n + 1)).toNat * A286544 (A350063 (n + 1)).toNat

end

end A350065.P14493669517584743789

/-! ## A350065.P17423411583767625691

`(A324117(n+1)+1)%A316855(n+3)`
-/

namespace A350065.P17423411583767625691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A324117 (n + 1) + 1) (A316855 (n + 3))

end

end A350065.P17423411583767625691

/-! ## A350065.P4163596838689580044

`A324117(n+1)%A270613(n+4)+1`
-/

namespace A350065.P4163596838689580044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A324117 (n + 1)) (A270613 (n + 4)) + 1

end

end A350065.P4163596838689580044

/-!
# A350066: Symmetric square array A(n,k) = A122111(A122111(n) * A122111(k)), n >= 1, k >= 1, read by antidiagonals.

The programs for A350066, the canonical program `A350066.P8673683015990190928` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A350066 has offset 1).

The definition of A350066 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A122111, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A350066.P8673683015990190928

`A122111(A122111(col(n)+1)*A122111(row(n)-col(n)+1))`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A350066

/-- `A122111(A122111(col(n)+1)*A122111(row(n)-col(n)+1))` -/
def P8673683015990190928.Spec : Prop :=
  ∀ n, P8673683015990190928.a n = A350066 (n + 1)

theorem P8673683015990190928.correct : P8673683015990190928.Spec := by
  intro n
  simp only [A350066, Nat.add_sub_cancel]

end A350066

/-! ## A350066.P16346419017079818902

`A122111(A122111(row(n)-col(n)+1)*A122111(col(n)+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A350066.P16346419017079818902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122111 (A122111 ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) + 1).toNat * A122111 (SequenceMachineLib.triCol n + 1)).toNat

end

end A350066.P16346419017079818902

namespace A350066

/-- `A122111(A122111(row(n)-col(n)+1)*A122111(col(n)+1))` -/
def P16346419017079818902.Spec : Prop :=
  ∀ n, P16346419017079818902.a n = A350066 (n + 1)

theorem P16346419017079818902.correct : P16346419017079818902.Spec := by
  intro n
  simp only [A350066, Nat.add_sub_cancel, A350066.P16346419017079818902.a, A350066.P8673683015990190928.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A350066

/-! ## A350066.P16556440081502696200

`comp[∑[n]]+A060502(A022168(n))-(n+2)`
-/

namespace A350066.P16556440081502696200
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) + (A060502 (A022168 n).toNat - (n + 2 : ℤ))

end

end A350066.P16556440081502696200

namespace A350066

/-- `comp[∑[n]]+A060502(A022168(n))-(n+2)` -/
def P16556440081502696200.Spec : Prop :=
  ∀ n, P16556440081502696200.a n = A350066 (n + 1)

end A350066

/-! ## A350066.P3733185226176659442

`A060502(A022168(n))+A003056(n)`
-/

namespace A350066.P3733185226176659442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060502 (A022168 n).toNat + A003056 n

end

end A350066.P3733185226176659442

namespace A350066

/-- `A060502(A022168(n))+A003056(n)` -/
def P3733185226176659442.Spec : Prop :=
  ∀ n, P3733185226176659442.a n = A350066 (n + 1)

end A350066

/-! ## A350066.P14695606071475383658

`A117707(n)+A060502(A022168(n))`
-/

namespace A350066.P14695606071475383658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117707 n + A060502 (A022168 n).toNat

end

end A350066.P14695606071475383658

namespace A350066

/-- `A117707(n)+A060502(A022168(n))` -/
def P14695606071475383658.Spec : Prop :=
  ∀ n, P14695606071475383658.a n = A350066 (n + 1)

end A350066

/-!
# A350067: Lexicographically earliest infinite sequence such that a(i) = a(j) => f(i) = f(j), where f(n) = [A342666(n), A350063(n)] for n > 1, with f(1) = 1.

The programs for A350067, there is no canonical definition to state claims against.
-/

/-! ## A350067.P1548864973795781291

`A095345(A306320(n))+∑{e}[n+1, #]`
-/

namespace A350067.P1548864973795781291
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095345 (A306320 n).toNat + ((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℤ)

end

end A350067.P1548864973795781291

/-! ## A350067.P2420703974749420858

`A073093(2*(n+1))-A160357(A005246(n))`
-/

namespace A350067.P2420703974749420858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073093 (2 * (n + 1)) - A160357 (A005246 n).toNat

end

end A350067.P2420703974749420858

/-! ## A350067.P17136904148437146602

`or(A320005(A107428(n+1)), A345874(n+1))`
-/

namespace A350067.P17136904148437146602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A320005 (A107428 (n + 1)).toNat) (A345874 (n + 1))

end

end A350067.P17136904148437146602

/-! ## A350067.P4847438380320787082

`A095345(A085587(n+3))+A001222(n+1)`
-/

namespace A350067.P4847438380320787082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095345 (A085587 (n + 3)).toNat + A001222 (n + 1)

end

end A350067.P4847438380320787082

/-! ## A350067.P6211988361799658867

`A322361(A124067(3*n+2))+A001222(n+1)`
-/

namespace A350067.P6211988361799658867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322361 (A124067 (3 * n + 2)).toNat + A001222 (n + 1)

end

end A350067.P6211988361799658867

/-!
# A350068: Lexicographically earliest infinite sequence such that a(i) = a(j) => A046523(i) = A046523(j) and A350063(i) = A350063(j), for all i, j >= 1.

The programs for A350068, there is no canonical definition to state claims against.
-/

/-! ## A350068.P3147336133179803717

`A159631((n+1)²*A016727(n))`
-/

namespace A350068.P3147336133179803717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159631 (((n + 1) ^ 2 : ℤ) * A016727 n).toNat

end

end A350068.P3147336133179803717

/-! ## A350068.P3552915551783806291

`A083891(A008278(3*n+5))+∑{d}[n+1, gcd(n, #)]`
-/

namespace A350068.P3552915551783806291
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083891 (A008278 (3 * n + 5)).toNat + ((∑ d ∈ Nat.divisors (f1 n), Nat.gcd n d : ℕ) : ℤ)

end

end A350068.P3552915551783806291

/-! ## A350068.P4840556603762427823

`or(A000005(A187829(n+1)), A281453(n))`
-/

namespace A350068.P4840556603762427823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000005 (A187829 (n + 1)).toNat) (A281453 n)

end

end A350068.P4840556603762427823

/-! ## A350068.P5643536327232612735

`A227835(A227847(n+1))+A000005(n+1)`
-/

namespace A350068.P5643536327232612735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227835 (A227847 (n + 1)).toNat + A000005 (n + 1)

end

end A350068.P5643536327232612735

/-! ## A350068.P16914970886371507667

`A378601(n+1)-A025466(A306200(n))`
-/

namespace A350068.P16914970886371507667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378601 (n + 1) - A025466 (A306200 n).toNat

end

end A350068.P16914970886371507667

/-!
# A350069: Semiprimes k such that 1+(2^(1+A243055(k))) is a Fermat prime, where A243055(k) gives the difference between the indices of the smallest and the largest prime divisor of k.

The programs for A350069, there is no canonical definition to state claims against.
-/

/-! ## A350069.P7163036309655239582

`eq[1, A342651(n+2)]+2`
-/

namespace A350069.P7163036309655239582
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342651 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A350069.P7163036309655239582

/-! ## A350069.P3331263357440362939

`eq[3, A350067(n+1)]+1`
-/

namespace A350069.P3331263357440362939
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350067 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A350069.P3331263357440362939

/-! ## A350069.P16287988810333345418

`eq[3, A350067(A028310(n))]`
-/

namespace A350069.P16287988810333345418
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350067 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A350069.P16287988810333345418

/-! ## A350069.P8161286425172883123

`eq[3, A350067(gcd(n, A008574(n)))]`
-/

namespace A350069.P8161286425172883123
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350067 (Int.gcd (n : ℤ) (A008574 n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A350069.P8161286425172883123

/-! ## A350069.P13651388597394235219

`eq[1, A342651(A233583(n+1))]`
-/

namespace A350069.P13651388597394235219
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342651 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A350069.P13651388597394235219

/-!
# A350070: a(n) = 1 if the maximal digit in the primorial base expansion of n is greater than or equal to the maximal exponent in the prime factorization of n, otherwise 0.

The programs for A350070, there is no canonical definition to state claims against.
-/

/-! ## A350070.P6506831700827407756

`ceil(sin(acot(A350074(n+1))))`
-/

namespace A350070.P6506831700827407756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sin (SequenceMachineLib.acot (A350074 (n + 1) : ℝ))⌉

end

end A350070.P6506831700827407756

/-! ## A350070.P9040562621683015098

`char[comp[A350075(n+1)-1]]`
-/

namespace A350070.P9040562621683015098
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350075 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A350070.P9040562621683015098

/-! ## A350070.P7906256043928349807

`floor(A350074(n+1)/A000040(n+1))+1`
-/

namespace A350070.P7906256043928349807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A350074 (n + 1) : ℚ) / (A000040 (n + 1) : ℚ)⌋ + 1

end

end A350070.P7906256043928349807

/-! ## A350070.P4156930821089555200

`floor(A350074(n+1)/A175046(n+1))+1`
-/

namespace A350070.P4156930821089555200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A350074 (n + 1) : ℚ) / (A175046 (n + 1) : ℚ)⌋ + 1

end

end A350070.P4156930821089555200

/-! ## A350070.P5921337305150726845

`floor(A350074(n+1)/A175271(n+1))+1`
-/

namespace A350070.P5921337305150726845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A350074 (n + 1) : ℚ) / (A175271 (n + 1) : ℚ)⌋ + 1

end

end A350070.P5921337305150726845

/-! ## A350070.P6764883254984794066

`floor(A057427(n)+A350074(n+1)/(n+1))`
-/

namespace A350070.P6764883254984794066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A057427 n : ℚ) + (A350074 (n + 1) : ℚ) / (n + 1 : ℚ)⌋

end

end A350070.P6764883254984794066

/-! ## A350070.P8929375254148430765

`floor(A350074(n+1)/A005843(n+4))+1`
-/

namespace A350070.P8929375254148430765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A350074 (n + 1) : ℚ) / (A005843 (n + 4) : ℚ)⌋ + 1

end

end A350070.P8929375254148430765

/-! ## A350070.P794542410210355810

`floor(A350074(n+1)/A343826(n+1))+1`
-/

namespace A350070.P794542410210355810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A350074 (n + 1) : ℚ) / (A343826 (n + 1) : ℚ)⌋ + 1

end

end A350070.P794542410210355810

/-! ## A350070.P6018616254717611391

`floor(A350074(n+1)/A066739(n+4))+1`
-/

namespace A350070.P6018616254717611391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A350074 (n + 1) : ℚ) / (A066739 (n + 4) : ℚ)⌋ + 1

end

end A350070.P6018616254717611391

/-! ## A350070.P2822131009460715208

`A010052(and(A169707(n+1), A350074(n+1)))`
-/

namespace A350070.P2822131009460715208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (Int.land (A169707 (n + 1)) (A350074 (n + 1))).toNat

end

end A350070.P2822131009460715208

/-!
# A350071: a(n) = gcd(sigma(n^2), A003961(n^2)), where A003961 shifts the prime factorization of n one step towards larger primes, and sigma is the sum of divisors function.

The programs for A350071, the canonical program `A350071.P10781101784728709574` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A350071 has offset 1).

The definition of A350071 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A350071.P3577132142077808181

`A065764(n+1)/A350072(n+1)`
-/

namespace A350071.P3577132142077808181
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A065764 (n + 1) : ℚ) / (A350072 (n + 1) : ℚ)

end

end A350071.P3577132142077808181

namespace A350071

/-- `A065764(n+1)/A350072(n+1)` -/
def P3577132142077808181.Spec : Prop :=
  ∀ n, P3577132142077808181.a n = (A350071 (n + 1) : ℚ)

end A350071

/-! ## A350071.P10910942891293575918

`A342671((n+1)²)`
-/

namespace A350071.P10910942891293575918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342671 ((n + 1) ^ 2)

end

end A350071.P10910942891293575918

namespace A350071

/-- `A342671((n+1)²)` -/
def P10910942891293575918.Spec : Prop :=
  ∀ n, P10910942891293575918.a n = A350071 (n + 1)

end A350071

/-! ## A350071.P10781101784728709574

`gcd(A000203((n+1)²), A003961((n+1)²))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A350071

/-- `gcd(A000203((n+1)²), A003961((n+1)²))` -/
def P10781101784728709574.Spec : Prop :=
  ∀ n, (P10781101784728709574.a n : ℤ) = A350071 (n + 1)

theorem P10781101784728709574.correct : P10781101784728709574.Spec := by
  intro n
  simp only [A350071, Nat.add_sub_cancel]

end A350071

/-! ## A350071.P16211556912432984740

`gcd(A003961(n+1)², A065764(n+1))`
-/

namespace A350071.P16211556912432984740
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003961 (n + 1) ^ 2) (A065764 (n + 1))

end

end A350071.P16211556912432984740

namespace A350071

/-- `gcd(A003961(n+1)², A065764(n+1))` -/
def P16211556912432984740.Spec : Prop :=
  ∀ n, (P16211556912432984740.a n : ℤ) = A350071 (n + 1)

end A350071

/-! ## A350071.P2815617216997616914

`A076401(A340698(n+1))/A350072(n+1)`
-/

namespace A350071.P2815617216997616914
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A076401 (A340698 (n + 1)).toNat : ℚ) / (A350072 (n + 1) : ℚ)

end

end A350071.P2815617216997616914

namespace A350071

/-- `A076401(A340698(n+1))/A350072(n+1)` -/
def P2815617216997616914.Spec : Prop :=
  ∀ n, P2815617216997616914.a n = (A350071 (n + 1) : ℚ)

end A350071

/-! ## A350071.P11292800858355471018

`A000203((n+1)²)/A350072(n+1)`
-/

namespace A350071.P11292800858355471018
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 ((n + 1) ^ 2) : ℚ) / (A350072 (n + 1) : ℚ)

end

end A350071.P11292800858355471018

namespace A350071

/-- `A000203((n+1)²)/A350072(n+1)` -/
def P11292800858355471018.Spec : Prop :=
  ∀ n, P11292800858355471018.a n = (A350071 (n + 1) : ℚ)

end A350071

/-! ## A350071.P17133960882175286030

`gcd(A000203((n+1)²), A045967(n+1))`
-/

namespace A350071.P17133960882175286030
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000203 ((n + 1) ^ 2)) (A045967 (n + 1))

end

end A350071.P17133960882175286030

namespace A350071

/-- `gcd(A000203((n+1)²), A045967(n+1))` -/
def P17133960882175286030.Spec : Prop :=
  ∀ n, (P17133960882175286030.a n : ℤ) = A350071 (n + 1)

end A350071

/-! ## A350071.P7750640548514272585

`A351544((n+1)²)`
-/

namespace A350071.P7750640548514272585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351544 ((n + 1) ^ 2)

end

end A350071.P7750640548514272585

namespace A350071

/-- `A351544((n+1)²)` -/
def P7750640548514272585.Spec : Prop :=
  ∀ n, P7750640548514272585.a n = A350071 (n + 1)

end A350071

/-! ## A350071.P11312658309629594635

`A003961(A349163((n+1)²))`
-/

namespace A350071.P11312658309629594635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (A349163 ((n + 1) ^ 2)).toNat

end

end A350071.P11312658309629594635

namespace A350071

/-- `A003961(A349163((n+1)²))` -/
def P11312658309629594635.Spec : Prop :=
  ∀ n, P11312658309629594635.a n = A350071 (n + 1)

end A350071

/-! ## A350071.P3319338260247789093

`A000265(A003961(A349163((n+1)*(n+1))))`
-/

namespace A350071.P3319338260247789093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A003961 (A349163 ((n + 1) * (n + 1))).toNat).toNat

end

end A350071.P3319338260247789093

namespace A350071

/-- `A000265(A003961(A349163((n+1)*(n+1))))` -/
def P3319338260247789093.Spec : Prop :=
  ∀ n, P3319338260247789093.a n = A350071 (n + 1)

end A350071

/-! ## A350071.P16372574111569067198

`A000265(A000265(A342671((n+1)*(n+1))))`
-/

namespace A350071.P16372574111569067198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A000265 (A342671 ((n + 1) * (n + 1))).toNat).toNat

end

end A350071.P16372574111569067198

namespace A350071

/-- `A000265(A000265(A342671((n+1)*(n+1))))` -/
def P16372574111569067198.Spec : Prop :=
  ∀ n, P16372574111569067198.a n = A350071 (n + 1)

end A350071

/-!
# A350072: a(n) = sigma(n^2) / gcd(sigma(n^2), A003961(n^2)), where A003961 shifts the prime factorization of n one step towards larger primes, and sigma is the sum of divisors function.

The programs for A350072, the canonical program `A350072.P17523638723638629591` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A350072 has offset 1).

The definition of A350072 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A349162, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A350072.P15064588047749725307

`A065764(n+1)/A350071(n+1)`
-/

namespace A350072.P15064588047749725307
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A065764 (n + 1) : ℚ) / (A350071 (n + 1) : ℚ)

end

end A350072.P15064588047749725307

namespace A350072

/-- `A065764(n+1)/A350071(n+1)` -/
def P15064588047749725307.Spec : Prop :=
  ∀ n, P15064588047749725307.a n = (A350072 (n + 1) : ℚ)

end A350072

/-! ## A350072.P17523638723638629591

`A349162((n+1)²)`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A350072

/-- `A349162((n+1)²)` -/
def P17523638723638629591.Spec : Prop :=
  ∀ n, P17523638723638629591.a n = A350072 (n + 1)

theorem P17523638723638629591.correct : P17523638723638629591.Spec := by
  intro n
  simp only [A350072, Nat.add_sub_cancel]

end A350072

/-! ## A350072.P10309567086587807440

`A000203((n+1)²)/gcd(A000203((n+1)²), A003961((n+1)²))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A350072.P10309567086587807440
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 ((n + 1) ^ 2) : ℚ) / (Int.gcd (A000203 ((n + 1) ^ 2)) (A003961 ((n + 1) ^ 2)) : ℚ)

end

end A350072.P10309567086587807440

namespace A350072

/-- `A000203((n+1)²)/gcd(A000203((n+1)²), A003961((n+1)²))` -/
def P10309567086587807440.Spec : Prop :=
  ∀ n, P10309567086587807440.a n = (A350072 (n + 1) : ℚ)

end A350072

/-! ## A350072.P891122242170348220

`(A086156(n+1)+A064987(n+1))/A350071(n+1)`
-/

namespace A350072.P891122242170348220
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A086156 (n + 1) + A064987 (n + 1) : ℚ) / (A350071 (n + 1) : ℚ)

end

end A350072.P891122242170348220

namespace A350072

/-- `(A086156(n+1)+A064987(n+1))/A350071(n+1)` -/
def P891122242170348220.Spec : Prop :=
  ∀ n, P891122242170348220.a n = (A350072 (n + 1) : ℚ)

end A350072

/-! ## A350072.P9553616017362670313

`A076401(A340698(n+1))/A350071(n+1)`
-/

namespace A350072.P9553616017362670313
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A076401 (A340698 (n + 1)).toNat : ℚ) / (A350071 (n + 1) : ℚ)

end

end A350072.P9553616017362670313

namespace A350072

/-- `A076401(A340698(n+1))/A350071(n+1)` -/
def P9553616017362670313.Spec : Prop :=
  ∀ n, P9553616017362670313.a n = (A350072 (n + 1) : ℚ)

end A350072

/-! ## A350072.P9361821233465110599

`A152677(A003152(n+1))/A350071(n+1)`
-/

namespace A350072.P9361821233465110599
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A152677 (A003152 (n + 1)).toNat : ℚ) / (A350071 (n + 1) : ℚ)

end

end A350072.P9361821233465110599

namespace A350072

/-- `A152677(A003152(n+1))/A350071(n+1)` -/
def P9361821233465110599.Spec : Prop :=
  ∀ n, P9361821233465110599.a n = (A350072 (n + 1) : ℚ)

end A350072

/-! ## A350072.P14214782200526314366

`A000203((n+1)²)/A350071(n+1)`
-/

namespace A350072.P14214782200526314366
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 ((n + 1) ^ 2) : ℚ) / (A350071 (n + 1) : ℚ)

end

end A350072.P14214782200526314366

namespace A350072

/-- `A000203((n+1)²)/A350071(n+1)` -/
def P14214782200526314366.Spec : Prop :=
  ∀ n, P14214782200526314366.a n = (A350072 (n + 1) : ℚ)

end A350072

/-! ## A350072.P10836650155916302226

`A348992((n+1)²)`
-/

namespace A350072.P10836650155916302226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348992 ((n + 1) ^ 2)

end

end A350072.P10836650155916302226

namespace A350072

/-- `A348992((n+1)²)` -/
def P10836650155916302226.Spec : Prop :=
  ∀ n, P10836650155916302226.a n = A350072 (n + 1)

end A350072

/-! ## A350072.P9436631244738716202

`A000265(A000265(A348992((n+1)*(n+1))))`
-/

namespace A350072.P9436631244738716202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A000265 (A348992 ((n + 1) * (n + 1))).toNat).toNat

end

end A350072.P9436631244738716202

namespace A350072

/-- `A000265(A000265(A348992((n+1)*(n+1))))` -/
def P9436631244738716202.Spec : Prop :=
  ∀ n, P9436631244738716202.a n = A350072 (n + 1)

end A350072

/-! ## A350072.P8866384605429372870

`A000265(A000265(A349162((n+1)*(n+1))))`
-/

namespace A350072.P8866384605429372870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A000265 (A349162 ((n + 1) * (n + 1))).toNat).toNat

end

end A350072.P8866384605429372870

namespace A350072

/-- `A000265(A000265(A349162((n+1)*(n+1))))` -/
def P8866384605429372870.Spec : Prop :=
  ∀ n, P8866384605429372870.a n = A350072 (n + 1)

end A350072

/-! ## A350072.P10959789862984826956

`A351546((n+1)²)`
-/

namespace A350072.P10959789862984826956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351546 ((n + 1) ^ 2)

end

end A350072.P10959789862984826956

namespace A350072

/-- `A351546((n+1)²)` -/
def P10959789862984826956.Spec : Prop :=
  ∀ n, P10959789862984826956.a n = A350072 (n + 1)

end A350072

/-! ## A350072.P15548033593643303554

`A000265(A000265(A351546((n+1)*(n+1))))`
-/

namespace A350072.P15548033593643303554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A000265 (A351546 ((n + 1) * (n + 1))).toNat).toNat

end

end A350072.P15548033593643303554

namespace A350072

/-- `A000265(A000265(A351546((n+1)*(n+1))))` -/
def P15548033593643303554.Spec : Prop :=
  ∀ n, P15548033593643303554.a n = A350072 (n + 1)

end A350072

/-! ## A350072.P10103422360059487623

`A065764(n+1)/A342671((n+1)²)`
-/

namespace A350072.P10103422360059487623
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A065764 (n + 1) : ℚ) / (A342671 ((n + 1) ^ 2) : ℚ)

end

end A350072.P10103422360059487623

namespace A350072

/-- `A065764(n+1)/A342671((n+1)²)` -/
def P10103422360059487623.Spec : Prop :=
  ∀ n, P10103422360059487623.a n = (A350072 (n + 1) : ℚ)

end A350072

/-!
# A350073: a(n) = A064989(sigma(n)), where A064989 is multiplicative with a(2^e) = 1 and a(p^e) = prevprime(p)^e for odd primes p.

The programs for A350073, the canonical program `A350073.P10296783642631124026` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A350073 has offset 1).

The definition of A350073 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064989, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A350073.P8763167161789736800

`A064989(A161942(n+1))`
-/

namespace A350073.P8763167161789736800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (A161942 (n + 1)).toNat

end

end A350073.P8763167161789736800

namespace A350073

/-- `A064989(A161942(n+1))` -/
def P8763167161789736800.Spec : Prop :=
  ∀ n, P8763167161789736800.a n = A350073 (n + 1)

end A350073

/-! ## A350073.P10296783642631124026

`A064989(A000203(n+1))`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A350073

/-- `A064989(A000203(n+1))` -/
def P10296783642631124026.Spec : Prop :=
  ∀ n, P10296783642631124026.a n = A350073 (n + 1)

theorem P10296783642631124026.correct : P10296783642631124026.Spec := by
  intro n
  simp only [A350073, Nat.add_sub_cancel]

end A350073

/-! ## A350073.P6455478343054173605

`A348993(n+1)*A349163(n+1)`
-/

namespace A350073.P6455478343054173605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348993 (n + 1) * A349163 (n + 1)

end

end A350073.P6455478343054173605

namespace A350073

/-- `A348993(n+1)*A349163(n+1)` -/
def P6455478343054173605.Spec : Prop :=
  ∀ n, P6455478343054173605.a n = A350073 (n + 1)

end A350073

/-! ## A350073.P10048365340850103110

`A353750(n+1)/A062401(n+1)`
-/

namespace A350073.P10048365340850103110
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A353750 (n + 1) : ℚ) / (A062401 (n + 1) : ℚ)

end

end A350073.P10048365340850103110

namespace A350073

/-- `A353750(n+1)/A062401(n+1)` -/
def P10048365340850103110.Spec : Prop :=
  ∀ n, P10048365340850103110.a n = (A350073 (n + 1) : ℚ)

end A350073

/-! ## A350073.P2405740658545222705

`A353792(n+1)/A351442(n+1)`
-/

namespace A350073.P2405740658545222705
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A353792 (n + 1) : ℚ) / (A351442 (n + 1) : ℚ)

end

end A350073.P2405740658545222705

namespace A350073

/-- `A353792(n+1)/A351442(n+1)` -/
def P2405740658545222705.Spec : Prop :=
  ∀ n, P2405740658545222705.a n = (A350073 (n + 1) : ℚ)

end A350073

/-! ## A350073.P14174300733002755745

`A064989(A342671(n+1))*A348993(n+1)`
-/

namespace A350073.P14174300733002755745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (A342671 (n + 1)).toNat * A348993 (n + 1)

end

end A350073.P14174300733002755745

namespace A350073

/-- `A064989(A342671(n+1))*A348993(n+1)` -/
def P14174300733002755745.Spec : Prop :=
  ∀ n, P14174300733002755745.a n = A350073 (n + 1)

end A350073

/-! ## A350073.P12338117026962540244

`A353750(n+1)/A000010(A000203(n+1))`
-/

namespace A350073.P12338117026962540244
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A353750 (n + 1) : ℚ) / (A000010 (A000203 (n + 1)).toNat : ℚ)

end

end A350073.P12338117026962540244

namespace A350073

/-- `A353750(n+1)/A000010(A000203(n+1))` -/
def P12338117026962540244.Spec : Prop :=
  ∀ n, P12338117026962540244.a n = (A350073 (n + 1) : ℚ)

end A350073

/-! ## A350073.P15632969225404068419

`(A353757(n+1)+A353749(n+1))/A062401(n+1)`
-/

namespace A350073.P15632969225404068419
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A353757 (n + 1) + A353749 (n + 1) : ℚ) / (A062401 (n + 1) : ℚ)

end

end A350073.P15632969225404068419

namespace A350073

/-- `(A353757(n+1)+A353749(n+1))/A062401(n+1)` -/
def P15632969225404068419.Spec : Prop :=
  ∀ n, P15632969225404068419.a n = (A350073 (n + 1) : ℚ)

end A350073

/-! ## A350073.P17213912617527228164

`∑{d}[A000203(n+1), A349127(#)]`
-/

namespace A350073.P17213912617527228164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A349127 d

end

end A350073.P17213912617527228164

namespace A350073

/-- `∑{d}[A000203(n+1), A349127(#)]` -/
def P17213912617527228164.Spec : Prop :=
  ∀ n, P17213912617527228164.a n = A350073 (n + 1)

end A350073

/-! ## A350073.P9216384231162248348

`A064989(A000593(n+1))*A064989(A038712(n+1))`
-/

namespace A350073.P9216384231162248348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (A000593 (n + 1)).toNat * A064989 (A038712 (n + 1)).toNat

end

end A350073.P9216384231162248348

namespace A350073

/-- `A064989(A000593(n+1))*A064989(A038712(n+1))` -/
def P9216384231162248348.Spec : Prop :=
  ∀ n, P9216384231162248348.a n = A350073 (n + 1)

end A350073

/-! ## A350073.P8204384224392394961

`A064989(A342671(n+1))*A064989(A348992(n+1))`
-/

namespace A350073.P8204384224392394961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (A342671 (n + 1)).toNat * A064989 (A348992 (n + 1)).toNat

end

end A350073.P8204384224392394961

namespace A350073

/-- `A064989(A342671(n+1))*A064989(A348992(n+1))` -/
def P8204384224392394961.Spec : Prop :=
  ∀ n, P8204384224392394961.a n = A350073 (n + 1)

end A350073

/-! ## A350073.P10936623981975392251

`A283463(A337194(n+1))`
-/

namespace A350073.P10936623981975392251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283463 (A337194 (n + 1)).toNat

end

end A350073.P10936623981975392251

namespace A350073

/-- `A283463(A337194(n+1))` -/
def P10936623981975392251.Spec : Prop :=
  ∀ n, P10936623981975392251.a n = A350073 (n + 1)

end A350073

/-! ## A350073.P13738403917576940984

`A064989(A337194(n+1)-1)`
-/

namespace A350073.P13738403917576940984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (A337194 (n + 1) - 1).toNat

end

end A350073.P13738403917576940984

namespace A350073

/-- `A064989(A337194(n+1)-1)` -/
def P13738403917576940984.Spec : Prop :=
  ∀ n, P13738403917576940984.a n = A350073 (n + 1)

end A350073

/-! ## A350073.P643875313409031637

`A064989(A354091(A354095(n+1)))`
-/

namespace A350073.P643875313409031637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (A354091 (A354095 (n + 1)).toNat).toNat

end

end A350073.P643875313409031637

namespace A350073

/-- `A064989(A354091(A354095(n+1)))` -/
def P643875313409031637.Spec : Prop :=
  ∀ n, P643875313409031637.a n = A350073 (n + 1)

end A350073

/-! ## A350073.P9808196781164398966

`A064989(A342671(n+1)*A348992(n+1))`
-/

namespace A350073.P9808196781164398966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (A342671 (n + 1) * A348992 (n + 1)).toNat

end

end A350073.P9808196781164398966

namespace A350073

/-- `A064989(A342671(n+1)*A348992(n+1))` -/
def P9808196781164398966.Spec : Prop :=
  ∀ n, P9808196781164398966.a n = A350073 (n + 1)

end A350073

/-! ## A350073.P14797693855049005577

`A064989(A092261(n+1))*A064989(A295294(n+1))`
-/

namespace A350073.P14797693855049005577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (A092261 (n + 1)).toNat * A064989 (A295294 (n + 1)).toNat

end

end A350073.P14797693855049005577

namespace A350073

/-- `A064989(A092261(n+1))*A064989(A295294(n+1))` -/
def P14797693855049005577.Spec : Prop :=
  ∀ n, P14797693855049005577.a n = A350073 (n + 1)

end A350073

/-! ## A350073.P8164585399079325501

`A064989(A349162(n+1))*A349163(n+1)`
-/

namespace A350073.P8164585399079325501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (A349162 (n + 1)).toNat * A349163 (n + 1)

end

end A350073.P8164585399079325501

namespace A350073

/-- `A064989(A349162(n+1))*A349163(n+1)` -/
def P8164585399079325501.Spec : Prop :=
  ∀ n, P8164585399079325501.a n = A350073 (n + 1)

end A350073

/-! ## A350073.P11059679429976650007

`A064989(A342671(n+1))*A064989(A349162(n+1))`
-/

namespace A350073.P11059679429976650007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (A342671 (n + 1)).toNat * A064989 (A349162 (n + 1)).toNat

end

end A350073.P11059679429976650007

namespace A350073

/-- `A064989(A342671(n+1))*A064989(A349162(n+1))` -/
def P11059679429976650007.Spec : Prop :=
  ∀ n, P11059679429976650007.a n = A350073 (n + 1)

end A350073

/-! ## A350073.P9222706285539726833

`A064989(∑{d}[n+1, #])`
-/

namespace A350073.P9222706285539726833
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (∑ d ∈ Nat.divisors (f1 n), d)

end

end A350073.P9222706285539726833

namespace A350073

/-- `A064989(∑{d}[n+1, #])` -/
def P9222706285539726833.Spec : Prop :=
  ∀ n, P9222706285539726833.a n = A350073 (n + 1)

end A350073

/-! ## A350073.P15341092868804462188

`A064989(A001065(n+1)+n+1)`
-/

namespace A350073.P15341092868804462188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (A001065 (n + 1) + (n + 1 : ℤ)).toNat

end

end A350073.P15341092868804462188

namespace A350073

/-- `A064989(A001065(n+1)+n+1)` -/
def P15341092868804462188.Spec : Prop :=
  ∀ n, P15341092868804462188.a n = A350073 (n + 1)

theorem P15341092868804462188.correct : P15341092868804462188.Spec := by
  intro n
  simp only [A350073, Nat.add_sub_cancel, A350073.P15341092868804462188.a, A350073.P10296783642631124026.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A001065, A001065.P4097147489331274860.a, A064989, A064989.P13349672914146769936.a, A008578, A008578.P3639467937083264764.a, A052126, A052126.P1944428405920482243.a, A061395, A061395.P8431317036300486107.a, A006530, A006530.P13372528560459906635.a, A029837, A029837.P1050578713049589.a, A087207, A087207.P12536008426233777954.a, A158611, A158611.P9275629407611603775.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A048675, A048675.P15792214674053257917.f1, A048675.P15792214674053257917.a, A070229, A070229.P5792893597916963980.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A350073

/-!
# A350074: Difference between the maximal digit in the primorial base expansion of n and the maximal exponent in the prime factorization of n.

The programs for A350074, there is no canonical definition to state claims against.
-/

/-! ## A350074.P10023156551574996477

`A328114(n+1)-A051903(n+1)`
-/

namespace A350074.P10023156551574996477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328114 (n + 1) - A051903 (n + 1)

end

end A350074.P10023156551574996477

/-! ## A350074.P10676971609959479750

`A051903(A276086(n+1))-A051903(n+1)`
-/

namespace A350074.P10676971609959479750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A276086 (n + 1)).toNat - A051903 (n + 1)

end

end A350074.P10676971609959479750

/-! ## A350074.P16469029323999080997

`A351074(n+1)-A342026(n+1)`
-/

namespace A350074.P16469029323999080997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351074 (n + 1) - A342026 (n + 1)

end

end A350074.P16469029323999080997

/-! ## A350074.P13106711081667169081

`A328114(n+1)-A007814(A046523(n+1))`
-/

namespace A350074.P13106711081667169081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328114 (n + 1) - A007814 (A046523 (n + 1)).toNat

end

end A350074.P13106711081667169081

/-! ## A350074.P14731467345897960840

`A328114(n+1)-A023443(A067132(n+1))`
-/

namespace A350074.P14731467345897960840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328114 (n + 1) - A023443 (A067132 (n + 1)).toNat

end

end A350074.P14731467345897960840

/-! ## A350074.P1121776551320306325

`A328114(n+1)-A061395(A181819(n+1))`
-/

namespace A350074.P1121776551320306325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328114 (n + 1) - A061395 (A181819 (n + 1)).toNat

end

end A350074.P1121776551320306325

/-! ## A350074.P8062369609924825525

`A328391(n+1)-(A342026(n+1)+A051903(n+1))`
-/

namespace A350074.P8062369609924825525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328391 (n + 1) - (A342026 (n + 1) + A051903 (n + 1))

end

end A350074.P8062369609924825525

/-! ## A350074.P6406633047586139718

`A328114(n+1)+A351074(n+1)-A328391(n+1)`
-/

namespace A350074.P6406633047586139718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328114 (n + 1) + (A351074 (n + 1) - A328391 (n + 1))

end

end A350074.P6406633047586139718

/-! ## A350074.P11880971026961717747

`A328114(n+1)+A351097(n+1)-A328390(n+1)`
-/

namespace A350074.P11880971026961717747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328114 (n + 1) + (A351097 (n + 1) - A328390 (n + 1))

end

end A350074.P11880971026961717747

/-!
# A350075: Numbers whose maximal digit in their primorial base expansion is less than the maximal exponent in their prime factorization.

The programs for A350075, there is no canonical definition to state claims against.
-/

/-! ## A350075.P6242659287619012558

`eq[0, A350070(n+1)]+1`
-/

namespace A350075.P6242659287619012558
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350070 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A350075.P6242659287619012558

/-! ## A350075.P7607460940838918031

`eq[0, A350070(A028310(n))]`
-/

namespace A350075.P7607460940838918031
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350070 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A350075.P7607460940838918031

/-! ## A350075.P4879647872198396361

`A065475(eq[0, A350070(n+1)])`
-/

namespace A350075.P4879647872198396361
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350070 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A350075.P4879647872198396361

/-! ## A350075.P7927032669908994390

`eq[0, A350070(A138153(n+1))]`
-/

namespace A350075.P7927032669908994390
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350070 (A138153 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A350075.P7927032669908994390

/-! ## A350075.P7151781679572164811

`eq[0, A350070(A123108(2*n))]`
-/

namespace A350075.P7151781679572164811
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350070 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A350075.P7151781679572164811

/-! ## A350075.P7837463906743561005

`eq[0, A350070(A233583(n+1))]`
-/

namespace A350075.P7837463906743561005
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350070 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A350075.P7837463906743561005

/-!
# A350076: Numbers k for which the maximal digit in their primorial base expansion (A328114) is greater than or equal to the maximal exponent in the prime factorization of k (A051903).

The programs for A350076, there is no canonical definition to state claims against.
-/

/-! ## A350076.P15893092858863929523

`lt[0, A350070(n+1)]+1`
-/

namespace A350076.P15893092858863929523
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350070 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A350076.P15893092858863929523

/-! ## A350076.P5366217861422146418

`lt[-1, A350074(n+1)]+1`
-/

namespace A350076.P5366217861422146418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350074 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A350076.P5366217861422146418

/-! ## A350076.P3202616929524837575

`record[(n+1)*A350070(2*n+1-n)]`
-/

namespace A350076.P3202616929524837575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A350070 (2 * n + 1 - n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A350076.P3202616929524837575

/-! ## A350076.P602420572414805052

`record[A005843(n)*A350070(n+1)-(n-1)]`
-/

namespace A350076.P602420572414805052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n * A350070 (n + 1) - ((n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A350076.P602420572414805052

/-! ## A350076.P10160742409068607429

`lt[acot(n), A350070(A028310(n))]`
-/

namespace A350076.P10160742409068607429
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (n : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350070 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A350076.P10160742409068607429

/-! ## A350076.P9180792278883174140

`eq[gcd(n+1, A000040(n+1)), A350070(n+1)]+1`
-/

namespace A350076.P9180792278883174140
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A000040 (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350070 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A350076.P9180792278883174140

/-! ## A350076.P4416901136374426992

`eq[char[A350075(n+1)], A000007(n)]`
-/

namespace A350076.P4416901136374426992
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350075 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A350076.P4416901136374426992

/-! ## A350076.P17346078458680002561

`eq[char[A350075(n+1)], A000038(n)]`
-/

namespace A350076.P17346078458680002561
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350075 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A350076.P17346078458680002561

/-!
# A350078: Irregular triangle read by rows: T(n,k) is the number of endofunctions on [n] whose second-largest component has size exactly k; n >= 0, 0 <= k <= floor(n/2).

The programs for A350078, there is no canonical definition to state claims against.
-/

/-! ## A350078.P4962261593549206364

`A082404(A052558(n))-A327883(n)`
-/

namespace A350078.P4962261593549206364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082404 (A052558 n).toNat - A327883 n

end

end A350078.P4962261593549206364

/-! ## A350078.P543523952859546523

`A056156(n+2)-A236510(A038193(n+2))`
-/

namespace A350078.P543523952859546523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056156 (n + 2) - A236510 (A038193 (n + 2)).toNat

end

end A350078.P543523952859546523

/-!
# A350080: Irregular triangle read by rows: T(n,k) is the number of endofunctions on [n] whose third-largest component has size exactly k; n >= 0, 0 <= k <= floor(n/3).

The programs for A350080, there is no canonical definition to state claims against.
-/

/-! ## A350080.P3889283305348622976

`A350081(A001222(7^n))`
-/

namespace A350080.P3889283305348622976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350081 (A001222 (7 ^ n)).toNat

end

end A350080.P3889283305348622976

/-! ## A350080.P4246234614222575834

`A350081(A018235(n)+n)`
-/

namespace A350080.P4246234614222575834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350081 (A018235 n + (n : ℤ)).toNat

end

end A350080.P4246234614222575834

/-!
# A350083: a(n) = (A006935(n) - 1) / ord(2,A006935(n)/2), where ord(k,m) is the multiplicative order of k modulo m.

The programs for A350083, there is no canonical definition to state claims against.
-/

/-! ## A350083.P4392873243665681253

`(A006935(n+1)-1)/A350084(n+1)`
-/

namespace A350083.P4392873243665681253
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006935 (n + 1) - 1 : ℚ) / (A350084 (n + 1) : ℚ)

end

end A350083.P4392873243665681253

/-!
# A350084: a(n) = ord(2,A006935(n)/2), where ord(k,m) is the multiplicative order of k modulo m.

The programs for A350084, there is no canonical definition to state claims against.
-/

/-! ## A350084.P7857604372384286103

`(A006935(n+1)-1)/A350083(n+1)`
-/

namespace A350084.P7857604372384286103
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006935 (n + 1) - 1 : ℚ) / (A350083 (n + 1) : ℚ)

end

end A350084.P7857604372384286103

/-!
# A350085: a(n) is the smallest totient number k > 1 such that A007617(n)*k is a nontotient number, or 0 if no such number exists.

The programs for A350085, there is no canonical definition to state claims against.
-/

/-! ## A350085.P5664224981037945604

`A361058(A007617(n+1))`
-/

namespace A350085.P5664224981037945604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361058 (A007617 (n + 1)).toNat

end

end A350085.P5664224981037945604

/-! ## A350085.P810318358459089595

`A361058(A231773(n+1))`
-/

namespace A350085.P810318358459089595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361058 (A231773 (n + 1)).toNat

end

end A350085.P810318358459089595

/-! ## A350085.P8047435136930145496

`A361058(eq[0, A231772(n)])`
-/

namespace A350085.P8047435136930145496
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231772 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361058 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A350085.P8047435136930145496

/-! ## A350085.P7012569163149123474

`A361058(lt[A027642(n), n])`
-/

namespace A350085.P7012569163149123474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027642 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361058 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A350085.P7012569163149123474

/-! ## A350085.P16583927599013590086

`A361058(eq[1, A316665(n+1)]+1)`
-/

namespace A350085.P16583927599013590086
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316665 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361058 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A350085.P16583927599013590086

/-!
# A350086: a(n) is the smallest totient number k > 1 such that A005277(n)*k is a nontotient number, or 0 if no such number exists.

The programs for A350086, there is no canonical definition to state claims against.
-/

/-! ## A350086.P12133088110452281731

`A350085(A079695(n+1)+n)`
-/

namespace A350086.P12133088110452281731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350085 (A079695 (n + 1) + (n : ℤ)).toNat

end

end A350086.P12133088110452281731

/-! ## A350086.P17756164901491749056

`A350085(A180639(A005277(n+1)))`
-/

namespace A350086.P17756164901491749056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350085 (A180639 (A005277 (n + 1)).toNat).toNat

end

end A350086.P17756164901491749056

/-!
# A350090: a(n) is the number of indices i in the range 0 <= i <= n-1 such that A003215(n) - A003215(i) is an oblong number (A002378), where A003215 are the hex numbers.

The programs for A350090, the canonical program `A350090.P13885599348416703739` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A350090 has offset 0).

The definition of A350090 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A350090.P13885599348416703739

`A000005(3*n*n+3*n+1)-1`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A350090

/-- `A000005(3*n*n+3*n+1)-1` -/
def P13885599348416703739.Spec : Prop :=
  ∀ n, P13885599348416703739.a n = A350090 n

theorem P13885599348416703739.correct : P13885599348416703739.Spec := by
  intro n
  simp only [A350090]

end A350090

/-! ## A350090.P16422779794753910315

`∑{d}[Δ[n^3], floor(atan(#))]`
-/

namespace A350090.P16422779794753910315
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, ⌊Real.arctan (d : ℝ)⌋

end

end A350090.P16422779794753910315

namespace A350090

/-- `∑{d}[Δ[n^3], floor(atan(#))]` -/
def P16422779794753910315.Spec : Prop :=
  ∀ n, P16422779794753910315.a n = A350090 n

end A350090

/-! ## A350090.P11088526424131337386

`∏{e}[Δ[n^3], #+1]-1`
-/

namespace A350090.P11088526424131337386
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1) : ℕ) : ℤ) - 1

end

end A350090.P11088526424131337386

namespace A350090

/-- `∏{e}[Δ[n^3], #+1]-1` -/
def P11088526424131337386.Spec : Prop :=
  ∀ n, P11088526424131337386.a n = A350090 n

end A350090

/-! ## A350090.P13557305802705274865

`∑{d}[Δ[A000578(n)], (6%#²)%5]`
-/

namespace A350090.P13557305802705274865
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, 6 % d ^ 2 % 5

end

end A350090.P13557305802705274865

namespace A350090

/-- `∑{d}[Δ[A000578(n)], (6%#²)%5]` -/
def P13557305802705274865.Spec : Prop :=
  ∀ n, (P13557305802705274865.a n : ℤ) = A350090 n

end A350090

/-! ## A350090.P4858361576687552605

`and(15, ∏{e}[A077043(2*n+1), #+1]-1)`
-/

namespace A350090.P4858361576687552605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077043 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 15 (((∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1) : ℕ) : ℤ) - 1)

end

end A350090.P4858361576687552605

namespace A350090

/-- `and(15, ∏{e}[A077043(2*n+1), #+1]-1)` -/
def P4858361576687552605.Spec : Prop :=
  ∀ n, P4858361576687552605.a n = A350090 n

end A350090

/-! ## A350090.P14004933592689991577

`abs(1-A000005(3*(n²+n)+1))`
-/

namespace A350090.P14004933592689991577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A000005 (3 * (n ^ 2 + n) + 1)|

end

end A350090.P14004933592689991577

namespace A350090

/-- `abs(1-A000005(3*(n²+n)+1))` -/
def P14004933592689991577.Spec : Prop :=
  ∀ n, P14004933592689991577.a n = A350090 n

end A350090

/-! ## A350090.P12761865166460888190

`1-4/2+A000005(Δ[n*n²])`
-/

namespace A350090.P12761865166460888190
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 - (4 : ℚ) / 2 + (A000005 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ)

end

end A350090.P12761865166460888190

namespace A350090

/-- `1-4/2+A000005(Δ[n*n²])` -/
def P12761865166460888190.Spec : Prop :=
  ∀ n, P12761865166460888190.a n = (A350090 n : ℚ)

end A350090

/-! ## A350090.P2982600918132328834

`A002837(A000005(Δ[n^3]))`
-/

namespace A350090.P2982600918132328834
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002837 (A000005 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat

end

end A350090.P2982600918132328834

namespace A350090

/-- `A002837(A000005(Δ[n^3]))` -/
def P2982600918132328834.Spec : Prop :=
  ∀ n, P2982600918132328834.a n = A350090 n

end A350090

/-! ## A350090.P691549035720374811

`A023443(A000005(Δ[n*n²]))`
-/

namespace A350090.P691549035720374811
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A000005 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat

end

end A350090.P691549035720374811

namespace A350090

/-- `A023443(A000005(Δ[n*n²]))` -/
def P691549035720374811.Spec : Prop :=
  ∀ n, P691549035720374811.a n = A350090 n

end A350090

/-! ## A350090.P5235717762883273746

`abs(A000005(A056106(n)+4*n)-1)`
-/

namespace A350090.P5235717762883273746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000005 (A056106 n + (4 * n : ℤ)).toNat - 1|

end

end A350090.P5235717762883273746

namespace A350090

/-- `abs(A000005(A056106(n)+4*n)-1)` -/
def P5235717762883273746.Spec : Prop :=
  ∀ n, P5235717762883273746.a n = A350090 n

end A350090

/-! ## A350090.P5284044239603210773

`(24*n+23)%A000005(∑[A008458(n)])`
-/

namespace A350090.P5284044239603210773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (24 * n + 23 : ℤ) (A000005 (∑ j ∈ Finset.range (n + 1), f1 j).toNat)

end

end A350090.P5284044239603210773

namespace A350090

/-- `(24*n+23)%A000005(∑[A008458(n)])` -/
def P5284044239603210773.Spec : Prop :=
  ∀ n, P5284044239603210773.a n = A350090 n

end A350090

/-! ## A350090.P4923620013354972455

`A211261(Δ[n^3])`
-/

namespace A350090.P4923620013354972455
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211261 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A350090.P4923620013354972455

namespace A350090

/-- `A211261(Δ[n^3])` -/
def P4923620013354972455.Spec : Prop :=
  ∀ n, P4923620013354972455.a n = A350090 n

end A350090

/-! ## A350090.P17103712893423262945

`A211270(Δ[n^3])`
-/

namespace A350090.P17103712893423262945
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211270 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A350090.P17103712893423262945

namespace A350090

/-- `A211270(Δ[n^3])` -/
def P17103712893423262945.Spec : Prop :=
  ∀ n, P17103712893423262945.a n = A350090 n

end A350090

/-! ## A350090.P14405353675956173072

`A305611(Δ[n^3])`
-/

namespace A350090.P14405353675956173072
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305611 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A350090.P14405353675956173072

namespace A350090

/-- `A305611(Δ[n^3])` -/
def P14405353675956173072.Spec : Prop :=
  ∀ n, P14405353675956173072.a n = A350090 n

end A350090

/-! ## A350090.P3087226647267889182

`A320001(Δ[n^3])`
-/

namespace A350090.P3087226647267889182
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320001 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A350090.P3087226647267889182

namespace A350090

/-- `A320001(Δ[n^3])` -/
def P3087226647267889182.Spec : Prop :=
  ∀ n, P3087226647267889182.a n = A350090 n

end A350090

/-! ## A350090.P10132212648189778768

`A320015(Δ[n^3])`
-/

namespace A350090.P10132212648189778768
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320015 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A350090.P10132212648189778768

namespace A350090

/-- `A320015(Δ[n^3])` -/
def P10132212648189778768.Spec : Prop :=
  ∀ n, P10132212648189778768.a n = A350090 n

end A350090

/-! ## A350090.P15764148851065151004

`A325937(Δ[n^3])`
-/

namespace A350090.P15764148851065151004
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325937 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A350090.P15764148851065151004

namespace A350090

/-- `A325937(Δ[n^3])` -/
def P15764148851065151004.Spec : Prop :=
  ∀ n, P15764148851065151004.a n = A350090 n

end A350090

/-! ## A350090.P13402045331724403031

`A097195(∑[n])-1`
-/

namespace A350090.P13402045331724403031
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097195 (∑ j ∈ Finset.range (n + 1), f1 j) - 1

end

end A350090.P13402045331724403031

namespace A350090

/-- `A097195(∑[n])-1` -/
def P13402045331724403031.Spec : Prop :=
  ∀ n, P13402045331724403031.a n = A350090 n

end A350090

/-!
# A350091: a(n) = a(floor(n/4)) for n == 2 (mod 4), otherwise n.

The programs for A350091, the canonical program `A350091.P9691971184485335330` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A350091 has offset 0).

The definition of A350091 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A347840, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A350091.P9691971184485335330

`(A347840(n+1)-1)/2`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A350091

/-- `(A347840(n+1)-1)/2` -/
def P9691971184485335330.Spec : Prop :=
  ∀ n, P9691971184485335330.a n = (A350091 n : ℚ)

end A350091

/-! ## A350091.P3862775244401877827

`n%A075677(n+1)`
-/

namespace A350091.P3862775244401877827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n : ℤ) (A075677 (n + 1))

end

end A350091.P3862775244401877827

namespace A350091

/-- `n%A075677(n+1)` -/
def P3862775244401877827.Spec : Prop :=
  ∀ n, P3862775244401877827.a n = A350091 n

end A350091

/-! ## A350091.P3827406472707629585

`(4*n+2)%A000265(3*n+2)`
-/

namespace A350091.P3827406472707629585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (4 * n + 2 : ℤ) (A000265 (3 * n + 2))

end

end A350091.P3827406472707629585

namespace A350091

/-- `(4*n+2)%A000265(3*n+2)` -/
def P3827406472707629585.Spec : Prop :=
  ∀ n, P3827406472707629585.a n = A350091 n

end A350091

/-! ## A350091.P5123524556178248803

`A246425(A347840(n+1))-1`
-/

namespace A350091.P5123524556178248803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246425 (A347840 (n + 1)).toNat - 1

end

end A350091.P5123524556178248803

namespace A350091

/-- `A246425(A347840(n+1))-1` -/
def P5123524556178248803.Spec : Prop :=
  ∀ n, P5123524556178248803.a n = A350091 n

end A350091

/-! ## A350091.P4816626552950234903

`A173732(n)-A329480(n+1)`
-/

namespace A350091.P4816626552950234903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173732 n - A329480 (n + 1)

end

end A350091.P4816626552950234903

namespace A350091

/-- `A173732(n)-A329480(n+1)` -/
def P4816626552950234903.Spec : Prop :=
  ∀ n, P4816626552950234903.a n = A350091 n

end A350091

/-! ## A350091.P673328964894035313

`floor(A065883(3*n+2)/3)`
-/

namespace A350091.P673328964894035313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A065883 (3 * n + 2) : ℚ) / 3⌋

end

end A350091.P673328964894035313

namespace A350091

/-- `floor(A065883(3*n+2)/3)` -/
def P673328964894035313.Spec : Prop :=
  ∀ n, P673328964894035313.a n = A350091 n

end A350091

/-! ## A350091.P4958712275274779506

`A367286(A173732(n))`
-/

namespace A350091.P4958712275274779506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367286 (A173732 n).toNat

end

end A350091.P4958712275274779506

namespace A350091

/-- `A367286(A173732(n))` -/
def P4958712275274779506.Spec : Prop :=
  ∀ n, P4958712275274779506.a n = A350091 n

end A350091

/-! ## A350091.P15012902302778622235

`abs(-n%A067745(2*(n+1)))`
-/

namespace A350091.P15012902302778622235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (-(n : ℤ)) (A067745 (2 * (n + 1)))|

end

end A350091.P15012902302778622235

namespace A350091

/-- `abs(-n%A067745(2*(n+1)))` -/
def P15012902302778622235.Spec : Prop :=
  ∀ n, P15012902302778622235.a n = A350091 n

end A350091

/-! ## A350091.P17049034714735702564

`round(sqrt(n²+1))%A139391(Δ[n²])`
-/

namespace A350091.P17049034714735702564
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))) (A139391 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat)

end

end A350091.P17049034714735702564

namespace A350091

/-- `round(sqrt(n²+1))%A139391(Δ[n²])` -/
def P17049034714735702564.Spec : Prop :=
  ∀ n, P17049034714735702564.a n = A350091 n

end A350091

/-! ## A350091.P676074924438060648

`A004524(A347840(n+1))`
-/

namespace A350091.P676074924438060648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A347840 (n + 1)).toNat

end

end A350091.P676074924438060648

namespace A350091

/-- `A004524(A347840(n+1))` -/
def P676074924438060648.Spec : Prop :=
  ∀ n, P676074924438060648.a n = A350091 n

end A350091

/-! ## A350091.P17748419133401470095

`A006370(A347840(n+1)-1)`
-/

namespace A350091.P17748419133401470095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 (A347840 (n + 1) - 1).toNat

end

end A350091.P17748419133401470095

namespace A350091

/-- `A006370(A347840(n+1)-1)` -/
def P17748419133401470095.Spec : Prop :=
  ∀ n, P17748419133401470095.a n = A350091 n

end A350091

/-! ## A350091.P928063567884898996

`A324245(2*A347840(n+1))`
-/

namespace A350091.P928063567884898996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324245 (2 * A347840 (n + 1)).toNat

end

end A350091.P928063567884898996

namespace A350091

/-- `A324245(2*A347840(n+1))` -/
def P928063567884898996.Spec : Prop :=
  ∀ n, P928063567884898996.a n = A350091 n

end A350091

/-! ## A350091.P9582943527959518570

`A006370(A385109(2*n+1)-1)`
-/

namespace A350091.P9582943527959518570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 (A385109 (2 * n + 1) - 1).toNat

end

end A350091.P9582943527959518570

namespace A350091

/-- `A006370(A385109(2*n+1)-1)` -/
def P9582943527959518570.Spec : Prop :=
  ∀ n, P9582943527959518570.a n = A350091 n

end A350091

/-! ## A350091.P12446847107644382821

`A324245(A347840(n+1)+A347840(n+1))`
-/

namespace A350091.P12446847107644382821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324245 (A347840 (n + 1) + A347840 (n + 1)).toNat

end

end A350091.P12446847107644382821

namespace A350091

/-- `A324245(A347840(n+1)+A347840(n+1))` -/
def P12446847107644382821.Spec : Prop :=
  ∀ n, P12446847107644382821.a n = A350091 n

end A350091

/-! ## A350091.P6308559476945102335

`floor(n/A234957(3*n+2))`
-/

namespace A350091.P6308559476945102335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / (A234957 (3 * n + 2) : ℚ)⌋

end

end A350091.P6308559476945102335

namespace A350091

/-- `floor(n/A234957(3*n+2))` -/
def P6308559476945102335.Spec : Prop :=
  ∀ n, P6308559476945102335.a n = A350091 n

end A350091

/-! ## A350091.P10867771059045838149

`(2*n-n)%A065330(6*n+4)`
-/

namespace A350091.P10867771059045838149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((2 * n : ℤ) - (n : ℤ)) (A065330 (6 * n + 4))

end

end A350091.P10867771059045838149

namespace A350091

/-- `(2*n-n)%A065330(6*n+4)` -/
def P10867771059045838149.Spec : Prop :=
  ∀ n, P10867771059045838149.a n = A350091 n

end A350091

/-!
# A350092: a(n) = floor(x^n) where x = 1 + sqrt(5)/2 = A176055.

The programs for A350092, the canonical program `A350092.P369856593925286723` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A350092 has offset 0).

The definition of A350092 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 307 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A350092.P369856593925286723

`floor((ϕ+1/2)^n)`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A350092

/-- `floor((ϕ+1/2)^n)` -/
def P369856593925286723.Spec : Prop :=
  ∀ n, P369856593925286723.a n = A350092 n

theorem P369856593925286723.correct : P369856593925286723.Spec := by
  intro n
  simp only [A350092]

end A350092

/-!
# A350093: a(n) = Sum_{k=0..n} n OR k where OR is the bitwise logical OR operator (A003986).

The programs for A350093, the canonical program `A350093.P14782896136260405665` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A350093 has offset 0).

The definition of A350093 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001196, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A350093.P14782896136260405665

`((3*n+2)*n+A001196(n))/4`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A350093

/-- `((3*n+2)*n+A001196(n))/4` -/
def P14782896136260405665.Spec : Prop :=
  ∀ n, P14782896136260405665.a n = (A350093 n : ℚ)

end A350093

/-! ## A350093.P13954462360780102390

`A222423(n)+A224915(n)`
-/

namespace A350093.P13954462360780102390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222423 n + A224915 n

end

end A350093.P13954462360780102390

namespace A350093

/-- `A222423(n)+A224915(n)` -/
def P13954462360780102390.Spec : Prop :=
  ∀ n, P13954462360780102390.a n = A350093 n

end A350093

/-! ## A350093.P12593698350019238678

`(A045943(n)+A224915(n))/2`
-/

namespace A350093.P12593698350019238678
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045943 n + A224915 n : ℚ) / 2

end

end A350093.P12593698350019238678

namespace A350093

/-- `(A045943(n)+A224915(n))/2` -/
def P12593698350019238678.Spec : Prop :=
  ∀ n, P12593698350019238678.a n = (A350093 n : ℚ)

end A350093

/-! ## A350093.P1813822110870134143

`∑[(and(n, -n)²+3*n)/2]`
-/

namespace A350093.P1813822110870134143
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land (n : ℤ) (-(n : ℤ)) ^ 2 + (3 * n : ℤ) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A350093.P1813822110870134143

namespace A350093

/-- `∑[(and(n, -n)²+3*n)/2]` -/
def P1813822110870134143.Spec : Prop :=
  ∀ n, P1813822110870134143.a n = (A350093 n : ℚ)

end A350093

/-! ## A350093.P11948134158191695842

`∑[n]+∑[(and(n, -n)²-n)/2]+∑[n]`
-/

namespace A350093.P11948134158191695842
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land (n : ℤ) (-(n : ℤ)) ^ 2 - (n : ℤ) : ℚ) / 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) + (∑ j ∈ Finset.range (n + 1), f2 j + ((∑ j ∈ Finset.range (n + 1), f3 j : ℕ) : ℚ))

end

end A350093.P11948134158191695842

namespace A350093

/-- `∑[n]+∑[(and(n, -n)²-n)/2]+∑[n]` -/
def P11948134158191695842.Spec : Prop :=
  ∀ n, P11948134158191695842.a n = (A350093 n : ℚ)

end A350093

/-! ## A350093.P9387854809238456937

`A350094(n)+∑[2*n]`
-/

namespace A350093.P9387854809238456937
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350094 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A350093.P9387854809238456937

namespace A350093

/-- `A350094(n)+∑[2*n]` -/
def P9387854809238456937.Spec : Prop :=
  ∀ n, P9387854809238456937.a n = A350093 n

end A350093

/-! ## A350093.P898308984664755602

`n²+∑[n]-3*A213673(n)`
-/

namespace A350093.P898308984664755602
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) + (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 3 * A213673 n)

end

end A350093.P898308984664755602

namespace A350093

/-- `n²+∑[n]-3*A213673(n)` -/
def P898308984664755602.Spec : Prop :=
  ∀ n, P898308984664755602.a n = A350093 n

end A350093

/-! ## A350093.P2435202805356476687

`A332206(n)+A006578(n)`
-/

namespace A350093.P2435202805356476687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332206 n + A006578 n

end

end A350093.P2435202805356476687

namespace A350093

/-- `A332206(n)+A006578(n)` -/
def P2435202805356476687.Spec : Prop :=
  ∀ n, P2435202805356476687.a n = A350093 n

end A350093

/-! ## A350093.P16218842080655109965

`A045943(n)-A222423(n)`
-/

namespace A350093.P16218842080655109965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045943 n - A222423 n

end

end A350093.P16218842080655109965

namespace A350093

/-- `A045943(n)-A222423(n)` -/
def P16218842080655109965.Spec : Prop :=
  ∀ n, P16218842080655109965.a n = A350093 n

end A350093

/-! ## A350093.P7804453010237488802

`A332206(n)+∑[A032766(n)]`
-/

namespace A350093.P7804453010237488802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332206 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A350093.P7804453010237488802

namespace A350093

/-- `A332206(n)+∑[A032766(n)]` -/
def P7804453010237488802.Spec : Prop :=
  ∀ n, P7804453010237488802.a n = A350093 n

end A350093

/-! ## A350093.P4627805430486568617

`∑[2*n+A140472(n²)-∑[n]]`
-/

namespace A350093.P4627805430486568617
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) + (A140472 (n ^ 2) - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A350093.P4627805430486568617

namespace A350093

/-- `∑[2*n+A140472(n²)-∑[n]]` -/
def P4627805430486568617.Spec : Prop :=
  ∀ n, P4627805430486568617.a n = A350093 n

end A350093

/-!
# A350094: a(n) = Sum_{k=0..n} n CNIMPL k where CNIMPL = NOT(n) AND k is the bitwise logical converse non-implication operator (A102037).

The programs for A350094, the canonical program `A350094.P14552447069989124011` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A350094 has offset 0).

The definition of A350094 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001196, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A350094.P14552447069989124011

`(A001196(n)-n*(n+2))/4`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A350094

/-- `(A001196(n)-n*(n+2))/4` -/
def P14552447069989124011.Spec : Prop :=
  ∀ n, P14552447069989124011.a n = (A350094 n : ℚ)

end A350094

/-! ## A350094.P754137610445351295

`∑[(and(n, -n)²-n)/2]`
-/

namespace A350094.P754137610445351295
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land (n : ℤ) (-(n : ℤ)) ^ 2 - (n : ℤ) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A350094.P754137610445351295

namespace A350094

/-- `∑[(and(n, -n)²-n)/2]` -/
def P754137610445351295.Spec : Prop :=
  ∀ n, P754137610445351295.a n = (A350094 n : ℚ)

end A350094

/-! ## A350094.P411391191115480012

`∑[(or(n, -n)²-n)/2]`
-/

namespace A350094.P411391191115480012
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lor (n : ℤ) (-(n : ℤ)) ^ 2 - (n : ℤ) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A350094.P411391191115480012

namespace A350094

/-- `∑[(or(n, -n)²-n)/2]` -/
def P411391191115480012.Spec : Prop :=
  ∀ n, P411391191115480012.a n = (A350094 n : ℚ)

end A350094

/-! ## A350094.P17726914252191882666

`∑[xor(n, -n)²/8-n/2]`
-/

namespace A350094.P17726914252191882666
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.xor (n : ℤ) (-(n : ℤ)) ^ 2 : ℚ) / 8 - (n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A350094.P17726914252191882666

namespace A350094

/-- `∑[xor(n, -n)²/8-n/2]` -/
def P17726914252191882666.Spec : Prop :=
  ∀ n, P17726914252191882666.a n = (A350094 n : ℚ)

end A350094

/-! ## A350094.P7191276412693680692

`∑[n]-A222423(n)`
-/

namespace A350094.P7191276412693680692
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A222423 n

end

end A350094.P7191276412693680692

namespace A350094

/-- `∑[n]-A222423(n)` -/
def P7191276412693680692.Spec : Prop :=
  ∀ n, P7191276412693680692.a n = A350094 n

end A350094

/-! ## A350094.P16163078712713890832

`(A224915(n)-∑[n])/2`
-/

namespace A350094.P16163078712713890832
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A224915 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) : ℚ) / 2

end

end A350094.P16163078712713890832

namespace A350094

/-- `(A224915(n)-∑[n])/2` -/
def P16163078712713890832.Spec : Prop :=
  ∀ n, P16163078712713890832.a n = (A350094 n : ℚ)

end A350094

/-! ## A350094.P17137517186794490193

`A350093(n)-(n²+n)`
-/

namespace A350094.P17137517186794490193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350093 n - (n ^ 2 + n : ℤ)

end

end A350094.P17137517186794490193

namespace A350094

/-- `A350093(n)-(n²+n)` -/
def P17137517186794490193.Spec : Prop :=
  ∀ n, P17137517186794490193.a n = A350094 n

end A350094

/-! ## A350094.P3755009670037448641

`C(n, 2)-3*A213673(n)`
-/

namespace A350094.P3755009670037448641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose n 2 : ℤ) - 3 * A213673 n

end

end A350094.P3755009670037448641

namespace A350094

/-- `C(n, 2)-3*A213673(n)` -/
def P3755009670037448641.Spec : Prop :=
  ∀ n, P3755009670037448641.a n = A350094 n

end A350094

/-! ## A350094.P9742211079107852195

`A350093(n)%A179865(n+1)`
-/

namespace A350094.P9742211079107852195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A350093 n) (A179865 (n + 1))

end

end A350094.P9742211079107852195

namespace A350094

/-- `A350093(n)%A179865(n+1)` -/
def P9742211079107852195.Spec : Prop :=
  ∀ n, P9742211079107852195.a n = A350094 n

end A350094

/-! ## A350094.P4729151301415726709

`A014682(A224915(n)-∑[n])`
-/

namespace A350094.P4729151301415726709
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A224915 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A350094.P4729151301415726709

namespace A350094

/-- `A014682(A224915(n)-∑[n])` -/
def P4729151301415726709.Spec : Prop :=
  ∀ n, P4729151301415726709.a n = A350094 n

end A350094

/-! ## A350094.P10183301692580186254

`A004525(∑[and(n, -n)²-n])`
-/

namespace A350094.P10183301692580186254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-(n : ℤ)) ^ 2 - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A350094.P10183301692580186254

namespace A350094

/-- `A004525(∑[and(n, -n)²-n])` -/
def P10183301692580186254.Spec : Prop :=
  ∀ n, P10183301692580186254.a n = A350094 n

end A350094

/-! ## A350094.P6213350414517778933

`A110654(∑[and(n, -n)²-n])`
-/

namespace A350094.P6213350414517778933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-(n : ℤ)) ^ 2 - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A350094.P6213350414517778933

namespace A350094

/-- `A110654(∑[and(n, -n)²-n])` -/
def P6213350414517778933.Spec : Prop :=
  ∀ n, P6213350414517778933.a n = A350094 n

end A350094

/-! ## A350094.P143428142427150394

`∑[A140472(n²)-∑[n]]`
-/

namespace A350094.P143428142427150394
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140472 (n ^ 2) - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A350094.P143428142427150394

namespace A350094

/-- `∑[A140472(n²)-∑[n]]` -/
def P143428142427150394.Spec : Prop :=
  ∀ n, P143428142427150394.a n = A350094 n

end A350094

/-!
# A350095: a(n) is the smaller of 2 consecutive primes bounding an interval containing a record number A350097(n) of odd squarefree semiprimes (A046388).

The programs for A350095, there is no canonical definition to state claims against.
-/

/-! ## A350095.P7160474148835754712

`A051697(A350096(n+1)-A092579(n+1))`
-/

namespace A350095.P7160474148835754712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051697 (A350096 (n + 1) - A092579 (n + 1)).toNat

end

end A350095.P7160474148835754712

/-! ## A350095.P4849218993825269253

`A051697(A350096(n+1)-A051697(3*(n+1)))`
-/

namespace A350095.P4849218993825269253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051697 (A350096 (n + 1) - A051697 (3 * (n + 1))).toNat

end

end A350095.P4849218993825269253

/-!
# A350096: a(n) is the larger of 2 consecutive primes bounding an interval containing a record number A350097(n) of odd squarefree semiprimes (A046388).

The programs for A350096, there is no canonical definition to state claims against.
-/

/-! ## A350096.P13061703569998453652

`A151800(A350095(n+1))`
-/

namespace A350096.P13061703569998453652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A350095 (n + 1)).toNat

end

end A350096.P13061703569998453652

/-! ## A350096.P3831603848523778218

`∑{d}[A350095(n+1), A003972(#)]`
-/

namespace A350096.P3831603848523778218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350095 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A003972 d

end

end A350096.P3831603848523778218

/-! ## A350096.P6128009215757853983

`∑{d}[A350095(n+1), A348937(#)]`
-/

namespace A350096.P6128009215757853983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350095 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A348937 d

end

end A350096.P6128009215757853983

/-! ## A350096.P12124641902711924918

`A101027(n)+A003972(A350095(n+1))`
-/

namespace A350096.P12124641902711924918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101027 n + A003972 (A350095 (n + 1)).toNat

end

end A350096.P12124641902711924918

/-! ## A350096.P2791292027773387389

`A348937(A350095(n+1))+A101027(n+2)`
-/

namespace A350096.P2791292027773387389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348937 (A350095 (n + 1)).toNat + A101027 (n + 2)

end

end A350096.P2791292027773387389

/-!
# A350098: a(n) is the lower end of a record gap A349995(n) between consecutive odd squarefree semiprimes (A046388).

The programs for A350098, there is no canonical definition to state claims against.
-/

/-! ## A350098.P2936295732852247708

`A350099(n+1)-A349995(n+1)`
-/

namespace A350098.P2936295732852247708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350099 (n + 1) - A349995 (n + 1)

end

end A350098.P2936295732852247708

/-!
# A350099: a(n) is the upper end of a record gap A349995(n) between consecutive odd squarefree semiprimes (A046388).

The programs for A350099, there is no canonical definition to state claims against.
-/

/-! ## A350099.P10426196705183103056

`A350098(n+1)+A349995(n+1)`
-/

namespace A350099.P10426196705183103056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350098 (n + 1) + A349995 (n + 1)

end

end A350099.P10426196705183103056

