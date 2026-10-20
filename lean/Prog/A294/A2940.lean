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
import Seq.B000.C027
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
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

/-!
# A294000: Number of linear chord diagrams having n chords and no chord length larger than eight.

The programs for A294000, there is no canonical definition to state claims against.
-/

/-! ## A294000.P15000236707208997524

`A293960(A056000(n+5)+1)`
-/

namespace A294000.P15000236707208997524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293960 (A056000 (n + 5) + 1).toNat

end

end A294000.P15000236707208997524

/-! ## A294000.P4897956261774407330

`A293960(A000096(n+8)-8)`
-/

namespace A294000.P4897956261774407330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293960 (A000096 (n + 8) - 8).toNat

end

end A294000.P4897956261774407330

/-! ## A294000.P5202127739133028799

`A293960(A000217(n+9)-9)`
-/

namespace A294000.P5202127739133028799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293960 (A000217 (n + 9) - 9).toNat

end

end A294000.P5202127739133028799

/-! ## A294000.P8406629106492760842

`A293960(n+1+A000096(n+7))`
-/

namespace A294000.P8406629106492760842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293960 ((n + 1 : ℤ) + A000096 (n + 7)).toNat

end

end A294000.P8406629106492760842

/-! ## A294000.P14530297801061923860

`A293960(A046691(n+6)+n+4)`
-/

namespace A294000.P14530297801061923860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293960 (A046691 (n + 6) + (n + 4 : ℤ)).toNat

end

end A294000.P14530297801061923860

/-!
# A294001: Number of linear chord diagrams having n chords and no chord length larger than nine.

The programs for A294001, there is no canonical definition to state claims against.
-/

/-! ## A294001.P7212028644425764311

`A293960(A056000(n+6))`
-/

namespace A294001.P7212028644425764311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293960 (A056000 (n + 6)).toNat

end

end A294001.P7212028644425764311

/-! ## A294001.P16518003747124693370

`A293960(A055999(n+7)-4)`
-/

namespace A294001.P16518003747124693370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293960 (A055999 (n + 7) - 4).toNat

end

end A294001.P16518003747124693370

/-! ## A294001.P17537708294800404108

`A293960(A000217(n+10)-10)`
-/

namespace A294001.P17537708294800404108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293960 (A000217 (n + 10) - 10).toNat

end

end A294001.P17537708294800404108

/-! ## A294001.P12201390465984480608

`A293960(n+1+A000096(n+8))`
-/

namespace A294001.P12201390465984480608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293960 ((n + 1 : ℤ) + A000096 (n + 8)).toNat

end

end A294001.P12201390465984480608

/-! ## A294001.P5808777594243178892

`A293960(A046691(n+7)+n+4)`
-/

namespace A294001.P5808777594243178892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293960 (A046691 (n + 7) + (n + 4 : ℤ)).toNat

end

end A294001.P5808777594243178892

/-!
# A294002: Number of linear chord diagrams having n chords and no chord length larger than ten.

The programs for A294002, there is no canonical definition to state claims against.
-/

/-! ## A294002.P6742278291748044100

`A293960(A056000(n+7)-1)`
-/

namespace A294002.P6742278291748044100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293960 (A056000 (n + 7) - 1).toNat

end

end A294002.P6742278291748044100

/-! ## A294002.P8900263329854976114

`A293960(n+1+A000096(n+9))`
-/

namespace A294002.P8900263329854976114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293960 ((n + 1 : ℤ) + A000096 (n + 9)).toNat

end

end A294002.P8900263329854976114

/-! ## A294002.P15186245840660585189

`A293960(A000124(n+10)+n-1)`
-/

namespace A294002.P15186245840660585189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293960 (A000124 (n + 10) + ((n : ℤ) - 1)).toNat

end

end A294002.P15186245840660585189

/-! ## A294002.P4677901170176560121

`A293960(A046691(n+8)+n+4)`
-/

namespace A294002.P4677901170176560121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293960 (A046691 (n + 8) + (n + 4 : ℤ)).toNat

end

end A294002.P4677901170176560121

/-! ## A294002.P6913687329257286565

`A293960(A023443(n)+A000124(n+10))`
-/

namespace A294002.P6913687329257286565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293960 (A023443 n + A000124 (n + 10)).toNat

end

end A294002.P6913687329257286565

/-!
# A294003: a(n) = n! * [x^n] exp(((1+x)^(n+1) - 1)/(n+1)).

The programs for A294003, there is no canonical definition to state claims against.
-/

/-! ## A294003.P12758131424327897672

`A293991(∑[4*n])`
-/

namespace A294003.P12758131424327897672
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293991 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A294003.P12758131424327897672

/-! ## A294003.P13739096156197344093

`((-1)^n)²*A293991(A046092(n))`
-/

namespace A294003.P13739096156197344093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((-1) ^ n) ^ 2 * A293991 (A046092 n).toNat

end

end A294003.P13739096156197344093

/-! ## A294003.P6411690833284827637

`gcd(A000038(n), A293991(A046092(n)))`
-/

namespace A294003.P6411690833284827637
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A293991 (A046092 n).toNat)

end

end A294003.P6411690833284827637

/-! ## A294003.P15387783334317053009

`lcm(A033999(n), A293991(A046092(n)))`
-/

namespace A294003.P15387783334317053009
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A293991 (A046092 n).toNat)

end

end A294003.P15387783334317053009

/-! ## A294003.P14522412095238493651

`or(A000007(n), A293991(A046092(n)))`
-/

namespace A294003.P14522412095238493651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A293991 (A046092 n).toNat)

end

end A294003.P14522412095238493651

/-!
# A294004: Number of multisets of exactly two nonempty words with a total of n letters over n-ary alphabet such that within each prefix of a word every letter of the alphabet is at least as frequent as the subsequent alphabet letter.

The programs for A294004, there is no canonical definition to state claims against.
-/

/-! ## A294004.P13050679512804601420

`record[A293808(∑[n]+2)]`
-/

namespace A294004.P13050679512804601420
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293808 (∑ j ∈ Finset.range (n + 1), f2 j + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A294004.P13050679512804601420

/-! ## A294004.P5409372857316572628

`A293808(∑[n+2]+3)`
-/

namespace A294004.P5409372857316572628
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293808 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A294004.P5409372857316572628

/-! ## A294004.P3003272601395741865

`record[A293808(n+2)/A059268(n)]`
-/

namespace A294004.P3003272601395741865
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A293808 (n + 2) : ℚ) / (A059268 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A294004.P3003272601395741865

/-! ## A294004.P9831950058080228939

`record[gcd(A293808(n+2), A293808(n))]`
-/

namespace A294004.P9831950058080228939
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A293808 (n + 2)) (A293808 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A294004.P9831950058080228939

/-! ## A294004.P13652825036912662405

`record[and(1-A002262(n), A293808(n))]`
-/

namespace A294004.P13652825036912662405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (1 - A002262 n) (A293808 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A294004.P13652825036912662405

/-! ## A294004.P1997228333807297052

`record[A293808(A002262(n))*A293808(n)]`
-/

namespace A294004.P1997228333807297052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293808 (A002262 n).toNat * A293808 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A294004.P1997228333807297052

/-! ## A294004.P12232838716464587676

`lcm(A000034(n), A293808(A167614(n+1)-1))`
-/

namespace A294004.P12232838716464587676
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000034 n) (A293808 (A167614 (n + 1) - 1).toNat)

end

end A294004.P12232838716464587676

/-! ## A294004.P8279007629172394754

`record[A293808(n+2)/A008279(n)]`
-/

namespace A294004.P8279007629172394754
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A293808 (n + 2) : ℚ) / (A008279 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A294004.P8279007629172394754

/-!
# A294005: Number of multisets of exactly three nonempty words with a total of n letters over n-ary alphabet such that within each prefix of a word every letter of the alphabet is at least as frequent as the subsequent alphabet letter.

The programs for A294005, there is no canonical definition to state claims against.
-/

/-! ## A294005.P5648422349287792076

`A293808(A167614(n+2))`
-/

namespace A294005.P5648422349287792076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293808 (A167614 (n + 2)).toNat

end

end A294005.P5648422349287792076

/-! ## A294005.P1782642657680413209

`A293808(A152950(n+4))`
-/

namespace A294005.P1782642657680413209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293808 (A152950 (n + 4)).toNat

end

end A294005.P1782642657680413209

/-! ## A294005.P6926353739959480990

`A293808(A052905(n)+8)`
-/

namespace A294005.P6926353739959480990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293808 (A052905 n + 8).toNat

end

end A294005.P6926353739959480990

/-! ## A294005.P9529929510820241609

`A293808(A055999(n)+9)`
-/

namespace A294005.P9529929510820241609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293808 (A055999 n + 9).toNat

end

end A294005.P9529929510820241609

/-! ## A294005.P15879488788513439962

`record[A293808(A133263(n)+1)]`
-/

namespace A294005.P15879488788513439962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293808 (A133263 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A294005.P15879488788513439962

/-! ## A294005.P7905501971483221040

`A293808(A133263(n+3)+1)`
-/

namespace A294005.P7905501971483221040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293808 (A133263 (n + 3) + 1).toNat

end

end A294005.P7905501971483221040

/-! ## A294005.P6339076487035467366

`A293808(A000217(n+3)+3)`
-/

namespace A294005.P6339076487035467366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293808 (A000217 (n + 3) + 3).toNat

end

end A294005.P6339076487035467366

/-!
# A294006: Number of multisets of exactly four nonempty words with a total of n letters over n-ary alphabet such that within each prefix of a word every letter of the alphabet is at least as frequent as the subsequent alphabet letter.

The programs for A294006, there is no canonical definition to state claims against.
-/

/-! ## A294006.P820811095058694909

`A293808(A155212(n)+12)`
-/

namespace A294006.P820811095058694909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293808 (A155212 n + 12).toNat

end

end A294006.P820811095058694909

/-! ## A294006.P3680603330493239430

`A293808(A056000(n)+14)`
-/

namespace A294006.P3680603330493239430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293808 (A056000 n + 14).toNat

end

end A294006.P3680603330493239430

/-! ## A294006.P2943956710576450576

`A293808(A133263(n+4)+2)`
-/

namespace A294006.P2943956710576450576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293808 (A133263 (n + 4) + 2).toNat

end

end A294006.P2943956710576450576

/-! ## A294006.P8470677453056346141

`A293808(A034856(n+3)+6)`
-/

namespace A294006.P8470677453056346141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293808 (A034856 (n + 3) + 6).toNat

end

end A294006.P8470677453056346141

/-! ## A294006.P16242442739918794242

`A293808(A055998(n+2)+7)`
-/

namespace A294006.P16242442739918794242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293808 (A055998 (n + 2) + 7).toNat

end

end A294006.P16242442739918794242

/-! ## A294006.P1538704121238291320

`A293808(A046691(n+2)+8)`
-/

namespace A294006.P1538704121238291320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293808 (A046691 (n + 2) + 8).toNat

end

end A294006.P1538704121238291320

/-! ## A294006.P9836951754593072479

`A293808(A051936(n+4)+13)`
-/

namespace A294006.P9836951754593072479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293808 (A051936 (n + 4) + 13).toNat

end

end A294006.P9836951754593072479

/-!
# A294007: Number of multisets of exactly five nonempty words with a total of n letters over n-ary alphabet such that within each prefix of a word every letter of the alphabet is at least as frequent as the subsequent alphabet letter.

The programs for A294007, there is no canonical definition to state claims against.
-/

/-! ## A294007.P6629222912653431352

`A293808(A167499(n+4))`
-/

namespace A294007.P6629222912653431352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293808 (A167499 (n + 4)).toNat

end

end A294007.P6629222912653431352

/-! ## A294007.P4448830336333436296

`A293808(A167614(n+4)+2)`
-/

namespace A294007.P4448830336333436296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293808 (A167614 (n + 4) + 2).toNat

end

end A294007.P4448830336333436296

/-! ## A294007.P16225257334784952678

`A293808(A000124(n+5)+4)`
-/

namespace A294007.P16225257334784952678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293808 (A000124 (n + 5) + 4).toNat

end

end A294007.P16225257334784952678

/-! ## A294007.P11741500833984493404

`A293808(A000096(n+4)+6)`
-/

namespace A294007.P11741500833984493404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293808 (A000096 (n + 4) + 6).toNat

end

end A294007.P11741500833984493404

/-! ## A294007.P7296804242068117586

`A293808(A046691(n+3)+9)`
-/

namespace A294007.P7296804242068117586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293808 (A046691 (n + 3) + 9).toNat

end

end A294007.P7296804242068117586

/-! ## A294007.P3137883575567037954

`record[A293808(A167499(n)%A192979(n))]`
-/

namespace A294007.P3137883575567037954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293808 (Int.tmod (A167499 n) (A192979 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A294007.P3137883575567037954

/-! ## A294007.P388136783557424211

`record[A008683(A002260(n+1))*A293808(n)]`
-/

namespace A294007.P388136783557424211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A002260 (n + 1)).toNat * A293808 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A294007.P388136783557424211

/-! ## A294007.P5598817272804923456

`A293808(A005843(n+7)+A000217(n+3))`
-/

namespace A294007.P5598817272804923456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293808 (A005843 (n + 7) + A000217 (n + 3)).toNat

end

end A294007.P5598817272804923456

/-!
# A294008: Number of multisets of exactly six nonempty words with a total of n letters over n-ary alphabet such that within each prefix of a word every letter of the alphabet is at least as frequent as the subsequent alphabet letter.

The programs for A294008, there is no canonical definition to state claims against.
-/

/-! ## A294008.P6148915232847193322

`A293808(A167499(n+5)+1)`
-/

namespace A294008.P6148915232847193322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293808 (A167499 (n + 5) + 1).toNat

end

end A294008.P6148915232847193322

/-! ## A294008.P15428135114183739004

`A293808(A167614(n+5)+3)`
-/

namespace A294008.P15428135114183739004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293808 (A167614 (n + 5) + 3).toNat

end

end A294008.P15428135114183739004

/-! ## A294008.P9022640757037233567

`A293808(A000124(n+6)+5)`
-/

namespace A294008.P9022640757037233567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293808 (A000124 (n + 6) + 5).toNat

end

end A294008.P9022640757037233567

/-! ## A294008.P14927150600808967904

`A293808(A000096(n+5)+7)`
-/

namespace A294008.P14927150600808967904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293808 (A000096 (n + 5) + 7).toNat

end

end A294008.P14927150600808967904

/-! ## A294008.P2025337328323220792

`A293808(A005408(n+8)+A000217(n+4))`
-/

namespace A294008.P2025337328323220792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293808 (A005408 (n + 8) + A000217 (n + 4)).toNat

end

end A294008.P2025337328323220792

/-! ## A294008.P11783130298748610186

`A293808(A004273(n+9)+A000217(n+4))`
-/

namespace A294008.P11783130298748610186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293808 (A004273 (n + 9) + A000217 (n + 4)).toNat

end

end A294008.P11783130298748610186

/-! ## A294008.P10970935952154757278

`A293808(A002620(n+3)+A002620(n+10))`
-/

namespace A294008.P10970935952154757278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293808 (A002620 (n + 3) + A002620 (n + 10)).toNat

end

end A294008.P10970935952154757278

/-!
# A294009: Number of multisets of exactly seven nonempty words with a total of n letters over n-ary alphabet such that within each prefix of a word every letter of the alphabet is at least as frequent as the subsequent alphabet letter.

The programs for A294009, there is no canonical definition to state claims against.
-/

/-! ## A294009.P5600704388407394767

`A293808(A167499(n+6)+2)`
-/

namespace A294009.P5600704388407394767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293808 (A167499 (n + 6) + 2).toNat

end

end A294009.P5600704388407394767

/-! ## A294009.P7534412569657630763

`A293808(A167614(n+6)+4)`
-/

namespace A294009.P7534412569657630763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293808 (A167614 (n + 6) + 4).toNat

end

end A294009.P7534412569657630763

/-! ## A294009.P10952700478357125184

`A293808(A000096(n+6)+8)`
-/

namespace A294009.P10952700478357125184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293808 (A000096 (n + 6) + 8).toNat

end

end A294009.P10952700478357125184

/-! ## A294009.P13099356364136781164

`A293808(A161680(n+8)+7)`
-/

namespace A294009.P13099356364136781164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293808 (A161680 (n + 8) + 7).toNat

end

end A294009.P13099356364136781164

/-! ## A294009.P10333095653410286845

`A293808(A046691(n)+A016861(n+7))`
-/

namespace A294009.P10333095653410286845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293808 (A046691 n + A016861 (n + 7)).toNat

end

end A294009.P10333095653410286845

/-! ## A294009.P3328949522551469300

`A293808(A000217(n+9)-A005843(n+5))`
-/

namespace A294009.P3328949522551469300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293808 (A000217 (n + 9) - A005843 (n + 5)).toNat

end

end A294009.P3328949522551469300

/-!
# A294010: Number of multisets of exactly eight nonempty words with a total of n letters over n-ary alphabet such that within each prefix of a word every letter of the alphabet is at least as frequent as the subsequent alphabet letter.

The programs for A294010, there is no canonical definition to state claims against.
-/

/-! ## A294010.P11453664161653448369

`A293808(A167499(n+7)+3)`
-/

namespace A294010.P11453664161653448369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293808 (A167499 (n + 7) + 3).toNat

end

end A294010.P11453664161653448369

/-! ## A294010.P12194234927166850836

`A293808(A167614(n+7)+5)`
-/

namespace A294010.P12194234927166850836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293808 (A167614 (n + 7) + 5).toNat

end

end A294010.P12194234927166850836

/-! ## A294010.P11010730197562225996

`A293808(A133263(n+8)+6)`
-/

namespace A294010.P11010730197562225996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293808 (A133263 (n + 8) + 6).toNat

end

end A294010.P11010730197562225996

/-! ## A294010.P17988099830280219591

`A293808(A000096(n+7)+9)`
-/

namespace A294010.P17988099830280219591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293808 (A000096 (n + 7) + 9).toNat

end

end A294010.P17988099830280219591

/-! ## A294010.P14054967555165083774

`A293808(A000124(n+9)-(n+2))`
-/

namespace A294010.P14054967555165083774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293808 (A000124 (n + 9) - (n + 2 : ℤ)).toNat

end

end A294010.P14054967555165083774

/-! ## A294010.P4735181603668128913

`A293808(A055999(n+7)-A004273(n+3))`
-/

namespace A294010.P4735181603668128913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293808 (A055999 (n + 7) - A004273 (n + 3)).toNat

end

end A294010.P4735181603668128913

/-! ## A294010.P9065745659640910527

`A293808(A016813(n+8)+A000124(n+4))`
-/

namespace A294010.P9065745659640910527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293808 (A016813 (n + 8) + A000124 (n + 4)).toNat

end

end A294010.P9065745659640910527

/-!
# A294011: Number of multisets of exactly nine nonempty words with a total of n letters over n-ary alphabet such that within each prefix of a word every letter of the alphabet is at least as frequent as the subsequent alphabet letter.

The programs for A294011, there is no canonical definition to state claims against.
-/

/-! ## A294011.P14030992669870422681

`A293808(A167499(n+8)+4)`
-/

namespace A294011.P14030992669870422681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293808 (A167499 (n + 8) + 4).toNat

end

end A294011.P14030992669870422681

/-! ## A294011.P12018513098591163509

`A293808(A000096(n+8)+10)`
-/

namespace A294011.P12018513098591163509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293808 (A000096 (n + 8) + 10).toNat

end

end A294011.P12018513098591163509

/-! ## A294011.P14062660222754654048

`A293808(A167614(n+4)+A008586(n+9))`
-/

namespace A294011.P14062660222754654048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293808 (A167614 (n + 4) + A008586 (n + 9)).toNat

end

end A294011.P14062660222754654048

/-! ## A294011.P14661793191301459425

`A293808(A048058(n+8)-A000124(n+7))`
-/

namespace A294011.P14661793191301459425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293808 (A048058 (n + 8) - A000124 (n + 7)).toNat

end

end A294011.P14661793191301459425

/-! ## A294011.P13435748751137206793

`A293808(A167614(n+10)-A005408(n+7))`
-/

namespace A294011.P13435748751137206793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293808 (A167614 (n + 10) - A005408 (n + 7)).toNat

end

end A294011.P13435748751137206793

/-! ## A294011.P6530330154834301761

`A293808(A167614(n+10)-A004273(n+8))`
-/

namespace A294011.P6530330154834301761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293808 (A167614 (n + 10) - A004273 (n + 8)).toNat

end

end A294011.P6530330154834301761

/-!
# A294012: Number of multisets of exactly ten nonempty words with a total of n letters over n-ary alphabet such that within each prefix of a word every letter of the alphabet is at least as frequent as the subsequent alphabet letter.

The programs for A294012, there is no canonical definition to state claims against.
-/

/-! ## A294012.P17609700582346205267

`A293808(A000096(n+9)+11)`
-/

namespace A294012.P17609700582346205267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293808 (A000096 (n + 9) + 11).toNat

end

end A294012.P17609700582346205267

/-! ## A294012.P11417488482580745105

`A293808(A000217(n+10)+10)`
-/

namespace A294012.P11417488482580745105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293808 (A000217 (n + 10) + 10).toNat

end

end A294012.P11417488482580745105

/-! ## A294012.P15932068232975610516

`A293808(A055999(n+9)-A004273(n+4))`
-/

namespace A294012.P15932068232975610516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293808 (A055999 (n + 9) - A004273 (n + 4)).toNat

end

end A294012.P15932068232975610516

/-! ## A294012.P15496378554376085565

`A293808(A167614(n+8)+A020723(n+8))`
-/

namespace A294012.P15496378554376085565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293808 (A167614 (n + 8) + A020723 (n + 8)).toNat

end

end A294012.P15496378554376085565

/-! ## A294012.P1380321970759417656

`A293808(A002620(n+6)+A002620(n+15))`
-/

namespace A294012.P1380321970759417656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293808 (A002620 (n + 6) + A002620 (n + 15)).toNat

end

end A294012.P1380321970759417656

/-!
# A294013: Sum of the differences of the larger and smaller parts in the partitions of 2n into two parts with the smaller part prime.

The programs for A294013, the canonical program `A294013.P11508528961553630059` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A294013 has offset 1).

The definition of A294013 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A294013.P11508528961553630059

`∑[2*A230980(n)]`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A294013

/-- `∑[2*A230980(n)]` -/
def P11508528961553630059.Spec : Prop :=
  ∀ n, P11508528961553630059.a n = A294013 (n + 1)

theorem P11508528961553630059.correct : P11508528961553630059.Spec := by
  intro n
  simp only [A294013, Nat.add_sub_cancel]

end A294013

/-! ## A294013.P7441403153104052334

`2*(A002815(n)-n)`
-/

namespace A294013.P7441403153104052334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A002815 n - (n : ℤ))

end

end A294013.P7441403153104052334

namespace A294013

/-- `2*(A002815(n)-n)` -/
def P7441403153104052334.Spec : Prop :=
  ∀ n, P7441403153104052334.a n = A294013 (n + 1)

end A294013

/-! ## A294013.P16349121110461505361

`∑[1-A118777(n)+n]`
-/

namespace A294013.P16349121110461505361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A118777 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A294013.P16349121110461505361

namespace A294013

/-- `∑[1-A118777(n)+n]` -/
def P16349121110461505361.Spec : Prop :=
  ∀ n, P16349121110461505361.a n = A294013 (n + 1)

end A294013

/-! ## A294013.P3733155483803776229

`∑[2*(A095117(n)-n)]`
-/

namespace A294013.P3733155483803776229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A095117 n - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A294013.P3733155483803776229

namespace A294013

/-- `∑[2*(A095117(n)-n)]` -/
def P3733155483803776229.Spec : Prop :=
  ∀ n, P3733155483803776229.a n = A294013 (n + 1)

end A294013

/-! ## A294013.P15867772113588375514

`∑[∑[2*char[A151800(n)]]]`
-/

namespace A294013.P15867772113588375514
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (if ∃ j, f3 j = (n : ℤ) then 1 else 0)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A294013.P15867772113588375514

namespace A294013

/-- `∑[∑[2*char[A151800(n)]]]` -/
def P15867772113588375514.Spec : Prop :=
  ∀ n, (P15867772113588375514.a n : ℤ) = A294013 (n + 1)

end A294013

/-! ## A294013.P15246101629400024485

`∑[∑[C(2, A053989(n+1)²)]]`
-/

namespace A294013.P15246101629400024485
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A053989 (n + 1) ^ 2).toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A294013.P15246101629400024485

namespace A294013

/-- `∑[∑[C(2, A053989(n+1)²)]]` -/
def P15246101629400024485.Spec : Prop :=
  ∀ n, (P15246101629400024485.a n : ℤ) = A294013 (n + 1)

end A294013

/-! ## A294013.P8152789019952650092

`∑[∑[2*char[A000040(n+1)]]]`
-/

namespace A294013.P8152789019952650092
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (if ∃ j, f3 j = (n : ℤ) then 1 else 0)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A294013.P8152789019952650092

namespace A294013

/-- `∑[∑[2*char[A000040(n+1)]]]` -/
def P8152789019952650092.Spec : Prop :=
  ∀ n, (P8152789019952650092.a n : ℤ) = A294013 (n + 1)

end A294013

/-! ## A294013.P8481076655629882917

`∑[∑[2*char[A006530(n+2)]]]`
-/

namespace A294013.P8481076655629882917
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (if ∃ j, f3 j = (n : ℤ) then 1 else 0)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A294013.P8481076655629882917

namespace A294013

/-- `∑[∑[2*char[A006530(n+2)]]]` -/
def P8481076655629882917.Spec : Prop :=
  ∀ n, (P8481076655629882917.a n : ℤ) = A294013 (n + 1)

end A294013

/-! ## A294013.P535728988696569977

`∑[∑[2*char[A020639(n+2)]]]`
-/

namespace A294013.P535728988696569977
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (if ∃ j, f3 j = (n : ℤ) then 1 else 0)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A294013.P535728988696569977

namespace A294013

/-- `∑[∑[2*char[A020639(n+2)]]]` -/
def P535728988696569977.Spec : Prop :=
  ∀ n, (P535728988696569977.a n : ℤ) = A294013 (n + 1)

end A294013

/-! ## A294013.P15957641517472606969

`a(n-1)+2*A000720(n)` with `a(0)=0`
-/

namespace A294013.P15957641517472606969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + 2 * A000720 n

end

end A294013.P15957641517472606969

namespace A294013

/-- `a(n-1)+2*A000720(n)` -/
def P15957641517472606969.Spec : Prop :=
  ∀ n, P15957641517472606969.a n = A294013 (n + 1)

end A294013

/-! ## A294013.P4138904163568289583

`a(n-1)+n-A097454(n)` with `a(0)=0`
-/

namespace A294013.P4138904163568289583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + ((n : ℤ) - A097454 n)

end

end A294013.P4138904163568289583

namespace A294013

/-- `a(n-1)+n-A097454(n)` -/
def P4138904163568289583.Spec : Prop :=
  ∀ n, P4138904163568289583.a n = A294013 (n + 1)

end A294013

/-! ## A294013.P9177028018751576288

`∑[2*∑[char[A006093(n+1)+1]]]`
-/

namespace A294013.P9177028018751576288
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1) + 1

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A294013.P9177028018751576288

namespace A294013

/-- `∑[2*∑[char[A006093(n+1)+1]]]` -/
def P9177028018751576288.Spec : Prop :=
  ∀ n, (P9177028018751576288.a n : ℤ) = A294013 (n + 1)

end A294013

/-! ## A294013.P17971371680154403261

`∑[2*∑[char[A040976(n+1)+2]]]`
-/

namespace A294013.P17971371680154403261
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (n + 1) + 2

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A294013.P17971371680154403261

namespace A294013

/-- `∑[2*∑[char[A040976(n+1)+2]]]` -/
def P17971371680154403261.Spec : Prop :=
  ∀ n, (P17971371680154403261.a n : ℤ) = A294013 (n + 1)

end A294013

/-! ## A294013.P3627344865095031879

`∑[2*A000720(A028310(n))]`
-/

namespace A294013.P3627344865095031879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000720 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A294013.P3627344865095031879

namespace A294013

/-- `∑[2*A000720(A028310(n))]` -/
def P3627344865095031879.Spec : Prop :=
  ∀ n, P3627344865095031879.a n = A294013 (n + 1)

end A294013

/-! ## A294013.P10185727675993955482

`∑[2*A079067(A151800(n))]`
-/

namespace A294013.P10185727675993955482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A079067 (A151800 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A294013.P10185727675993955482

namespace A294013

/-- `∑[2*A079067(A151800(n))]` -/
def P10185727675993955482.Spec : Prop :=
  ∀ n, P10185727675993955482.a n = A294013 (n + 1)

end A294013

/-! ## A294013.P14127217313793540193

`A294114(n+1)-A034387(n+1)`
-/

namespace A294013.P14127217313793540193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294114 (n + 1) - A034387 (n + 1)

end

end A294013.P14127217313793540193

namespace A294013

/-- `A294114(n+1)-A034387(n+1)` -/
def P14127217313793540193.Spec : Prop :=
  ∀ n, P14127217313793540193.a n = A294013 (n + 1)

end A294013

/-! ## A294013.P12254949806636732687

`2*(A046992(n+1)-A000720(n+1))`
-/

namespace A294013.P12254949806636732687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A046992 (n + 1) - A000720 (n + 1))

end

end A294013.P12254949806636732687

namespace A294013

/-- `2*(A046992(n+1)-A000720(n+1))` -/
def P12254949806636732687.Spec : Prop :=
  ∀ n, P12254949806636732687.a n = A294013 (n + 1)

end A294013

/-! ## A294013.P15467947752107393684

`∑[2*∑[char[A093074(n+1)]]]`
-/

namespace A294013.P15467947752107393684
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093074 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A294013.P15467947752107393684

namespace A294013

/-- `∑[2*∑[char[A093074(n+1)]]]` -/
def P15467947752107393684.Spec : Prop :=
  ∀ n, (P15467947752107393684.a n : ℤ) = A294013 (n + 1)

end A294013

/-! ## A294013.P13605234941830806085

`∑[∑[A105700(2*n)]]-n`
-/

namespace A294013.P13605234941830806085
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A294013.P13605234941830806085

namespace A294013

/-- `∑[∑[A105700(2*n)]]-n` -/
def P13605234941830806085.Spec : Prop :=
  ∀ n, P13605234941830806085.a n = A294013 (n + 1)

end A294013

/-! ## A294013.P15822634954485683316

`∑[2*A056172(A004277(n))]`
-/

namespace A294013.P15822634954485683316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A056172 (A004277 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A294013.P15822634954485683316

namespace A294013

/-- `∑[2*A056172(A004277(n))]` -/
def P15822634954485683316.Spec : Prop :=
  ∀ n, P15822634954485683316.a n = A294013 (n + 1)

end A294013

/-!
# A294015: Sum of the even divisors of 2n, minus the (n-1)st odd number.

The programs for A294015, the canonical program `A294015.P9060703257274913068` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A294015 has offset 1).

The definition of A294015 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A294015.P9060703257274913068

`A091818(n+1)+1`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A294015

/-- `A091818(n+1)+1` -/
def P9060703257274913068.Spec : Prop :=
  ∀ n, P9060703257274913068.a n = A294015 (n + 1)

theorem P9060703257274913068.correct : P9060703257274913068.Spec := by
  intro n
  simp only [A294015, Nat.add_sub_cancel]

end A294015

/-! ## A294015.P2219345637828796626

`2*A001065(n+1)+1`
-/

namespace A294015.P2219345637828796626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001065 (n + 1) + 1

end

end A294015.P2219345637828796626

namespace A294015

/-- `2*A001065(n+1)+1` -/
def P2219345637828796626.Spec : Prop :=
  ∀ n, P2219345637828796626.a n = A294015 (n + 1)

end A294015

/-! ## A294015.P2341551449374445989

`2*A000203(n+1)-2*(n+1)+1`
-/

namespace A294015.P2341551449374445989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000203 (n + 1) - (2 * (n + 1) : ℤ) + 1

end

end A294015.P2341551449374445989

namespace A294015

/-- `2*A000203(n+1)-2*(n+1)+1` -/
def P2341551449374445989.Spec : Prop :=
  ∀ n, P2341551449374445989.a n = A294015 (n + 1)

end A294015

/-! ## A294015.P1525303954557565762

`A074400(n+1)-A005408(n)`
-/

namespace A294015.P1525303954557565762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074400 (n + 1) - A005408 n

end

end A294015.P1525303954557565762

namespace A294015

/-- `A074400(n+1)-A005408(n)` -/
def P1525303954557565762.Spec : Prop :=
  ∀ n, P1525303954557565762.a n = A294015 (n + 1)

end A294015

/-! ## A294015.P15729383916041403769

`A000203(n+1)-A235796(n+1)`
-/

namespace A294015.P15729383916041403769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A235796 (n + 1)

end

end A294015.P15729383916041403769

namespace A294015

/-- `A000203(n+1)-A235796(n+1)` -/
def P15729383916041403769.Spec : Prop :=
  ∀ n, P15729383916041403769.a n = A294015 (n + 1)

end A294015

/-! ## A294015.P1317342343115704703

`2*(∑{d}[n+1, #]-n)-1`
-/

namespace A294015.P1317342343115704703
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) - (n : ℤ)) - 1

end

end A294015.P1317342343115704703

namespace A294015

/-- `2*(∑{d}[n+1, #]-n)-1` -/
def P1317342343115704703.Spec : Prop :=
  ∀ n, P1317342343115704703.a n = A294015 (n + 1)

end A294015

/-! ## A294015.P6296867287251134872

`∑{d}[n+1, #+#]-Δ[n²]`
-/

namespace A294015.P6296867287251134872
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), (d + d) : ℕ) : ℤ) - ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

end

end A294015.P6296867287251134872

namespace A294015

/-- `∑{d}[n+1, #+#]-Δ[n²]` -/
def P6296867287251134872.Spec : Prop :=
  ∀ n, P6296867287251134872.a n = A294015 (n + 1)

end A294015

/-! ## A294015.P7239960790043775168

`2*∑{d}[n+1, #]+Δ[-n²]`
-/

namespace A294015.P7239960790043775168
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * (∑ d ∈ Nat.divisors (f1 n), d) : ℕ) : ℤ) + (f2 (n + 1) - f2 n)

end

end A294015.P7239960790043775168

namespace A294015

/-- `2*∑{d}[n+1, #]+Δ[-n²]` -/
def P7239960790043775168.Spec : Prop :=
  ∀ n, P7239960790043775168.a n = A294015 (n + 1)

end A294015

/-! ## A294015.P7343734489831556119

`A062967(n+1)+2`
-/

namespace A294015.P7343734489831556119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062967 (n + 1) + 2

end

end A294015.P7343734489831556119

namespace A294015

/-- `A062967(n+1)+2` -/
def P7343734489831556119.Spec : Prop :=
  ∀ n, P7343734489831556119.a n = A294015 (n + 1)

end A294015

/-! ## A294015.P3990524767201688685

`A294628(n+1)/4`
-/

namespace A294015.P3990524767201688685
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A294628 (n + 1) : ℚ) / 4

end

end A294015.P3990524767201688685

namespace A294015

/-- `A294628(n+1)/4` -/
def P3990524767201688685.Spec : Prop :=
  ∀ n, P3990524767201688685.a n = (A294015 (n + 1) : ℚ)

end A294015

/-! ## A294015.P7958321568385684944

`A002659(n+1)-2*n`
-/

namespace A294015.P7958321568385684944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002659 (n + 1) - (2 * n : ℤ)

end

end A294015.P7958321568385684944

namespace A294015

/-- `A002659(n+1)-2*n` -/
def P7958321568385684944.Spec : Prop :=
  ∀ n, P7958321568385684944.a n = A294015 (n + 1)

end A294015

/-! ## A294015.P4462035175503023877

`A088580(n+1)+A033880(n+1)`
-/

namespace A294015.P4462035175503023877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088580 (n + 1) + A033880 (n + 1)

end

end A294015.P4462035175503023877

namespace A294015

/-- `A088580(n+1)+A033880(n+1)` -/
def P4462035175503023877.Spec : Prop :=
  ∀ n, P4462035175503023877.a n = A294015 (n + 1)

end A294015

/-! ## A294015.P10224845246882350454

`A237588(n+1)+A000203(n+1)`
-/

namespace A294015.P10224845246882350454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237588 (n + 1) + A000203 (n + 1)

end

end A294015.P10224845246882350454

namespace A294015

/-- `A237588(n+1)+A000203(n+1)` -/
def P10224845246882350454.Spec : Prop :=
  ∀ n, P10224845246882350454.a n = A294015 (n + 1)

end A294015

/-! ## A294015.P16049408188193883266

`A163163(n+1)+A152770(n+1)`
-/

namespace A294015.P16049408188193883266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163163 (n + 1) + A152770 (n + 1)

end

end A294015.P16049408188193883266

namespace A294015

/-- `A163163(n+1)+A152770(n+1)` -/
def P16049408188193883266.Spec : Prop :=
  ∀ n, P16049408188193883266.a n = A294015 (n + 1)

end A294015

/-! ## A294015.P11490823893097653014

`A088580(n+1)-A033879(n+1)`
-/

namespace A294015.P11490823893097653014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088580 (n + 1) - A033879 (n + 1)

end

end A294015.P11490823893097653014

namespace A294015

/-- `A088580(n+1)-A033879(n+1)` -/
def P11490823893097653014.Spec : Prop :=
  ∀ n, P11490823893097653014.a n = A294015 (n + 1)

end A294015

/-! ## A294015.P5536477103005441926

`A007503(n+1)-A152864(n+1)`
-/

namespace A294015.P5536477103005441926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007503 (n + 1) - A152864 (n + 1)

end

end A294015.P5536477103005441926

namespace A294015

/-- `A007503(n+1)-A152864(n+1)` -/
def P5536477103005441926.Spec : Prop :=
  ∀ n, P5536477103005441926.a n = A294015 (n + 1)

end A294015

/-! ## A294015.P5284390553977667168

`2*A000203(n+1)-A005408(n)`
-/

namespace A294015.P5284390553977667168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000203 (n + 1) - A005408 n

end

end A294015.P5284390553977667168

namespace A294015

/-- `2*A000203(n+1)-A005408(n)` -/
def P5284390553977667168.Spec : Prop :=
  ∀ n, P5284390553977667168.a n = A294015 (n + 1)

end A294015

/-! ## A294015.P5710648808807133998

`A000203(n+1)+A033880(n+1)+1`
-/

namespace A294015.P5710648808807133998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) + (A033880 (n + 1) + 1)

end

end A294015.P5710648808807133998

namespace A294015

/-- `A000203(n+1)+A033880(n+1)+1` -/
def P5710648808807133998.Spec : Prop :=
  ∀ n, P5710648808807133998.a n = A294015 (n + 1)

end A294015

/-! ## A294015.P1783148660429161650

`A000203(n+1)+1-A033879(n+1)`
-/

namespace A294015.P1783148660429161650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) + (1 - A033879 (n + 1))

end

end A294015.P1783148660429161650

namespace A294015

/-- `A000203(n+1)+1-A033879(n+1)` -/
def P1783148660429161650.Spec : Prop :=
  ∀ n, P1783148660429161650.a n = A294015 (n + 1)

end A294015

/-! ## A294015.P7226295394465955736

`A000203(n+1)+A001065(n+1)-n`
-/

namespace A294015.P7226295394465955736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) + (A001065 (n + 1) - (n : ℤ))

end

end A294015.P7226295394465955736

namespace A294015

/-- `A000203(n+1)+A001065(n+1)-n` -/
def P7226295394465955736.Spec : Prop :=
  ∀ n, P7226295394465955736.a n = A294015 (n + 1)

end A294015

/-!
# A294016: a(n) = sum of all divisors of all positive integers <= n, minus the sum of remainders of n mod k, for k = 1, 2, 3, ..., n.

The programs for A294016, the canonical program `A294016.P4065653788084831294` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A294016 has offset 1).

The definition of A294016 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004125, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A294016.P4065653788084831294

`A024916(n+1)-A004125(n+1)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A294016

/-- `A024916(n+1)-A004125(n+1)` -/
def P4065653788084831294.Spec : Prop :=
  ∀ n, P4065653788084831294.a n = A294016 (n + 1)

theorem P4065653788084831294.correct : P4065653788084831294.Spec := by
  intro n
  simp only [A294016, Nat.add_sub_cancel]

end A294016

/-! ## A294016.P10040414075926416880

`A000290(n+1)-A067436(n+1)`
-/

namespace A294016.P10040414075926416880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (n + 1) - A067436 (n + 1)

end

end A294016.P10040414075926416880

namespace A294016

/-- `A000290(n+1)-A067436(n+1)` -/
def P10040414075926416880.Spec : Prop :=
  ∀ n, P10040414075926416880.a n = A294016 (n + 1)

end A294016

/-! ## A294016.P16010930786304483109

`A000203(n+1)+A153485(n+1)+A244048(n+1)`
-/

namespace A294016.P16010930786304483109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) + A153485 (n + 1) + A244048 (n + 1)

end

end A294016.P16010930786304483109

namespace A294016

/-- `A000203(n+1)+A153485(n+1)+A244048(n+1)` -/
def P16010930786304483109.Spec : Prop :=
  ∀ n, P16010930786304483109.a n = A294016 (n + 1)

end A294016

/-! ## A294016.P6847023800311658642

`A000217(n+1)+A153485(n+1)-A004125(n+1)`
-/

namespace A294016.P6847023800311658642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 1) + A153485 (n + 1) - A004125 (n + 1)

end

end A294016.P6847023800311658642

namespace A294016

/-- `A000217(n+1)+A153485(n+1)-A004125(n+1)` -/
def P6847023800311658642.Spec : Prop :=
  ∀ n, P6847023800311658642.a n = A294016 (n + 1)

end A294016

/-! ## A294016.P7702519170899721123

`A000203(n+1)+A024816(n+1)+A153485(n+1)-A004125(n+1)`
-/

namespace A294016.P7702519170899721123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) + A024816 (n + 1) + A153485 (n + 1) - A004125 (n + 1)

end

end A294016.P7702519170899721123

namespace A294016

/-- `A000203(n+1)+A024816(n+1)+A153485(n+1)-A004125(n+1)` -/
def P7702519170899721123.Spec : Prop :=
  ∀ n, P7702519170899721123.a n = A294016 (n + 1)

end A294016

/-! ## A294016.P2555352714254047153

`∑[2*(∑{d}[n+1, #]-n)-1]`
-/

namespace A294016.P2555352714254047153
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (((∑ d ∈ Nat.divisors (f2 n), d : ℕ) : ℤ) - (n : ℤ)) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A294016.P2555352714254047153

namespace A294016

/-- `∑[2*(∑{d}[n+1, #]-n)-1]` -/
def P2555352714254047153.Spec : Prop :=
  ∀ n, P2555352714254047153.a n = A294016 (n + 1)

end A294016

/-! ## A294016.P2823156176282717253

`∑[∑{d}[n+1, #+#]-Δ[n²]]`
-/

namespace A294016.P2823156176282717253
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f2 n), (d + d) : ℕ) : ℤ) - ((f3 (n + 1) : ℤ) - (f3 n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A294016.P2823156176282717253

namespace A294016

/-- `∑[∑{d}[n+1, #+#]-Δ[n²]]` -/
def P2823156176282717253.Spec : Prop :=
  ∀ n, P2823156176282717253.a n = A294016 (n + 1)

end A294016

/-! ## A294016.P2141238915953438167

`∑[∑{d}[n+1, #+#]]-(n+1)²`
-/

namespace A294016.P2141238915953438167
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), (d + d)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ((n + 1) ^ 2 : ℤ)

end

end A294016.P2141238915953438167

namespace A294016

/-- `∑[∑{d}[n+1, #+#]]-(n+1)²` -/
def P2141238915953438167.Spec : Prop :=
  ∀ n, P2141238915953438167.a n = A294016 (n + 1)

end A294016

/-! ## A294016.P2063178395897396398

`∑[2*∑{d}[n+1, #%(n+1)]+1]`
-/

namespace A294016.P2063178395897396398
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (∑ d ∈ Nat.divisors (f2 n), d % (n + 1)) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A294016.P2063178395897396398

namespace A294016

/-- `∑[2*∑{d}[n+1, #%(n+1)]+1]` -/
def P2063178395897396398.Spec : Prop :=
  ∀ n, (P2063178395897396398.a n : ℤ) = A294016 (n + 1)

end A294016

/-! ## A294016.P5563557506385245675

`∑[A294015(n+1)]`
-/

namespace A294016.P5563557506385245675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294015 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A294016.P5563557506385245675

namespace A294016

/-- `∑[A294015(n+1)]` -/
def P5563557506385245675.Spec : Prop :=
  ∀ n, P5563557506385245675.a n = A294016 (n + 1)

end A294016

/-! ## A294016.P11050352238841150712

`A294629(n+1)/4`
-/

namespace A294016.P11050352238841150712
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A294629 (n + 1) : ℚ) / 4

end

end A294016.P11050352238841150712

namespace A294016

/-- `A294629(n+1)/4` -/
def P11050352238841150712.Spec : Prop :=
  ∀ n, P11050352238841150712.a n = (A294016 (n + 1) : ℚ)

end A294016

/-! ## A294016.P12111944996710768107

`∑[A091818(n+1)+1]`
-/

namespace A294016.P12111944996710768107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091818 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A294016.P12111944996710768107

namespace A294016

/-- `∑[A091818(n+1)+1]` -/
def P12111944996710768107.Spec : Prop :=
  ∀ n, P12111944996710768107.a n = A294016 (n + 1)

end A294016

/-! ## A294016.P2716118187630343812

`∑[A062967(n+1)+2]`
-/

namespace A294016.P2716118187630343812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062967 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A294016.P2716118187630343812

namespace A294016

/-- `∑[A062967(n+1)+2]` -/
def P2716118187630343812.Spec : Prop :=
  ∀ n, P2716118187630343812.a n = A294016 (n + 1)

end A294016

/-! ## A294016.P1329358293864023718

`∑[A294628(n+1)/4]`
-/

namespace A294016.P1329358293864023718
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A294628 (n + 1) : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A294016.P1329358293864023718

namespace A294016

/-- `∑[A294628(n+1)/4]` -/
def P1329358293864023718.Spec : Prop :=
  ∀ n, P1329358293864023718.a n = (A294016 (n + 1) : ℚ)

end A294016

/-! ## A294016.P79877259436168861

`∑[2*A001065(n+1)+1]`
-/

namespace A294016.P79877259436168861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001065 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A294016.P79877259436168861

namespace A294016

/-- `∑[2*A001065(n+1)+1]` -/
def P79877259436168861.Spec : Prop :=
  ∀ n, P79877259436168861.a n = A294016 (n + 1)

end A294016

/-! ## A294016.P15102895853807106329

`A327329(n+1)-(n+1)²`
-/

namespace A294016.P15102895853807106329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327329 (n + 1) - ((n + 1) ^ 2 : ℤ)

end

end A294016.P15102895853807106329

namespace A294016

/-- `A327329(n+1)-(n+1)²` -/
def P15102895853807106329.Spec : Prop :=
  ∀ n, P15102895853807106329.a n = A294016 (n + 1)

end A294016

/-! ## A294016.P1330642194869494509

`∑[A002659(n+1)-2*n]`
-/

namespace A294016.P1330642194869494509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002659 (n + 1) - (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A294016.P1330642194869494509

namespace A294016

/-- `∑[A002659(n+1)-2*n]` -/
def P1330642194869494509.Spec : Prop :=
  ∀ n, P1330642194869494509.a n = A294016 (n + 1)

end A294016

/-! ## A294016.P8760325551356310182

`∑[A074400(n+1)-Δ[n²]]`
-/

namespace A294016.P8760325551356310182
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074400 (n + 1) - ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A294016.P8760325551356310182

namespace A294016

/-- `∑[A074400(n+1)-Δ[n²]]` -/
def P8760325551356310182.Spec : Prop :=
  ∀ n, P8760325551356310182.a n = A294016 (n + 1)

end A294016

/-! ## A294016.P5491333523352152248

`2*A153485(n+1)+n+1`
-/

namespace A294016.P5491333523352152248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A153485 (n + 1) + (n + 1 : ℤ)

end

end A294016.P5491333523352152248

namespace A294016

/-- `2*A153485(n+1)+n+1` -/
def P5491333523352152248.Spec : Prop :=
  ∀ n, P5491333523352152248.a n = A294016 (n + 1)

end A294016

/-! ## A294016.P13593119773939077356

`∑[2*(A000203(n+1)-n)-1]`
-/

namespace A294016.P13593119773939077356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A000203 (n + 1) - (n : ℤ)) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A294016.P13593119773939077356

namespace A294016

/-- `∑[2*(A000203(n+1)-n)-1]` -/
def P13593119773939077356.Spec : Prop :=
  ∀ n, P13593119773939077356.a n = A294016 (n + 1)

end A294016

/-!
# A294017: Partial sums of A294016.

The programs for A294017, the canonical program `A294017.P13698229959135733253` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A294017 has offset 1).

The definition of A294017 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A072481, A175254, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A294017.P13698229959135733253

`A175254(n+1)-A072481(n+1)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A294017

/-- `A175254(n+1)-A072481(n+1)` -/
def P13698229959135733253.Spec : Prop :=
  ∀ n, P13698229959135733253.a n = A294017 (n + 1)

theorem P13698229959135733253.correct : P13698229959135733253.Spec := by
  intro n
  simp only [A294017, Nat.add_sub_cancel]

end A294017

/-! ## A294017.P2224779645923463541

`∑[∑[2*(∑{d}[n+1, #]-n)-1]]`
-/

namespace A294017.P2224779645923463541
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (((∑ d ∈ Nat.divisors (f3 n), d : ℕ) : ℤ) - (n : ℤ)) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A294017.P2224779645923463541

namespace A294017

/-- `∑[∑[2*(∑{d}[n+1, #]-n)-1]]` -/
def P2224779645923463541.Spec : Prop :=
  ∀ n, P2224779645923463541.a n = A294017 (n + 1)

end A294017

/-! ## A294017.P14755208641973228831

`∑[∑[∑{d}[n+1, #+#]]-(n+1)²]`
-/

namespace A294017.P14755208641973228831
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f3 n), (d + d)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - ((n + 1) ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A294017.P14755208641973228831

namespace A294017

/-- `∑[∑[∑{d}[n+1, #+#]]-(n+1)²]` -/
def P14755208641973228831.Spec : Prop :=
  ∀ n, P14755208641973228831.a n = A294017 (n + 1)

end A294017

/-! ## A294017.P3783707855845953800

`∑[A294016(n+1)]`
-/

namespace A294017.P3783707855845953800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294016 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A294017.P3783707855845953800

namespace A294017

/-- `∑[A294016(n+1)]` -/
def P3783707855845953800.Spec : Prop :=
  ∀ n, P3783707855845953800.a n = A294017 (n + 1)

end A294017

/-! ## A294017.P10254333534169120203

`A294630(n+1)/4`
-/

namespace A294017.P10254333534169120203
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A294630 (n + 1) : ℚ) / 4

end

end A294017.P10254333534169120203

namespace A294017

/-- `A294630(n+1)/4` -/
def P10254333534169120203.Spec : Prop :=
  ∀ n, P10254333534169120203.a n = (A294017 (n + 1) : ℚ)

end A294017

/-! ## A294017.P8979874675005216118

`∑[∑[A294015(n+1)]]`
-/

namespace A294017.P8979874675005216118
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294015 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A294017.P8979874675005216118

namespace A294017

/-- `∑[∑[A294015(n+1)]]` -/
def P8979874675005216118.Spec : Prop :=
  ∀ n, P8979874675005216118.a n = A294017 (n + 1)

end A294017

/-! ## A294017.P2190825849182254444

`∑[A294629(n+1)/4]`
-/

namespace A294017.P2190825849182254444
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A294629 (n + 1) : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A294017.P2190825849182254444

namespace A294017

/-- `∑[A294629(n+1)/4]` -/
def P2190825849182254444.Spec : Prop :=
  ∀ n, P2190825849182254444.a n = (A294017 (n + 1) : ℚ)

end A294017

/-! ## A294017.P3349272907533753309

`∑[∑[A091818(n+1)+1]]`
-/

namespace A294017.P3349272907533753309
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091818 (n + 1) + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A294017.P3349272907533753309

namespace A294017

/-- `∑[∑[A091818(n+1)+1]]` -/
def P3349272907533753309.Spec : Prop :=
  ∀ n, P3349272907533753309.a n = A294017 (n + 1)

end A294017

/-! ## A294017.P16439722857465280781

`∑[∑[A062967(n+1)+2]]`
-/

namespace A294017.P16439722857465280781
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062967 (n + 1) + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A294017.P16439722857465280781

namespace A294017

/-- `∑[∑[A062967(n+1)+2]]` -/
def P16439722857465280781.Spec : Prop :=
  ∀ n, P16439722857465280781.a n = A294017 (n + 1)

end A294017

/-! ## A294017.P8379617706432973132

`∑[∑[2*A001065(n+1)+1]]`
-/

namespace A294017.P8379617706432973132
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001065 (n + 1) + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A294017.P8379617706432973132

namespace A294017

/-- `∑[∑[2*A001065(n+1)+1]]` -/
def P8379617706432973132.Spec : Prop :=
  ∀ n, P8379617706432973132.a n = A294017 (n + 1)

end A294017

/-! ## A294017.P7474548955312413642

`∑[(n+1)²-A067436(n+1)]`
-/

namespace A294017.P7474548955312413642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - A067436 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A294017.P7474548955312413642

namespace A294017

/-- `∑[(n+1)²-A067436(n+1)]` -/
def P7474548955312413642.Spec : Prop :=
  ∀ n, P7474548955312413642.a n = A294017 (n + 1)

end A294017

/-! ## A294017.P14478181586088675968

`∑[A327329(n+1)-(n+1)²]`
-/

namespace A294017.P14478181586088675968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327329 (n + 1) - ((n + 1) ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A294017.P14478181586088675968

namespace A294017

/-- `∑[A327329(n+1)-(n+1)²]` -/
def P14478181586088675968.Spec : Prop :=
  ∀ n, P14478181586088675968.a n = A294017 (n + 1)

end A294017

/-! ## A294017.P742796793833209414

`∑[∑[A002659(n+1)-2*n]]`
-/

namespace A294017.P742796793833209414
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002659 (n + 1) - (2 * n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A294017.P742796793833209414

namespace A294017

/-- `∑[∑[A002659(n+1)-2*n]]` -/
def P742796793833209414.Spec : Prop :=
  ∀ n, P742796793833209414.a n = A294017 (n + 1)

end A294017

/-! ## A294017.P3476208570541152586

`∑[∑[2*(A000203(n+1)-n)-1]]`
-/

namespace A294017.P3476208570541152586
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A000203 (n + 1) - (n : ℤ)) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A294017.P3476208570541152586

namespace A294017

/-- `∑[∑[2*(A000203(n+1)-n)-1]]` -/
def P3476208570541152586.Spec : Prop :=
  ∀ n, P3476208570541152586.a n = A294017 (n + 1)

end A294017

/-! ## A294017.P8945351848615668572

`A000217(n+1)+2*A123329(n)`
-/

namespace A294017.P8945351848615668572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 1) + 2 * A123329 n

end

end A294017.P8945351848615668572

namespace A294017

/-- `A000217(n+1)+2*A123329(n)` -/
def P8945351848615668572.Spec : Prop :=
  ∀ n, P8945351848615668572.a n = A294017 (n + 1)

end A294017

/-! ## A294017.P15418441962252187688

`∑[A024916(n+1)-A004125(n+1)]`
-/

namespace A294017.P15418441962252187688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024916 (n + 1) - A004125 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A294017.P15418441962252187688

namespace A294017

/-- `∑[A024916(n+1)-A004125(n+1)]` -/
def P15418441962252187688.Spec : Prop :=
  ∀ n, P15418441962252187688.a n = A294017 (n + 1)

end A294017

/-! ## A294017.P3660858451150602213

`A000330(n+1)-2*A072481(n+1)`
-/

namespace A294017.P3660858451150602213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 (n + 1) - 2 * A072481 (n + 1)

end

end A294017.P3660858451150602213

namespace A294017

/-- `A000330(n+1)-2*A072481(n+1)` -/
def P3660858451150602213.Spec : Prop :=
  ∀ n, P3660858451150602213.a n = A294017 (n + 1)

end A294017

/-! ## A294017.P15769794606262649455

`∑[∑[A237588(n+1)+A000203(n+1)]]`
-/

namespace A294017.P15769794606262649455
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237588 (n + 1) + A000203 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A294017.P15769794606262649455

namespace A294017

/-- `∑[∑[A237588(n+1)+A000203(n+1)]]` -/
def P15769794606262649455.Spec : Prop :=
  ∀ n, P15769794606262649455.a n = A294017 (n + 1)

end A294017

/-! ## A294017.P7782865553667675450

`∑[∑[A088580(n+1)-A033879(n+1)]]`
-/

namespace A294017.P7782865553667675450
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088580 (n + 1) - A033879 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A294017.P7782865553667675450

namespace A294017

/-- `∑[∑[A088580(n+1)-A033879(n+1)]]` -/
def P7782865553667675450.Spec : Prop :=
  ∀ n, P7782865553667675450.a n = A294017 (n + 1)

end A294017

/-! ## A294017.P280582221260308515

`A175254(n+1)+A123329(n)-A000292(n)`
-/

namespace A294017.P280582221260308515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175254 (n + 1) + (A123329 n - A000292 n)

end

end A294017.P280582221260308515

namespace A294017

/-- `A175254(n+1)+A123329(n)-A000292(n)` -/
def P280582221260308515.Spec : Prop :=
  ∀ n, P280582221260308515.a n = A294017 (n + 1)

end A294017

/-!
# A294018: Number of strict trees whose leaves are the parts of the integer partition with Heinz number n.

The programs for A294018, there is no canonical definition to state claims against.
-/

/-! ## A294018.P1326321848428814281

`A000120(A319138(n+1)^A170906(n+1))`
-/

namespace A294018.P1326321848428814281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (SequenceMachineLib.roundAway ((A319138 (n + 1) : ℚ) ^ (A170906 (n + 1) : ℤ))).toNat

end

end A294018.P1326321848428814281

/-! ## A294018.P17439136693080648143

`A000120(A319138(n+1)^A344879(n+1))`
-/

namespace A294018.P17439136693080648143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (SequenceMachineLib.roundAway ((A319138 (n + 1) : ℚ) ^ (A344879 (n + 1) : ℤ))).toNat

end

end A294018.P17439136693080648143

/-! ## A294018.P580597779415955889

`A000120(A319138(n+1)^A351450(n+1))`
-/

namespace A294018.P580597779415955889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (SequenceMachineLib.roundAway ((A319138 (n + 1) : ℚ) ^ (A351450 (n + 1) : ℤ))).toNat

end

end A294018.P580597779415955889

/-! ## A294018.P10066119451274906973

`xor(A075802(n+1), A296134(A290480(n+1)))`
-/

namespace A294018.P10066119451274906973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A075802 (n + 1)) (A296134 (A290480 (n + 1)).toNat)

end

end A294018.P10066119451274906973

/-! ## A294018.P10502220022807663084

`A000120(A319138(n+1)^A181819(3*n+2))`
-/

namespace A294018.P10502220022807663084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (SequenceMachineLib.roundAway ((A319138 (n + 1) : ℚ) ^ (A181819 (3 * n + 2) : ℤ))).toNat

end

end A294018.P10502220022807663084

/-!
# A294019: Number of same-trees whose leaves are the parts of the integer partition with Heinz number n.

The programs for A294019, there is no canonical definition to state claims against.
-/

/-! ## A294019.P3962211590086038647

`lcm(A294080(n+1), A303824(A059268(n)))`
-/

namespace A294019.P3962211590086038647
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A294080 (n + 1)) (A303824 (A059268 n).toNat)

end

end A294019.P3962211590086038647

/-! ## A294019.P11706252375165663293

`abs(A294080(n+1)%A005555(n))`
-/

namespace A294019.P11706252375165663293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (A294080 (n + 1)) (A005555 n)|

end

end A294019.P11706252375165663293

/-! ## A294019.P4475353943397440437

`abs(A294080(n+1))%A090848(n)`
-/

namespace A294019.P4475353943397440437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod |A294080 (n + 1)| (A090848 n)

end

end A294019.P4475353943397440437

/-! ## A294019.P8420186749060890668

`abs(A294080(n+1)^A115716(n))`
-/

namespace A294019.P8420186749060890668
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A294080 (n + 1) : ℚ) ^ (A115716 n : ℤ)|

end

end A294019.P8420186749060890668

/-! ## A294019.P4400886582726821981

`gcd(A294080(n+1), A348271(A019565(n)))`
-/

namespace A294019.P4400886582726821981
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A294080 (n + 1)) (A348271 (A019565 n).toNat)

end

end A294019.P4400886582726821981

/-! ## A294019.P9363519650405585861

`abs(A294080(A006094(n+1))+A294080(n+1))`
-/

namespace A294019.P9363519650405585861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A294080 (A006094 (n + 1)).toNat + A294080 (n + 1)|

end

end A294019.P9363519650405585861

/-! ## A294019.P17418609990746783793

`abs(A294080(n+1)/A294080(A000040(n+1)²))`
-/

namespace A294019.P17418609990746783793
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A294080 (n + 1) : ℚ) / (A294080 (A000040 (n + 1) ^ 2).toNat : ℚ)|

end

end A294019.P17418609990746783793

/-!
# A294020: Total number of elements after n-th stage of a hybrid cellular automaton formed by D-toothpicks and toothpicks (see Comments lines for precise definition).

The programs for A294020, there is no canonical definition to state claims against.
-/

/-! ## A294020.P16937498592130091522

`∑[A294021(n)]`
-/

namespace A294020.P16937498592130091522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294021 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A294020.P16937498592130091522

/-! ## A294020.P15242102933861439050

`A294021(round(sqrt(n²+1)))+a(n-1)` with `a(0)=0, a(1)=1`
-/

namespace A294020.P15242102933861439050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A294021 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat + a (n - 1)

end

end A294020.P15242102933861439050

/-! ## A294020.P17235154495566134860

`∑{d}[2^n, A294021(log2(#))]`
-/

namespace A294020.P17235154495566134860
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A294021 (SequenceMachineLib.roundAway (Real.logb 2 (d : ℝ))).toNat

end

end A294020.P17235154495566134860

/-!
# A294021: Number of elements added at n-th stage to the structure of the cellular automaton described in A294020.

The programs for A294021, there is no canonical definition to state claims against.
-/

/-! ## A294021.P17386439839436045150

`Δ[A294020(n-A294020(n)%2)]`
-/

namespace A294021.P17386439839436045150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294020 ((n : ℤ) - Int.tmod (A294020 n) 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A294021.P17386439839436045150

/-!
# A294022: Sum of the differences of the larger and smaller parts in the partitions of n into two parts with the larger part prime.

The programs for A294022, the canonical program `A294022.P1258060895145082735` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A294022 has offset 1).

The definition of A294022 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A294022.P1258060895145082735

`A294487(n+1)-A368058(n+1)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A294022

/-- `A294487(n+1)-A368058(n+1)` -/
def P1258060895145082735.Spec : Prop :=
  ∀ n, P1258060895145082735.a n = A294022 (n + 1)

theorem P1258060895145082735.correct : P1258060895145082735.Spec := by
  intro n
  simp only [A294022, Nat.add_sub_cancel]

end A294022

/-! ## A294022.P6315826238121178454

`A063955(A113638(n+1))-(A294111(n+2)-A056171(n+1))`
-/

namespace A294022.P6315826238121178454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063955 (A113638 (n + 1)).toNat - (A294111 (n + 2) - A056171 (n + 1))

end

end A294022.P6315826238121178454

namespace A294022

/-- `A063955(A113638(n+1))-(A294111(n+2)-A056171(n+1))` -/
def P6315826238121178454.Spec : Prop :=
  ∀ n, P6315826238121178454.a n = A294022 (n + 1)

end A294022

/-! ## A294022.P9576169470547100708

`∑[A282029(A282028(n))-A282029(n)]`
-/

namespace A294022.P9576169470547100708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282029 (A282028 n).toNat - A282029 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A294022.P9576169470547100708

namespace A294022

/-- `∑[A282029(A282028(n))-A282029(n)]` -/
def P9576169470547100708.Spec : Prop :=
  ∀ n, P9576169470547100708.a n = A294022 (n + 1)

end A294022

/-! ## A294022.P14419803238563460882

`∑{p}[A055773(n), #]-A294111(n+1)`
-/

namespace A294022.P14419803238563460882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055773 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ p ∈ Nat.primeFactors (f1 n).natAbs, p : ℕ) : ℤ) - A294111 (n + 1)

end

end A294022.P14419803238563460882

namespace A294022

/-- `∑{p}[A055773(n), #]-A294111(n+1)` -/
def P14419803238563460882.Spec : Prop :=
  ∀ n, P14419803238563460882.a n = A294022 (n + 1)

end A294022

/-!
# A294023: Sum of the differences of the larger and smaller parts in the partitions of n into two parts with the smaller part prime.

The programs for A294023, the canonical program `A294023.P12009949958102323992` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A294023 has offset 1).

The definition of A294023 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056172, A063960, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A294023.P12009949958102323992

`(n+1)*A056172(n+1)-2*A063960(n+1)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A294023

/-- `(n+1)*A056172(n+1)-2*A063960(n+1)` -/
def P12009949958102323992.Spec : Prop :=
  ∀ n, P12009949958102323992.a n = A294023 (n + 1)

theorem P12009949958102323992.correct : P12009949958102323992.Spec := by
  intro n
  simp only [A294023, Nat.add_sub_cancel]

end A294023

/-! ## A294023.P4988151660142824674

`∑[∑[char[2*p?[xor(1, n)]]]]`
-/

namespace A294023.P4988151660142824674
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * f4 (SequenceMachineLib.nth (fun j => (f4 j).Prime) n)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A294023.P4988151660142824674

namespace A294023

/-- `∑[∑[char[2*p?[xor(1, n)]]]]` -/
def P4988151660142824674.Spec : Prop :=
  ∀ n, (P4988151660142824674.a n : ℤ) = A294023 (n + 1)

end A294023

/-! ## A294023.P1414984745327983063

`∑[A056172(or(1, n))]`
-/

namespace A294023.P1414984745327983063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056172 (Nat.lor 1 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A294023.P1414984745327983063

namespace A294023

/-- `∑[A056172(or(1, n))]` -/
def P1414984745327983063.Spec : Prop :=
  ∀ n, P1414984745327983063.a n = A294023 (n + 1)

end A294023

/-! ## A294023.P11450607114631831435

`∑[A242096(or(1, n))]`
-/

namespace A294023.P11450607114631831435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242096 (Nat.lor 1 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A294023.P11450607114631831435

namespace A294023

/-- `∑[A242096(or(1, n))]` -/
def P11450607114631831435.Spec : Prop :=
  ∀ n, P11450607114631831435.a n = A294023 (n + 1)

end A294023

/-! ## A294023.P3371867604437817393

`∑[n-A282029(n)]`
-/

namespace A294023.P3371867604437817393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A282029 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A294023.P3371867604437817393

namespace A294023

/-- `∑[n-A282029(n)]` -/
def P3371867604437817393.Spec : Prop :=
  ∀ n, P3371867604437817393.a n = A294023 (n + 1)

end A294023

/-! ## A294023.P3490080639674844727

`∑[abs(Δ[A242096(n)])]`
-/

namespace A294023.P3490080639674844727
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242096 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A294023.P3490080639674844727

namespace A294023

/-- `∑[abs(Δ[A242096(n)])]` -/
def P3490080639674844727.Spec : Prop :=
  ∀ n, P3490080639674844727.a n = A294023 (n + 1)

end A294023

/-! ## A294023.P8387806247877295439

`∑[A230980(floor(n/2))]`
-/

namespace A294023.P8387806247877295439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 ⌊(n : ℚ) / 2⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A294023.P8387806247877295439

namespace A294023

/-- `∑[A230980(floor(n/2))]` -/
def P8387806247877295439.Spec : Prop :=
  ∀ n, P8387806247877295439.a n = A294023 (n + 1)

end A294023

/-! ## A294023.P16879934547678913452

`∑[∑[char[A100484(n+1)]]]`
-/

namespace A294023.P16879934547678913452
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100484 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A294023.P16879934547678913452

namespace A294023

/-- `∑[∑[char[A100484(n+1)]]]` -/
def P16879934547678913452.Spec : Prop :=
  ∀ n, (P16879934547678913452.a n : ℤ) = A294023 (n + 1)

end A294023

/-! ## A294023.P10638056691365958937

`∑[∑[char[2*A000040(n+1)]]]`
-/

namespace A294023.P10638056691365958937
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000040 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A294023.P10638056691365958937

namespace A294023

/-- `∑[∑[char[2*A000040(n+1)]]]` -/
def P10638056691365958937.Spec : Prop :=
  ∀ n, (P10638056691365958937.a n : ℤ) = A294023 (n + 1)

end A294023

/-! ## A294023.P2418669081273061204

`∑[∑[char[2*A006530(n+2)]]]`
-/

namespace A294023.P2418669081273061204
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A006530 (n + 2)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A294023.P2418669081273061204

namespace A294023

/-- `∑[∑[char[2*A006530(n+2)]]]` -/
def P2418669081273061204.Spec : Prop :=
  ∀ n, (P2418669081273061204.a n : ℤ) = A294023 (n + 1)

end A294023

/-! ## A294023.P1292600330704727801

`∑[∑[char[2*A020639(n+2)]]]`
-/

namespace A294023.P1292600330704727801
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A020639 (n + 2)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A294023.P1292600330704727801

namespace A294023

/-- `∑[∑[char[2*A020639(n+2)]]]` -/
def P1292600330704727801.Spec : Prop :=
  ∀ n, (P1292600330704727801.a n : ℤ) = A294023 (n + 1)

end A294023

/-! ## A294023.P10361430685795628244

`∑[A056172(A004277(n)-n)]`
-/

namespace A294023.P10361430685795628244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056172 (A004277 n - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A294023.P10361430685795628244

namespace A294023

/-- `∑[A056172(A004277(n)-n)]` -/
def P10361430685795628244.Spec : Prop :=
  ∀ n, P10361430685795628244.a n = A294023 (n + 1)

end A294023

/-! ## A294023.P7791471019739925079

`∑[∑[A000035(A002126(n))]-1]`
-/

namespace A294023.P7791471019739925079
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A002126 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A294023.P7791471019739925079

namespace A294023

/-- `∑[∑[A000035(A002126(n))]-1]` -/
def P7791471019739925079.Spec : Prop :=
  ∀ n, P7791471019739925079.a n = A294023 (n + 1)

end A294023

/-! ## A294023.P8292793811661470299

`∑[A242096(n+1)+A242096(n)]`
-/

namespace A294023.P8292793811661470299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242096 (n + 1) + A242096 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A294023.P8292793811661470299

namespace A294023

/-- `∑[A242096(n+1)+A242096(n)]` -/
def P8292793811661470299.Spec : Prop :=
  ∀ n, P8292793811661470299.a n = A294023 (n + 1)

end A294023

/-! ## A294023.P10774420745283331457

`A294109(n+1)-A063960(n+1)`
-/

namespace A294023.P10774420745283331457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294109 (n + 1) - A063960 (n + 1)

end

end A294023.P10774420745283331457

namespace A294023

/-- `A294109(n+1)-A063960(n+1)` -/
def P10774420745283331457.Spec : Prop :=
  ∀ n, P10774420745283331457.a n = A294023 (n + 1)

end A294023

/-! ## A294023.P775790659289680490

`∑[A056172(n+1)]-A056172(n+1)`
-/

namespace A294023.P775790659289680490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056172 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A056172 (n + 1)

end

end A294023.P775790659289680490

namespace A294023

/-- `∑[A056172(n+1)]-A056172(n+1)` -/
def P775790659289680490.Spec : Prop :=
  ∀ n, P775790659289680490.a n = A294023 (n + 1)

end A294023

/-! ## A294023.P8411605438386979488

`∑[A056172(A010051(2*(n+1))+n)]`
-/

namespace A294023.P8411605438386979488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056172 (A010051 (2 * (n + 1)) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A294023.P8411605438386979488

namespace A294023

/-- `∑[A056172(A010051(2*(n+1))+n)]` -/
def P8411605438386979488.Spec : Prop :=
  ∀ n, P8411605438386979488.a n = A294023 (n + 1)

end A294023

/-! ## A294023.P16708139883694081814

`∑[∑[A353478(n+1)]-A353478(n+1)]`
-/

namespace A294023.P16708139883694081814
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353478 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A353478 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A294023.P16708139883694081814

namespace A294023

/-- `∑[∑[A353478(n+1)]-A353478(n+1)]` -/
def P16708139883694081814.Spec : Prop :=
  ∀ n, P16708139883694081814.a n = A294023 (n + 1)

end A294023

/-! ## A294023.P9339109742869460851

`∑[A266714(n+1)-A266715(n+1)]`
-/

namespace A294023.P9339109742869460851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266714 (n + 1) - A266715 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A294023.P9339109742869460851

namespace A294023

/-- `∑[A266714(n+1)-A266715(n+1)]` -/
def P9339109742869460851.Spec : Prop :=
  ∀ n, P9339109742869460851.a n = A294023 (n + 1)

end A294023

/-!
# A294024: Number of set partitions of [2n] such that the maximal absolute difference between consecutive elements within a block equals n.

The programs for A294024, there is no canonical definition to state claims against.
-/

/-! ## A294024.P11427023691495351194

`A287213(2*n²+1)`
-/

namespace A294024.P11427023691495351194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287213 (2 * n ^ 2 + 1)

end

end A294024.P11427023691495351194

/-! ## A294024.P8911379360778593729

`A287213(A058331(n))-A000038(3*n+4)`
-/

namespace A294024.P8911379360778593729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287213 (A058331 n).toNat - A000038 (3 * n + 4)

end

end A294024.P8911379360778593729

/-! ## A294024.P13672839126207261111

`A287213(A058331(n))%A003517(2*(n+3))`
-/

namespace A294024.P13672839126207261111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A287213 (A058331 n).toNat) (A003517 (2 * (n + 3)))

end

end A294024.P13672839126207261111

/-!
# A294025: Odd abundant numbers with a record small gap to the next odd abundant number.

The programs for A294025, there is no canonical definition to state claims against.
-/

/-! ## A294025.P14745597999645381356

`A006038(A239869(n+1)^A175788(2*(n+2)))`
-/

namespace A294025.P14745597999645381356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006038 (SequenceMachineLib.roundAway ((A239869 (n + 1) : ℚ) ^ (A175788 (2 * (n + 2)) : ℤ))).toNat

end

end A294025.P14745597999645381356

/-!
# A294026: Odd unitary abundant numbers with a record small gap to the next odd unitary abundant number.

The programs for A294026, there is no canonical definition to state claims against.
-/

/-! ## A294026.P2207794750115988787

`A112643(lt[A329452(n), 5]+1)`
-/

namespace A294026.P2207794750115988787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329452 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112643 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A294026.P2207794750115988787

/-!
# A294028: Composite numbers k such that k | 1 - A078712(k).

The programs for A294028, there is no canonical definition to state claims against.
-/

/-! ## A294028.P6808164124066123983

`A316676(∑[A079973(2*(n+2))])`
-/

namespace A294028.P6808164124066123983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079973 (2 * (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316676 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A294028.P6808164124066123983

/-!
# A294029: Values of bsigma(k) = bsigma(k+1), where bsigma is the sum of the bi-unitary divisors (A188999).

The programs for A294029, there is no canonical definition to state claims against.
-/

/-! ## A294029.P9013923726637260599

`A188999(A293183(n+1))`
-/

namespace A294029.P9013923726637260599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188999 (A293183 (n + 1)).toNat

end

end A294029.P9013923726637260599

/-! ## A294029.P12167915356497865979

`A324706(A293183(n+1)+A091225(n))`
-/

namespace A294029.P12167915356497865979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324706 (A293183 (n + 1) + A091225 n).toNat

end

end A294029.P12167915356497865979

/-! ## A294029.P4484786666215195792

`A069184(A293183(n+1)+A029441(n))`
-/

namespace A294029.P4484786666215195792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069184 (A293183 (n + 1) + A029441 n).toNat

end

end A294029.P4484786666215195792

/-!
# A294030: Values of bphi(k) = bphi(k+1), where bphi is the bi-unitary analog of Euler's totient function (A116550).

The programs for A294030, there is no canonical definition to state claims against.
-/

/-! ## A294030.P10925123353620839945

`A116550(A293184(n+1))`
-/

namespace A294030.P10925123353620839945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116550 (A293184 (n + 1)).toNat

end

end A294030.P10925123353620839945

/-! ## A294030.P3740737885707854450

`A116550(eq[A116550(n+1), A116550(n+2)]+1)`
-/

namespace A294030.P3740737885707854450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116550 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116550 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116550 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A294030.P3740737885707854450

/-!
# A294032: Triangle read by rows, T(n, k) = Pochhammer(3, k)*Stirling2(3 + n, 3 + k) for n >= 0 and 0 <= k <= n.

The programs for A294032, there is no canonical definition to state claims against.
-/

/-! ## A294032.P2785429286265042746

`A053440(comp[∑[n]])/2`
-/

namespace A294032.P2785429286265042746
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053440 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) : ℚ) / 2

end

end A294032.P2785429286265042746

/-! ## A294032.P3761059316157614243

`floor(A053440(comp[A000217(n)])/2)`
-/

namespace A294032.P3761059316157614243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A053440 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n) : ℚ) / 2⌋

end

end A294032.P3761059316157614243

/-! ## A294032.P8913326985104561592

`A053440(comp[A000217(n)])/2*A033999(n)²`
-/

namespace A294032.P8913326985104561592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053440 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n) : ℚ) / 2 * (A033999 n ^ 2 : ℚ)

end

end A294032.P8913326985104561592

/-! ## A294032.P4260625115702474894

`A000035(2*(n+2))+A053440(comp[A000217(n)])/2`
-/

namespace A294032.P4260625115702474894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000035 (2 * (n + 2)) : ℚ) + (A053440 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n) : ℚ) / 2

end

end A294032.P4260625115702474894

/-! ## A294032.P12015048042818750619

`A053440(comp[A000217(n)])/2*A014963(6*(n+2))`
-/

namespace A294032.P12015048042818750619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053440 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n) : ℚ) / 2 * (A014963 (6 * (n + 2)) : ℚ)

end

end A294032.P12015048042818750619

/-!
# A294034: Triangle read by rows, expansion of exp(x*z)*z*((exp(z) + 1)/((exp(z) + 2*exp(-z/2)*cos(z*sqrt(3)/2))/3) -1), for n >= 1 and 0 <= k <= n-1.

The programs for A294034, there is no canonical definition to state claims against.
-/

/-! ## A294034.P2925039834108631631

`or(A215060(n), A215062(n))*A002024(n+1)`
-/

namespace A294034.P2925039834108631631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A215060 n) (A215062 n) * A002024 (n + 1)

end

end A294034.P2925039834108631631

/-! ## A294034.P17612570624466557187

`(A003056(n)+1)*or(A215060(n), A215062(n))`
-/

namespace A294034.P17612570624466557187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A003056 n + 1) * Int.lor (A215060 n) (A215062 n)

end

end A294034.P17612570624466557187

/-! ## A294034.P3584389624727147341

`or(A215060(n), A215062(n))*A000194(2*(n+1))`
-/

namespace A294034.P3584389624727147341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A215060 n) (A215062 n) * A000194 (2 * (n + 1))

end

end A294034.P3584389624727147341

/-! ## A294034.P14101410536109667004

`or(A215060(n), A215062(n))*A349520(2*(n+1))`
-/

namespace A294034.P14101410536109667004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A215060 n) (A215062 n) * A349520 (2 * (n + 1))

end

end A294034.P14101410536109667004

/-! ## A294034.P7927089296314030874

`(A215062(n)+A215060(n)%A109449(n))*A002024(n+1)`
-/

namespace A294034.P7927089296314030874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A215062 n + Int.tmod (A215060 n) (A109449 n)) * A002024 (n + 1)

end

end A294034.P7927089296314030874

/-! ## A294034.P18260929331089629468

`∑[char[∑[n]]]*A215064(n)`
-/

namespace A294034.P18260929331089629468
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A215064 n

end

end A294034.P18260929331089629468

/-! ## A294034.P13198005644979470399

`A215064(n)*A349520(2*(n+1))`
-/

namespace A294034.P13198005644979470399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215064 n * A349520 (2 * (n + 1))

end

end A294034.P13198005644979470399

/-! ## A294034.P4183757319366426084

`A002024(n+1)*A215064(n)*A007318(∑[n])`
-/

namespace A294034.P4183757319366426084
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (n + 1) * A215064 n * A007318 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A294034.P4183757319366426084

/-! ## A294034.P12759008383173603633

`(A002024(n+1)*A215064(n))%(A000041(n)+2)`
-/

namespace A294034.P12759008383173603633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002024 (n + 1) * A215064 n) (A000041 n + 2)

end

end A294034.P12759008383173603633

/-! ## A294034.P5757041612948709377

`A002024(n+1)*A215064(n)*∏{p}[n, A001221(#)]`
-/

namespace A294034.P5757041612948709377
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (n + 1) * A215064 n * (∏ p ∈ Nat.primeFactors (f1 n), A001221 p)

end

end A294034.P5757041612948709377

/-!
# A294035: a(n) = 3^n*hypergeom([-n/3, (1-n)/3, (2-n)/3], [1, 1], -1).

The programs for A294035, there is no canonical definition to state claims against.
-/

/-! ## A294035.P9309752472845804529

`∑[A086571((n+2)!)]`
-/

namespace A294035.P9309752472845804529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086571 (Nat.factorial (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A294035.P9309752472845804529

/-! ## A294035.P15131423099061934247

`∑[A086571(∏[n+2])]`
-/

namespace A294035.P15131423099061934247
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086571 (∏ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A294035.P15131423099061934247

/-!
# A294036: a(n) = 4^n*hypergeom([-n/4, (1-n)/4, (2-n)/4, (3-n)/4], [1, 1, 1], 1).

The programs for A294036, there is no canonical definition to state claims against.
-/

/-! ## A294036.P8982186559043105772

`A004277(A000302(n))-A294037(n)`
-/

namespace A294036.P8982186559043105772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A000302 n).toNat - A294037 n

end

end A294036.P8982186559043105772

/-! ## A294036.P12854485574576549587

`A100577(A011782(2*(n+1)))-A294037(n)`
-/

namespace A294036.P12854485574576549587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100577 (A011782 (2 * (n + 1))).toNat - A294037 n

end

end A294036.P12854485574576549587

/-!
# A294037: a(n) = 4^n*hypergeom([-n/4, (1-n)/4, (2-n)/4, (3-n)/4], [1, 1, 1], -1).

The programs for A294037, there is no canonical definition to state claims against.
-/

/-! ## A294037.P15598994042968851687

`A000010(Δ[A004171(n)])-A294036(n)`
-/

namespace A294037.P15598994042968851687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004171 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (f1 (n + 1) - f1 n).toNat - A294036 n

end

end A294037.P15598994042968851687

/-! ## A294037.P14483607287988557722

`A000010(2*A004171(n))-A294036(n)`
-/

namespace A294037.P14483607287988557722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (2 * A004171 n).toNat - A294036 n

end

end A294037.P14483607287988557722

/-! ## A294037.P5486126014972101327

`A005843(A000302(n))-A294036(n)`
-/

namespace A294037.P5486126014972101327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A000302 n).toNat - A294036 n

end

end A294037.P5486126014972101327

/-!
# A294038: a(n) = Product_{k=0..n-1} n/gcd(n, A056040(k)).

The programs for A294038, there is no canonical definition to state claims against.
-/

/-! ## A294038.P4248416422013347031

`A058067(A324088(n+1))*A058067(n)`
-/

namespace A294038.P4248416422013347031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058067 (A324088 (n + 1)).toNat * A058067 n

end

end A294038.P4248416422013347031

/-!
# A294039: a(n) = e*Gamma(2*n,1).

The programs for A294039, there is no canonical definition to state claims against.
-/

/-! ## A294039.P15676929469454982195

`floor(e*comp[2*n]!)`
-/

namespace A294039.P15676929469454982195
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.exp 1 * (Nat.factorial (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) : ℝ)⌋

end

end A294039.P15676929469454982195

/-! ## A294039.P564154152932529815

`record[-xor(1, n*a(n-1))]` with `a(0)=2, a(1)=2`
-/

namespace A294039.P564154152932529815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 2] fun n f1 =>
  -Int.xor 1 ((n : ℤ) * f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A294039.P564154152932529815

/-! ## A294039.P12995066898537939331

`A000522(Δ[n²])`
-/

namespace A294039.P12995066898537939331
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000522 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A294039.P12995066898537939331

/-! ## A294039.P4613868991686790065

`record[A000522(xor(1, n))]`
-/

namespace A294039.P4613868991686790065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000522 (Nat.xor 1 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A294039.P4613868991686790065

/-! ## A294039.P6991198295406832425

`A007526(Δ[n²])+1`
-/

namespace A294039.P6991198295406832425
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007526 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 1

end

end A294039.P6991198295406832425

/-!
# A294040: a(n) = e*(Gamma(2*n,1) - Gamma(n,1)).

The programs for A294040, there is no canonical definition to state claims against.
-/

/-! ## A294040.P18176180534598238832

`record[Δ[A000522(A077814(n))]]`
-/

namespace A294040.P18176180534598238832
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000522 (A077814 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A294040.P18176180534598238832

/-! ## A294040.P10863464016878379491

`record[Δ[A000522(A130845(n))]]`
-/

namespace A294040.P10863464016878379491
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000522 (A130845 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A294040.P10863464016878379491

/-! ## A294040.P12517113909457782077

`(A054091(2*n)-A054091(n))/2`
-/

namespace A294040.P12517113909457782077
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054091 (2 * n) - A054091 n : ℚ) / 2

end

end A294040.P12517113909457782077

/-!
# A294041: a(n) = lcm(n^n, factorial(n)/factorial(floor(n/2))^2).

The programs for A294041, the canonical program `A294041.P5477244209015143992` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A294041 has offset 0).

The definition of A294041 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `lcm(n^n, n!/floor(n/2)!²)` (program `A294041.P5477244209015143992`, by `A294041.P5477244209015143992.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A294041.P5477244209015143992

`lcm(n^n, n!/floor(n/2)!²)`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A294041

/-- `lcm(n^n, n!/floor(n/2)!²)` -/
def P5477244209015143992.Spec : Prop :=
  ∀ n, (P5477244209015143992.a n : ℤ) = A294041 n

theorem P5477244209015143992.correct : P5477244209015143992.Spec := by
  intro n
  simp only [A294041]

end A294041

/-! ## A294041.P1616170768265641147

`lcm(A000312(n), A056040(n))`
-/

namespace A294041.P1616170768265641147
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000312 n) (A056040 n)

end

end A294041.P1616170768265641147

namespace A294041

/-- `lcm(A000312(n), A056040(n))` -/
def P1616170768265641147.Spec : Prop :=
  ∀ n, (P1616170768265641147.a n : ℤ) = A294041 n

end A294041

/-! ## A294041.P2624624721303053830

`lcm((-n)^n, A128014(n))`
-/

namespace A294041.P2624624721303053830
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-(n : ℤ)) ^ n) (A128014 n)

end

end A294041.P2624624721303053830

namespace A294041

/-- `lcm((-n)^n, A128014(n))` -/
def P2624624721303053830.Spec : Prop :=
  ∀ n, (P2624624721303053830.a n : ℤ) = A294041 n

end A294041

/-! ## A294041.P4795739488274014268

`lcm((xor(n, -1)+1)^n, A000984(floor(n/2)))`
-/

namespace A294041.P4795739488274014268
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((Int.xor (n : ℤ) (-1) + 1) ^ n) (A000984 ⌊(n : ℚ) / 2⌋.toNat)

end

end A294041.P4795739488274014268

namespace A294041

/-- `lcm((xor(n, -1)+1)^n, A000984(floor(n/2)))` -/
def P4795739488274014268.Spec : Prop :=
  ∀ n, (P4795739488274014268.a n : ℤ) = A294041 n

end A294041

/-! ## A294041.P15345134608658722066

`lcm(A274922(n)^n, A210736(n))`
-/

namespace A294041.P15345134608658722066
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A274922 n ^ n) (A210736 n)

end

end A294041.P15345134608658722066

namespace A294041

/-- `lcm(A274922(n)^n, A210736(n))` -/
def P15345134608658722066.Spec : Prop :=
  ∀ n, (P15345134608658722066.a n : ℤ) = A294041 n

end A294041

/-!
# A294042: Square array A(n,k), n >= 0, k >= 0, read by antidiagonals, where column k is the expansion of e.g.f.: exp((1+x)^k - 1).

The programs for A294042, there is no canonical definition to state claims against.
-/

/-! ## A294042.P6050322297152925881

`A183135(A135382(n+1))%A084865(n+1)`
-/

namespace A294042.P6050322297152925881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A183135 (A135382 (n + 1)).toNat) (A084865 (n + 1))

end

end A294042.P6050322297152925881

/-!
# A294043: a(n) = n! * [x^n] exp((1+x)^(n+1) - 1).

The programs for A294043, there is no canonical definition to state claims against.
-/

/-! ## A294043.P9124248068014836214

`A294042(A056220(n+1))`
-/

namespace A294043.P9124248068014836214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294042 (A056220 (n + 1)).toNat

end

end A294043.P9124248068014836214

/-! ## A294043.P7610862216563355997

`A294042(A004273((n+1)²))`
-/

namespace A294043.P7610862216563355997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294042 (A004273 ((n + 1) ^ 2)).toNat

end

end A294043.P7610862216563355997

/-! ## A294043.P15594279457271650616

`A294042(A163985((n+1)²))`
-/

namespace A294043.P15594279457271650616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294042 (A163985 ((n + 1) ^ 2)).toNat

end

end A294043.P15594279457271650616

/-! ## A294043.P6455835930820089646

`A294042(A001105(n+1)-1)`
-/

namespace A294043.P6455835930820089646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294042 (A001105 (n + 1) - 1).toNat

end

end A294043.P6455835930820089646

/-! ## A294043.P1315719146764255701

`A294042(2*A005563(n)+1)`
-/

namespace A294043.P1315719146764255701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294042 (2 * A005563 n + 1).toNat

end

end A294043.P1315719146764255701

/-!
# A294045: a(n) = n! * [x^n] exp((1+x)^n - 1).

The programs for A294045, there is no canonical definition to state claims against.
-/

/-! ## A294045.P5882773954308612125

`A294042(∑[4*n])`
-/

namespace A294045.P5882773954308612125
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294042 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A294045.P5882773954308612125

/-! ## A294045.P10962511876938814739

`A294042(A046092(n))+A185284(n)`
-/

namespace A294045.P10962511876938814739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294042 (A046092 n).toNat + A185284 n

end

end A294045.P10962511876938814739

/-! ## A294045.P13830041933460266249

`A294042(A046092(n))*A304042(n)`
-/

namespace A294045.P13830041933460266249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294042 (A046092 n).toNat * A304042 n

end

end A294045.P13830041933460266249

/-! ## A294045.P3794534871101059955

`lcm(A033999(n), A294042(A046092(n)))`
-/

namespace A294045.P3794534871101059955
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A294042 (A046092 n).toNat)

end

end A294045.P3794534871101059955

/-! ## A294045.P17376125946502554422

`and(A260196(n), A294042(A046092(n)))`
-/

namespace A294045.P17376125946502554422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A260196 n) (A294042 (A046092 n).toNat)

end

end A294045.P17376125946502554422

/-!
# A294046: Square array A(n,k), n >= 0, k >= 0, read by antidiagonals, where column k is the expansion of e.g.f.: exp(1/(1-x)^k - 1).

The programs for A294046, there is no canonical definition to state claims against.
-/

/-! ## A294046.P16110448162666105358

`A122300(A340986(n))`
-/

namespace A294046.P16110448162666105358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122300 (A340986 n).toNat

end

end A294046.P16110448162666105358

/-! ## A294046.P10456435820738741902

`A130573(A349971(n+1))`
-/

namespace A294046.P10456435820738741902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130573 (A349971 (n + 1)).toNat

end

end A294046.P10456435820738741902

/-! ## A294046.P5388574878473233628

`and(A003585(n+1), A349971(n+1))`
-/

namespace A294046.P5388574878473233628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A003585 (n + 1)) (A349971 (n + 1))

end

end A294046.P5388574878473233628

/-! ## A294046.P11806697093737538007

`A111660(A226031(n)+A077028(n))`
-/

namespace A294046.P11806697093737538007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111660 (A226031 n + A077028 n).toNat

end

end A294046.P11806697093737538007

/-!
# A294047: a(n) = n! * [x^n] exp(1/(1-x)^n - 1).

The programs for A294047, there is no canonical definition to state claims against.
-/

/-! ## A294047.P4088247058653012316

`A294046(∑[4*n])`
-/

namespace A294047.P4088247058653012316
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294046 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A294047.P4088247058653012316

/-! ## A294047.P16978015680673930661

`lcm(A009001(n), A294046(A046092(n)))`
-/

namespace A294047.P16978015680673930661
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A009001 n) (A294046 (A046092 n).toNat)

end

end A294047.P16978015680673930661

/-! ## A294047.P4578056193003438669

`or(A000035(n), A294046(A046092(n)))`
-/

namespace A294047.P4578056193003438669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000035 n) (A294046 (A046092 n).toNat)

end

end A294047.P4578056193003438669

/-! ## A294047.P5573150635989950383

`or(A007814(n+1), A294046(A046092(n)))`
-/

namespace A294047.P5573150635989950383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A007814 (n + 1)) (A294046 (A046092 n).toNat)

end

end A294047.P5573150635989950383

/-! ## A294047.P6699094044171592357

`A014963(A005901(n))*A294046(A046092(n))`
-/

namespace A294047.P6699094044171592357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A005901 n).toNat * A294046 (A046092 n).toNat

end

end A294047.P6699094044171592357

/-!
# A294048: Number of permutations of [n] avoiding {2143, 1432, 1324}.

The programs for A294048, there is no canonical definition to state claims against.
-/

/-! ## A294048.P5184193234125534251

`A248635(A118929(n))`
-/

namespace A294048.P5184193234125534251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248635 (A118929 n).toNat

end

end A294048.P5184193234125534251

/-! ## A294048.P7925238262907087298

`A248635(A148336(n))`
-/

namespace A294048.P7925238262907087298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248635 (A148336 n).toNat

end

end A294048.P7925238262907087298

/-! ## A294048.P2055835452854413279

`A076885(A361753(n))`
-/

namespace A294048.P2055835452854413279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076885 (A361753 n).toNat

end

end A294048.P2055835452854413279

/-!
# A294049: Number of binary strings of length n avoiding substrings 1000, 1011, 1101, or 1111.

The programs for A294049, there is no canonical definition to state claims against.
-/

/-! ## A294049.P15687820015608421656

`A278478(A279471(n+3))+A070048(3*n+2)`
-/

namespace A294049.P15687820015608421656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278478 (A279471 (n + 3)).toNat + A070048 (3 * n + 2)

end

end A294049.P15687820015608421656

/-! ## A294049.P10007428435176904173

`A000194(A003269(2*n+1)*A250120(n))`
-/

namespace A294049.P10007428435176904173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A003269 (2 * n + 1) * A250120 n).toNat

end

end A294049.P10007428435176904173

/-! ## A294049.P1076712932541867384

`A358220(A073617(n))+A070048(3*n+2)`
-/

namespace A294049.P1076712932541867384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358220 (A073617 n).toNat + A070048 (3 * n + 2)

end

end A294049.P1076712932541867384

/-!
# A294050: E.g.f.: exp(1/(1-x)^4 - 1).

The programs for A294050, there is no canonical definition to state claims against.
-/

/-! ## A294050.P12139062911091108834

`record[A294046(A052905(n))]`
-/

namespace A294050.P12139062911091108834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294046 (A052905 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A294050.P12139062911091108834

/-! ## A294050.P12727705228775364957

`A294046(A052905(n+2))`
-/

namespace A294050.P12727705228775364957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294046 (A052905 (n + 2)).toNat

end

end A294050.P12727705228775364957

/-! ## A294050.P1717042777764667320

`A294046(eq[4, A025581(n)])`
-/

namespace A294050.P1717042777764667320
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294046 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A294050.P1717042777764667320

/-! ## A294050.P7381601975375677719

`A294046(eq[9, A099375(n)])`
-/

namespace A294050.P7381601975375677719
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294046 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A294050.P7381601975375677719

/-! ## A294050.P2595170464505049101

`record[A294046(A055999(n)+1)]`
-/

namespace A294050.P2595170464505049101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294046 (A055999 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A294050.P2595170464505049101

/-! ## A294050.P8692193842230112666

`A294046(eq[5, A004736(n+1)])`
-/

namespace A294050.P8692193842230112666
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294046 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A294050.P8692193842230112666

/-! ## A294050.P14671253322056168519

`record[A294046(abs(A046691(n))-1)]`
-/

namespace A294050.P14671253322056168519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294046 (|A046691 n| - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A294050.P14671253322056168519

/-! ## A294050.P17267586441977684794

`record[A294046(A046691(n+1)-1)]`
-/

namespace A294050.P17267586441977684794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294046 (A046691 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A294050.P17267586441977684794

/-! ## A294050.P14486101898351368011

`record[A294046(A027379(n+1)-2)]`
-/

namespace A294050.P14486101898351368011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294046 (A027379 (n + 1) - 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A294050.P14486101898351368011

/-! ## A294050.P198960829500558258

`record[A294046(A055998(n+1)-2)]`
-/

namespace A294050.P198960829500558258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294046 (A055998 (n + 1) - 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A294050.P198960829500558258

/-!
# A294051: Expansion of e.g.f.: exp(1/(1-x)^5 - 1).

The programs for A294051, there is no canonical definition to state claims against.
-/

/-! ## A294051.P11623999216908837465

`record[A294046(A055999(n))]`
-/

namespace A294051.P11623999216908837465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294046 (A055999 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A294051.P11623999216908837465

/-! ## A294051.P15437622042799797679

`A294046(eq[5, A025581(n)])`
-/

namespace A294051.P15437622042799797679
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294046 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A294051.P15437622042799797679

/-! ## A294051.P13229026576722391386

`A294046(eq[11, A099375(n)])`
-/

namespace A294051.P13229026576722391386
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294046 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A294051.P13229026576722391386

/-! ## A294051.P7200127392275863898

`A294046(eq[32, A130321(n)])`
-/

namespace A294051.P7200127392275863898
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  32

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294046 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A294051.P7200127392275863898

/-! ## A294051.P17501846793098571309

`record[A294046(∑[A020705(n)])]`
-/

namespace A294051.P17501846793098571309
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020705 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294046 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A294051.P17501846793098571309

/-! ## A294051.P5655500351461346159

`record[A294046(A052905(n)-1)]`
-/

namespace A294051.P5655500351461346159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294046 (A052905 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A294051.P5655500351461346159

/-! ## A294051.P13356774035000619128

`record[A294046(A027379(n)+n)]`
-/

namespace A294051.P13356774035000619128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294046 (A027379 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A294051.P13356774035000619128

/-! ## A294051.P6484809806020772656

`record[A294046(A055998(n)+n)]`
-/

namespace A294051.P6484809806020772656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294046 (A055998 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A294051.P6484809806020772656

/-! ## A294051.P11262831365042218142

`record[A294046(abs(2-A046691(n)))]`
-/

namespace A294051.P11262831365042218142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294046 |2 - A046691 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A294051.P11262831365042218142

/-! ## A294051.P2785517460189202310

`record[A294046(A046691(n+1)-2)]`
-/

namespace A294051.P2785517460189202310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294046 (A046691 (n + 1) - 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A294051.P2785517460189202310

/-!
# A294052: Number of set partitions of [n] such that the maximal absolute difference between consecutive elements within a block equals three.

The programs for A294052, the canonical program `A294052.P16115692674983833928` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A294052 has offset 4).

The definition of A294052 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A287275, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A294052.P16115692674983833928

`A287275(n+4)-A001519(n+4)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A294052

/-- `A287275(n+4)-A001519(n+4)` -/
def P16115692674983833928.Spec : Prop :=
  ∀ n, P16115692674983833928.a n = A294052 (n + 4)

theorem P16115692674983833928.correct : P16115692674983833928.Spec := by
  intro n
  simp only [A294052, Nat.add_sub_cancel]

end A294052

/-! ## A294052.P8127078676541485945

`A287275(n+4)-Δ[A001906(n+3)]`
-/

namespace A294052.P8127078676541485945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001906 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287275 (n + 4) - (f1 (n + 1) - f1 n)

end

end A294052.P8127078676541485945

namespace A294052

/-- `A287275(n+4)-Δ[A001906(n+3)]` -/
def P8127078676541485945.Spec : Prop :=
  ∀ n, P8127078676541485945.a n = A294052 (n + 4)

end A294052

/-! ## A294052.P11624291523507759912

`A287213(∑[n+3]+7)`
-/

namespace A294052.P11624291523507759912
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287213 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A294052.P11624291523507759912

namespace A294052

/-- `A287213(∑[n+3]+7)` -/
def P11624291523507759912.Spec : Prop :=
  ∀ n, P11624291523507759912.a n = A294052 (n + 4)

end A294052

/-! ## A294052.P8003460295613838271

`A287213(Δ[A008778(n)]+6)+char[24]`
-/

namespace A294052.P8003460295613838271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  24

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287213 (f1 (n + 1) - f1 n + 6).toNat + ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A294052.P8003460295613838271

namespace A294052

/-- `A287213(Δ[A008778(n)]+6)+char[24]` -/
def P8003460295613838271.Spec : Prop :=
  ∀ n, P8003460295613838271.a n = A294052 (n + 4)

end A294052

/-! ## A294052.P12418360012570123168

`A287213(Δ[A008778(n)]+6)%A000108(n+5)`
-/

namespace A294052.P12418360012570123168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A287213 (f1 (n + 1) - f1 n + 6).toNat) (A000108 (n + 5))

end

end A294052.P12418360012570123168

namespace A294052

/-- `A287213(Δ[A008778(n)]+6)%A000108(n+5)` -/
def P12418360012570123168.Spec : Prop :=
  ∀ n, P12418360012570123168.a n = A294052 (n + 4)

end A294052

/-!
# A294053: Number of set partitions of [n] such that the maximal absolute difference between consecutive elements within a block equals four.

The programs for A294053, there is no canonical definition to state claims against.
-/

/-! ## A294053.P10906060874398460311

`A287276(n+5)-A287275(n+5)`
-/

namespace A294053.P10906060874398460311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287276 (n + 5) - A287275 (n + 5)

end

end A294053.P10906060874398460311

/-! ## A294053.P14151892802904098596

`A287213(A167499(n+3))`
-/

namespace A294053.P14151892802904098596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287213 (A167499 (n + 3)).toNat

end

end A294053.P14151892802904098596

/-! ## A294053.P2478410597370034625

`A287213(A155212(n)+13)`
-/

namespace A294053.P2478410597370034625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287213 (A155212 n + 13).toNat

end

end A294053.P2478410597370034625

/-! ## A294053.P4356042875479815005

`A287213(A056000(n)+15)`
-/

namespace A294053.P4356042875479815005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287213 (A056000 n + 15).toNat

end

end A294053.P4356042875479815005

/-!
# A294054: Number of set partitions of [n] such that the maximal absolute difference between consecutive elements within a block equals five.

The programs for A294054, there is no canonical definition to state claims against.
-/

/-! ## A294054.P17903094769124786972

`A287277(n+6)-A287276(n+6)`
-/

namespace A294054.P17903094769124786972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287277 (n + 6) - A287276 (n + 6)

end

end A294054.P17903094769124786972

/-! ## A294054.P639138059387486313

`A287213(A166136(n+4))`
-/

namespace A294054.P639138059387486313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287213 (A166136 (n + 4)).toNat

end

end A294054.P639138059387486313

/-! ## A294054.P17342332434545273967

`A287213(A056115(n)+21)`
-/

namespace A294054.P17342332434545273967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287213 (A056115 n + 21).toNat

end

end A294054.P17342332434545273967

/-! ## A294054.P2880294287539406288

`A287213(A167499(n+4)+1)`
-/

namespace A294054.P2880294287539406288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287213 (A167499 (n + 4) + 1).toNat

end

end A294054.P2880294287539406288

/-! ## A294054.P10363923800462729902

`A287213(A167487(n+4)-1)`
-/

namespace A294054.P10363923800462729902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287213 (A167487 (n + 4) - 1).toNat

end

end A294054.P10363923800462729902

/-!
# A294055: Number of set partitions of [n] such that the maximal absolute difference between consecutive elements within a block equals six.

The programs for A294055, there is no canonical definition to state claims against.
-/

/-! ## A294055.P3926719647304847112

`A287278(n+7)-A287277(n+7)`
-/

namespace A294055.P3926719647304847112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287278 (n + 7) - A287277 (n + 7)

end

end A294055.P3926719647304847112

/-! ## A294055.P10152004751551679733

`A287213(A167487(n+5))`
-/

namespace A294055.P10152004751551679733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287213 (A167487 (n + 5)).toNat

end

end A294055.P10152004751551679733

/-! ## A294055.P4198837566101664039

`A287213(A167614(n+5)+4)`
-/

namespace A294055.P4198837566101664039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287213 (A167614 (n + 5) + 4).toNat

end

end A294055.P4198837566101664039

/-! ## A294055.P181753601386110536

`A287213(A000124(n+6)+6)`
-/

namespace A294055.P181753601386110536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287213 (A000124 (n + 6) + 6).toNat

end

end A294055.P181753601386110536

/-! ## A294055.P4620325893301062637

`A287213(A000096(n+5)+8)`
-/

namespace A294055.P4620325893301062637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287213 (A000096 (n + 5) + 8).toNat

end

end A294055.P4620325893301062637

/-!
# A294056: Number of set partitions of [n] such that the maximal absolute difference between consecutive elements within a block equals seven.

The programs for A294056, there is no canonical definition to state claims against.
-/

/-! ## A294056.P11401927156637166591

`A287279(n+8)-A287278(n+8)`
-/

namespace A294056.P11401927156637166591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287279 (n + 8) - A287278 (n + 8)

end

end A294056.P11401927156637166591

/-! ## A294056.P3730189330685285033

`A287213(A167487(n+6)+1)`
-/

namespace A294056.P3730189330685285033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287213 (A167487 (n + 6) + 1).toNat

end

end A294056.P3730189330685285033

/-! ## A294056.P17922078927049092349

`A287213(A167499(n+6)+3)`
-/

namespace A294056.P17922078927049092349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287213 (A167499 (n + 6) + 3).toNat

end

end A294056.P17922078927049092349

/-! ## A294056.P15405944515297316511

`A287213(A000124(n+7)+7)`
-/

namespace A294056.P15405944515297316511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287213 (A000124 (n + 7) + 7).toNat

end

end A294056.P15405944515297316511

/-! ## A294056.P1356654688038119708

`A287213(A134869(n+7)+7)`
-/

namespace A294056.P1356654688038119708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287213 (A134869 (n + 7) + 7).toNat

end

end A294056.P1356654688038119708

/-!
# A294057: Number of set partitions of [n] such that the maximal absolute difference between consecutive elements within a block equals eight.

The programs for A294057, there is no canonical definition to state claims against.
-/

/-! ## A294057.P8824940600461005385

`A287280(n+9)-A287279(n+9)`
-/

namespace A294057.P8824940600461005385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287280 (n + 9) - A287279 (n + 9)

end

end A294057.P8824940600461005385

/-! ## A294057.P17694054452273944964

`A287213(A167487(n+7)+2)`
-/

namespace A294057.P17694054452273944964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287213 (A167487 (n + 7) + 2).toNat

end

end A294057.P17694054452273944964

/-! ## A294057.P16364069770844190278

`A287213(A000124(n+8)+8)`
-/

namespace A294057.P16364069770844190278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287213 (A000124 (n + 8) + 8).toNat

end

end A294057.P16364069770844190278

/-! ## A294057.P15530526712056095845

`A287213(A000096(n+7)+10)`
-/

namespace A294057.P15530526712056095845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287213 (A000096 (n + 7) + 10).toNat

end

end A294057.P15530526712056095845

/-! ## A294057.P1191798169396570690

`A287213(A000217(n+8)+9)`
-/

namespace A294057.P1191798169396570690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287213 (A000217 (n + 8) + 9).toNat

end

end A294057.P1191798169396570690

/-!
# A294058: Number of set partitions of [n] such that the maximal absolute difference between consecutive elements within a block equals nine.

The programs for A294058, there is no canonical definition to state claims against.
-/

/-! ## A294058.P8248634166179632762

`A287281(n+10)-A287280(n+10)`
-/

namespace A294058.P8248634166179632762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287281 (n + 10) - A287280 (n + 10)

end

end A294058.P8248634166179632762

/-! ## A294058.P5676445684160169545

`A287213(A077169(n+10)+5)`
-/

namespace A294058.P5676445684160169545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287213 (A077169 (n + 10) + 5).toNat

end

end A294058.P5676445684160169545

/-! ## A294058.P5935492135086070434

`A287213(eq[11, A131818(n+1)])`
-/

namespace A294058.P5935492135086070434
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287213 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A294058.P5935492135086070434

/-! ## A294058.P14277667030345179425

`A287213(A000217(n+10)-n)`
-/

namespace A294058.P14277667030345179425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287213 (A000217 (n + 10) - (n : ℤ)).toNat

end

end A294058.P14277667030345179425

/-! ## A294058.P4515553678633277787

`A287213(eq[10, A002260(n+1)]+1)`
-/

namespace A294058.P4515553678633277787
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287213 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A294058.P4515553678633277787

/-!
# A294059: Number of set partitions of [n] such that the maximal absolute difference between consecutive elements within a block equals ten.

The programs for A294059, there is no canonical definition to state claims against.
-/

/-! ## A294059.P6485642224182534133

`A287282(n+11)-A287281(n+11)`
-/

namespace A294059.P6485642224182534133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287282 (n + 11) - A287281 (n + 11)

end

end A294059.P6485642224182534133

/-! ## A294059.P3489709369584501562

`A287213(A000217(n+10)+11)`
-/

namespace A294059.P3489709369584501562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287213 (A000217 (n + 10) + 11).toNat

end

end A294059.P3489709369584501562

/-! ## A294059.P16397446946067568795

`A287213(eq[12, A131818(n+1)])`
-/

namespace A294059.P16397446946067568795
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287213 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A294059.P16397446946067568795

/-!
# A294060: Sum of the differences of the larger and smaller parts in the partitions of n into two parts with the smaller part squarefree.

The programs for A294060, the canonical program `A294060.P329766733442987257` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A294060 has offset 1).

The definition of A294060 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A262869, A262871, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A294060.P329766733442987257

`(n+1)*A262869(n+1)-2*A262871(n+1)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A294060

/-- `(n+1)*A262869(n+1)-2*A262871(n+1)` -/
def P329766733442987257.Spec : Prop :=
  ∀ n, P329766733442987257.a n = A294060 (n + 1)

theorem P329766733442987257.correct : P329766733442987257.Spec := by
  intro n
  simp only [A294060, Nat.add_sub_cancel]

end A294060

/-! ## A294060.P10459973057483885698

`∑[∑[char[2*∏{p}[n, #]]]]`
-/

namespace A294060.P10459973057483885698
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (∏ p ∈ Nat.primeFactors (f4 n), p)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A294060.P10459973057483885698

namespace A294060

/-- `∑[∑[char[2*∏{p}[n, #]]]]` -/
def P10459973057483885698.Spec : Prop :=
  ∀ n, (P10459973057483885698.a n : ℤ) = A294060 (n + 1)

end A294060

/-! ## A294060.P17301997721004746092

`A262869(n)+a(n-1)` with `a(0)=0`
-/

namespace A294060.P17301997721004746092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A262869 n + a (n - 1)

end

end A294060.P17301997721004746092

namespace A294060

/-- `A262869(n)+a(n-1)` -/
def P17301997721004746092.Spec : Prop :=
  ∀ n, P17301997721004746092.a n = A294060 (n + 1)

end A294060

/-! ## A294060.P8498076485734273808

`∑[A013928(ceil((n+1)/2))]`
-/

namespace A294060.P8498076485734273808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013928 ⌈(n + 1 : ℚ) / 2⌉.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A294060.P8498076485734273808

namespace A294060

/-- `∑[A013928(ceil((n+1)/2))]` -/
def P8498076485734273808.Spec : Prop :=
  ∀ n, P8498076485734273808.a n = A294060 (n + 1)

end A294060

/-! ## A294060.P8340319099559974870

`∑[∑[char[2*A005117(n+1)]]]`
-/

namespace A294060.P8340319099559974870
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A005117 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A294060.P8340319099559974870

namespace A294060

/-- `∑[∑[char[2*A005117(n+1)]]]` -/
def P8340319099559974870.Spec : Prop :=
  ∀ n, (P8340319099559974870.a n : ℤ) = A294060 (n + 1)

end A294060

/-! ## A294060.P16477335438475728432

`∑[∑[char[2*A007913(n+1)]]]`
-/

namespace A294060.P16477335438475728432
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007913 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A294060.P16477335438475728432

namespace A294060

/-- `∑[∑[char[2*A007913(n+1)]]]` -/
def P16477335438475728432.Spec : Prop :=
  ∀ n, (P16477335438475728432.a n : ℤ) = A294060 (n + 1)

end A294060

/-! ## A294060.P16454968969654690765

`∑[∑[char[2*A007947(n+1)]]]`
-/

namespace A294060.P16454968969654690765
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007947 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A294060.P16454968969654690765

namespace A294060

/-- `∑[∑[char[2*A007947(n+1)]]]` -/
def P16454968969654690765.Spec : Prop :=
  ∀ n, (P16454968969654690765.a n : ℤ) = A294060 (n + 1)

end A294060

/-! ## A294060.P11861221562212415366

`∑[∑[char[2*A055231(n+1)]]]`
-/

namespace A294060.P11861221562212415366
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A055231 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A294060.P11861221562212415366

namespace A294060

/-- `∑[∑[char[2*A055231(n+1)]]]` -/
def P11861221562212415366.Spec : Prop :=
  ∀ n, (P11861221562212415366.a n : ℤ) = A294060 (n + 1)

end A294060

/-! ## A294060.P14572467577040191934

`∑[∑[char[2*A083346(n+1)]]]`
-/

namespace A294060.P14572467577040191934
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A083346 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A294060.P14572467577040191934

namespace A294060

/-- `∑[∑[char[2*A083346(n+1)]]]` -/
def P14572467577040191934.Spec : Prop :=
  ∀ n, (P14572467577040191934.a n : ℤ) = A294060 (n + 1)

end A294060

/-! ## A294060.P8049805685030054024

`∑[A107079(∑[A059841(n)])-1]`
-/

namespace A294060.P8049805685030054024
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107079 (∑ j ∈ Finset.range (n + 1), f2 j).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A294060.P8049805685030054024

namespace A294060

/-- `∑[A107079(∑[A059841(n)])-1]` -/
def P8049805685030054024.Spec : Prop :=
  ∀ n, P8049805685030054024.a n = A294060 (n + 1)

end A294060

/-! ## A294060.P8139578663495875562

`A294146(n+1)-A262871(n+1)`
-/

namespace A294060.P8139578663495875562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294146 (n + 1) - A262871 (n + 1)

end

end A294060.P8139578663495875562

namespace A294060

/-- `A294146(n+1)-A262871(n+1)` -/
def P8139578663495875562.Spec : Prop :=
  ∀ n, P8139578663495875562.a n = A294060 (n + 1)

end A294060

/-! ## A294060.P1394431325567769271

`∑[A013928(n+1)-A262868(n+1)]`
-/

namespace A294060.P1394431325567769271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013928 (n + 1) - A262868 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A294060.P1394431325567769271

namespace A294060

/-- `∑[A013928(n+1)-A262868(n+1)]` -/
def P1394431325567769271.Spec : Prop :=
  ∀ n, P1394431325567769271.a n = A294060 (n + 1)

end A294060

/-! ## A294060.P962845521717688906

`∑[A262869(n+1)]-A262869(n+1)`
-/

namespace A294060.P962845521717688906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262869 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A262869 (n + 1)

end

end A294060.P962845521717688906

namespace A294060

/-- `∑[A262869(n+1)]-A262869(n+1)` -/
def P962845521717688906.Spec : Prop :=
  ∀ n, P962845521717688906.a n = A294060 (n + 1)

end A294060

/-! ## A294060.P12819450483041746975

`∑[A262869(Δ[A262869(n+1)]+n)]`
-/

namespace A294060.P12819450483041746975
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262869 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262869 (f2 (n + 1) - f2 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A294060.P12819450483041746975

namespace A294060

/-- `∑[A262869(Δ[A262869(n+1)]+n)]` -/
def P12819450483041746975.Spec : Prop :=
  ∀ n, P12819450483041746975.a n = A294060 (n + 1)

end A294060

/-! ## A294060.P12331434068927217435

`A294283(n+2)-(A262871(n+1)+A262869(n+1))`
-/

namespace A294060.P12331434068927217435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294283 (n + 2) - (A262871 (n + 1) + A262869 (n + 1))

end

end A294060.P12331434068927217435

namespace A294060

/-- `A294283(n+2)-(A262871(n+1)+A262869(n+1))` -/
def P12331434068927217435.Spec : Prop :=
  ∀ n, P12331434068927217435.a n = A294060 (n + 1)

end A294060

/-! ## A294060.P14151351836966353682

`∑[∑[char[A038387(2*(n+2))]]]`
-/

namespace A294060.P14151351836966353682
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038387 (2 * (n + 2))

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A294060.P14151351836966353682

namespace A294060

/-- `∑[∑[char[A038387(2*(n+2))]]]` -/
def P14151351836966353682.Spec : Prop :=
  ∀ n, (P14151351836966353682.a n : ℤ) = A294060 (n + 1)

end A294060

/-! ## A294060.P15840277086417935469

`∑[A262869(A004525(Δ[n²]))]`
-/

namespace A294060.P15840277086417935469
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262869 (A004525 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A294060.P15840277086417935469

namespace A294060

/-- `∑[A262869(A004525(Δ[n²]))]` -/
def P15840277086417935469.Spec : Prop :=
  ∀ n, P15840277086417935469.a n = A294060 (n + 1)

end A294060

/-!
# A294061: Sum of the differences of the larger and smaller parts in the partitions of n into two parts with the larger part squarefree.

The programs for A294061, the canonical program `A294061.P13855633599967279508` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A294061 has offset 1).

The definition of A294061 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A294061.P6515002410129039251

`A262870(n+1)-A294145(n+1)`
-/

namespace A294061.P6515002410129039251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262870 (n + 1) - A294145 (n + 1)

end

end A294061.P6515002410129039251

namespace A294061

/-- `A262870(n+1)-A294145(n+1)` -/
def P6515002410129039251.Spec : Prop :=
  ∀ n, P6515002410129039251.a n = A294061 (n + 1)

end A294061

/-! ## A294061.P13855633599967279508

`A294285(n+1)-A294284(n+1)`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A294061

/-- `A294285(n+1)-A294284(n+1)` -/
def P13855633599967279508.Spec : Prop :=
  ∀ n, P13855633599967279508.a n = A294061 (n + 1)

theorem P13855633599967279508.correct : P13855633599967279508.Spec := by
  intro n
  simp only [A294061, Nat.add_sub_cancel]

end A294061

/-! ## A294061.P3495683557103655534

`A262870(n+1)+A057428(n)*A294145(n+1)`
-/

namespace A294061.P3495683557103655534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262870 (n + 1) + A057428 n * A294145 (n + 1)

end

end A294061.P3495683557103655534

namespace A294061

/-- `A262870(n+1)+A057428(n)*A294145(n+1)` -/
def P3495683557103655534.Spec : Prop :=
  ∀ n, P3495683557103655534.a n = A294061 (n + 1)

end A294061

/-! ## A294061.P7678002275738253026

`A294285(n+1)+A057428(n)*A294284(n+1)`
-/

namespace A294061.P7678002275738253026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294285 (n + 1) + A057428 n * A294284 (n + 1)

end

end A294061.P7678002275738253026

namespace A294061

/-- `A294285(n+1)+A057428(n)*A294284(n+1)` -/
def P7678002275738253026.Spec : Prop :=
  ∀ n, P7678002275738253026.a n = A294061 (n + 1)

end A294061

/-! ## A294061.P9905700815360586053

`A294285(n+1)+A260196(n)*A294284(n+1)`
-/

namespace A294061.P9905700815360586053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294285 (n + 1) + A260196 n * A294284 (n + 1)

end

end A294061.P9905700815360586053

namespace A294061

/-- `A294285(n+1)+A260196(n)*A294284(n+1)` -/
def P9905700815360586053.Spec : Prop :=
  ∀ n, P9905700815360586053.a n = A294061 (n + 1)

end A294061

/-! ## A294061.P4013951783276628947

`A262992(n+1)-(A294145(n+1)+A262871(n+1))`
-/

namespace A294061.P4013951783276628947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262992 (n + 1) - (A294145 (n + 1) + A262871 (n + 1))

end

end A294061.P4013951783276628947

namespace A294061

/-- `A262992(n+1)-(A294145(n+1)+A262871(n+1))` -/
def P4013951783276628947.Spec : Prop :=
  ∀ n, P4013951783276628947.a n = A294061 (n + 1)

end A294061

/-! ## A294061.P13017595575875248536

`(n+1)*A262868(n+1)-A294145(n+1)-A294145(n+1)`
-/

namespace A294061.P13017595575875248536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A262868 (n + 1) - A294145 (n + 1) - A294145 (n + 1)

end

end A294061.P13017595575875248536

namespace A294061

/-- `(n+1)*A262868(n+1)-A294145(n+1)-A294145(n+1)` -/
def P13017595575875248536.Spec : Prop :=
  ∀ n, P13017595575875248536.a n = A294061 (n + 1)

end A294061

/-! ## A294061.P3251954232270022522

`A262992(n+1)-∑[A180322(n+1)%(n+1)]-A294145(n+1)`
-/

namespace A294061.P3251954232270022522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A180322 (n + 1)) (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262992 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j - A294145 (n + 1)

end

end A294061.P3251954232270022522

namespace A294061

/-- `A262992(n+1)-∑[A180322(n+1)%(n+1)]-A294145(n+1)` -/
def P3251954232270022522.Spec : Prop :=
  ∀ n, P3251954232270022522.a n = A294061 (n + 1)

end A294061

/-!
# A294062: Sum of the differences of the larger and smaller parts in the partitions of 2n into two parts with the smaller part squarefree.

The programs for A294062, the canonical program `A294062.P1485664591062810294` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A294062 has offset 1).

The definition of A294062 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A294062.P1485664591062810294

`∑[2*(∑[C(∏{p}[n, #], n)]-1)]`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A294062

/-- `∑[2*(∑[C(∏{p}[n, #], n)]-1)]` -/
def P1485664591062810294.Spec : Prop :=
  ∀ n, P1485664591062810294.a n = A294062 (n + 1)

theorem P1485664591062810294.correct : P1485664591062810294.Spec := by
  intro n
  simp only [A294062, Nat.add_sub_cancel]

end A294062

/-! ## A294062.P10475746648609653441

`∑[2*A013928(n+1)]`
-/

namespace A294062.P10475746648609653441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A013928 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A294062.P10475746648609653441

namespace A294062

/-- `∑[2*A013928(n+1)]` -/
def P10475746648609653441.Spec : Prop :=
  ∀ n, P10475746648609653441.a n = A294062 (n + 1)

end A294062

/-! ## A294062.P17762485376234211189

`∑[∑[2*A074206(n)%2]]`
-/

namespace A294062.P17762485376234211189
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * Int.tmod (A074206 n) 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A294062.P17762485376234211189

namespace A294062

/-- `∑[∑[2*A074206(n)%2]]` -/
def P17762485376234211189.Spec : Prop :=
  ∀ n, P17762485376234211189.a n = A294062 (n + 1)

end A294062

/-! ## A294062.P7237385666248838412

`∑[∑[2*char[A005117(n+1)]]]`
-/

namespace A294062.P7237385666248838412
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (if ∃ j, f3 j = (n : ℤ) then 1 else 0)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A294062.P7237385666248838412

namespace A294062

/-- `∑[∑[2*char[A005117(n+1)]]]` -/
def P7237385666248838412.Spec : Prop :=
  ∀ n, (P7237385666248838412.a n : ℤ) = A294062 (n + 1)

end A294062

/-! ## A294062.P7884313635183094969

`∑[a(n-1)+lcm(2, A008683(n))]` with `a(0)=0`
-/

namespace A294062.P7884313635183094969
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 (n - 1) + Int.lcm 2 (A008683 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A294062.P7884313635183094969

namespace A294062

/-- `∑[a(n-1)+lcm(2, A008683(n))]` -/
def P7884313635183094969.Spec : Prop :=
  ∀ n, (P7884313635183094969.a n : ℤ) = A294062 (n + 1)

end A294062

/-! ## A294062.P1021139205663633715

`∑[2*(∑[∏{d}[n, A008683(#)²]]-1)]`
-/

namespace A294062.P1021139205663633715
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f3 n), A008683 d ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f2 j - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A294062.P1021139205663633715

namespace A294062

/-- `∑[2*(∑[∏{d}[n, A008683(#)²]]-1)]` -/
def P1021139205663633715.Spec : Prop :=
  ∀ n, P1021139205663633715.a n = A294062 (n + 1)

end A294062

/-! ## A294062.P8453153469563401001

`A294143(n+1)-A066779(n+1)`
-/

namespace A294062.P8453153469563401001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294143 (n + 1) - A066779 (n + 1)

end

end A294062.P8453153469563401001

namespace A294062

/-- `A294143(n+1)-A066779(n+1)` -/
def P8453153469563401001.Spec : Prop :=
  ∀ n, P8453153469563401001.a n = A294062 (n + 1)

end A294062

/-! ## A294062.P16203820197676353186

`2*(A294283(n+1)+A294145(n+1))`
-/

namespace A294062.P16203820197676353186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A294283 (n + 1) + A294145 (n + 1))

end

end A294062.P16203820197676353186

namespace A294062

/-- `2*(A294283(n+1)+A294145(n+1))` -/
def P16203820197676353186.Spec : Prop :=
  ∀ n, P16203820197676353186.a n = A294062 (n + 1)

end A294062

/-! ## A294062.P5907900588406779571

`2*(A294284(n+1)+A294146(n+1))`
-/

namespace A294062.P5907900588406779571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A294284 (n + 1) + A294146 (n + 1))

end

end A294062.P5907900588406779571

namespace A294062

/-- `2*(A294284(n+1)+A294146(n+1))` -/
def P5907900588406779571.Spec : Prop :=
  ∀ n, P5907900588406779571.a n = A294062 (n + 1)

end A294062

/-! ## A294062.P11709958854628486696

`∑[∑[2*char[∏{p}[n, #]]]]`
-/

namespace A294062.P11709958854628486696
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f4 n), p

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (if ∃ j, f3 j = n then 1 else 0)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A294062.P11709958854628486696

namespace A294062

/-- `∑[∑[2*char[∏{p}[n, #]]]]` -/
def P11709958854628486696.Spec : Prop :=
  ∀ n, (P11709958854628486696.a n : ℤ) = A294062 (n + 1)

end A294062

/-! ## A294062.P963266435310276498

`A294060(2*(n+1))`
-/

namespace A294062.P963266435310276498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294060 (2 * (n + 1))

end

end A294062.P963266435310276498

namespace A294062

/-- `A294060(2*(n+1))` -/
def P963266435310276498.Spec : Prop :=
  ∀ n, P963266435310276498.a n = A294062 (n + 1)

end A294062

/-! ## A294062.P2108392663410587231

`∑[2*A262869(2*n+1)]`
-/

namespace A294062.P2108392663410587231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A262869 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A294062.P2108392663410587231

namespace A294062

/-- `∑[2*A262869(2*n+1)]` -/
def P2108392663410587231.Spec : Prop :=
  ∀ n, P2108392663410587231.a n = A294062 (n + 1)

end A294062

/-! ## A294062.P5408512116081294119

`A294146(2*(n+1))-A066779(n+1)`
-/

namespace A294062.P5408512116081294119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294146 (2 * (n + 1)) - A066779 (n + 1)

end

end A294062.P5408512116081294119

namespace A294062

/-- `A294146(2*(n+1))-A066779(n+1)` -/
def P5408512116081294119.Spec : Prop :=
  ∀ n, P5408512116081294119.a n = A294062 (n + 1)

end A294062

/-! ## A294062.P276807577224800897

`A294146(2*(n+1))-A262871(2*(n+1))`
-/

namespace A294062.P276807577224800897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294146 (2 * (n + 1)) - A262871 (2 * (n + 1))

end

end A294062.P276807577224800897

namespace A294062

/-- `A294146(2*(n+1))-A262871(2*(n+1))` -/
def P276807577224800897.Spec : Prop :=
  ∀ n, P276807577224800897.a n = A294062 (n + 1)

end A294062

/-! ## A294062.P15836616543419139046

`A294283(2*(n+1))-A262871(2*n+1)`
-/

namespace A294062.P15836616543419139046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294283 (2 * (n + 1)) - A262871 (2 * n + 1)

end

end A294062.P15836616543419139046

namespace A294062

/-- `A294283(2*(n+1))-A262871(2*n+1)` -/
def P15836616543419139046.Spec : Prop :=
  ∀ n, P15836616543419139046.a n = A294062 (n + 1)

end A294062

/-! ## A294062.P3387129267981079437

`∑[∑[A027375(n)%4]]`
-/

namespace A294062.P3387129267981079437
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A027375 n) 4

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A294062.P3387129267981079437

namespace A294062

/-- `∑[∑[A027375(n)%4]]` -/
def P3387129267981079437.Spec : Prop :=
  ∀ n, P3387129267981079437.a n = A294062 (n + 1)

end A294062

/-! ## A294062.P9345998680314318049

`A005408(∑[A013928(n+1)])-1`
-/

namespace A294062.P9345998680314318049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013928 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - 1

end

end A294062.P9345998680314318049

namespace A294062

/-- `A005408(∑[A013928(n+1)])-1` -/
def P9345998680314318049.Spec : Prop :=
  ∀ n, P9345998680314318049.a n = A294062 (n + 1)

end A294062

/-!
# A294063: Sum of the differences of the larger and smaller parts in the partitions of 2n into two parts with the larger part squarefree.

The programs for A294063, the canonical program `A294063.P13359154590265481169` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A294063 has offset 1).

The definition of A294063 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A294063.P13359154590265481169

`A294061(2*(n+1))`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A294063

/-- `A294061(2*(n+1))` -/
def P13359154590265481169.Spec : Prop :=
  ∀ n, P13359154590265481169.a n = A294063 (n + 1)

theorem P13359154590265481169.correct : P13359154590265481169.Spec := by
  intro n
  simp only [A294063, Nat.add_sub_cancel]

end A294063

/-! ## A294063.P4061658391838909284

`lcm(2, A294061(n+2+n))`
-/

namespace A294063.P4061658391838909284
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A294061 (n + 2 + n))

end

end A294063.P4061658391838909284

namespace A294063

/-- `lcm(2, A294061(n+2+n))` -/
def P4061658391838909284.Spec : Prop :=
  ∀ n, (P4061658391838909284.a n : ℤ) = A294063 (n + 1)

end A294063

/-! ## A294063.P2041962782401463431

`A262870(2*(n+1))-A294145(2*(n+1))`
-/

namespace A294063.P2041962782401463431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262870 (2 * (n + 1)) - A294145 (2 * (n + 1))

end

end A294063.P2041962782401463431

namespace A294063

/-- `A262870(2*(n+1))-A294145(2*(n+1))` -/
def P2041962782401463431.Spec : Prop :=
  ∀ n, P2041962782401463431.a n = A294063 (n + 1)

end A294063

/-! ## A294063.P13781412483546590681

`A294285(2*(n+1))-A294284(2*(n+1))`
-/

namespace A294063.P13781412483546590681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294285 (2 * (n + 1)) - A294284 (2 * (n + 1))

end

end A294063.P13781412483546590681

namespace A294063

/-- `A294285(2*(n+1))-A294284(2*(n+1))` -/
def P13781412483546590681.Spec : Prop :=
  ∀ n, P13781412483546590681.a n = A294063 (n + 1)

end A294063

/-! ## A294063.P4372739381107956553

`A054977(n)*A294061(A103517(n))`
-/

namespace A294063.P4372739381107956553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n * A294061 (A103517 n).toNat

end

end A294063.P4372739381107956553

namespace A294063

/-- `A054977(n)*A294061(A103517(n))` -/
def P4372739381107956553.Spec : Prop :=
  ∀ n, P4372739381107956553.a n = A294063 (n + 1)

end A294063

/-! ## A294063.P10920859347494253742

`A057427(n)*A294061(A103517(n))`
-/

namespace A294063.P10920859347494253742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A294061 (A103517 n).toNat

end

end A294063.P10920859347494253742

namespace A294063

/-- `A057427(n)*A294061(A103517(n))` -/
def P10920859347494253742.Spec : Prop :=
  ∀ n, P10920859347494253742.a n = A294063 (n + 1)

end A294063

/-! ## A294063.P10699892857614424244

`A106400(n)²*A294061(A103517(n))`
-/

namespace A294063.P10699892857614424244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106400 n ^ 2 * A294061 (A103517 n).toNat

end

end A294063.P10699892857614424244

namespace A294063

/-- `A106400(n)²*A294061(A103517(n))` -/
def P10699892857614424244.Spec : Prop :=
  ∀ n, P10699892857614424244.a n = A294063 (n + 1)

end A294063

/-! ## A294063.P4174601856701608965

`A294061(A103517(n))%A000124(n)²`
-/

namespace A294063.P4174601856701608965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A294061 (A103517 n).toNat) (A000124 n ^ 2)

end

end A294063.P4174601856701608965

namespace A294063

/-- `A294061(A103517(n))%A000124(n)²` -/
def P4174601856701608965.Spec : Prop :=
  ∀ n, P4174601856701608965.a n = A294063 (n + 1)

end A294063

/-! ## A294063.P1009124250984268872

`A294061(n+2+n)%A000285(n+1)`
-/

namespace A294063.P1009124250984268872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A294061 (n + 2 + n)) (A000285 (n + 1))

end

end A294063.P1009124250984268872

namespace A294063

/-- `A294061(n+2+n)%A000285(n+1)` -/
def P1009124250984268872.Spec : Prop :=
  ∀ n, P1009124250984268872.a n = A294063 (n + 1)

end A294063

/-! ## A294063.P10699947309016468944

`∑{d}[A294061(A103517(n)), A000010(#)]`
-/

namespace A294063.P10699947309016468944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294061 (A103517 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A294063.P10699947309016468944

namespace A294063

/-- `∑{d}[A294061(A103517(n)), A000010(#)]` -/
def P10699947309016468944.Spec : Prop :=
  ∀ n, P10699947309016468944.a n = A294063 (n + 1)

end A294063

/-!
# A294064: Numbers k such that 2*k - 3, 2*k + 3, 3*k - 2, 3*k + 2 are primes.

The programs for A294064, there is no canonical definition to state claims against.
-/

/-! ## A294064.P2843538678462038682

`∩[A088763(n+1), A157834(n+1)]`
-/

namespace A294064.P2843538678462038682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088763 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157834 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A294064.P2843538678462038682

/-! ## A294064.P17500840242253864863

`∩[A157834(n+1), A387935(n+1)]`
-/

namespace A294064.P17500840242253864863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157834 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387935 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A294064.P17500840242253864863

/-! ## A294064.P11342676171522898809

`∩[A088763(n+1), A008615(A165986(n+1))]`
-/

namespace A294064.P11342676171522898809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088763 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (A165986 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A294064.P11342676171522898809

/-! ## A294064.P9764708439841205823

`eq[A185978(A302055(2*n+3)), A325142(3*n)]`
-/

namespace A294064.P9764708439841205823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185978 (A302055 (2 * n + 3)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325142 (3 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A294064.P9764708439841205823

/-!
# A294065: Row 2 in rectangular array A292929.

The programs for A294065, there is no canonical definition to state claims against.
-/

/-! ## A294065.P5768336894848274904

`A292929(∑[n+3])`
-/

namespace A294065.P5768336894848274904
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292929 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A294065.P5768336894848274904

/-! ## A294065.P15403966841600793633

`A020985(n)²*A292929(A055998(n+1))`
-/

namespace A294065.P15403966841600793633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020985 n ^ 2 * A292929 (A055998 (n + 1)).toNat

end

end A294065.P15403966841600793633

/-! ## A294065.P15151492492495215577

`A292929(A055998(n+1))%Δ[A022569(n)]`
-/

namespace A294065.P15151492492495215577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022569 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A292929 (A055998 (n + 1)).toNat) (f1 (n + 1) - f1 n)

end

end A294065.P15151492492495215577

/-! ## A294065.P1354114069863225491

`A292929(A055998(n+1))+A008683(A017137(n)-2)`
-/

namespace A294065.P1354114069863225491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292929 (A055998 (n + 1)).toNat + A008683 (A017137 n - 2).toNat

end

end A294065.P1354114069863225491

/-! ## A294065.P12831424404351340951

`A001221(A102540(n+1))*A292929(A055998(n+1))`
-/

namespace A294065.P12831424404351340951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A102540 (n + 1)).toNat * A292929 (A055998 (n + 1)).toNat

end

end A294065.P12831424404351340951

/-!
# A294066: Row 3 in rectangular array A292929.

The programs for A294066, there is no canonical definition to state claims against.
-/

/-! ## A294066.P16465487177808176588

`A292929(∑[n+4]+2)`
-/

namespace A294066.P16465487177808176588
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292929 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A294066.P16465487177808176588

/-! ## A294066.P5180211507084914352

`and(-2, A292929(A046691(n+2)))`
-/

namespace A294066.P5180211507084914352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-2) (A292929 (A046691 (n + 2)).toNat)

end

end A294066.P5180211507084914352

/-! ## A294066.P17974139432763394962

`and(-2, A292929(A056000(n)+6))`
-/

namespace A294066.P17974139432763394962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-2) (A292929 (A056000 n + 6).toNat)

end

end A294066.P17974139432763394962

/-! ## A294066.P15778325976688998609

`A292929(A046691(n+2))%A055330(n)`
-/

namespace A294066.P15778325976688998609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A292929 (A046691 (n + 2)).toNat) (A055330 (n + 10))

end

end A294066.P15778325976688998609

/-! ## A294066.P3666602827239777460

`or(A000038(n), A292929(A046691(n+2)))`
-/

namespace A294066.P3666602827239777460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000038 n) (A292929 (A046691 (n + 2)).toNat)

end

end A294066.P3666602827239777460

/-! ## A294066.P11369454999517699035

`A292929(A046691(n+2))+A000007(n+1)`
-/

namespace A294066.P11369454999517699035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292929 (A046691 (n + 2)).toNat + A000007 (n + 1)

end

end A294066.P11369454999517699035

/-!
# A294067: Row 4 in rectangular array A292929.

The programs for A294067, there is no canonical definition to state claims against.
-/

/-! ## A294067.P18210258407975689388

`A292929(∑[n+5]+5)`
-/

namespace A294067.P18210258407975689388
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292929 (∑ j ∈ Finset.range (n + 1), f1 j + 5)

end

end A294067.P18210258407975689388

/-! ## A294067.P16307769726300138614

`A292929(eq[5, A004736(n+1)])%A115099(n)`
-/

namespace A294067.P16307769726300138614
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A292929 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)) (A115099 n)

end

end A294067.P16307769726300138614

/-! ## A294067.P1403224218389848784

`A033999(n)²*A292929(eq[5, A004736(n+1)])`
-/

namespace A294067.P1403224218389848784
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n ^ 2 * A292929 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A294067.P1403224218389848784

/-! ## A294067.P1607814037412350617

`A097807(n)²*A292929(eq[5, A004736(n+1)])`
-/

namespace A294067.P1607814037412350617
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097807 n ^ 2 * A292929 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A294067.P1607814037412350617

/-! ## A294067.P16339259763549099894

`A292929(eq[5, A004736(n+1)])+A000007(n+1)`
-/

namespace A294067.P16339259763549099894
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292929 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) + A000007 (n + 1)

end

end A294067.P16339259763549099894

/-! ## A294067.P7686313138832227084

`(A005408(n)-2*n)*A292929(eq[5, A004736(n+1)])`
-/

namespace A294067.P7686313138832227084
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A005408 n - (2 * n : ℤ)) * A292929 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A294067.P7686313138832227084

/-! ## A294067.P9840662232256984050

`A000034(2*n²)*A292929(eq[5, A004736(n+1)])`
-/

namespace A294067.P9840662232256984050
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (2 * n ^ 2) * A292929 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A294067.P9840662232256984050

/-!
# A294068: Number of factorizations of n using perfect powers (elements of A001597) other than 1.

The programs for A294068, there is no canonical definition to state claims against.
-/

/-! ## A294068.P4986207603650386713

`∑{d}[n+1, A008683(#)*A322453((n+1)/#)]`
-/

namespace A294068.P4986207603650386713
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A322453 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A294068.P4986207603650386713

/-! ## A294068.P9135641470592564061

`A056624(A066060(n+1))*A188585(n+1)`
-/

namespace A294068.P9135641470592564061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056624 (A066060 (n + 1)).toNat * A188585 (n + 1)

end

end A294068.P9135641470592564061

/-! ## A294068.P2471435556732732899

`A188585(n+1)*A304327(A295557(n+1))`
-/

namespace A294068.P2471435556732732899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188585 (n + 1) * A304327 (A295557 (n + 1)).toNat

end

end A294068.P2471435556732732899

/-! ## A294068.P1452339166153052021

`A000688(A173675(n+1))*A188585(n+1)`
-/

namespace A294068.P1452339166153052021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000688 (A173675 (n + 1)).toNat * A188585 (n + 1)

end

end A294068.P1452339166153052021

/-! ## A294068.P4419517899477250212

`A089723(A304404(n+1))*A188585(n+1)`
-/

namespace A294068.P4419517899477250212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089723 (A304404 (n + 1)).toNat * A188585 (n + 1)

end

end A294068.P4419517899477250212

/-! ## A294068.P4313757266119276896

`A188585(or(A061142(n+1), A180026(n+1)))`
-/

namespace A294068.P4313757266119276896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188585 (Int.lor (A061142 (n + 1)) (A180026 (n + 1))).toNat

end

end A294068.P4313757266119276896

/-! ## A294068.P10602826435172433028

`A196564(∏{e}[n+1, A028819(#²)]+2)`
-/

namespace A294068.P10602826435172433028
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196564 (∏ p ∈ Nat.primeFactors (f1 n), A028819 (Nat.factorization (f1 n) p ^ 2) + 2).toNat

end

end A294068.P10602826435172433028

/-! ## A294068.P11958710865348193319

`A000688(A000688((n+1)²))*A188585(n+1)`
-/

namespace A294068.P11958710865348193319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000688 (A000688 ((n + 1) ^ 2)).toNat * A188585 (n + 1)

end

end A294068.P11958710865348193319

/-! ## A294068.P17752524297208262564

`lcm(A188585(n+1), A188585(A000688((n+1)²)²))`
-/

namespace A294068.P17752524297208262564
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A188585 (n + 1)) (A188585 (A000688 ((n + 1) ^ 2) ^ 2).toNat)

end

end A294068.P17752524297208262564

/-! ## A294068.P2840995500245476305

`A188585(n+1)*A230000(n)`
-/

namespace A294068.P2840995500245476305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188585 (n + 1) * A230000 n

end

end A294068.P2840995500245476305

/-!
# A294070: a(n) = (1/4)*(n^2 - 2*n)^2 + (9/4)*(n^2 - 2*n) + 6.

The programs for A294070, the canonical program `A294070.P13445950394499554624` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A294070 has offset 1).

The definition of A294070 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A294070.P12753296392756208067

`((n+1)²-3*(n+1)+6)*((n+1)²-(n+1)+4)/4`
-/

namespace A294070.P12753296392756208067
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((((n + 1) ^ 2 : ℤ) - (3 * (n + 1) : ℤ) + 6) * (((n + 1) ^ 2 : ℤ) - (n + 1 : ℤ) + 4) : ℚ) / 4

end

end A294070.P12753296392756208067

namespace A294070

/-- `((n+1)²-3*(n+1)+6)*((n+1)²-(n+1)+4)/4` -/
def P12753296392756208067.Spec : Prop :=
  ∀ n, P12753296392756208067.a n = (A294070 (n + 1) : ℚ)

end A294070

/-! ## A294070.P3438031813260028290

`1/4*((n+1)²-2*(n+1))²+9/4*((n+1)²-2*(n+1))+6`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A294070.P3438031813260028290
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 4 * ((((n + 1) ^ 2 : ℤ) - (2 * (n + 1) : ℤ)) ^ 2 : ℚ) + (9 : ℚ) / 4 * (((n + 1) ^ 2 : ℤ) - (2 * (n + 1) : ℤ) : ℚ) + 6

end

end A294070.P3438031813260028290

namespace A294070

/-- `1/4*((n+1)²-2*(n+1))²+9/4*((n+1)²-2*(n+1))+6` -/
def P3438031813260028290.Spec : Prop :=
  ∀ n, P3438031813260028290.a n = (A294070 (n + 1) : ℚ)

end A294070

/-! ## A294070.P13445950394499554624

`A152948(n+1)*A152948(n+2)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A294070

/-- `A152948(n+1)*A152948(n+2)` -/
def P13445950394499554624.Spec : Prop :=
  ∀ n, P13445950394499554624.a n = A294070 (n + 1)

theorem P13445950394499554624.correct : P13445950394499554624.Spec := by
  intro n
  simp only [A294070, Nat.add_sub_cancel]

end A294070

/-! ## A294070.P10564320335332800144

`A266883(A061925(n))`
-/

namespace A294070.P10564320335332800144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266883 (A061925 n).toNat

end

end A294070.P10564320335332800144

namespace A294070

/-- `A266883(A061925(n))` -/
def P10564320335332800144.Spec : Prop :=
  ∀ n, P10564320335332800144.a n = A294070 (n + 1)

end A294070

/-! ## A294070.P7479646530499585699

`ceil((C(n²+4, 2)+1)/2)`
-/

namespace A294070.P7479646530499585699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.choose (n ^ 2 + 4) 2 + 1 : ℚ) / 2⌉

end

end A294070.P7479646530499585699

namespace A294070

/-- `ceil((C(n²+4, 2)+1)/2)` -/
def P7479646530499585699.Spec : Prop :=
  ∀ n, P7479646530499585699.a n = A294070 (n + 1)

end A294070

/-! ## A294070.P4798175019083603509

`(C(n, 2)+2)*(C(n, 2)+2+n)`
-/

namespace A294070.P4798175019083603509
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.choose n 2 + 2) * (Nat.choose n 2 + 2 + n)

end

end A294070.P4798175019083603509

namespace A294070

/-- `(C(n, 2)+2)*(C(n, 2)+2+n)` -/
def P4798175019083603509.Spec : Prop :=
  ∀ n, (P4798175019083603509.a n : ℤ) = A294070 (n + 1)

end A294070

/-! ## A294070.P15827179435765398681

`(A089071(n+2)-n)*A089071(n+2)`
-/

namespace A294070.P15827179435765398681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A089071 (n + 2) - (n : ℤ)) * A089071 (n + 2)

end

end A294070.P15827179435765398681

namespace A294070

/-- `(A089071(n+2)-n)*A089071(n+2)` -/
def P15827179435765398681.Spec : Prop :=
  ∀ n, P15827179435765398681.a n = A294070 (n + 1)

end A294070

/-! ## A294070.P3275201691683038476

`(A252460(2*(n+1))-n)*A252460(2*(n+1))`
-/

namespace A294070.P3275201691683038476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A252460 (2 * (n + 1)) - (n : ℤ)) * A252460 (2 * (n + 1))

end

end A294070.P3275201691683038476

namespace A294070

/-- `(A252460(2*(n+1))-n)*A252460(2*(n+1))` -/
def P3275201691683038476.Spec : Prop :=
  ∀ n, P3275201691683038476.a n = A294070 (n + 1)

end A294070

/-! ## A294070.P7457178709602015355

`(A252752(2*(n+1))-n)*A252752(2*(n+1))`
-/

namespace A294070.P7457178709602015355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A252752 (2 * (n + 1)) - (n : ℤ)) * A252752 (2 * (n + 1))

end

end A294070.P7457178709602015355

namespace A294070

/-- `(A252752(2*(n+1))-n)*A252752(2*(n+1))` -/
def P7457178709602015355.Spec : Prop :=
  ∀ n, P7457178709602015355.a n = A294070 (n + 1)

end A294070

/-! ## A294070.P11197121385064525251

`(A278512(2*(n+1))-n)*A278512(2*(n+1))`
-/

namespace A294070.P11197121385064525251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A278512 (2 * (n + 1)) - (n : ℤ)) * A278512 (2 * (n + 1))

end

end A294070.P11197121385064525251

namespace A294070

/-- `(A278512(2*(n+1))-n)*A278512(2*(n+1))` -/
def P11197121385064525251.Spec : Prop :=
  ∀ n, P11197121385064525251.a n = A294070 (n + 1)

end A294070

/-! ## A294070.P12322629777483501151

`A266883(A000982(n)+1)`
-/

namespace A294070.P12322629777483501151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266883 (A000982 n + 1).toNat

end

end A294070.P12322629777483501151

namespace A294070

/-- `A266883(A000982(n)+1)` -/
def P12322629777483501151.Spec : Prop :=
  ∀ n, P12322629777483501151.a n = A294070 (n + 1)

end A294070

/-! ## A294070.P11701504778103669058

`A266883(A261243(n+2))`
-/

namespace A294070.P11701504778103669058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266883 (A261243 (n + 2)).toNat

end

end A294070.P11701504778103669058

namespace A294070

/-- `A266883(A261243(n+2))` -/
def P11701504778103669058.Spec : Prop :=
  ∀ n, P11701504778103669058.a n = A294070 (n + 1)

end A294070

/-! ## A294070.P6983372931582555000

`(A255552(2*(n+1))-n)*A255552(2*(n+1))`
-/

namespace A294070.P6983372931582555000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A255552 (2 * (n + 1)) - (n : ℤ)) * A255552 (2 * (n + 1))

end

end A294070.P6983372931582555000

namespace A294070

/-- `(A255552(2*(n+1))-n)*A255552(2*(n+1))` -/
def P6983372931582555000.Spec : Prop :=
  ∀ n, P6983372931582555000.a n = A294070 (n + 1)

end A294070

/-!
# A294071: Number of ordered ways of writing n^2 as a sum of n squares > 1.

The programs for A294071, there is no canonical definition to state claims against.
-/

/-! ## A294071.P1943354592922020925

`gcd(A281243(n), A333598(A081407(n)))`
-/

namespace A294071.P1943354592922020925
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A281243 n) (A333598 (A081407 n).toNat)

end

end A294071.P1943354592922020925

/-!
# A294072: Number of noncube divisors of n^3.

The programs for A294072, the canonical program `A294072.P12767756118942820441` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A294072 has offset 1).

The definition of A294072 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A048785, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A294072.P12767756118942820441

`A048785(n+1)-A000005(n+1)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A294072

/-- `A048785(n+1)-A000005(n+1)` -/
def P12767756118942820441.Spec : Prop :=
  ∀ n, P12767756118942820441.a n = A294072 (n + 1)

theorem P12767756118942820441.correct : P12767756118942820441.Spec := by
  intro n
  simp only [A294072, Nat.add_sub_cancel]

end A294072

/-! ## A294072.P12206250097468771267

`A291208(A000578(n+1))`
-/

namespace A294072.P12206250097468771267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291208 (A000578 (n + 1)).toNat

end

end A294072.P12206250097468771267

namespace A294072

/-- `A291208(A000578(n+1))` -/
def P12206250097468771267.Spec : Prop :=
  ∀ n, P12206250097468771267.a n = A294072 (n + 1)

end A294072

/-! ## A294072.P16648368598129980081

`∑{d}[n+1, 3^A001221(#)-1]`
-/

namespace A294072.P16648368598129980081
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), ((3 : ℚ) ^ (A001221 d : ℤ) - 1)

end

end A294072.P16648368598129980081

namespace A294072

/-- `∑{d}[n+1, 3^A001221(#)-1]` -/
def P16648368598129980081.Spec : Prop :=
  ∀ n, P16648368598129980081.a n = (A294072 (n + 1) : ℚ)

end A294072

/-! ## A294072.P4211505165069388551

`A048785(n+1)-Δ[A006218(n)]`
-/

namespace A294072.P4211505165069388551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048785 (n + 1) - (f1 (n + 1) - f1 n)

end

end A294072.P4211505165069388551

namespace A294072

/-- `A048785(n+1)-Δ[A006218(n)]` -/
def P4211505165069388551.Spec : Prop :=
  ∀ n, P4211505165069388551.a n = A294072 (n + 1)

end A294072

/-! ## A294072.P5744812668053726809

`A144943(n+1)-A070824(n+1)`
-/

namespace A294072.P5744812668053726809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144943 (n + 1) - A070824 (n + 1)

end

end A294072.P5744812668053726809

namespace A294072

/-- `A144943(n+1)-A070824(n+1)` -/
def P5744812668053726809.Spec : Prop :=
  ∀ n, P5744812668053726809.a n = A294072 (n + 1)

end A294072

/-! ## A294072.P4155157117918863819

`A048785(n)-Δ[A006218(n)-A048785(n)]`
-/

namespace A294072.P4155157117918863819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n - A048785 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048785 n - (f1 (n + 1) - f1 n)

end

end A294072.P4155157117918863819

namespace A294072

/-- `A048785(n)-Δ[A006218(n)-A048785(n)]` -/
def P4155157117918863819.Spec : Prop :=
  ∀ n, P4155157117918863819.a n = A294072 (n + 1)

end A294072

/-! ## A294072.P7565390213637432533

`A048785(n+1)+A006218(n)-A006218(n+1)`
-/

namespace A294072.P7565390213637432533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048785 (n + 1) + (A006218 n - A006218 (n + 1))

end

end A294072.P7565390213637432533

namespace A294072

/-- `A048785(n+1)+A006218(n)-A006218(n+1)` -/
def P7565390213637432533.Spec : Prop :=
  ∀ n, P7565390213637432533.a n = A294072 (n + 1)

end A294072

/-! ## A294072.P11021952054708388366

`A353551(n+1)-(A353551(n)+A000005(n+1))`
-/

namespace A294072.P11021952054708388366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353551 (n + 1) - (A353551 n + A000005 (n + 1))

end

end A294072.P11021952054708388366

namespace A294072

/-- `A353551(n+1)-(A353551(n)+A000005(n+1))` -/
def P11021952054708388366.Spec : Prop :=
  ∀ n, P11021952054708388366.a n = A294072 (n + 1)

end A294072

/-! ## A294072.P9774095515337900916

`A048785(n+1)+A055205(n+1)-A048691(n+1)`
-/

namespace A294072.P9774095515337900916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048785 (n + 1) + (A055205 (n + 1) - A048691 (n + 1))

end

end A294072.P9774095515337900916

namespace A294072

/-- `A048785(n+1)+A055205(n+1)-A048691(n+1)` -/
def P9774095515337900916.Spec : Prop :=
  ∀ n, P9774095515337900916.a n = A294072 (n + 1)

end A294072

/-! ## A294072.P11558820846702779775

`A048785(n+1)-(A291208(n+1)+A061704(n+1))`
-/

namespace A294072.P11558820846702779775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048785 (n + 1) - (A291208 (n + 1) + A061704 (n + 1))

end

end A294072.P11558820846702779775

namespace A294072

/-- `A048785(n+1)-(A291208(n+1)+A061704(n+1))` -/
def P11558820846702779775.Spec : Prop :=
  ∀ n, P11558820846702779775.a n = A294072 (n + 1)

end A294072

/-! ## A294072.P12396522302319976030

`A359037(n+1)/A000005(n+1)-A000005(n+1)`
-/

namespace A294072.P12396522302319976030
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A359037 (n + 1) : ℚ) / (A000005 (n + 1) : ℚ) - (A000005 (n + 1) : ℚ)

end

end A294072.P12396522302319976030

namespace A294072

/-- `A359037(n+1)/A000005(n+1)-A000005(n+1)` -/
def P12396522302319976030.Spec : Prop :=
  ∀ n, P12396522302319976030.a n = (A294072 (n + 1) : ℚ)

end A294072

/-! ## A294072.P16947465427192123143

`A048785(n+1)-A397549(n+1)/A007425(n+1)`
-/

namespace A294072.P16947465427192123143
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048785 (n + 1) : ℚ) - (A397549 (n + 1) : ℚ) / (A007425 (n + 1) : ℚ)

end

end A294072.P16947465427192123143

namespace A294072

/-- `A048785(n+1)-A397549(n+1)/A007425(n+1)` -/
def P16947465427192123143.Spec : Prop :=
  ∀ n, P16947465427192123143.a n = (A294072 (n + 1) : ℚ)

end A294072

/-! ## A294072.P5509980943897949865

`∑{d}[n+1, A073184(#²)-1]`
-/

namespace A294072.P5509980943897949865
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (A073184 (d ^ 2) - 1)

end

end A294072.P5509980943897949865

namespace A294072

/-- `∑{d}[n+1, A073184(#²)-1]` -/
def P5509980943897949865.Spec : Prop :=
  ∀ n, P5509980943897949865.a n = A294072 (n + 1)

end A294072

/-! ## A294072.P15159061429734082796

`A092520((n+1)²)-A000005(n+1)`
-/

namespace A294072.P15159061429734082796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092520 ((n + 1) ^ 2) - A000005 (n + 1)

end

end A294072.P15159061429734082796

namespace A294072

/-- `A092520((n+1)²)-A000005(n+1)` -/
def P15159061429734082796.Spec : Prop :=
  ∀ n, P15159061429734082796.a n = A294072 (n + 1)

end A294072

/-! ## A294072.P6811112468311606864

`A048785(n+1)-A046951((n+1)²)`
-/

namespace A294072.P6811112468311606864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048785 (n + 1) - A046951 ((n + 1) ^ 2)

end

end A294072.P6811112468311606864

namespace A294072

/-- `A048785(n+1)-A046951((n+1)²)` -/
def P6811112468311606864.Spec : Prop :=
  ∀ n, P6811112468311606864.a n = A294072 (n + 1)

end A294072

/-!
# A294073: Numbers that are the sum of 2 cubes > 1.

The programs for A294073, there is no canonical definition to state claims against.
-/

/-! ## A294073.P10325514738574595927

`1+lt[A010057(n), A025455(n+1)]`
-/

namespace A294073.P10325514738574595927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010057 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025455 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A294073.P10325514738574595927

/-! ## A294073.P13281441686745126444

`A020725(lt[A010057(n), A025455(n+1)])`
-/

namespace A294073.P13281441686745126444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010057 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025455 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A294073.P13281441686745126444

/-! ## A294073.P5052956728887847584

`lt[A010057(n-A025455(n)), A025455(n)]`
-/

namespace A294073.P5052956728887847584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010057 ((n : ℤ) - A025455 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025455 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A294073.P5052956728887847584

/-!
# A294074: Primes of the form p*2^k + 1, where p is an odd prime and k is odd.

The programs for A294074, the canonical program `A294074.P3645708007660276247` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A294074 has offset 1).

The definition of A294074 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 378 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A294074.P3645708007660276247

`∩[A058500(n+1), A072939(n+1)]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A294074

/-- `∩[A058500(n+1), A072939(n+1)]` -/
def P3645708007660276247.Spec : Prop :=
  ∀ n, (P3645708007660276247.a n : ℤ) = A294074 (n + 1)

theorem P3645708007660276247.correct : P3645708007660276247.Spec := by
  intro n
  simp only [A294074, Nat.add_sub_cancel]

end A294074

/-! ## A294074.P2127687614582300276

`∩[A058500(n+1), A171947(n+1)]`
-/

namespace A294074.P2127687614582300276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058500 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171947 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A294074.P2127687614582300276

namespace A294074

/-- `∩[A058500(n+1), A171947(n+1)]` -/
def P2127687614582300276.Spec : Prop :=
  ∀ n, (P2127687614582300276.a n : ℤ) = A294074 (n + 1)

end A294074

/-! ## A294074.P2969751212753778829

`p?[A026491(A038550(n+1))-1]`
-/

namespace A294074.P2969751212753778829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026491 (A038550 (n + 1)).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A294074.P2969751212753778829

namespace A294074

/-- `p?[A026491(A038550(n+1))-1]` -/
def P2969751212753778829.Spec : Prop :=
  ∀ n, P2969751212753778829.a n = A294074 (n + 1)

end A294074

/-! ## A294074.P7636141713098991251

`p?[(A026491(n)-1)*A069283(n)]`
-/

namespace A294074.P7636141713098991251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A026491 n - 1) * A069283 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A294074.P7636141713098991251

namespace A294074

/-- `p?[(A026491(n)-1)*A069283(n)]` -/
def P7636141713098991251.Spec : Prop :=
  ∀ n, P7636141713098991251.a n = A294074 (n + 1)

end A294074

/-! ## A294074.P2615661070739117767

`∩[A058500(n+1), A159619(n+1)]`
-/

namespace A294074.P2615661070739117767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058500 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159619 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A294074.P2615661070739117767

namespace A294074

/-- `∩[A058500(n+1), A159619(n+1)]` -/
def P2615661070739117767.Spec : Prop :=
  ∀ n, (P2615661070739117767.a n : ℤ) = A294074 (n + 1)

end A294074

/-! ## A294074.P17577885362488021458

`∩[A074781(n+1), A159619(n+1)]`
-/

namespace A294074.P17577885362488021458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074781 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159619 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A294074.P17577885362488021458

namespace A294074

/-- `∩[A074781(n+1), A159619(n+1)]` -/
def P17577885362488021458.Spec : Prop :=
  ∀ n, (P17577885362488021458.a n : ℤ) = A294074 (n + 1)

end A294074

/-! ## A294074.P14672192748365448147

`filter[A058500(n+1), A284948(#)]`
-/

namespace A294074.P14672192748365448147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058500 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A284948 (f1 j).toNat = 1) n)

end

end A294074.P14672192748365448147

namespace A294074

/-- `filter[A058500(n+1), A284948(#)]` -/
def P14672192748365448147.Spec : Prop :=
  ∀ n, P14672192748365448147.a n = A294074 (n + 1)

end A294074

/-! ## A294074.P6338843388386903675

`filter[A058500(n+1), A328979(#)]`
-/

namespace A294074.P6338843388386903675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058500 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A328979 (f1 j).toNat = 1) n)

end

end A294074.P6338843388386903675

namespace A294074

/-- `filter[A058500(n+1), A328979(#)]` -/
def P6338843388386903675.Spec : Prop :=
  ∀ n, P6338843388386903675.a n = A294074 (n + 1)

end A294074

/-! ## A294074.P328218280508149195

`filter[A074781(n+2), A284948(#)]`
-/

namespace A294074.P328218280508149195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074781 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A284948 (f1 j).toNat = 1) n)

end

end A294074.P328218280508149195

namespace A294074

/-- `filter[A074781(n+2), A284948(#)]` -/
def P328218280508149195.Spec : Prop :=
  ∀ n, P328218280508149195.a n = A294074 (n + 1)

end A294074

/-! ## A294074.P13604651674601473392

`filter[A074781(n+2), A328979(#)]`
-/

namespace A294074.P13604651674601473392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074781 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A328979 (f1 j).toNat = 1) n)

end

end A294074.P13604651674601473392

namespace A294074

/-- `filter[A074781(n+2), A328979(#)]` -/
def P13604651674601473392.Spec : Prop :=
  ∀ n, P13604651674601473392.a n = A294074 (n + 1)

end A294074

/-! ## A294074.P16630742714868349915

`p?[A069283(n)*A143051(A026491(n))]`
-/

namespace A294074.P16630742714868349915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069283 n * A143051 (A026491 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A294074.P16630742714868349915

namespace A294074

/-- `p?[A069283(n)*A143051(A026491(n))]` -/
def P16630742714868349915.Spec : Prop :=
  ∀ n, P16630742714868349915.a n = A294074 (n + 1)

end A294074

/-! ## A294074.P1996119918185146708

`p?[A026491(A100368(n+1))-A100368(n+1)]`
-/

namespace A294074.P1996119918185146708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026491 (A100368 (n + 1)).toNat - A100368 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A294074.P1996119918185146708

namespace A294074

/-- `p?[A026491(A100368(n+1))-A100368(n+1)]` -/
def P1996119918185146708.Spec : Prop :=
  ∀ n, P1996119918185146708.a n = A294074 (n + 1)

end A294074

/-!
# A294075: a(n) is the distance from the n-th isolated prime number to the average of the next twin prime pair.

The programs for A294075, there is no canonical definition to state claims against.
-/

/-! ## A294075.P10946406366079589313

`A014574(A162310(n+1)+1)-A007510(n+1)`
-/

namespace A294075.P10946406366079589313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014574 (A162310 (n + 1) + 1).toNat - A007510 (n + 1)

end

end A294075.P10946406366079589313

/-! ## A294075.P15783470323803518588

`A167777(A162310(n+1)+2)-A007510(n+1)`
-/

namespace A294075.P15783470323803518588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167777 (A162310 (n + 1) + 2).toNat - A007510 (n + 1)

end

end A294075.P15783470323803518588

/-! ## A294075.P2740865382100208662

`A014574(A171562(n+1)-n)-A007510(n+1)`
-/

namespace A294075.P2740865382100208662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014574 (A171562 (n + 1) - (n : ℤ)).toNat - A007510 (n + 1)

end

end A294075.P2740865382100208662

/-! ## A294075.P14789283251341202994

`A014574(A162310(n+1)+1)-p?[A062729(n+1)]`
-/

namespace A294075.P14789283251341202994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062729 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014574 (A162310 (n + 1) + 1).toNat - f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A294075.P14789283251341202994

/-! ## A294075.P1281454754030256078

`A014574(A162310(n+1)+1)-p?[A167706(n+1)]`
-/

namespace A294075.P1281454754030256078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167706 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014574 (A162310 (n + 1) + 1).toNat - f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A294075.P1281454754030256078

/-! ## A294075.P2244715891418773302

`A014574(A171562(n+1)-n)-p?[A062729(n+1)]`
-/

namespace A294075.P2244715891418773302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062729 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014574 (A171562 (n + 1) - (n : ℤ)).toNat - f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A294075.P2244715891418773302

/-! ## A294075.P6698200311625390826

`A014574(A171562(n+1)-n)-p?[A167706(n+1)]`
-/

namespace A294075.P6698200311625390826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167706 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014574 (A171562 (n + 1) - (n : ℤ)).toNat - f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A294075.P6698200311625390826

/-! ## A294075.P4184942947965158761

`A014574(A162310(n+1)+1)-A000040(A176656(n+1))`
-/

namespace A294075.P4184942947965158761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014574 (A162310 (n + 1) + 1).toNat - A000040 (A176656 (n + 1)).toNat

end

end A294075.P4184942947965158761

/-! ## A294075.P220188907971166704

`A167777(A162310(n+1)+2)-A000040(A176656(n+1))`
-/

namespace A294075.P220188907971166704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167777 (A162310 (n + 1) + 2).toNat - A000040 (A176656 (n + 1)).toNat

end

end A294075.P220188907971166704

/-! ## A294075.P512906014336257273

`A014574(A171562(n+1)-n)-A000040(A176656(n+1))`
-/

namespace A294075.P512906014336257273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014574 (A171562 (n + 1) - (n : ℤ)).toNat - A000040 (A176656 (n + 1)).toNat

end

end A294075.P512906014336257273

/-!
# A294076: Absolute difference between n-th stella octangula number (A007588) and the nearest perfect power (A001597).

The programs for A294076, there is no canonical definition to state claims against.
-/

/-! ## A294076.P2765823109922234609

`A301573(2*n^3-n)`
-/

namespace A294076.P2765823109922234609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301573 (2 * n ^ 3 - n)

end

end A294076.P2765823109922234609

/-! ## A294076.P741793329464833473

`A301573(Δ[C(n²-n, 2)])%59`
-/

namespace A294076.P741793329464833473
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ((n ^ 2 : ℤ) - (n : ℤ)).toNat 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A301573 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat) 59

end

end A294076.P741793329464833473

/-! ## A294076.P8065877343407016462

`A301573(lcm(n, 1-2*n²))%59`
-/

namespace A294076.P8065877343407016462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A301573 (Int.lcm (n : ℤ) (1 - (2 * n ^ 2 : ℤ)))) 59

end

end A294076.P8065877343407016462

/-! ## A294076.P14424334969972891789

`and(-1, A301573(-Δ[-C(n²-n, 2)]))`
-/

namespace A294076.P14424334969972891789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(Nat.choose ((n ^ 2 : ℤ) - (n : ℤ)).toNat 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A301573 (-(f1 (n + 1) - f1 n)).toNat)

end

end A294076.P14424334969972891789

/-! ## A294076.P5238288605700284722

`A301573(n*(ceil(2/acot(n)²)-3))%59`
-/

namespace A294076.P5238288605700284722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A301573 ((n : ℤ) * (⌈2 / SequenceMachineLib.acot (n : ℝ) ^ 2⌉ - 3)).toNat) 59

end

end A294076.P5238288605700284722

/-!
# A294077: Smallest integer k such that k + x is an economical number for every x with 0 <= x <= n-1.

The programs for A294077, there is no canonical definition to state claims against.
-/

/-! ## A294077.P12387043138454754238

`A129759(7^and(n, -2))`
-/

namespace A294077.P12387043138454754238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129759 (SequenceMachineLib.roundAway ((7 : ℚ) ^ (Int.land (n : ℤ) (-2) : ℤ))).toNat

end

end A294077.P12387043138454754238

/-! ## A294077.P7418720962407321270

`A090690(a(n-2))` with `a(0)=1, a(1)=1`
-/

namespace A294077.P7418720962407321270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A090690 (a (n - 2)).toNat

end

end A294077.P7418720962407321270

/-!
# A294078: a(n) is the smallest even number k such that k*prime(n) - 1 or k*prime(n) + 1 is prime.

The programs for A294078, there is no canonical definition to state claims against.
-/

/-! ## A294078.P844189538113365038

`A309120(p?[xor(1, n)])`
-/

namespace A294078.P844189538113365038
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309120 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A294078.P844189538113365038

/-! ## A294078.P11388668878672119972

`A309120(Δ[A007504(n)])`
-/

namespace A294078.P11388668878672119972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309120 (f1 (n + 1) - f1 n).toNat

end

end A294078.P11388668878672119972

/-! ## A294078.P17976142888033823444

`A309120(A000040(n+1))`
-/

namespace A294078.P17976142888033823444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309120 (A000040 (n + 1)).toNat

end

end A294078.P17976142888033823444

/-! ## A294078.P18367423470896058748

`A309120(A006005(n+1))`
-/

namespace A294078.P18367423470896058748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309120 (A006005 (n + 1)).toNat

end

end A294078.P18367423470896058748

/-! ## A294078.P723020732912666276

`A309120(A063884(n+1))`
-/

namespace A294078.P723020732912666276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309120 (A063884 (n + 1)).toNat

end

end A294078.P723020732912666276

/-! ## A294078.P9881247766029331150

`A309120(A063904(n+1))`
-/

namespace A294078.P9881247766029331150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309120 (A063904 (n + 1)).toNat

end

end A294078.P9881247766029331150

/-! ## A294078.P12539354271330181886

`A309120(A161847(n+1))`
-/

namespace A294078.P12539354271330181886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309120 (A161847 (n + 1)).toNat

end

end A294078.P12539354271330181886

/-! ## A294078.P2653492127300771708

`A309120(A318871(n+1))`
-/

namespace A294078.P2653492127300771708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309120 (A318871 (n + 1)).toNat

end

end A294078.P2653492127300771708

/-! ## A294078.P2810768842879832859

`A309120(A008578(n+2))`
-/

namespace A294078.P2810768842879832859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309120 (A008578 (n + 2)).toNat

end

end A294078.P2810768842879832859

/-!
# A294079: Strict Moebius function of the multiorder of integer partitions indexed by Heinz numbers.

The programs for A294079, there is no canonical definition to state claims against.
-/

/-! ## A294079.P18089108913922452688

`A016364(∏{e}[n+1, C(#+4, 4)]+8)`
-/

namespace A294079.P18089108913922452688
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016364 (∏ p ∈ Nat.primeFactors (f1 n), Nat.choose (Nat.factorization (f1 n) p + 4) 4 + 8)

end

end A294079.P18089108913922452688

/-! ## A294079.P2534614278672837060

`A056594(A060443(n))-A304653(n+1)`
-/

namespace A294079.P2534614278672837060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (A060443 n).toNat - A304653 (n + 1)

end

end A294079.P2534614278672837060

/-! ## A294079.P17326384964563234085

`A000007(A264443(n))-A304653(n+1)`
-/

namespace A294079.P17326384964563234085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A264443 n).toNat - A304653 (n + 1)

end

end A294079.P17326384964563234085

/-! ## A294079.P7240487389146955549

`A051444(A069129(n+1))-A304653(n+1)`
-/

namespace A294079.P7240487389146955549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051444 (A069129 (n + 1)).toNat - A304653 (n + 1)

end

end A294079.P7240487389146955549

/-! ## A294079.P1903434272205945502

`A008683(A133524(n+1))-A304653(n+1)`
-/

namespace A294079.P1903434272205945502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A133524 (n + 1)).toNat - A304653 (n + 1)

end

end A294079.P1903434272205945502

/-!
# A294080: Same-tree Moebius function of the multiorder of integer partitions indexed by Heinz numbers.

The programs for A294080, there is no canonical definition to state claims against.
-/

/-! ## A294080.P16453104170969113070

`A275966(A323300(n+1))%A268448(2*n+1)`
-/

namespace A294080.P16453104170969113070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A275966 (A323300 (n + 1)).toNat) (A268448 (2 * n + 1))

end

end A294080.P16453104170969113070

/-! ## A294080.P6013341575312946862

`A144032(A293524(n+1)+1)`
-/

namespace A294080.P6013341575312946862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144032 (A293524 (n + 1) + 1).toNat

end

end A294080.P6013341575312946862

/-! ## A294080.P2464807086562209794

`A179287(A293524(n+1)+1)`
-/

namespace A294080.P2464807086562209794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179287 (A293524 (n + 1) + 1).toNat

end

end A294080.P2464807086562209794

/-! ## A294080.P4916536665973966459

`A344618(A124859(n+1)-1)`
-/

namespace A294080.P4916536665973966459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344618 (A124859 (n + 1) - 1).toNat

end

end A294080.P4916536665973966459

/-!
# A294082: Square array read by antidiagonals: T(m,n) = T(m,n-1)^2 - T(m,n-2)^2 + T(m,n-2) with T(1,n) = 1, T(m,0) = 1, and T(m,1) = m.

The programs for A294082, there is no canonical definition to state claims against.
-/

/-! ## A294082.P6407304489574375585

`A085153(A125790(n))`
-/

namespace A294082.P6407304489574375585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085153 (A125790 n).toNat

end

end A294082.P6407304489574375585

/-! ## A294082.P7574296429306980908

`A085153(A127054(n))`
-/

namespace A294082.P7574296429306980908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085153 (A127054 n).toNat

end

end A294082.P7574296429306980908

/-! ## A294082.P2151123377527608317

`A322528(A090238(n))`
-/

namespace A294082.P2151123377527608317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322528 (A090238 n).toNat

end

end A294082.P2151123377527608317

/-! ## A294082.P5373647933199301375

`A235121(A369435(n))`
-/

namespace A294082.P5373647933199301375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235121 (A369435 n).toNat

end

end A294082.P5373647933199301375

/-! ## A294082.P12809929353737771234

`A245341(A095836(n+1))`
-/

namespace A294082.P12809929353737771234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245341 (A095836 (n + 1)).toNat

end

end A294082.P12809929353737771234

/-!
# A294083: a(n) is the n-th nonprime number raised to the n-th prime number.

The programs for A294083, the canonical program `A294083.P5303193915532408117` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A294083 has offset 1).

The definition of A294083 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A018252, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A294083.P5303193915532408117

`A018252(n+1)^A000040(n+1)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A294083

/-- `A018252(n+1)^A000040(n+1)` -/
def P5303193915532408117.Spec : Prop :=
  ∀ n, P5303193915532408117.a n = (A294083 (n + 1) : ℚ)

end A294083

/-! ## A294083.P5569793482024031103

`A018252(n+1)^A049551(n+1)`
-/

namespace A294083.P5569793482024031103
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A018252 (n + 1) : ℚ) ^ (A049551 (n + 1) : ℤ)

end

end A294083.P5569793482024031103

namespace A294083

/-- `A018252(n+1)^A049551(n+1)` -/
def P5569793482024031103.Spec : Prop :=
  ∀ n, P5569793482024031103.a n = (A294083 (n + 1) : ℚ)

end A294083

/-! ## A294083.P13086941670197713981

`A018252(n+1)^∑[A054541(n+1)]`
-/

namespace A294083.P13086941670197713981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A018252 (n + 1) : ℚ) ^ (∑ j ∈ Finset.range (n + 1), f1 j : ℤ)

end

end A294083.P13086941670197713981

namespace A294083

/-- `A018252(n+1)^∑[A054541(n+1)]` -/
def P13086941670197713981.Spec : Prop :=
  ∀ n, P13086941670197713981.a n = (A294083 (n + 1) : ℚ)

end A294083

/-! ## A294083.P6241675161312364510

`comp[A006530(n+1)%(n+1)]^A000040(n+1)`
-/

namespace A294083.P6241675161312364510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006530 (n + 1)) (n + 1 : ℤ)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℚ) ^ (A000040 (n + 1) : ℤ)

end

end A294083.P6241675161312364510

namespace A294083

/-- `comp[A006530(n+1)%(n+1)]^A000040(n+1)` -/
def P6241675161312364510.Spec : Prop :=
  ∀ n, P6241675161312364510.a n = (A294083 (n + 1) : ℚ)

end A294083

/-! ## A294083.P14751720176674044923

`A018252(n+1)^A151800(A015919(n+1))`
-/

namespace A294083.P14751720176674044923
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A018252 (n + 1) : ℚ) ^ (A151800 (A015919 (n + 1)).toNat : ℤ)

end

end A294083.P14751720176674044923

namespace A294083

/-- `A018252(n+1)^A151800(A015919(n+1))` -/
def P14751720176674044923.Spec : Prop :=
  ∀ n, P14751720176674044923.a n = (A294083 (n + 1) : ℚ)

end A294083

/-!
# A294084: Number of indecomposable intervals in the Tamari lattices.

The programs for A294084, there is no canonical definition to state claims against.
-/

/-! ## A294084.P2908950025342055940

`A110654(A005500(n)-A118033(n))`
-/

namespace A294084.P2908950025342055940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A005500 n - A118033 n).toNat

end

end A294084.P2908950025342055940

/-! ## A294084.P11481320147721175096

`A123108(A005500(n)-A175631(n+1))`
-/

namespace A294084.P11481320147721175096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A005500 n - A175631 (n + 1)).toNat

end

end A294084.P11481320147721175096

/-! ## A294084.P13121741871505537761

`A004526(A005500(n)-A000094(n+3))`
-/

namespace A294084.P13121741871505537761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A005500 n - A000094 (n + 3)).toNat

end

end A294084.P13121741871505537761

/-!
# A294085: a(n) is the number of self-symmetric anonymous and neutral equivalence classes of preference profiles with 3 alternatives and n agents (IANC model).

The programs for A294085, the canonical program `A294085.P11106820965388429589` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A294085 has offset 0).

The definition of A294085 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A294085.P2592281220293715023

`2*A005513(n+6)-A037240(n)`
-/

namespace A294085.P2592281220293715023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A005513 (n + 6) - A037240 n

end

end A294085.P2592281220293715023

namespace A294085

/-- `2*A005513(n+6)-A037240(n)` -/
def P2592281220293715023.Spec : Prop :=
  ∀ n, P2592281220293715023.a n = A294085 n

end A294085

/-! ## A294085.P17066338126481419923

`A069905(A142150(n))+A005232(n)`
-/

namespace A294085.P17066338126481419923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069905 (A142150 n).toNat + A005232 n

end

end A294085.P17066338126481419923

namespace A294085

/-- `A069905(A142150(n))+A005232(n)` -/
def P17066338126481419923.Spec : Prop :=
  ∀ n, P17066338126481419923.a n = A294085 n

end A294085

/-! ## A294085.P11106820965388429589

`A266769(n)+A026810(A109613(n))`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A294085

/-- `A266769(n)+A026810(A109613(n))` -/
def P11106820965388429589.Spec : Prop :=
  ∀ n, P11106820965388429589.a n = A294085 n

theorem P11106820965388429589.correct : P11106820965388429589.Spec := by
  intro n
  simp only [A294085]

end A294085

/-! ## A294085.P13613690749102494167

`ceil(A330298(n+4)/3)`
-/

namespace A294085.P13613690749102494167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A330298 (n + 4) : ℚ) / 3⌉

end

end A294085.P13613690749102494167

namespace A294085

/-- `ceil(A330298(n+4)/3)` -/
def P13613690749102494167.Spec : Prop :=
  ∀ n, P13613690749102494167.a n = A294085 n

end A294085

/-! ## A294085.P9525702214313232566

`round(A333319(n+5)/A110654(n+5))`
-/

namespace A294085.P9525702214313232566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A333319 (n + 5) : ℚ) / (A110654 (n + 5) : ℚ))

end

end A294085.P9525702214313232566

namespace A294085

/-- `round(A333319(n+5)/A110654(n+5))` -/
def P9525702214313232566.Spec : Prop :=
  ∀ n, P9525702214313232566.a n = A294085 n

end A294085

/-! ## A294085.P7086980426670087976

`A029071(A047238(n+1))`
-/

namespace A294085.P7086980426670087976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029071 (A047238 (n + 1)).toNat

end

end A294085.P7086980426670087976

namespace A294085

/-- `A029071(A047238(n+1))` -/
def P7086980426670087976.Spec : Prop :=
  ∀ n, P7086980426670087976.a n = A294085 n

end A294085

/-! ## A294085.P6393621790803849925

`A029238(4*A032766(n))`
-/

namespace A294085.P6393621790803849925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029238 (4 * A032766 n).toNat

end

end A294085.P6393621790803849925

namespace A294085

/-- `A029238(4*A032766(n))` -/
def P6393621790803849925.Spec : Prop :=
  ∀ n, P6393621790803849925.a n = A294085 n

end A294085

/-! ## A294085.P1445898677275749309

`A029238(2*A047238(n+1))`
-/

namespace A294085.P1445898677275749309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029238 (2 * A047238 (n + 1)).toNat

end

end A294085.P1445898677275749309

namespace A294085

/-- `A029238(2*A047238(n+1))` -/
def P1445898677275749309.Spec : Prop :=
  ∀ n, P1445898677275749309.a n = A294085 n

end A294085

/-! ## A294085.P8284140780195710472

`A029238(A008586(A032766(n)))`
-/

namespace A294085.P8284140780195710472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029238 (A008586 (A032766 n).toNat).toNat

end

end A294085.P8284140780195710472

namespace A294085

/-- `A029238(A008586(A032766(n)))` -/
def P8284140780195710472.Spec : Prop :=
  ∀ n, P8284140780195710472.a n = A294085 n

end A294085

/-! ## A294085.P17809569419089129300

`A029238(A001281(n)*A040035(n))`
-/

namespace A294085.P17809569419089129300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029238 (A001281 n * A040035 n).toNat

end

end A294085.P17809569419089129300

namespace A294085

/-- `A029238(A001281(n)*A040035(n))` -/
def P17809569419089129300.Spec : Prop :=
  ∀ n, P17809569419089129300.a n = A294085 n

end A294085

/-! ## A294085.P3574577281541212978

`A029238(A004442(n)+A008587(n)-1)`
-/

namespace A294085.P3574577281541212978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029238 (A004442 n + (A008587 n - 1)).toNat

end

end A294085.P3574577281541212978

namespace A294085

/-- `A029238(A004442(n)+A008587(n)-1)` -/
def P3574577281541212978.Spec : Prop :=
  ∀ n, P3574577281541212978.a n = A294085 n

end A294085

/-! ## A294085.P16964186283611480961

`A029238(A004442(n)-(1-A008587(n)))`
-/

namespace A294085.P16964186283611480961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029238 (A004442 n - (1 - A008587 n)).toNat

end

end A294085.P16964186283611480961

namespace A294085

/-- `A029238(A004442(n)-(1-A008587(n)))` -/
def P16964186283611480961.Spec : Prop :=
  ∀ n, P16964186283611480961.a n = A294085 n

end A294085

/-! ## A294085.P6621054015436599300

`A029238(A004442(A008587(n)+A004442(n)))`
-/

namespace A294085.P6621054015436599300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029238 (A004442 (A008587 n + A004442 n).toNat).toNat

end

end A294085.P6621054015436599300

namespace A294085

/-- `A029238(A004442(A008587(n)+A004442(n)))` -/
def P6621054015436599300.Spec : Prop :=
  ∀ n, P6621054015436599300.a n = A294085 n

end A294085

/-! ## A294085.P2842891471098389672

`A029238(A062545(A047270(n+1)))`
-/

namespace A294085.P2842891471098389672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029238 (A062545 (A047270 (n + 1)).toNat).toNat

end

end A294085.P2842891471098389672

namespace A294085

/-- `A029238(A062545(A047270(n+1)))` -/
def P2842891471098389672.Spec : Prop :=
  ∀ n, P2842891471098389672.a n = A294085 n

end A294085

/-!
# A294086: Numbers k such that k divides the number of planar partitions of k (A000219).

The programs for A294086, there is no canonical definition to state claims against.
-/

/-! ## A294086.P15177152503359716961

`∑[∑[A038498(A082140(n))]]`
-/

namespace A294086.P15177152503359716961
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038498 (A082140 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A294086.P15177152503359716961

/-! ## A294086.P4036829829092822771

`∑[A014963(record[A331572(3*n+4)])]`
-/

namespace A294086.P4036829829092822771
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331572 (3 * n + 4)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A294086.P4036829829092822771

/-!
# A294090: Base-10 complementary numbers: n equals the product of the 10's complement of its digits.

The programs for A294090, there is no canonical definition to state claims against.
-/

/-! ## A294090.P2082988249430409113

`eq[n, A298372(n)]`
-/

namespace A294090.P2082988249430409113
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298372 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A294090.P2082988249430409113

/-! ## A294090.P4357405320897273639

`eq[n, A089898(A061601(n))]`
-/

namespace A294090.P4357405320897273639
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089898 (A061601 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A294090.P4357405320897273639

/-! ## A294090.P11357369568779454736

`eq[n, A089898(A267193(n))]`
-/

namespace A294090.P11357369568779454736
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089898 (A267193 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A294090.P11357369568779454736

/-! ## A294090.P16275787063216433425

`eq[A023443(n), A061486(A061601(n))]`
-/

namespace A294090.P16275787063216433425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061486 (A061601 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A294090.P16275787063216433425

/-! ## A294090.P7063249524591289645

`eq[A023443(n), A061486(A267193(n))]`
-/

namespace A294090.P7063249524591289645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061486 (A267193 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A294090.P7063249524591289645

/-!
# A294091: Numbers k such that (k - 1)/2 is prime that are not congruent to -1 mod 8.

The programs for A294091, the canonical program `A294091.P16255864335808949045` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A294091 has offset 1).

The definition of A294091 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A294091.P16255864335808949045

`2*A002313(n+1)+1`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A294091

/-- `2*A002313(n+1)+1` -/
def P16255864335808949045.Spec : Prop :=
  ∀ n, P16255864335808949045.a n = A294091 (n + 1)

theorem P16255864335808949045.correct : P16255864335808949045.Spec := by
  intro n
  simp only [A294091, Nat.add_sub_cancel]

end A294091

/-! ## A294091.P7678840117364248872

`A002313(n+1)+A000027(A002313(n+1)+1)`
-/

namespace A294091.P7678840117364248872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002313 (n + 1) + A000027 (A002313 (n + 1) + 1).toNat

end

end A294091.P7678840117364248872

namespace A294091

/-- `A002313(n+1)+A000027(A002313(n+1)+1)` -/
def P7678840117364248872.Spec : Prop :=
  ∀ n, P7678840117364248872.a n = A294091 (n + 1)

end A294091

/-! ## A294091.P2610847907711626899

`2*p?[A055025(n+1)]+1`
-/

namespace A294091.P2610847907711626899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055025 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 1

end

end A294091.P2610847907711626899

namespace A294091

/-- `2*p?[A055025(n+1)]+1` -/
def P2610847907711626899.Spec : Prop :=
  ∀ n, P2610847907711626899.a n = A294091 (n + 1)

end A294091

/-! ## A294091.P7866294310899957660

`2*p?[or(1, n)+n]+1`
-/

namespace A294091.P7866294310899957660
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) + 1

end

end A294091.P7866294310899957660

namespace A294091

/-- `2*p?[or(1, n)+n]+1` -/
def P7866294310899957660.Spec : Prop :=
  ∀ n, (P7866294310899957660.a n : ℤ) = A294091 (n + 1)

end A294091

/-! ## A294091.P17248987138023389912

`2*p?[a(n-2)+4]+1` with `a(0)=1, a(1)=2`
-/

namespace A294091.P17248987138023389912
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  f1 (n - 2) + 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) + 1

end

end A294091.P17248987138023389912

namespace A294091

/-- `2*p?[a(n-2)+4]+1` -/
def P17248987138023389912.Spec : Prop :=
  ∀ n, (P17248987138023389912.a n : ℤ) = A294091 (n + 1)

end A294091

/-! ## A294091.P1509421686305420984

`4*p?[n*gcd(2, n)+1]/2+1`
-/

namespace A294091.P1509421686305420984
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.gcd 2 n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  4 * ((f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℚ) / 2) + 1

end

end A294091.P1509421686305420984

namespace A294091

/-- `4*p?[n*gcd(2, n)+1]/2+1` -/
def P1509421686305420984.Spec : Prop :=
  ∀ n, P1509421686305420984.a n = (A294091 (n + 1) : ℚ)

end A294091

/-! ## A294091.P15574736049426527017

`p?[xor(2*n, n%2)-2]+p?[xor(2*n, n%2)-2]+1`
-/

namespace A294091.P15574736049426527017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.xor (2 * n) (n % 2) : ℤ) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.xor (2 * n) (n % 2) : ℤ) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) + 1)

end

end A294091.P15574736049426527017

namespace A294091

/-- `p?[xor(2*n, n%2)-2]+p?[xor(2*n, n%2)-2]+1` -/
def P15574736049426527017.Spec : Prop :=
  ∀ n, P15574736049426527017.a n = A294091 (n + 1)

end A294091

/-! ## A294091.P4658139294562952135

`2*A108546(2*n+1)+1`
-/

namespace A294091.P4658139294562952135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A108546 (2 * n + 1) + 1

end

end A294091.P4658139294562952135

namespace A294091

/-- `2*A108546(2*n+1)+1` -/
def P4658139294562952135.Spec : Prop :=
  ∀ n, P4658139294562952135.a n = A294091 (n + 1)

end A294091

/-! ## A294091.P18215908234546156252

`2*p?[xor(n, a(n-1))]+1` with `a(0)=1`
-/

namespace A294091.P18215908234546156252
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  Nat.xor n (f1 (n - 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) + 1

end

end A294091.P18215908234546156252

namespace A294091

/-- `2*p?[xor(n, a(n-1))]+1` -/
def P18215908234546156252.Spec : Prop :=
  ∀ n, (P18215908234546156252.a n : ℤ) = A294091 (n + 1)

end A294091

/-! ## A294091.P15460170320079243632

`2*p?[A003654(n+1)]+1`
-/

namespace A294091.P15460170320079243632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003654 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 1

end

end A294091.P15460170320079243632

namespace A294091

/-- `2*p?[A003654(n+1)]+1` -/
def P15460170320079243632.Spec : Prop :=
  ∀ n, P15460170320079243632.a n = A294091 (n + 1)

end A294091

/-! ## A294091.P3290200871028658843

`2*p?[A003814(n+1)]+1`
-/

namespace A294091.P3290200871028658843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003814 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 1

end

end A294091.P3290200871028658843

namespace A294091

/-- `2*p?[A003814(n+1)]+1` -/
def P3290200871028658843.Spec : Prop :=
  ∀ n, P3290200871028658843.a n = A294091 (n + 1)

end A294091

/-! ## A294091.P12316167125797347938

`2*p?[A031396(n+1)]+1`
-/

namespace A294091.P12316167125797347938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031396 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 1

end

end A294091.P12316167125797347938

namespace A294091

/-- `2*p?[A031396(n+1)]+1` -/
def P12316167125797347938.Spec : Prop :=
  ∀ n, P12316167125797347938.a n = A294091 (n + 1)

end A294091

/-! ## A294091.P13834551985524668119

`2*p?[A025284(n+1)]+1`
-/

namespace A294091.P13834551985524668119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025284 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 1

end

end A294091.P13834551985524668119

namespace A294091

/-- `2*p?[A025284(n+1)]+1` -/
def P13834551985524668119.Spec : Prop :=
  ∀ n, P13834551985524668119.a n = A294091 (n + 1)

end A294091

/-! ## A294091.P2355430426724079610

`2*p?[A125022(n+1)]+1`
-/

namespace A294091.P2355430426724079610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125022 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 1

end

end A294091.P2355430426724079610

namespace A294091

/-- `2*p?[A125022(n+1)]+1` -/
def P2355430426724079610.Spec : Prop :=
  ∀ n, P2355430426724079610.a n = A294091 (n + 1)

end A294091

/-! ## A294091.P5964493704474045872

`2*p?[A020893(n+1)]+1`
-/

namespace A294091.P5964493704474045872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020893 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 1

end

end A294091.P5964493704474045872

namespace A294091

/-- `2*p?[A020893(n+1)]+1` -/
def P5964493704474045872.Spec : Prop :=
  ∀ n, P5964493704474045872.a n = A294091 (n + 1)

end A294091

/-! ## A294091.P1812319139630431729

`2*p?[A008784(n+1)]+1`
-/

namespace A294091.P1812319139630431729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008784 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 1

end

end A294091.P1812319139630431729

namespace A294091

/-- `2*p?[A008784(n+1)]+1` -/
def P1812319139630431729.Spec : Prop :=
  ∀ n, P1812319139630431729.a n = A294091 (n + 1)

end A294091

/-! ## A294091.P5603682055456573585

`2*p?[A046711(n+1)]+1`
-/

namespace A294091.P5603682055456573585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046711 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 1

end

end A294091.P5603682055456573585

namespace A294091

/-- `2*p?[A046711(n+1)]+1` -/
def P5603682055456573585.Spec : Prop :=
  ∀ n, P5603682055456573585.a n = A294091 (n + 1)

end A294091

/-! ## A294091.P4956177555239455738

`2*p?[A057129(n+1)]+1`
-/

namespace A294091.P4956177555239455738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057129 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 1

end

end A294091.P4956177555239455738

namespace A294091

/-- `2*p?[A057129(n+1)]+1` -/
def P4956177555239455738.Spec : Prop :=
  ∀ n, P4956177555239455738.a n = A294091 (n + 1)

end A294091

/-! ## A294091.P1762144050902958677

`2*record[A006530(8*n+2)]+1`
-/

namespace A294091.P1762144050902958677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (8 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1

end

end A294091.P1762144050902958677

namespace A294091

/-- `2*record[A006530(8*n+2)]+1` -/
def P1762144050902958677.Spec : Prop :=
  ∀ n, P1762144050902958677.a n = A294091 (n + 1)

end A294091

/-! ## A294091.P2972115906453020514

`A000265(A002313(n+1)+A002313(n+1)+1)`
-/

namespace A294091.P2972115906453020514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A002313 (n + 1) + (A002313 (n + 1) + 1)).toNat

end

end A294091.P2972115906453020514

namespace A294091

/-- `A000265(A002313(n+1)+A002313(n+1)+1)` -/
def P2972115906453020514.Spec : Prop :=
  ∀ n, P2972115906453020514.a n = A294091 (n + 1)

end A294091

/-!
# A294092: Numbers k == 119 (mod 120) such that 2^((k-1)/2), 3^((k-1)/2) and 5^((k-1)/2) are congruent to 1 (mod k).

The programs for A294092, the canonical program `A294092.P9409228317905178263` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A294092 has offset 1).

The definition of A294092 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4986 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A294092.P9409228317905178263

`∩[A142198(n+1), A295835(n+1)]`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A294092

/-- `∩[A142198(n+1), A295835(n+1)]` -/
def P9409228317905178263.Spec : Prop :=
  ∀ n, (P9409228317905178263.a n : ℤ) = A294092 (n + 1)

theorem P9409228317905178263.correct : P9409228317905178263.Spec := by
  intro n
  simp only [A294092, Nat.add_sub_cancel]

end A294092

/-! ## A294092.P14122044695439584397

`∩[A142198(n+1), A142799(n+1)]`
-/

namespace A294092.P14122044695439584397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142198 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142799 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A294092.P14122044695439584397

namespace A294092

/-- `∩[A142198(n+1), A142799(n+1)]` -/
def P14122044695439584397.Spec : Prop :=
  ∀ n, (P14122044695439584397.a n : ℤ) = A294092 (n + 1)

end A294092

/-! ## A294092.P761607064957729999

`∩[A142799(n+1), A295835(n+1)]`
-/

namespace A294092.P761607064957729999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142799 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295835 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A294092.P761607064957729999

namespace A294092

/-- `∩[A142799(n+1), A295835(n+1)]` -/
def P761607064957729999.Spec : Prop :=
  ∀ n, (P761607064957729999.a n : ℤ) = A294092 (n + 1)

end A294092

/-! ## A294092.P6097079307791625622

`∩[A132236(n+1), A142198(n+1)]`
-/

namespace A294092.P6097079307791625622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132236 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142198 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A294092.P6097079307791625622

namespace A294092

/-- `∩[A132236(n+1), A142198(n+1)]` -/
def P6097079307791625622.Spec : Prop :=
  ∀ n, (P6097079307791625622.a n : ℤ) = A294092 (n + 1)

end A294092

/-! ## A294092.P13774743131663328007

`∩[A132236(n+1), A295835(n+1)]`
-/

namespace A294092.P13774743131663328007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132236 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295835 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A294092.P13774743131663328007

namespace A294092

/-- `∩[A132236(n+1), A295835(n+1)]` -/
def P13774743131663328007.Spec : Prop :=
  ∀ n, (P13774743131663328007.a n : ℤ) = A294092 (n + 1)

end A294092

/-! ## A294092.P9341138350061987016

`∩[A141302(n+1), A142198(n+1)]`
-/

namespace A294092.P9341138350061987016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141302 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142198 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A294092.P9341138350061987016

namespace A294092

/-- `∩[A141302(n+1), A142198(n+1)]` -/
def P9341138350061987016.Spec : Prop :=
  ∀ n, (P9341138350061987016.a n : ℤ) = A294092 (n + 1)

end A294092

/-! ## A294092.P5893423798368023608

`∩[A132236(n+1), A134517(n+1)]`
-/

namespace A294092.P5893423798368023608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132236 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134517 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A294092.P5893423798368023608

namespace A294092

/-- `∩[A132236(n+1), A134517(n+1)]` -/
def P5893423798368023608.Spec : Prop :=
  ∀ n, (P5893423798368023608.a n : ℤ) = A294092 (n + 1)

end A294092

/-! ## A294092.P15466359930877190401

`∩[A134517(n+1), A141887(n+1)]`
-/

namespace A294092.P15466359930877190401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134517 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141887 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A294092.P15466359930877190401

namespace A294092

/-- `∩[A134517(n+1), A141887(n+1)]` -/
def P15466359930877190401.Spec : Prop :=
  ∀ n, (P15466359930877190401.a n : ℤ) = A294092 (n + 1)

end A294092

/-! ## A294092.P7665786644724256638

`∩[A134517(n+1), A142198(n+1)]`
-/

namespace A294092.P7665786644724256638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134517 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142198 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A294092.P7665786644724256638

namespace A294092

/-- `∩[A134517(n+1), A142198(n+1)]` -/
def P7665786644724256638.Spec : Prop :=
  ∀ n, (P7665786644724256638.a n : ℤ) = A294092 (n + 1)

end A294092

/-! ## A294092.P7978408176361140514

`∩[A134517(n+1), A142799(n+1)]`
-/

namespace A294092.P7978408176361140514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134517 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142799 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A294092.P7978408176361140514

namespace A294092

/-- `∩[A134517(n+1), A142799(n+1)]` -/
def P7978408176361140514.Spec : Prop :=
  ∀ n, (P7978408176361140514.a n : ℤ) = A294092 (n + 1)

end A294092

/-! ## A294092.P14967077159277549132

`∩[A141887(n+1), A295835(n+1)]`
-/

namespace A294092.P14967077159277549132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141887 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295835 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A294092.P14967077159277549132

namespace A294092

/-- `∩[A141887(n+1), A295835(n+1)]` -/
def P14967077159277549132.Spec : Prop :=
  ∀ n, (P14967077159277549132.a n : ℤ) = A294092 (n + 1)

end A294092

/-! ## A294092.P11603690110951498014

`∩[A132236(n+1), A385167(n+1)]`
-/

namespace A294092.P11603690110951498014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132236 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385167 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A294092.P11603690110951498014

namespace A294092

/-- `∩[A132236(n+1), A385167(n+1)]` -/
def P11603690110951498014.Spec : Prop :=
  ∀ n, (P11603690110951498014.a n : ℤ) = A294092 (n + 1)

end A294092

/-! ## A294092.P14397031121479558121

`∩[A134517(n+1), A385167(n+1)]`
-/

namespace A294092.P14397031121479558121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134517 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385167 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A294092.P14397031121479558121

namespace A294092

/-- `∩[A134517(n+1), A385167(n+1)]` -/
def P14397031121479558121.Spec : Prop :=
  ∀ n, (P14397031121479558121.a n : ℤ) = A294092 (n + 1)

end A294092

/-! ## A294092.P15110932173381838805

`∩[A142799(n+1), A385167(n+1)]`
-/

namespace A294092.P15110932173381838805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142799 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385167 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A294092.P15110932173381838805

namespace A294092

/-- `∩[A142799(n+1), A385167(n+1)]` -/
def P15110932173381838805.Spec : Prop :=
  ∀ n, (P15110932173381838805.a n : ℤ) = A294092 (n + 1)

end A294092

/-! ## A294092.P11420278779250162615

`∩[A295835(n+1), A385167(n+1)]`
-/

namespace A294092.P11420278779250162615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295835 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385167 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A294092.P11420278779250162615

namespace A294092

/-- `∩[A295835(n+1), A385167(n+1)]` -/
def P11420278779250162615.Spec : Prop :=
  ∀ n, (P11420278779250162615.a n : ℤ) = A294092 (n + 1)

end A294092

/-! ## A294092.P4724416714926605724

`p?[10*12*n-1]`
-/

namespace A294092.P4724416714926605724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (10 * (12 * n) : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A294092.P4724416714926605724

namespace A294092

/-- `p?[10*12*n-1]` -/
def P4724416714926605724.Spec : Prop :=
  ∀ n, P4724416714926605724.a n = A294092 (n + 1)

end A294092

/-! ## A294092.P11827745703597556439

`∩[A141180(n+1), A142799(n+1)]`
-/

namespace A294092.P11827745703597556439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141180 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142799 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A294092.P11827745703597556439

namespace A294092

/-- `∩[A141180(n+1), A142799(n+1)]` -/
def P11827745703597556439.Spec : Prop :=
  ∀ n, (P11827745703597556439.a n : ℤ) = A294092 (n + 1)

end A294092

/-! ## A294092.P6593509154597702201

`∩[A130063(n+1), A132236(n+1)]`
-/

namespace A294092.P6593509154597702201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130063 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132236 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A294092.P6593509154597702201

namespace A294092

/-- `∩[A130063(n+1), A132236(n+1)]` -/
def P6593509154597702201.Spec : Prop :=
  ∀ n, (P6593509154597702201.a n : ℤ) = A294092 (n + 1)

end A294092

/-! ## A294092.P8654918895686776423

`∩[A130063(n+1), A141887(n+1)]`
-/

namespace A294092.P8654918895686776423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130063 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141887 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A294092.P8654918895686776423

namespace A294092

/-- `∩[A130063(n+1), A141887(n+1)]` -/
def P8654918895686776423.Spec : Prop :=
  ∀ n, (P8654918895686776423.a n : ℤ) = A294092 (n + 1)

end A294092

/-! ## A294092.P17489932361459719694

`∩[A130063(n+1), A142198(n+1)]`
-/

namespace A294092.P17489932361459719694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130063 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142198 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A294092.P17489932361459719694

namespace A294092

/-- `∩[A130063(n+1), A142198(n+1)]` -/
def P17489932361459719694.Spec : Prop :=
  ∀ n, (P17489932361459719694.a n : ℤ) = A294092 (n + 1)

end A294092

/-!
# A294093: Sum of the differences of the larger and smaller parts in the partitions of 2n into two parts with the larger part squarefree and smaller part prime.

The programs for A294093, there is no canonical definition to state claims against.
-/

/-! ## A294093.P13242787351491308837

`A294095(2*(n+1))`
-/

namespace A294093.P13242787351491308837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294095 (2 * (n + 1))

end

end A294093.P13242787351491308837

/-! ## A294093.P17569212240580993201

`lcm(2, A294095(n+2+n))`
-/

namespace A294093.P17569212240580993201
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A294095 (n + 2 + n))

end

end A294093.P17569212240580993201

/-! ## A294093.P1700773067978977028

`xor(1, A294095(n-log2(1/2)+1+n)+1)`
-/

namespace A294093.P1700773067978977028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A294095 (SequenceMachineLib.roundAway ((n : ℝ) - Real.logb 2 ((1 : ℚ) / 2 : ℝ) + 1 + (n : ℝ))).toNat + 1)

end

end A294093.P1700773067978977028

/-! ## A294093.P17895222727183162363

`A294095(n+2+n)%A005993(n)`
-/

namespace A294093.P17895222727183162363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A294095 (n + 2 + n)) (A005993 n)

end

end A294093.P17895222727183162363

/-! ## A294093.P10414534284233651168

`A294095(n+2+n)/A007318(C(2, n))`
-/

namespace A294093.P10414534284233651168
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A294095 (n + 2 + n) : ℚ) / (A007318 (Nat.choose 2 n) : ℚ)

end

end A294093.P10414534284233651168

/-! ## A294093.P10502159177739508494

`A294095(n+2+n)/∏{p}[n, A001222(#)]`
-/

namespace A294093.P10502159177739508494
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A294095 (n + 2 + n) : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), A001222 p : ℤ) : ℚ)

end

end A294093.P10502159177739508494

/-! ## A294093.P1129486416937050373

`A294095(n+2+n)^ceil(atan(A000040(n+1))/(n+1))`
-/

namespace A294093.P1129486416937050373
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A294095 (n + 2 + n) : ℚ) ^ (⌈Real.arctan (A000040 (n + 1) : ℝ) / (n + 1 : ℝ)⌉ : ℤ)

end

end A294093.P1129486416937050373

/-! ## A294093.P9676012466288172782

`∑{d}[A294095(A103517(n)), A000010(#)]`
-/

namespace A294093.P9676012466288172782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294095 (A103517 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A294093.P9676012466288172782

/-! ## A294093.P6525788571178946159

`A038608(A294095(n+2+n))`
-/

namespace A294093.P6525788571178946159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038608 (A294095 (n + 2 + n)).toNat

end

end A294093.P6525788571178946159

/-! ## A294093.P3560228983718482477

`A004442(A294095(n+2+n)+1)`
-/

namespace A294093.P3560228983718482477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A294095 (n + 2 + n) + 1).toNat

end

end A294093.P3560228983718482477

/-!
# A294094: Sum of the differences of the larger and smaller parts in the partitions of 2n into two parts with the larger part prime and smaller part squarefree.

The programs for A294094, there is no canonical definition to state claims against.
-/

/-! ## A294094.P8027318785712480947

`A294096(2*(n+1))`
-/

namespace A294094.P8027318785712480947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294096 (2 * (n + 1))

end

end A294094.P8027318785712480947

/-! ## A294094.P11227292738589587546

`lcm(2, A294096(n+2+n))`
-/

namespace A294094.P11227292738589587546
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A294096 (n + 2 + n))

end

end A294094.P11227292738589587546

/-! ## A294094.P7612425922856416357

`A294096(n+2+n)+A010051(A006093(n+5))`
-/

namespace A294094.P7612425922856416357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294096 (n + 2 + n) + A010051 (A006093 (n + 5)).toNat

end

end A294094.P7612425922856416357

/-! ## A294094.P1717234483609595819

`∑{d}[A294096(n+2+n), A000010(#)]`
-/

namespace A294094.P1717234483609595819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294096 (n + 2 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A294094.P1717234483609595819

/-! ## A294094.P6284805487078637679

`A294096(n+2+n)%∑[A000032(n)]`
-/

namespace A294094.P6284805487078637679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A294096 (n + 2 + n)) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A294094.P6284805487078637679

/-! ## A294094.P9169614759489984562

`A294096(n+2+n)/A007318(∑[n])`
-/

namespace A294094.P9169614759489984562
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A294096 (n + 2 + n) : ℚ) / (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A294094.P9169614759489984562

/-!
# A294097: Number of partitions of 2n into two parts such that both parts are either squarefree or nonsquarefree.

The programs for A294097, there is no canonical definition to state claims against.
-/

/-! ## A294097.P8571347012206133823

`A294100(2*(n+1))`
-/

namespace A294097.P8571347012206133823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294100 (2 * (n + 1))

end

end A294097.P8571347012206133823

/-! ## A294097.P13027333450783827845

`1-A294098(n+1)+n`
-/

namespace A294097.P13027333450783827845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A294098 (n + 1) + (n : ℤ)

end

end A294097.P13027333450783827845

/-! ## A294097.P1938669388022944222

`n+1-A294101(2*(n+1))`
-/

namespace A294097.P1938669388022944222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A294101 (2 * (n + 1))

end

end A294097.P1938669388022944222

/-! ## A294097.P7560836477873022611

`1-(A294098(Δ[n²]-n)-n)`
-/

namespace A294097.P7560836477873022611
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A294098 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat - (n : ℤ))

end

end A294097.P7560836477873022611

/-! ## A294097.P7568871445238115691

`A024000(A294098(n+1))+n`
-/

namespace A294097.P7568871445238115691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024000 (A294098 (n + 1)).toNat + (n : ℤ)

end

end A294097.P7568871445238115691

/-! ## A294097.P9827623197971113775

`abs(A294098(n+1)+A001478(n+1))`
-/

namespace A294097.P9827623197971113775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A294098 (n + 1) + A001478 (n + 1)|

end

end A294097.P9827623197971113775

/-! ## A294097.P4491512020345041771

`abs(A294098(n+1)+A001489(n+1))`
-/

namespace A294097.P4491512020345041771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A294098 (n + 1) + A001489 (n + 1)|

end

end A294097.P4491512020345041771

/-! ## A294097.P13036901237538501374

`A294211(2*(n+1))/A005843(n+1)`
-/

namespace A294097.P13036901237538501374
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A294211 (2 * (n + 1)) : ℚ) / (A005843 (n + 1) : ℚ)

end

end A294097.P13036901237538501374

/-! ## A294097.P9902751909895293248

`A282380(2*(n+1))+A071068(2*(n+1))`
-/

namespace A294097.P9902751909895293248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282380 (2 * (n + 1)) + A071068 (2 * (n + 1))

end

end A294097.P9902751909895293248

/-! ## A294097.P6547866034743655231

`abs(A294101(2*(n+1))+A130472(2*n+1))`
-/

namespace A294097.P6547866034743655231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A294101 (2 * (n + 1)) + A130472 (2 * n + 1)|

end

end A294097.P6547866034743655231

/-!
# A294098: Number of partitions of 2n into two parts such that one part is squarefree and the other part is nonsquarefree.

The programs for A294098, there is no canonical definition to state claims against.
-/

/-! ## A294098.P2607565268519557231

`A294101(2*(n+1))`
-/

namespace A294098.P2607565268519557231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294101 (2 * (n + 1))

end

end A294098.P2607565268519557231

/-! ## A294098.P407715655635231757

`n+1-A294100(2*(n+1))`
-/

namespace A294098.P407715655635231757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A294100 (2 * (n + 1))

end

end A294098.P407715655635231757

/-! ## A294098.P6006756682396993113

`A294233(2*(n+1))+A294232(2*(n+1))`
-/

namespace A294098.P6006756682396993113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294233 (2 * (n + 1)) + A294232 (2 * (n + 1))

end

end A294098.P6006756682396993113

/-! ## A294098.P5121907204551608801

`A013928(2*(n+1))-A098235(2*(n+1))`
-/

namespace A294098.P5121907204551608801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013928 (2 * (n + 1)) - A098235 (2 * (n + 1))

end

end A294098.P5121907204551608801

/-! ## A294098.P18341997429323563863

`A351833(2*(n+1))-A071068(2*(n+1))`
-/

namespace A294098.P18341997429323563863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351833 (2 * (n + 1)) - A071068 (2 * (n + 1))

end

end A294098.P18341997429323563863

/-! ## A294098.P11725664162768723420

`A107079(2*(n+1))-(A098235(2*(n+1))+1)`
-/

namespace A294098.P11725664162768723420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107079 (2 * (n + 1)) - (A098235 (2 * (n + 1)) + 1)

end

end A294098.P11725664162768723420

/-! ## A294098.P8003847926456405491

`1-(A282380(2*(n+1))+A071068(2*(n+1)))+n`
-/

namespace A294098.P8003847926456405491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A282380 (2 * (n + 1)) + A071068 (2 * (n + 1))) + (n : ℤ)

end

end A294098.P8003847926456405491

/-! ## A294098.P13791649880587234527

`A024000(A282380(2*(n+1))+A071068(2*(n+1)))+n`
-/

namespace A294098.P13791649880587234527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024000 (A282380 (2 * (n + 1)) + A071068 (2 * (n + 1))).toNat + (n : ℤ)

end

end A294098.P13791649880587234527

/-! ## A294098.P11335178095017445388

`A001478(A282380(2*(n+1))+A071068(2*(n+1)))+n+1`
-/

namespace A294098.P11335178095017445388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001478 (A282380 (2 * (n + 1)) + A071068 (2 * (n + 1))).toNat + (n + 1 : ℤ)

end

end A294098.P11335178095017445388

/-! ## A294098.P5626666797679873380

`A001489(A282380(2*(n+1))+A071068(2*(n+1)))+n+1`
-/

namespace A294098.P5626666797679873380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001489 (A282380 (2 * (n + 1)) + A071068 (2 * (n + 1))).toNat + (n + 1 : ℤ)

end

end A294098.P5626666797679873380

/-! ## A294098.P7108724893446027793

`A351834(2*(n+1))-A098236(2*(n+1))`
-/

namespace A294098.P7108724893446027793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351834 (2 * (n + 1)) - A098236 (2 * (n + 1))

end

end A294098.P7108724893446027793

/-!
# A294099: Rectangular array read by (upward) antidiagonals: A(n,k) = Sum_{j=0..k} (-1)^floor(j/2)*binomial(k-floor((j+1)/2), floor(j/2))*n^(k-j), n >= 1, k >= 0.

The programs for A294099, there is no canonical definition to state claims against.
-/

/-! ## A294099.P2882098290877568075

`A097289(A087644(n+2))-A073453(A136680(n+1))`
-/

namespace A294099.P2882098290877568075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097289 (A087644 (n + 2)).toNat - A073453 (A136680 (n + 1)).toNat

end

end A294099.P2882098290877568075

/-! ## A294099.P8604527551266843806

`or(A178798(A000096(n)), A209115(n+1))`
-/

namespace A294099.P8604527551266843806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A178798 (A000096 n).toNat) (A209115 (n + 1))

end

end A294099.P8604527551266843806

/-! ## A294099.P3029111679079918442

`A001222(3^A209518(n))-A129015(A002262(n))`
-/

namespace A294099.P3029111679079918442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (A209518 n : ℤ))).toNat - A129015 (A002262 n).toNat

end

end A294099.P3029111679079918442

