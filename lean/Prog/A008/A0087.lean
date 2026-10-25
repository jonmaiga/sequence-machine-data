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
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B009.C000
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
# A008700: Theta series of Niemeier lattice of type D_4^6.

The programs for A008700, there is no canonical definition to state claims against.
-/

/-! ## A008700.P2944283901197486486

`2*A008691(n)-A008411(n)`
-/

namespace A008700.P2944283901197486486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008691 n - A008411 n

end

end A008700.P2944283901197486486

/-! ## A008700.P12702809168220806896

`2*A008696(n)-A008693(n)`
-/

namespace A008700.P12702809168220806896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008696 n - A008693 n

end

end A008700.P12702809168220806896

/-! ## A008700.P3927886577826795740

`2*A008698(n)-A008696(n)`
-/

namespace A008700.P3927886577826795740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008698 n - A008696 n

end

end A008700.P3927886577826795740

/-! ## A008700.P9023902601466782140

`(A008702(n)+A008698(n))/2`
-/

namespace A008700.P9023902601466782140
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008702 n + A008698 n : ℚ) / 2

end

end A008700.P9023902601466782140

/-! ## A008700.P9936161650548703525

`A008693(n)+A008696(n)-A008691(n)`
-/

namespace A008700.P9936161650548703525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008693 n + (A008696 n - A008691 n)

end

end A008700.P9936161650548703525

/-! ## A008700.P6968188106934494822

`A008693(n)+A008698(n)-A008692(n)`
-/

namespace A008700.P6968188106934494822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008693 n + (A008698 n - A008692 n)

end

end A008700.P6968188106934494822

/-! ## A008700.P6335538466806675361

`2*A008701(n)-A008702(n)`
-/

namespace A008700.P6335538466806675361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008701 n - A008702 n

end

end A008700.P6335538466806675361

/-! ## A008700.P15499116457498025603

`2*A008699(n)-A008698(n)`
-/

namespace A008700.P15499116457498025603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008699 n - A008698 n

end

end A008700.P15499116457498025603

/-! ## A008700.P10273497402442341150

`(A008701(n)+A008699(n))/2`
-/

namespace A008700.P10273497402442341150
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008701 n + A008699 n : ℚ) / 2

end

end A008700.P10273497402442341150

/-! ## A008700.P15645007006185829970

`A008698(n)+A008699(n)-A008697(n)`
-/

namespace A008700.P15645007006185829970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008698 n + (A008699 n - A008697 n)

end

end A008700.P15645007006185829970

/-! ## A008700.P4988177361711765849

`A008699(n)+A008703(n)-A008702(n)`
-/

namespace A008700.P4988177361711765849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008699 n + (A008703 n - A008702 n)

end

end A008700.P4988177361711765849

/-! ## A008700.P5503386706131789893

`2*A008693(n)-A008690(n)`
-/

namespace A008700.P5503386706131789893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008693 n - A008690 n

end

end A008700.P5503386706131789893

/-! ## A008700.P1641653738741751704

`A008691(n)+A008696(n)-A008690(n)`
-/

namespace A008700.P1641653738741751704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008691 n + (A008696 n - A008690 n)

end

end A008700.P1641653738741751704

/-! ## A008700.P9152908122858184250

`2*A008702(n)-A008704(n)`
-/

namespace A008700.P9152908122858184250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008702 n - A008704 n

end

end A008700.P9152908122858184250

/-! ## A008700.P15703005355370998647

`(A008704(n)+A008696(n))/2`
-/

namespace A008700.P15703005355370998647
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008704 n + A008696 n : ℚ) / 2

end

end A008700.P15703005355370998647

/-! ## A008700.P12168602667605116711

`A008690(n)+A008704(n)-A008691(n)`
-/

namespace A008700.P12168602667605116711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008690 n + (A008704 n - A008691 n)

end

end A008700.P12168602667605116711

/-! ## A008700.P15179259089653212181

`A008693(n)+A008704(n)-A008696(n)`
-/

namespace A008700.P15179259089653212181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008693 n + (A008704 n - A008696 n)

end

end A008700.P15179259089653212181

/-! ## A008700.P3328624923128940442

`2*A008695(n)-A008691(n)`
-/

namespace A008700.P3328624923128940442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008695 n - A008691 n

end

end A008700.P3328624923128940442

/-! ## A008700.P5536900056114160190

`2*A008697(n)-A008695(n)`
-/

namespace A008700.P5536900056114160190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008697 n - A008695 n

end

end A008700.P5536900056114160190

/-! ## A008700.P16910587431306607111

`A008692(n)+A008695(n)-A008690(n)`
-/

namespace A008700.P16910587431306607111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008692 n + (A008695 n - A008690 n)

end

end A008700.P16910587431306607111

/-!
# A008701: Theta series of Niemeier lattice of type A_4^6.

The programs for A008701, there is no canonical definition to state claims against.
-/

/-! ## A008701.P1449866164794056040

`2*A008697(n)-A008694(n)`
-/

namespace A008701.P1449866164794056040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008697 n - A008694 n

end

end A008701.P1449866164794056040

/-! ## A008701.P10185442570485453368

`2*A008702(n)-A008703(n)`
-/

namespace A008701.P10185442570485453368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008702 n - A008703 n

end

end A008701.P10185442570485453368

/-! ## A008701.P7786934386839955320

`(A008702(n)+A008700(n))/2`
-/

namespace A008701.P7786934386839955320
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008702 n + A008700 n : ℚ) / 2

end

end A008701.P7786934386839955320

/-! ## A008701.P3592142561704280929

`2*A008703(n)-A056947(n)`
-/

namespace A008701.P3592142561704280929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008703 n - A056947 n

end

end A008701.P3592142561704280929

/-! ## A008701.P16554879724343621465

`A008692(n)+A008693(n)-A008689(n)`
-/

namespace A008701.P16554879724343621465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008692 n + (A008693 n - A008689 n)

end

end A008701.P16554879724343621465

/-! ## A008701.P3177920104247625518

`A008700(n)+A008703(n)-A008702(n)`
-/

namespace A008701.P3177920104247625518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008700 n + (A008703 n - A008702 n)

end

end A008701.P3177920104247625518

/-! ## A008701.P11774111923410901593

`2*A008699(n)-A008697(n)`
-/

namespace A008701.P11774111923410901593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008699 n - A008697 n

end

end A008701.P11774111923410901593

/-! ## A008701.P6831047393235489011

`2*A008700(n)-A008699(n)`
-/

namespace A008701.P6831047393235489011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008700 n - A008699 n

end

end A008701.P6831047393235489011

/-! ## A008701.P2508264615186260824

`(A008703(n)+A008699(n))/2`
-/

namespace A008701.P2508264615186260824
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008703 n + A008699 n : ℚ) / 2

end

end A008701.P2508264615186260824

/-! ## A008701.P12289656927020662562

`A008699(n)+A008700(n)-A008698(n)`
-/

namespace A008701.P12289656927020662562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008699 n + (A008700 n - A008698 n)

end

end A008701.P12289656927020662562

/-! ## A008701.P4349547623354530809

`A008699(n)+A008702(n)-A008700(n)`
-/

namespace A008701.P4349547623354530809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008699 n + (A008702 n - A008700 n)

end

end A008701.P4349547623354530809

/-! ## A008701.P11383315140691853568

`A008691(n)+A008697(n)-A008690(n)`
-/

namespace A008701.P11383315140691853568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008691 n + (A008697 n - A008690 n)

end

end A008701.P11383315140691853568

/-! ## A008701.P11954694601664055988

`(A008704(n)+A008698(n))/2`
-/

namespace A008701.P11954694601664055988
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008704 n + A008698 n : ℚ) / 2

end

end A008701.P11954694601664055988

/-! ## A008701.P15480116739081951228

`A008689(n)+A008704(n)-A008690(n)`
-/

namespace A008701.P15480116739081951228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008689 n + (A008704 n - A008690 n)

end

end A008701.P15480116739081951228

/-! ## A008701.P593963690193206758

`A008692(n)+A008704(n)-A008694(n)`
-/

namespace A008701.P593963690193206758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008692 n + (A008704 n - A008694 n)

end

end A008701.P593963690193206758

/-! ## A008701.P3882229799132943943

`A008694(n)+A008704(n)-A008696(n)`
-/

namespace A008701.P3882229799132943943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008694 n + (A008704 n - A008696 n)

end

end A008701.P3882229799132943943

/-! ## A008701.P1452622676387936315

`A008700(n)+A008704(n)-A008703(n)`
-/

namespace A008701.P1452622676387936315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008700 n + (A008704 n - A008703 n)

end

end A008701.P1452622676387936315

/-! ## A008701.P15333985363154886797

`A008703(n)+A008702(n)-A008704(n)`
-/

namespace A008701.P15333985363154886797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008703 n + A008702 n - A008704 n

end

end A008701.P15333985363154886797

/-! ## A008701.P7126247656145693308

`A008695(n)+A008704(n)-A008697(n)`
-/

namespace A008701.P7126247656145693308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008695 n + (A008704 n - A008697 n)

end

end A008701.P7126247656145693308

/-! ## A008701.P6198095510792875718

`A008697(n)+A008698(n)-A008695(n)`
-/

namespace A008701.P6198095510792875718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008697 n + (A008698 n - A008695 n)

end

end A008701.P6198095510792875718

/-!
# A008702: Theta series of Niemeier lattice of type A_3^8.

The programs for A008702, there is no canonical definition to state claims against.
-/

/-! ## A008702.P18399833219464381125

`2*A008696(n)-A008692(n)`
-/

namespace A008702.P18399833219464381125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008696 n - A008692 n

end

end A008702.P18399833219464381125

/-! ## A008702.P2057299357415245569

`2*A008700(n)-A008698(n)`
-/

namespace A008702.P2057299357415245569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008700 n - A008698 n

end

end A008702.P2057299357415245569

/-! ## A008702.P2670427304862223547

`2*A008697(n)-A008693(n)`
-/

namespace A008702.P2670427304862223547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008697 n - A008693 n

end

end A008702.P2670427304862223547

/-! ## A008702.P16211020244139397007

`A008689(n)+A008697(n)-A008411(n)`
-/

namespace A008702.P16211020244139397007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008689 n + (A008697 n - A008411 n)

end

end A008702.P16211020244139397007

/-! ## A008702.P3025761880950034734

`A008694(n)+A008697(n)-A008691(n)`
-/

namespace A008702.P3025761880950034734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008694 n + (A008697 n - A008691 n)

end

end A008702.P3025761880950034734

/-! ## A008702.P1418038804710727582

`2*A008689(n)-A008688(n)`
-/

namespace A008702.P1418038804710727582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008689 n - A008688 n

end

end A008702.P1418038804710727582

/-! ## A008702.P7238848683095854556

`2*A008701(n)-A008700(n)`
-/

namespace A008702.P7238848683095854556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008701 n - A008700 n

end

end A008702.P7238848683095854556

/-! ## A008702.P657279707606711442

`(A008703(n)+A008701(n))/2`
-/

namespace A008702.P657279707606711442
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008703 n + A008701 n : ℚ) / 2

end

end A008702.P657279707606711442

/-! ## A008702.P2216822133303243743

`2*A008699(n)-A008696(n)`
-/

namespace A008702.P2216822133303243743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008699 n - A008696 n

end

end A008702.P2216822133303243743

/-! ## A008702.P10944151878642317201

`A008699(n)+A008703(n)-A008700(n)`
-/

namespace A008702.P10944151878642317201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008699 n + (A008703 n - A008700 n)

end

end A008702.P10944151878642317201

/-! ## A008702.P11257457019629241528

`2*A008694(n)-A008690(n)`
-/

namespace A008702.P11257457019629241528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008694 n - A008690 n

end

end A008702.P11257457019629241528

/-! ## A008702.P2254546745144626959

`2*A008703(n)-A008704(n)`
-/

namespace A008702.P2254546745144626959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008703 n - A008704 n

end

end A008702.P2254546745144626959

/-! ## A008702.P11589036087531503694

`(A008704(n)+A008700(n))/2`
-/

namespace A008702.P11589036087531503694
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008704 n + A008700 n : ℚ) / 2

end

end A008702.P11589036087531503694

/-! ## A008702.P11526476816974702020

`A008692(n)+A008704(n)-A008693(n)`
-/

namespace A008702.P11526476816974702020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008692 n + (A008704 n - A008693 n)

end

end A008702.P11526476816974702020

/-! ## A008702.P12011176600414420592

`A008696(n)+A008704(n)-A008698(n)`
-/

namespace A008702.P12011176600414420592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008696 n + (A008704 n - A008698 n)

end

end A008702.P12011176600414420592

/-! ## A008702.P9260192927546415842

`A008697(n)+A008704(n)-A008699(n)`
-/

namespace A008702.P9260192927546415842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008697 n + (A008704 n - A008699 n)

end

end A008702.P9260192927546415842

/-! ## A008702.P559210205445307656

`A008698(n)+A008704(n)-A008700(n)`
-/

namespace A008702.P559210205445307656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008698 n + (A008704 n - A008700 n)

end

end A008702.P559210205445307656

/-! ## A008702.P8979265418196091276

`2*A008698(n)-A008695(n)`
-/

namespace A008702.P8979265418196091276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008698 n - A008695 n

end

end A008702.P8979265418196091276

/-! ## A008702.P92639560954940654

`A008693(n)+A008704(n)-A008695(n)`
-/

namespace A008702.P92639560954940654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008693 n + (A008704 n - A008695 n)

end

end A008702.P92639560954940654

/-! ## A008702.P8400489935457177017

`A008695(n)+A008704(n)-A008696(n)`
-/

namespace A008702.P8400489935457177017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008695 n + (A008704 n - A008696 n)

end

end A008702.P8400489935457177017

/-!
# A008703: Theta series of Niemeier lattice of type A_2^12.

The programs for A008703, there is no canonical definition to state claims against.
-/

/-! ## A008703.P4831071878439199207

`2*A008693(n)-A008689(n)`
-/

namespace A008703.P4831071878439199207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008693 n - A008689 n

end

end A008703.P4831071878439199207

/-! ## A008703.P1920608843363195774

`2*A008700(n)-A008697(n)`
-/

namespace A008703.P1920608843363195774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008700 n - A008697 n

end

end A008703.P1920608843363195774

/-! ## A008703.P13856556228166000966

`2*A008698(n)-A008694(n)`
-/

namespace A008703.P13856556228166000966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008698 n - A008694 n

end

end A008703.P13856556228166000966

/-! ## A008703.P13124675201762091602

`2*A008702(n)-A008701(n)`
-/

namespace A008703.P13124675201762091602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008702 n - A008701 n

end

end A008703.P13124675201762091602

/-! ## A008703.P17764037713066482339

`A008701(n)+A008702(n)-A008700(n)`
-/

namespace A008703.P17764037713066482339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008701 n + (A008702 n - A008700 n)

end

end A008703.P17764037713066482339

/-! ## A008703.P17798979338101874870

`2*A008701(n)-A008699(n)`
-/

namespace A008703.P17798979338101874870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008701 n - A008699 n

end

end A008703.P17798979338101874870

/-! ## A008703.P16183321840350505608

`A008700(n)+A008702(n)-A008699(n)`
-/

namespace A008703.P16183321840350505608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008700 n + (A008702 n - A008699 n)

end

end A008703.P16183321840350505608

/-! ## A008703.P14336856330879824684

`(A008704(n)+A008702(n))/2`
-/

namespace A008703.P14336856330879824684
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008704 n + A008702 n : ℚ) / 2

end

end A008703.P14336856330879824684

/-! ## A008703.P4745275914965451743

`A008693(n)+A008704(n)-A008694(n)`
-/

namespace A008703.P4745275914965451743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008693 n + (A008704 n - A008694 n)

end

end A008703.P4745275914965451743

/-! ## A008703.P8833011779380733946

`A008696(n)+A008704(n)-A008697(n)`
-/

namespace A008703.P8833011779380733946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008696 n + (A008704 n - A008697 n)

end

end A008703.P8833011779380733946

/-! ## A008703.P10192074681376584131

`A008697(n)+A008704(n)-A008698(n)`
-/

namespace A008703.P10192074681376584131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008697 n + (A008704 n - A008698 n)

end

end A008703.P10192074681376584131

/-! ## A008703.P17607501473188741862

`A008698(n)+A008704(n)-A008699(n)`
-/

namespace A008703.P17607501473188741862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008698 n + (A008704 n - A008699 n)

end

end A008703.P17607501473188741862

/-! ## A008703.P14151470943557592453

`A008699(n)+A008704(n)-A008700(n)`
-/

namespace A008703.P14151470943557592453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008699 n + (A008704 n - A008700 n)

end

end A008703.P14151470943557592453

/-! ## A008703.P12871586077240730265

`A008700(n)+A008704(n)-A008701(n)`
-/

namespace A008703.P12871586077240730265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008700 n + (A008704 n - A008701 n)

end

end A008703.P12871586077240730265

/-! ## A008703.P361065854974869752

`A008701(n)+A008704(n)-A008702(n)`
-/

namespace A008703.P361065854974869752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008701 n + (A008704 n - A008702 n)

end

end A008703.P361065854974869752

/-! ## A008703.P6410921518956658199

`A008694(n)+A008704(n)-A008695(n)`
-/

namespace A008703.P6410921518956658199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008694 n + (A008704 n - A008695 n)

end

end A008703.P6410921518956658199

/-! ## A008703.P13430887768778489455

`A008698(n)+A008699(n)-A008695(n)`
-/

namespace A008703.P13430887768778489455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008698 n + (A008699 n - A008695 n)

end

end A008703.P13430887768778489455

/-!
# A008704: Theta series of Niemeier lattice of type A_1^24.

The programs for A008704, there is no canonical definition to state claims against.
-/

/-! ## A008704.P9023459651527991713

`2*A008692(n)-A008411(n)`
-/

namespace A008704.P9023459651527991713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008692 n - A008411 n

end

end A008704.P9023459651527991713

/-! ## A008704.P15938258962030630623

`(A008702(n)+A008408(n))/2`
-/

namespace A008704.P15938258962030630623
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008702 n + A008408 n : ℚ) / 2

end

end A008704.P15938258962030630623

/-! ## A008704.P319282682982544154

`2*A008696(n)-A008691(n)`
-/

namespace A008704.P319282682982544154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008696 n - A008691 n

end

end A008704.P319282682982544154

/-! ## A008704.P6161763469534351535

`2*A008697(n)-A008692(n)`
-/

namespace A008704.P6161763469534351535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008697 n - A008692 n

end

end A008704.P6161763469534351535

/-! ## A008704.P6973694602363035971

`2*A008698(n)-A008693(n)`
-/

namespace A008704.P6973694602363035971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008698 n - A008693 n

end

end A008704.P6973694602363035971

/-! ## A008704.P18253983305750444534

`2*A008700(n)-A008696(n)`
-/

namespace A008704.P18253983305750444534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008700 n - A008696 n

end

end A008704.P18253983305750444534

/-! ## A008704.P11791640617850608273

`2*A008702(n)-A008700(n)`
-/

namespace A008704.P11791640617850608273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008702 n - A008700 n

end

end A008704.P11791640617850608273

/-! ## A008704.P18222142939207358668

`2*A008703(n)-A008702(n)`
-/

namespace A008704.P18222142939207358668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008703 n - A008702 n

end

end A008704.P18222142939207358668

/-! ## A008704.P8100550829220983296

`(A056947(n)+A008703(n))/2`
-/

namespace A008704.P8100550829220983296
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056947 n + A008703 n : ℚ) / 2

end

end A008704.P8100550829220983296

/-! ## A008704.P12569195340599377473

`A008411(n)+A008691(n)-A008688(n)`
-/

namespace A008704.P12569195340599377473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008411 n + (A008691 n - A008688 n)

end

end A008704.P12569195340599377473

/-! ## A008704.P16852531738341780959

`A008690(n)+A008696(n)-A008411(n)`
-/

namespace A008704.P16852531738341780959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008690 n + (A008696 n - A008411 n)

end

end A008704.P16852531738341780959

/-! ## A008704.P2243611086962187203

`A008692(n)+A008698(n)-A008690(n)`
-/

namespace A008704.P2243611086962187203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008692 n + (A008698 n - A008690 n)

end

end A008704.P2243611086962187203

/-! ## A008704.P12943093974505747554

`A008693(n)+A008696(n)-A008690(n)`
-/

namespace A008704.P12943093974505747554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008693 n + (A008696 n - A008690 n)

end

end A008704.P12943093974505747554

/-! ## A008704.P15076994635769564167

`A008697(n)+A008699(n)-A008693(n)`
-/

namespace A008704.P15076994635769564167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008697 n + (A008699 n - A008693 n)

end

end A008704.P15076994635769564167

/-! ## A008704.P15269721434079623985

`A008700(n)+A008703(n)-A008699(n)`
-/

namespace A008704.P15269721434079623985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008700 n + (A008703 n - A008699 n)

end

end A008704.P15269721434079623985

/-! ## A008704.P12255050565076029418

`A008701(n)+A008702(n)-A008699(n)`
-/

namespace A008704.P12255050565076029418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008701 n + (A008702 n - A008699 n)

end

end A008704.P12255050565076029418

/-! ## A008704.P4219685435740606625

`A008701(n)+A008703(n)-A008700(n)`
-/

namespace A008704.P4219685435740606625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008701 n + (A008703 n - A008700 n)

end

end A008704.P4219685435740606625

/-! ## A008704.P17399216407703519868

`A056947(n)+A056947(n)-A008408(n)`
-/

namespace A008704.P17399216407703519868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056947 n + (A056947 n - A008408 n)

end

end A008704.P17399216407703519868

/-! ## A008704.P12013568135459570176

`2*A008695(n)-A008690(n)`
-/

namespace A008704.P12013568135459570176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008695 n - A008690 n

end

end A008704.P12013568135459570176

/-! ## A008704.P7267049937705669190

`2*A008699(n)-A008695(n)`
-/

namespace A008704.P7267049937705669190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008699 n - A008695 n

end

end A008704.P7267049937705669190

/-!
# A008705: Coefficient of x^n in (Product_{m=1..n}(1-x^m))^n.

The programs for A008705, there is no canonical definition to state claims against.
-/

/-! ## A008705.P18353433261981178160

`A286354(∑[4*n])`
-/

namespace A008705.P18353433261981178160
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286354 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A008705.P18353433261981178160

/-! ## A008705.P17523015464089016326

`A286354(A046092(n))+C(n, n+1)`
-/

namespace A008705.P17523015464089016326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286354 (A046092 n).toNat + (Nat.choose n (n + 1) : ℤ)

end

end A008705.P17523015464089016326

/-! ## A008705.P10656367752305055565

`or(A000007(n), A286354(A046092(n)))`
-/

namespace A008705.P10656367752305055565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A286354 (A046092 n).toNat)

end

end A008705.P10656367752305055565

/-! ## A008705.P18082743599882136208

`A286354(A046092(n))+char[A242845(n)]`
-/

namespace A008705.P18082743599882136208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242845 (n + 25)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286354 (A046092 n).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A008705.P18082743599882136208

/-! ## A008705.P4148801622994289064

`A286354(A046092(n))+A000007(n+1)`
-/

namespace A008705.P4148801622994289064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286354 (A046092 n).toNat + A000007 (n + 1)

end

end A008705.P4148801622994289064

/-! ## A008705.P12748255317208066040

`A286354(A046092(n))+A000038(n+1)`
-/

namespace A008705.P12748255317208066040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286354 (A046092 n).toNat + A000038 (n + 1)

end

end A008705.P12748255317208066040

/-! ## A008705.P16741959997431531593

`A286354(A046092(n))%A084481(n+1)`
-/

namespace A008705.P16741959997431531593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A286354 (A046092 n).toNat) (A084481 (n + 1))

end

end A008705.P16741959997431531593

/-! ## A008705.P10407456696637936569

`A286354(A046092(n))^(A000040(n+1)%2)`
-/

namespace A008705.P10407456696637936569
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A286354 (A046092 n).toNat : ℚ) ^ (Int.tmod (A000040 (n + 1)) 2 : ℤ)

end

end A008705.P10407456696637936569

/-! ## A008705.P2871772023375132398

`A286354(A000217(n+7))*A286354(A046092(n))`
-/

namespace A008705.P2871772023375132398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286354 (A000217 (n + 7)).toNat * A286354 (A046092 n).toNat

end

end A008705.P2871772023375132398

/-!
# A008706: Coordination sequence for 3.3.3.4.4 planar net.

The programs for A008706, the canonical program `A008706.P2829034798076193717` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008706 has offset 0).

The definition of A008706 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A008706.P2829034798076193717

`round(1/acot(5*n))`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A008706

/-- `round(1/acot(5*n))` -/
def P2829034798076193717.Spec : Prop :=
  ∀ n, P2829034798076193717.a n = A008706 n

theorem P2829034798076193717.correct : P2829034798076193717.Spec := by
  intro n
  simp only [A008706]

end A008706

/-!
# A008707: a(n) = 10 in base 10-n.

The programs for A008707, there is no canonical definition to state claims against.
-/

/-! ## A008707.P5732482784409170370

`A063432(55-A175419(n))`
-/

namespace A008707.P5732482784409170370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063432 (55 - A175419 n).toNat

end

end A008707.P5732482784409170370

/-! ## A008707.P1758580186526099131

`A082492(A000027(n+1)+45)`
-/

namespace A008707.P1758580186526099131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082492 (A000027 (n + 1) + 45).toNat

end

end A008707.P1758580186526099131

/-! ## A008707.P4193693701821912878

`A063432(56-A180493(n+1))`
-/

namespace A008707.P4193693701821912878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063432 (56 - A180493 (n + 1)).toNat

end

end A008707.P4193693701821912878

/-! ## A008707.P4381833799959964137

`A095425(gcd(A022966(n), A319891(2*n+5)))`
-/

namespace A008707.P4381833799959964137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095425 (Int.gcd (A022966 n) (A319891 (2 * n + 5)))

end

end A008707.P4381833799959964137

/-! ## A008707.P1836419173551302994

`A008708(A257275(n+1))-1`
-/

namespace A008707.P1836419173551302994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008708 (A257275 (n + 1)).toNat - 1

end

end A008707.P1836419173551302994

/-!
# A008708: 11 in base 11-n.

The programs for A008708, there is no canonical definition to state claims against.
-/

/-! ## A008708.P13388047467086068873

`A063432(67-A180493(n+1))`
-/

namespace A008708.P13388047467086068873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063432 (67 - A180493 (n + 1)).toNat

end

end A008708.P13388047467086068873

/-! ## A008708.P3372720554132039688

`A063432(67-A192438(n+1))`
-/

namespace A008708.P3372720554132039688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063432 (67 - A192438 (n + 1)).toNat

end

end A008708.P3372720554132039688

/-! ## A008708.P13029986099915523304

`A095487(n)%A095465(n+1)`
-/

namespace A008708.P13029986099915523304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A095487 n) (A095465 (n + 1))

end

end A008708.P13029986099915523304

/-!
# A008709: 12 in base 12-n.

The programs for A008709, there is no canonical definition to state claims against.
-/

/-! ## A008709.P863139657352582315

`A082492(A296766(n+1)+5)`
-/

namespace A008709.P863139657352582315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082492 (A296766 (n + 1) + 5).toNat

end

end A008709.P863139657352582315

/-! ## A008709.P3888561183252559271

`A063432(79-A180493(n+1))`
-/

namespace A008709.P3888561183252559271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063432 (79 - A180493 (n + 1)).toNat

end

end A008709.P3888561183252559271

/-!
# A008710: 13 in base 13-n.

The programs for A008710, there is no canonical definition to state claims against.
-/

/-! ## A008710.P10023066651568892812

`A082492(n+79)`
-/

namespace A008710.P10023066651568892812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082492 (n + 79)

end

end A008710.P10023066651568892812

/-! ## A008710.P629994158412929847

`A063432(92-A180493(n+1))`
-/

namespace A008710.P629994158412929847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063432 (92 - A180493 (n + 1)).toNat

end

end A008710.P629994158412929847

/-!
# A008711: 14 in base 14-n.

The programs for A008711, there is no canonical definition to state claims against.
-/

/-! ## A008711.P11205691030367890424

`A082492(n+92)`
-/

namespace A008711.P11205691030367890424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082492 (n + 92)

end

end A008711.P11205691030367890424

/-! ## A008711.P17023403694778080446

`eq[3^A079690(n), A161302(n+1)]`
-/

namespace A008711.P17023403694778080446
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (A079690 n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161302 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℚ)) n

end

end A008711.P17023403694778080446

/-! ## A008711.P2693339747072320716

`A124367(n+1)+A012265(A006926(n))`
-/

namespace A008711.P2693339747072320716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124367 (n + 1) + A012265 (A006926 n).toNat

end

end A008711.P2693339747072320716

/-! ## A008711.P13234490715735716775

`eq[A113062(A079690(n)), A161302(n+1)]`
-/

namespace A008711.P13234490715735716775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113062 (A079690 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161302 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A008711.P13234490715735716775

/-! ## A008711.P8646718388417367246

`lt[A328572(3*n+1), A056944(A030069(n+8))]`
-/

namespace A008711.P8646718388417367246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328572 (3 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056944 (A030069 (n + 8)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A008711.P8646718388417367246

/-!
# A008712: 15 in base 15-n.

The programs for A008712, there is no canonical definition to state claims against.
-/

/-! ## A008712.P4686080296893717490

`A082492(A135600(n+7))`
-/

namespace A008712.P4686080296893717490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082492 (A135600 (n + 7)).toNat

end

end A008712.P4686080296893717490

/-! ## A008712.P9965144168650493741

`A082492(A296766(n+1)+44)`
-/

namespace A008712.P9965144168650493741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082492 (A296766 (n + 1) + 44).toNat

end

end A008712.P9965144168650493741

/-!
# A008713: 16 in base 16-n.

The programs for A008713, there is no canonical definition to state claims against.
-/

/-! ## A008713.P394278922273077545

`A082492(A135600(n+1)+21)`
-/

namespace A008713.P394278922273077545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082492 (A135600 (n + 1) + 21).toNat

end

end A008713.P394278922273077545

/-! ## A008713.P7580353121866500233

`A082492(A296766(n+1)+59)`
-/

namespace A008713.P7580353121866500233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082492 (A296766 (n + 1) + 59).toNat

end

end A008713.P7580353121866500233

/-! ## A008713.P1491971033946789142

`A008714(A005496(n))-1`
-/

namespace A008713.P1491971033946789142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008714 (A005496 n).toNat - 1

end

end A008713.P1491971033946789142

/-! ## A008713.P11983158776741990901

`A008714(A044917(n+1))-1`
-/

namespace A008713.P11983158776741990901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008714 (A044917 (n + 1)).toNat - 1

end

end A008713.P11983158776741990901

/-! ## A008713.P14706390514970558083

`A008714(A187829(n+1))-1`
-/

namespace A008713.P14706390514970558083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008714 (A187829 (n + 1)).toNat - 1

end

end A008713.P14706390514970558083

/-!
# A008714: 17 in base 17-n.

The programs for A008714, there is no canonical definition to state claims against.
-/

/-! ## A008714.P8253962962441584712

`lt[A160976(A161030(n+5)), A160981(n+1)]`
-/

namespace A008714.P8253962962441584712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160976 (A161030 (n + 5)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160981 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A008714.P8253962962441584712

/-!
# A008715: 18 in base 18-n.

The programs for A008715, there is no canonical definition to state claims against.
-/

/-! ## A008715.P11988087726029439463

`A057428(A008716(n))+A008716(n+1)`
-/

namespace A008715.P11988087726029439463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A008716 n).toNat + A008716 (n + 1)

end

end A008715.P11988087726029439463

/-! ## A008715.P13737722279623576569

`A023443(A008716(n+1))`
-/

namespace A008715.P13737722279623576569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A008716 (n + 1)).toNat

end

end A008715.P13737722279623576569

/-! ## A008715.P4123014092592345013

`A008716(A005555(n))-1`
-/

namespace A008715.P4123014092592345013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008716 (A005555 n).toNat - 1

end

end A008715.P4123014092592345013

/-! ## A008715.P16710539895292569301

`A289207(A008716(n+1)+1)`
-/

namespace A008715.P16710539895292569301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A008716 (n + 1) + 1).toNat

end

end A008715.P16710539895292569301

/-! ## A008715.P9579046611822350091

`A008716(A043320(n+1))-1`
-/

namespace A008715.P9579046611822350091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008716 (A043320 (n + 1)).toNat - 1

end

end A008715.P9579046611822350091

/-!
# A008716: 19 in base 19-n.

The programs for A008716, there is no canonical definition to state claims against.
-/

/-! ## A008716.P2993193607579050041

`eq[7, or(3, A108380(n+1))]`
-/

namespace A008716.P2993193607579050041
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 3 (A108380 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A008716.P2993193607579050041

/-! ## A008716.P1960684954811489816

`lt[A342951(n+1), 51]+10`
-/

namespace A008716.P1960684954811489816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342951 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  51

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 10

end

end A008716.P1960684954811489816

/-! ## A008716.P1416940026920349393

`A008717(A077168(n))-1`
-/

namespace A008716.P1416940026920349393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008717 (A077168 n).toNat - 1

end

end A008716.P1416940026920349393

/-! ## A008716.P3322016855477082982

`A008717(A060695(n+1))-1`
-/

namespace A008716.P3322016855477082982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008717 (A060695 (n + 1)).toNat - 1

end

end A008716.P3322016855477082982

/-! ## A008716.P5941408097191486191

`A008717(A065672(n+1))-1`
-/

namespace A008716.P5941408097191486191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008717 (A065672 (n + 1)).toNat - 1

end

end A008716.P5941408097191486191

/-!
# A008717: 20 in base 20-n.

The programs for A008717, there is no canonical definition to state claims against.
-/

/-! ## A008717.P7835638051723829605

`lt[A111725(3*n+4), 11]+10`
-/

namespace A008717.P7835638051723829605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111725 (3 * n + 4)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 10

end

end A008717.P7835638051723829605

/-! ## A008717.P8524687392575308009

`eq[A000930(A008617(n)), A161060(n+1)]`
-/

namespace A008717.P8524687392575308009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000930 (A008617 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161060 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A008717.P8524687392575308009

/-! ## A008717.P1900084140807512979

`eq[A000930(A008617(n)), A161264(n+1)]`
-/

namespace A008717.P1900084140807512979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000930 (A008617 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161264 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A008717.P1900084140807512979

/-! ## A008717.P3470124784347797503

`eq[A000213(A014586(n)), A160981(n+1)]`
-/

namespace A008717.P3470124784347797503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000213 (A014586 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160981 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A008717.P3470124784347797503

/-! ## A008717.P14371165219742447943

`eq[A078024(A192541(n)), A161112(n+1)]`
-/

namespace A008717.P14371165219742447943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078024 (A192541 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161112 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A008717.P14371165219742447943

/-!
# A008718: Expansion of g.f.: (1+x^9)/((1-x)*(1-x^4)*(1-x^6)*(1-x^12)).

The programs for A008718, the canonical program `A008718.P4848502084565514075` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008718 has offset 0).

The definition of A008718 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A008718.P11517581856421292455

`∑[A090176(n)]`
-/

namespace A008718.P11517581856421292455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090176 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008718.P11517581856421292455

namespace A008718

/-- `∑[A090176(n)]` -/
def P11517581856421292455.Spec : Prop :=
  ∀ n, P11517581856421292455.a n = A008718 n

end A008718

/-! ## A008718.P4848502084565514075

`∑[A000124(Δ[ceil(n²/24)])-1]`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A008718

/-- `∑[A000124(Δ[ceil(n²/24)])-1]` -/
def P4848502084565514075.Spec : Prop :=
  ∀ n, P4848502084565514075.a n = A008718 n

theorem P4848502084565514075.correct : P4848502084565514075.Spec := by
  intro n
  simp only [A008718]

end A008718

/-! ## A008718.P18416570959629013811

`∑[A000217(A008647(n))]`
-/

namespace A008718.P18416570959629013811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A008647 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008718.P18416570959629013811

namespace A008718

/-- `∑[A000217(A008647(n))]` -/
def P18416570959629013811.Spec : Prop :=
  ∀ n, P18416570959629013811.a n = A008718 n

end A008718

/-! ## A008718.P15786458371435767728

`∑[A161680(A008647(n)+1)]`
-/

namespace A008718.P15786458371435767728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (A008647 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008718.P15786458371435767728

namespace A008718

/-- `∑[A161680(A008647(n)+1)]` -/
def P15786458371435767728.Spec : Prop :=
  ∀ n, P15786458371435767728.a n = A008718 n

end A008718

/-! ## A008718.P5930303002444565072

`∑[∑{d}[A008647(n), A007438(#)]]`
-/

namespace A008718.P5930303002444565072
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008647 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n).natAbs, A007438 d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008718.P5930303002444565072

namespace A008718

/-- `∑[∑{d}[A008647(n), A007438(#)]]` -/
def P5930303002444565072.Spec : Prop :=
  ∀ n, P5930303002444565072.a n = A008718 n

end A008718

/-! ## A008718.P4900784644200294550

`A097913(2*n)`
-/

namespace A008718.P4900784644200294550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097913 (2 * n)

end

end A008718.P4900784644200294550

namespace A008718

/-- `A097913(2*n)` -/
def P4900784644200294550.Spec : Prop :=
  ∀ n, P4900784644200294550.a n = A008718 n

end A008718

/-! ## A008718.P13945880716077231528

`∑[A000217(A008679(2*n)-A008679(n+1))]`
-/

namespace A008718.P13945880716077231528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A008679 (2 * n) - A008679 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008718.P13945880716077231528

namespace A008718

/-- `∑[A000217(A008679(2*n)-A008679(n+1))]` -/
def P13945880716077231528.Spec : Prop :=
  ∀ n, P13945880716077231528.a n = A008718 n

end A008718

/-!
# A008719: Expansion of 1/((1-x)*(1-x^4)*(1-x^6)*(1-x^12)).

The programs for A008719, the canonical program `A008719.P7299805875341293156` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008719 has offset 0).

The definition of A008719 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x-x^4+x^5-x^6+x^7+x^10-x^11-x^12+x^13+x^16-x^17+x^18-x^19-x^22+x^23))` (program `A008719.P7299805875341293156`, by `A008719.P7299805875341293156.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A008719.P7299805875341293156

`ogf(1/(1-x-x^4+x^5-x^6+x^7+x^10-x^11-x^12+x^13+x^16-x^17+x^18-x^19-x^22+x^23))`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A008719

/-- `ogf(1/(1-x-x^4+x^5-x^6+x^7+x^10-x^11-x^12+x^13+x^16-x^17+x^18-x^19-x^22+x^23))` -/
def P7299805875341293156.Spec : Prop :=
  ∀ n, P7299805875341293156.a n = A008719 n

theorem P7299805875341293156.correct : P7299805875341293156.Spec := by
  intro n
  simp only [A008719]

end A008719

/-! ## A008719.P1644605881279124980

`A029000(floor(n/2))`
-/

namespace A008719.P1644605881279124980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029000 ⌊(n : ℚ) / 2⌋.toNat

end

end A008719.P1644605881279124980

namespace A008719

/-- `A029000(floor(n/2))` -/
def P1644605881279124980.Spec : Prop :=
  ∀ n, P1644605881279124980.a n = A008719 n

end A008719

/-! ## A008719.P13230122048815962044

`A029142(or(1, n)-1)`
-/

namespace A008719.P13230122048815962044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029142 (Nat.lor 1 n - 1)

end

end A008719.P13230122048815962044

namespace A008719

/-- `A029142(or(1, n)-1)` -/
def P13230122048815962044.Spec : Prop :=
  ∀ n, P13230122048815962044.a n = A008719 n

end A008719

/-! ## A008719.P4286732659339272384

`A029038(n)-a(n-3)` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A008719.P4286732659339272384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  A029038 n - a (n - 3)

end

end A008719.P4286732659339272384

namespace A008719

/-- `A029038(n)-a(n-3)` -/
def P4286732659339272384.Spec : Prop :=
  ∀ n, P4286732659339272384.a n = A008719 n

end A008719

/-! ## A008719.P17928128720804892537

`A029057(A052928(n))`
-/

namespace A008719.P17928128720804892537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029057 (A052928 n).toNat

end

end A008719.P17928128720804892537

namespace A008719

/-- `A029057(A052928(n))` -/
def P17928128720804892537.Spec : Prop :=
  ∀ n, P17928128720804892537.a n = A008719 n

end A008719

/-! ## A008719.P14976029808591772858

`∑[A025796(n-A029578(n))]`
-/

namespace A008719.P14976029808591772858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025796 ((n : ℤ) - A029578 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008719.P14976029808591772858

namespace A008719

/-- `∑[A025796(n-A029578(n))]` -/
def P14976029808591772858.Spec : Prop :=
  ∀ n, P14976029808591772858.a n = A008719 n

end A008719

/-! ## A008719.P5815609127778296401

`∑[A025796(gcd(n, A004526(n)))]`
-/

namespace A008719.P5815609127778296401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025796 (Int.gcd (n : ℤ) (A004526 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008719.P5815609127778296401

namespace A008719

/-- `∑[A025796(gcd(n, A004526(n)))]` -/
def P5815609127778296401.Spec : Prop :=
  ∀ n, P5815609127778296401.a n = A008719 n

end A008719

/-! ## A008719.P17394109380042516276

`A029142(1-A000034(n)+n)`
-/

namespace A008719.P17394109380042516276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029142 (1 - A000034 n + (n : ℤ)).toNat

end

end A008719.P17394109380042516276

namespace A008719

/-- `A029142(1-A000034(n)+n)` -/
def P17394109380042516276.Spec : Prop :=
  ∀ n, P17394109380042516276.a n = A008719 n

end A008719

/-! ## A008719.P14046924434514602376

`A029142(1-(A000034(n)-n))`
-/

namespace A008719.P14046924434514602376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029142 (1 - (A000034 n - (n : ℤ))).toNat

end

end A008719.P14046924434514602376

namespace A008719

/-- `A029142(1-(A000034(n)-n))` -/
def P14046924434514602376.Spec : Prop :=
  ∀ n, P14046924434514602376.a n = A008719 n

end A008719

/-! ## A008719.P6597803477548075561

`∑[A025796(A004526(A141310(n)))]`
-/

namespace A008719.P6597803477548075561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025796 (A004526 (A141310 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008719.P6597803477548075561

namespace A008719

/-- `∑[A025796(A004526(A141310(n)))]` -/
def P6597803477548075561.Spec : Prop :=
  ∀ n, P6597803477548075561.a n = A008719 n

end A008719

/-! ## A008719.P9736701086260272782

`A029198(abs(A024000(n)))+A029177(n)`
-/

namespace A008719.P9736701086260272782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029198 |A024000 n|.toNat + A029177 n

end

end A008719.P9736701086260272782

namespace A008719

/-- `A029198(abs(A024000(n)))+A029177(n)` -/
def P9736701086260272782.Spec : Prop :=
  ∀ n, P9736701086260272782.a n = A008719 n

end A008719

/-! ## A008719.P4304523155723245084

`∑[A000217(A008647(n)*A059841(n))]`
-/

namespace A008719.P4304523155723245084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A008647 n * A059841 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008719.P4304523155723245084

namespace A008719

/-- `∑[A000217(A008647(n)*A059841(n))]` -/
def P4304523155723245084.Spec : Prop :=
  ∀ n, P4304523155723245084.a n = A008719 n

end A008719

/-! ## A008719.P8462085665887058699

`∑[A000217(A008679(n)*A059841(n))]`
-/

namespace A008719.P8462085665887058699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A008679 n * A059841 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008719.P8462085665887058699

namespace A008719

/-- `∑[A000217(A008679(n)*A059841(n))]` -/
def P8462085665887058699.Spec : Prop :=
  ∀ n, P8462085665887058699.a n = A008719 n

end A008719

/-! ## A008719.P10912996989951009035

`∑[A000217((2-A000034(n))*A008679(n))]`
-/

namespace A008719.P10912996989951009035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 ((2 - A000034 n) * A008679 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008719.P10912996989951009035

namespace A008719

/-- `∑[A000217((2-A000034(n))*A008679(n))]` -/
def P10912996989951009035.Spec : Prop :=
  ∀ n, P10912996989951009035.a n = A008719 n

end A008719

/-! ## A008719.P10722379435413851134

`A029142(xor(1, n+1))`
-/

namespace A008719.P10722379435413851134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029142 (Nat.xor 1 (n + 1))

end

end A008719.P10722379435413851134

namespace A008719

/-- `A029142(xor(1, n+1))` -/
def P10722379435413851134.Spec : Prop :=
  ∀ n, P10722379435413851134.a n = A008719 n

end A008719

/-! ## A008719.P1199877298946858379

`A029142(A004442(n+1))`
-/

namespace A008719.P1199877298946858379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029142 (A004442 (n + 1)).toNat

end

end A008719.P1199877298946858379

namespace A008719

/-- `A029142(A004442(n+1))` -/
def P1199877298946858379.Spec : Prop :=
  ∀ n, P1199877298946858379.a n = A008719 n

end A008719

/-! ## A008719.P17350398036525134367

`∑[A025796(A057979(n+1))]`
-/

namespace A008719.P17350398036525134367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025796 (A057979 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008719.P17350398036525134367

namespace A008719

/-- `∑[A025796(A057979(n+1))]` -/
def P17350398036525134367.Spec : Prop :=
  ∀ n, P17350398036525134367.a n = A008719 n

end A008719

/-! ## A008719.P10982377212360318523

`A029142(or(1, n+2))`
-/

namespace A008719.P10982377212360318523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029142 (Nat.lor 1 (n + 2))

end

end A008719.P10982377212360318523

namespace A008719

/-- `A029142(or(1, n+2))` -/
def P10982377212360318523.Spec : Prop :=
  ∀ n, P10982377212360318523.a n = A008719 n

end A008719

/-! ## A008719.P14271965159703338607

`A029142(A165754(n))`
-/

namespace A008719.P14271965159703338607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029142 (A165754 n).toNat

end

end A008719.P14271965159703338607

namespace A008719

/-- `A029142(A165754(n))` -/
def P14271965159703338607.Spec : Prop :=
  ∀ n, P14271965159703338607.a n = A008719 n

end A008719

/-! ## A008719.P9227922728266121686

`A029142(A004442(2*n)-A004442(n))`
-/

namespace A008719.P9227922728266121686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029142 (A004442 (2 * n) - A004442 n).toNat

end

end A008719.P9227922728266121686

namespace A008719

/-- `A029142(A004442(2*n)-A004442(n))` -/
def P9227922728266121686.Spec : Prop :=
  ∀ n, P9227922728266121686.a n = A008719 n

end A008719

/-!
# A008720: Molien series for 3-dimensional group [2,5] = *225.

The programs for A008720, the canonical program `A008720.P1244516636791611273` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008720 has offset 0).

The definition of A008720 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A008720.P1244516636791611273

`floor((n²+n*(9+5*(-1)^n)+23*(-1)^n+26)/40)`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A008720

/-- `floor((n²+n*(9+5*(-1)^n)+23*(-1)^n+26)/40)` -/
def P1244516636791611273.Spec : Prop :=
  ∀ n, P1244516636791611273.a n = A008720 n

theorem P1244516636791611273.correct : P1244516636791611273.Spec := by
  intro n
  simp only [A008720]

end A008720

/-! ## A008720.P16125102502671447122

`2*a(n-2)-a(n-4)+a(n-5)-2*a(n-7)+a(n-9)` with `a(0)=1, a(1)=0, a(2)=2, a(3)=0, a(4)=3, a(5)=1, a(6)=4, a(7)=2, a(8)=5`
-/

namespace A008720.P16125102502671447122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 2, 0, 3, 1, 4, 2, 5] fun n a =>
  2 * a (n - 2) - a (n - 4) + a (n - 5) - 2 * a (n - 7) + a (n - 9)

end

end A008720.P16125102502671447122

namespace A008720

/-- `2*a(n-2)-a(n-4)+a(n-5)-2*a(n-7)+a(n-9)` -/
def P16125102502671447122.Spec : Prop :=
  ∀ n, P16125102502671447122.a n = A008720 n

end A008720

/-! ## A008720.P14326808294545742958

`round((n+4)²/20)-a(n-1)` with `a(0)=1`
-/

namespace A008720.P14326808294545742958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.roundAway (((n + 4) ^ 2 : ℚ) / 20) - a (n - 1)

end

end A008720.P14326808294545742958

namespace A008720

/-- `round((n+4)²/20)-a(n-1)` -/
def P14326808294545742958.Spec : Prop :=
  ∀ n, P14326808294545742958.a n = A008720 n

end A008720

/-! ## A008720.P18020338300660794284

`∑[A008616(n)-a(n-1)]` with `a(0)=1`
-/

namespace A008720.P18020338300660794284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A008616 n - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008720.P18020338300660794284

namespace A008720

/-- `∑[A008616(n)-a(n-1)]` -/
def P18020338300660794284.Spec : Prop :=
  ∀ n, P18020338300660794284.a n = A008720 n

end A008720

/-! ## A008720.P12968313263947719013

`2*A025802(n)-A165190(n)`
-/

namespace A008720.P12968313263947719013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A025802 n - A165190 n

end

end A008720.P12968313263947719013

namespace A008720

/-- `2*A025802(n)-A165190(n)` -/
def P12968313263947719013.Spec : Prop :=
  ∀ n, P12968313263947719013.a n = A008720 n

end A008720

/-! ## A008720.P7374511512959706580

`A038167(n+2)-A008732(n+1)`
-/

namespace A008720.P7374511512959706580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038167 (n + 2) - A008732 (n + 1)

end

end A008720.P7374511512959706580

namespace A008720

/-- `A038167(n+2)-A008732(n+1)` -/
def P7374511512959706580.Spec : Prop :=
  ∀ n, P7374511512959706580.a n = A008720 n

end A008720

/-! ## A008720.P3121688596087836713

`A008803(A168195(n+2))`
-/

namespace A008720.P3121688596087836713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008803 (A168195 (n + 2)).toNat

end

end A008720.P3121688596087836713

namespace A008720

/-- `A008803(A168195(n+2))` -/
def P3121688596087836713.Spec : Prop :=
  ∀ n, P3121688596087836713.a n = A008720 n

end A008720

/-! ## A008720.P8850539699993738170

`A025860(2*n+1)+A025860(2*n)`
-/

namespace A008720.P8850539699993738170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025860 (2 * n + 1) + A025860 (2 * n)

end

end A008720.P8850539699993738170

namespace A008720

/-- `A025860(2*n+1)+A025860(2*n)` -/
def P8850539699993738170.Spec : Prop :=
  ∀ n, P8850539699993738170.a n = A008720 n

end A008720

/-! ## A008720.P18042621007239152931

`Δ[A029040(2*n)-A029246(2*n)]`
-/

namespace A008720.P18042621007239152931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029040 (2 * n) - A029246 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A008720.P18042621007239152931

namespace A008720

/-- `Δ[A029040(2*n)-A029246(2*n)]` -/
def P18042621007239152931.Spec : Prop :=
  ∀ n, P18042621007239152931.a n = A008720 n

end A008720

/-! ## A008720.P9168607555126398425

`∑[A033182(3*n)-a(n-1)]` with `a(0)=1`
-/

namespace A008720.P9168607555126398425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A033182 (3 * n) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008720.P9168607555126398425

namespace A008720

/-- `∑[A033182(3*n)-a(n-1)]` -/
def P9168607555126398425.Spec : Prop :=
  ∀ n, P9168607555126398425.a n = A008720 n

end A008720

/-! ## A008720.P14558216605000546561

`A025843(A136320(n))`
-/

namespace A008720.P14558216605000546561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025843 (A136320 n).toNat

end

end A008720.P14558216605000546561

namespace A008720

/-- `A025843(A136320(n))` -/
def P14558216605000546561.Spec : Prop :=
  ∀ n, P14558216605000546561.a n = A008720 n

end A008720

/-! ## A008720.P3394617036487163407

`A025843(A047225(n+1))`
-/

namespace A008720.P3394617036487163407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025843 (A047225 (n + 1)).toNat

end

end A008720.P3394617036487163407

namespace A008720

/-- `A025843(A047225(n+1))` -/
def P3394617036487163407.Spec : Prop :=
  ∀ n, P3394617036487163407.a n = A008720 n

end A008720

/-! ## A008720.P8827046685418560749

`A025843(A047243(n+1)-2)`
-/

namespace A008720.P8827046685418560749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025843 (A047243 (n + 1) - 2).toNat

end

end A008720.P8827046685418560749

namespace A008720

/-- `A025843(A047243(n+1)-2)` -/
def P8827046685418560749.Spec : Prop :=
  ∀ n, P8827046685418560749.a n = A008720 n

end A008720

/-! ## A008720.P11238397733090835970

`A025843(A047243(n+2))`
-/

namespace A008720.P11238397733090835970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025843 (A047243 (n + 2)).toNat

end

end A008720.P11238397733090835970

namespace A008720

/-- `A025843(A047243(n+2))` -/
def P11238397733090835970.Spec : Prop :=
  ∀ n, P11238397733090835970.a n = A008720 n

end A008720

/-! ## A008720.P15313254657154095047

`A025843(A166542(n+1)-2)`
-/

namespace A008720.P15313254657154095047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025843 (A166542 (n + 1) - 2).toNat

end

end A008720.P15313254657154095047

namespace A008720

/-- `A025843(A166542(n+1)-2)` -/
def P15313254657154095047.Spec : Prop :=
  ∀ n, P15313254657154095047.a n = A008720 n

end A008720

/-! ## A008720.P15223781278801252049

`A025843(A166542(n+2))`
-/

namespace A008720.P15223781278801252049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025843 (A166542 (n + 2)).toNat

end

end A008720.P15223781278801252049

namespace A008720

/-- `A025843(A166542(n+2))` -/
def P15223781278801252049.Spec : Prop :=
  ∀ n, P15223781278801252049.a n = A008720 n

end A008720

/-!
# A008721: Molien series for 3-dimensional group [2,7] = *227.

The programs for A008721, the canonical program `A008721.P1057233674052974322` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008721 has offset 0).

The definition of A008721 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A008721.P1057233674052974322

`round((n+3)*(n+7)/28)-a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A008721

/-- `round((n+3)*(n+7)/28)-a(n-1)` -/
def P1057233674052974322.Spec : Prop :=
  ∀ n, P1057233674052974322.a n = A008721 n

theorem P1057233674052974322.correct : P1057233674052974322.Spec := by
  intro n
  simp only [A008721]

end A008721

/-! ## A008721.P11322864584238101886

`∑[A008617(n)-a(n-1)]` with `a(0)=1`
-/

namespace A008721.P11322864584238101886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A008617 n - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008721.P11322864584238101886

namespace A008721

/-- `∑[A008617(n)-a(n-1)]` -/
def P11322864584238101886.Spec : Prop :=
  ∀ n, P11322864584238101886.a n = A008721 n

end A008721

/-! ## A008721.P9023648627891991667

`(A027656(n)+A008808(n))/2`
-/

namespace A008721.P9023648627891991667
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027656 n + A008808 n : ℚ) / 2

end

end A008721.P9023648627891991667

namespace A008721

/-- `(A027656(n)+A008808(n))/2` -/
def P9023648627891991667.Spec : Prop :=
  ∀ n, P9023648627891991667.a n = (A008721 n : ℚ)

end A008721

/-! ## A008721.P9595128848189071799

`A011867(A029579(n+8)%A029579(n+11))`
-/

namespace A008721.P9595128848189071799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011867 (Int.tmod (A029579 (n + 8)) (A029579 (n + 11))).toNat

end

end A008721.P9595128848189071799

namespace A008721

/-- `A011867(A029579(n+8)%A029579(n+11))` -/
def P9595128848189071799.Spec : Prop :=
  ∀ n, P9595128848189071799.a n = A008721 n

end A008721

/-! ## A008721.P10213497129644734656

`A025867(2*n+3)+A025867(2*n)`
-/

namespace A008721.P10213497129644734656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025867 (2 * n + 3) + A025867 (2 * n)

end

end A008721.P10213497129644734656

namespace A008721

/-- `A025867(2*n+3)+A025867(2*n)` -/
def P10213497129644734656.Spec : Prop :=
  ∀ n, P10213497129644734656.a n = A008721 n

end A008721

/-! ## A008721.P14187285207113070092

`A027656(n)+A026741(A008808(n)-A027656(n))`
-/

namespace A008721.P14187285207113070092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027656 n + A026741 (A008808 n - A027656 n).toNat

end

end A008721.P14187285207113070092

namespace A008721

/-- `A027656(n)+A026741(A008808(n)-A027656(n))` -/
def P14187285207113070092.Spec : Prop :=
  ∀ n, P14187285207113070092.a n = A008721 n

end A008721

/-! ## A008721.P10330677389087125567

`A026741(A027656(n)+A008808(n))`
-/

namespace A008721.P10330677389087125567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A027656 n + A008808 n).toNat

end

end A008721.P10330677389087125567

namespace A008721

/-- `A026741(A027656(n)+A008808(n))` -/
def P10330677389087125567.Spec : Prop :=
  ∀ n, P10330677389087125567.a n = A008721 n

end A008721

/-! ## A008721.P16963367140322836767

`A004526(A158416(n)+A008808(n))`
-/

namespace A008721.P16963367140322836767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A158416 n + A008808 n).toNat

end

end A008721.P16963367140322836767

namespace A008721

/-- `A004526(A158416(n)+A008808(n))` -/
def P16963367140322836767.Spec : Prop :=
  ∀ n, P16963367140322836767.a n = A008721 n

end A008721

/-! ## A008721.P11678031734975418488

`A027656(A027656(n)+A008808(n))-1`
-/

namespace A008721.P11678031734975418488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027656 (A027656 n + A008808 n).toNat - 1

end

end A008721.P11678031734975418488

namespace A008721

/-- `A027656(A027656(n)+A008808(n))-1` -/
def P11678031734975418488.Spec : Prop :=
  ∀ n, P11678031734975418488.a n = A008721 n

end A008721

/-!
# A008722: Molien series for 3-dimensional group [2,9] = *229.

The programs for A008722, the canonical program `A008722.P7913423782094774766` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008722 has offset 0).

The definition of A008722 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A008722.P7913423782094774766

`∑[∑[dr(n+1)%2-n%2]]-a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A008722

/-- `∑[∑[dr(n+1)%2-n%2]]-a(n-1)` -/
def P7913423782094774766.Spec : Prop :=
  ∀ n, P7913423782094774766.a n = A008722 n

theorem P7913423782094774766.correct : P7913423782094774766.Spec := by
  intro n
  simp only [A008722]

end A008722

/-! ## A008722.P3713653601724755771

`A025765(n)-a(n-1)` with `a(0)=1`
-/

namespace A008722.P3713653601724755771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A025765 n - a (n - 1)

end

end A008722.P3713653601724755771

namespace A008722

/-- `A025765(n)-a(n-1)` -/
def P3713653601724755771.Spec : Prop :=
  ∀ n, P3713653601724755771.a n = A008722 n

end A008722

/-! ## A008722.P12224838033111583739

`A008618(n)+a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A008722.P12224838033111583739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A008618 n + a (n - 2)

end

end A008722.P12224838033111583739

namespace A008722

/-- `A008618(n)+a(n-2)` -/
def P12224838033111583739.Spec : Prop :=
  ∀ n, P12224838033111583739.a n = A008722 n

end A008722

/-! ## A008722.P5162394598253390111

`(A027656(n)+A008809(n))/2`
-/

namespace A008722.P5162394598253390111
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027656 n + A008809 n : ℚ) / 2

end

end A008722.P5162394598253390111

namespace A008722

/-- `(A027656(n)+A008809(n))/2` -/
def P5162394598253390111.Spec : Prop :=
  ∀ n, P5162394598253390111.a n = (A008722 n : ℚ)

end A008722

/-! ## A008722.P4147620712469254355

`2*A025804(n)-A033183(n)`
-/

namespace A008722.P4147620712469254355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A025804 n - A033183 n

end

end A008722.P4147620712469254355

namespace A008722

/-- `2*A025804(n)-A033183(n)` -/
def P4147620712469254355.Spec : Prop :=
  ∀ n, P4147620712469254355.a n = A008722 n

end A008722

/-! ## A008722.P6051422051914257341

`∑[A033183(2*n)-a(n-1)]` with `a(0)=1`
-/

namespace A008722.P6051422051914257341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A033183 (2 * n) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008722.P6051422051914257341

namespace A008722

/-- `∑[A033183(2*n)-a(n-1)]` -/
def P6051422051914257341.Spec : Prop :=
  ∀ n, P6051422051914257341.a n = A008722 n

end A008722

/-! ## A008722.P11769013227088718587

`A025804(2*n)-a(n-1)` with `a(0)=1`
-/

namespace A008722.P11769013227088718587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A025804 (2 * n) - a (n - 1)

end

end A008722.P11769013227088718587

namespace A008722

/-- `A025804(2*n)-a(n-1)` -/
def P11769013227088718587.Spec : Prop :=
  ∀ n, P11769013227088718587.a n = A008722 n

end A008722

/-! ## A008722.P273402616930262259

`A218470(A076314(Δ[A302906(n)]))`
-/

namespace A008722.P273402616930262259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302906 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218470 (A076314 (f1 (n + 1) - f1 n).toNat).toNat

end

end A008722.P273402616930262259

namespace A008722

/-- `A218470(A076314(Δ[A302906(n)]))` -/
def P273402616930262259.Spec : Prop :=
  ∀ n, P273402616930262259.a n = A008722 n

end A008722

/-! ## A008722.P17933939086831347174

`A033183(n)+A005843(A025804(n)-A033183(n))`
-/

namespace A008722.P17933939086831347174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033183 n + A005843 (A025804 n - A033183 n).toNat

end

end A008722.P17933939086831347174

namespace A008722

/-- `A033183(n)+A005843(A025804(n)-A033183(n))` -/
def P17933939086831347174.Spec : Prop :=
  ∀ n, P17933939086831347174.a n = A008722 n

end A008722

/-! ## A008722.P10188907323065346685

`A005843(A025804(n))-A033183(n)`
-/

namespace A008722.P10188907323065346685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A025804 n).toNat - A033183 n

end

end A008722.P10188907323065346685

namespace A008722

/-- `A005843(A025804(n))-A033183(n)` -/
def P10188907323065346685.Spec : Prop :=
  ∀ n, P10188907323065346685.a n = A008722 n

end A008722

/-! ## A008722.P17129857744186070300

`A008809(n)-A004526(A008809(n)-A027656(n))`
-/

namespace A008722.P17129857744186070300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008809 n - A004526 (A008809 n - A027656 n).toNat

end

end A008722.P17129857744186070300

namespace A008722

/-- `A008809(n)-A004526(A008809(n)-A027656(n))` -/
def P17129857744186070300.Spec : Prop :=
  ∀ n, P17129857744186070300.a n = A008722 n

end A008722

/-! ## A008722.P8141924412615896393

`A110654(A008809(n))+A110654(A142150(n))`
-/

namespace A008722.P8141924412615896393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A008809 n).toNat + A110654 (A142150 n).toNat

end

end A008722.P8141924412615896393

namespace A008722

/-- `A110654(A008809(n))+A110654(A142150(n))` -/
def P8141924412615896393.Spec : Prop :=
  ∀ n, P8141924412615896393.a n = A008722 n

end A008722

/-! ## A008722.P16839244478938682487

`A004526(A027656(n)+A008809(n))`
-/

namespace A008722.P16839244478938682487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A027656 n + A008809 n).toNat

end

end A008722.P16839244478938682487

namespace A008722

/-- `A004526(A027656(n)+A008809(n))` -/
def P16839244478938682487.Spec : Prop :=
  ∀ n, P16839244478938682487.a n = A008722 n

end A008722

/-! ## A008722.P4570389378963472746

`A110654(A142150(n)+A008809(n))`
-/

namespace A008722.P4570389378963472746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A142150 n + A008809 n).toNat

end

end A008722.P4570389378963472746

namespace A008722

/-- `A110654(A142150(n)+A008809(n))` -/
def P4570389378963472746.Spec : Prop :=
  ∀ n, P4570389378963472746.a n = A008722 n

end A008722

/-! ## A008722.P16292653636712033127

`A123108(A158416(n)+A008809(n))`
-/

namespace A008722.P16292653636712033127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A158416 n + A008809 n).toNat

end

end A008722.P16292653636712033127

namespace A008722

/-- `A123108(A158416(n)+A008809(n))` -/
def P16292653636712033127.Spec : Prop :=
  ∀ n, P16292653636712033127.a n = A008722 n

end A008722

/-! ## A008722.P341649131598644236

`A027656(A027656(n)+A008809(n))-1`
-/

namespace A008722.P341649131598644236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027656 (A027656 n + A008809 n).toNat - 1

end

end A008722.P341649131598644236

namespace A008722

/-- `A027656(A027656(n)+A008809(n))-1` -/
def P341649131598644236.Spec : Prop :=
  ∀ n, P341649131598644236.a n = A008722 n

end A008722

/-!
# A008723: Molien series for 3-dimensional group [2,11] = *2 2 11.

The programs for A008723, the canonical program `A008723.P8299516312108899251` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008723 has offset 0).

The definition of A008723 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A008723.P8299516312108899251

`A025766(n)-a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A008723

/-- `A025766(n)-a(n-1)` -/
def P8299516312108899251.Spec : Prop :=
  ∀ n, P8299516312108899251.a n = A008723 n

theorem P8299516312108899251.correct : P8299516312108899251.Spec := by
  intro n
  simp only [A008723]

end A008723

/-! ## A008723.P15385817922219344323

`A025805(2*n)-a(n-1)` with `a(0)=1`
-/

namespace A008723.P15385817922219344323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A025805 (2 * n) - a (n - 1)

end

end A008723.P15385817922219344323

namespace A008723

/-- `A025805(2*n)-a(n-1)` -/
def P15385817922219344323.Spec : Prop :=
  ∀ n, P15385817922219344323.a n = A008723 n

end A008723

/-! ## A008723.P8396833014052798474

`A025873(2*n+7)+A025873(2*n)`
-/

namespace A008723.P8396833014052798474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025873 (2 * n + 7) + A025873 (2 * n)

end

end A008723.P8396833014052798474

namespace A008723

/-- `A025873(2*n+7)+A025873(2*n)` -/
def P8396833014052798474.Spec : Prop :=
  ∀ n, P8396833014052798474.a n = A008723 n

end A008723

/-! ## A008723.P15927702268668121721

`A025875(2*n+3)+A025875(2*n+7)+A025875(2*n)`
-/

namespace A008723.P15927702268668121721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025875 (2 * n + 3) + (A025875 (2 * n + 7) + A025875 (2 * n))

end

end A008723.P15927702268668121721

namespace A008723

/-- `A025875(2*n+3)+A025875(2*n+7)+A025875(2*n)` -/
def P15927702268668121721.Spec : Prop :=
  ∀ n, P15927702268668121721.a n = A008723 n

end A008723

/-! ## A008723.P11534165051387111994

`A025894(5*n)-a(A023443(n))` with `a(0)=1`
-/

namespace A008723.P11534165051387111994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A025894 (5 * n) - a (A023443 n).toNat

end

end A008723.P11534165051387111994

namespace A008723

/-- `A025894(5*n)-a(A023443(n))` -/
def P11534165051387111994.Spec : Prop :=
  ∀ n, P11534165051387111994.a n = A008723 n

end A008723

/-!
# A008724: a(n) = floor(n^2/12).

The programs for A008724, the canonical program `A008724.P1518698114986704962` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008724 has offset 0).

The definition of A008724 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(n²/12)` (program `A008724.P1518698114986704962`, by `A008724.P1518698114986704962.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A008724.P1518698114986704962

`floor(n²/12)`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A008724

/-- `floor(n²/12)` -/
def P1518698114986704962.Spec : Prop :=
  ∀ n, P1518698114986704962.a n = A008724 n

theorem P1518698114986704962.correct : P1518698114986704962.Spec := by
  intro n
  simp only [A008724]

end A008724

/-! ## A008724.P12147242247010575630

`a(n-6)+n-3` with `a(0)=0, a(1)=0, a(2)=0, a(3)=0, a(4)=1, a(5)=2`
-/

namespace A008724.P12147242247010575630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 0, 0, 1, 2] fun n a =>
  a (n - 6) + (n : ℤ) - 3

end

end A008724.P12147242247010575630

namespace A008724

/-- `a(n-6)+n-3` -/
def P12147242247010575630.Spec : Prop :=
  ∀ n, P12147242247010575630.a n = A008724 n

end A008724

/-! ## A008724.P130834740502197921

`A174709(n+2)`
-/

namespace A008724.P130834740502197921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174709 (n + 2)

end

end A008724.P130834740502197921

namespace A008724

/-- `A174709(n+2)` -/
def P130834740502197921.Spec : Prop :=
  ∀ n, P130834740502197921.a n = A008724 n

theorem P130834740502197921.correct : P130834740502197921.Spec := by
  intro n
  simp only [A008724, Nat.add_sub_cancel, A008724.P130834740502197921.a, A008724.P1518698114986704962.a, A174709, A174709.P9945008165247424543.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A008724

/-! ## A008724.P9311977413551248174

`∑[∑[(n%3)%gcd(2, n)]]`
-/

namespace A008724.P9311977413551248174
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 3 % Nat.gcd 2 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008724.P9311977413551248174

namespace A008724

/-- `∑[∑[(n%3)%gcd(2, n)]]` -/
def P9311977413551248174.Spec : Prop :=
  ∀ n, (P9311977413551248174.a n : ℤ) = A008724 n

end A008724

/-! ## A008724.P10690348975731358973

`∑[floor(∑[(n+1)%2]/3)]`
-/

namespace A008724.P10690348975731358973
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) % 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℚ) / 3⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008724.P10690348975731358973

namespace A008724

/-- `∑[floor(∑[(n+1)%2]/3)]` -/
def P10690348975731358973.Spec : Prop :=
  ∀ n, P10690348975731358973.a n = A008724 n

end A008724

/-! ## A008724.P3628388025521017451

`∑[floor(∑[and(1, n+1)]/3)]`
-/

namespace A008724.P3628388025521017451
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℚ) / 3⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008724.P3628388025521017451

namespace A008724

/-- `∑[floor(∑[and(1, n+1)]/3)]` -/
def P3628388025521017451.Spec : Prop :=
  ∀ n, P3628388025521017451.a n = A008724 n

end A008724

/-! ## A008724.P11486953602458410251

`∑[∑[and(n+1, ∑[n]%3)]]`
-/

namespace A008724.P11486953602458410251
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land (n + 1) ((∑ j ∈ Finset.range (n + 1), f3 j) % 3)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008724.P11486953602458410251

namespace A008724

/-- `∑[∑[and(n+1, ∑[n]%3)]]` -/
def P11486953602458410251.Spec : Prop :=
  ∀ n, (P11486953602458410251.a n : ℤ) = A008724 n

end A008724

/-! ## A008724.P3285338982048549059

`a(n-1)+floor((n+2)/6)` with `a(0)=0`
-/

namespace A008724.P3285338982048549059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + ⌊(n + 2 : ℚ) / 6⌋

end

end A008724.P3285338982048549059

namespace A008724

/-- `a(n-1)+floor((n+2)/6)` -/
def P3285338982048549059.Spec : Prop :=
  ∀ n, P3285338982048549059.a n = A008724 n

end A008724

/-! ## A008724.P7409110168551160161

`round(a(n-1)+(n-1)/6)` with `a(0)=0`
-/

namespace A008724.P7409110168551160161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  SequenceMachineLib.roundAway ((a (n - 1) : ℚ) + ((n : ℤ) - 1 : ℚ) / 6)

end

end A008724.P7409110168551160161

namespace A008724

/-- `round(a(n-1)+(n-1)/6)` -/
def P7409110168551160161.Spec : Prop :=
  ∀ n, P7409110168551160161.a n = A008724 n

end A008724

/-! ## A008724.P10661022545822902131

`ceil(a(n-1)+(n-3)/6)` with `a(0)=0`
-/

namespace A008724.P10661022545822902131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ⌈(a (n - 1) : ℚ) + ((n : ℤ) - 3 : ℚ) / 6⌉

end

end A008724.P10661022545822902131

namespace A008724

/-- `ceil(a(n-1)+(n-3)/6)` -/
def P10661022545822902131.Spec : Prop :=
  ∀ n, P10661022545822902131.a n = A008724 n

end A008724

/-! ## A008724.P18433243786747970817

`∑[floor(∑[1-a(n-1)]/3)]` with `a(0)=1`
-/

namespace A008724.P18433243786747970817
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  1 - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / 3⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008724.P18433243786747970817

namespace A008724

/-- `∑[floor(∑[1-a(n-1)]/3)]` -/
def P18433243786747970817.Spec : Prop :=
  ∀ n, P18433243786747970817.a n = A008724 n

end A008724

/-! ## A008724.P14718740595883086571

`∑[∑[val(∑[n+1], 3*(n+1))]]`
-/

namespace A008724.P14718740595883086571
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (∑ j ∈ Finset.range (n + 1), f3 j) (3 * (n + 1))

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008724.P14718740595883086571

namespace A008724

/-- `∑[∑[val(∑[n+1], 3*(n+1))]]` -/
def P14718740595883086571.Spec : Prop :=
  ∀ n, (P14718740595883086571.a n : ℤ) = A008724 n

end A008724

/-! ## A008724.P10846786504020857298

`∑[floor(C(n+2, 2)/(3*n+2))]`
-/

namespace A008724.P10846786504020857298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.choose (n + 2) 2 : ℚ) / (3 * n + 2 : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008724.P10846786504020857298

namespace A008724

/-- `∑[floor(C(n+2, 2)/(3*n+2))]` -/
def P10846786504020857298.Spec : Prop :=
  ∀ n, P10846786504020857298.a n = A008724 n

end A008724

/-! ## A008724.P2554520967660539644

`∑[floor((n+2)/(C(n+3, n+2)-(n-3)))]`
-/

namespace A008724.P2554520967660539644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 2 : ℚ) / ((Nat.choose (n + 3) (n + 2) : ℤ) - ((n : ℤ) - 3) : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008724.P2554520967660539644

namespace A008724

/-- `∑[floor((n+2)/(C(n+3, n+2)-(n-3)))]` -/
def P2554520967660539644.Spec : Prop :=
  ∀ n, P2554520967660539644.a n = A008724 n

end A008724

/-! ## A008724.P1122840834754958628

`∑[A008615(or(1, n))]`
-/

namespace A008724.P1122840834754958628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (Nat.lor 1 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008724.P1122840834754958628

namespace A008724

/-- `∑[A008615(or(1, n))]` -/
def P1122840834754958628.Spec : Prop :=
  ∀ n, P1122840834754958628.a n = A008724 n

end A008724

/-! ## A008724.P17929335714514281065

`∑[∑[∑[A131533(n)]]]`
-/

namespace A008724.P17929335714514281065
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131533 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008724.P17929335714514281065

namespace A008724

/-- `∑[∑[∑[A131533(n)]]]` -/
def P17929335714514281065.Spec : Prop :=
  ∀ n, P17929335714514281065.a n = A008724 n

end A008724

/-! ## A008724.P6710022923248163002

`∑[∑[char[A016957(n)]]]`
-/

namespace A008724.P6710022923248163002
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016957 n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008724.P6710022923248163002

namespace A008724

/-- `∑[∑[char[A016957(n)]]]` -/
def P6710022923248163002.Spec : Prop :=
  ∀ n, (P6710022923248163002.a n : ℤ) = A008724 n

end A008724

/-! ## A008724.P7662123253925663158

`Δ[A175724(abs(1-n))]`
-/

namespace A008724.P7662123253925663158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175724 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A008724.P7662123253925663158

namespace A008724

/-- `Δ[A175724(abs(1-n))]` -/
def P7662123253925663158.Spec : Prop :=
  ∀ n, P7662123253925663158.a n = A008724 n

end A008724

/-! ## A008724.P18160401922107337757

`∑[∑[A079979(n+2)]]`
-/

namespace A008724.P18160401922107337757
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079979 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008724.P18160401922107337757

namespace A008724

/-- `∑[∑[A079979(n+2)]]` -/
def P18160401922107337757.Spec : Prop :=
  ∀ n, P18160401922107337757.a n = A008724 n

end A008724

/-! ## A008724.P8962946579907919995

`∑[A032775(n+1)-n]`
-/

namespace A008724.P8962946579907919995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032775 (n + 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008724.P8962946579907919995

namespace A008724

/-- `∑[A032775(n+1)-n]` -/
def P8962946579907919995.Spec : Prop :=
  ∀ n, P8962946579907919995.a n = A008724 n

end A008724

/-!
# A008725: Molien series for 3-dimensional group [2,n] = *22n.

The programs for A008725, the canonical program `A008725.P17060514190786232054` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008725 has offset 0).

The definition of A008725 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A008725.P3153774003927486063

`floor((n+4)*(n+5)/14)`
-/

namespace A008725.P3153774003927486063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n + 4) * (n + 5) : ℚ) / 14⌋

end

end A008725.P3153774003927486063

namespace A008725

/-- `floor((n+4)*(n+5)/14)` -/
def P3153774003927486063.Spec : Prop :=
  ∀ n, P3153774003927486063.a n = A008725 n

end A008725

/-! ## A008725.P17060514190786232054

`2*a(n-1)-a(n-2)+a(n-7)-2*a(n-8)+a(n-9)` with `a(0)=1, a(1)=2, a(2)=3, a(3)=4, a(4)=5, a(5)=6, a(6)=7, a(7)=9, a(8)=11`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A008725

/-- `2*a(n-1)-a(n-2)+a(n-7)-2*a(n-8)+a(n-9)` -/
def P17060514190786232054.Spec : Prop :=
  ∀ n, P17060514190786232054.a n = A008725 n

theorem P17060514190786232054.correct : P17060514190786232054.Spec := by
  intro n
  simp only [A008725]

end A008725

/-! ## A008725.P15362247026076651780

`A011867(n+5)`
-/

namespace A008725.P15362247026076651780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011867 (n + 5)

end

end A008725.P15362247026076651780

namespace A008725

/-- `A011867(n+5)` -/
def P15362247026076651780.Spec : Prop :=
  ∀ n, P15362247026076651780.a n = A008725 n

end A008725

/-! ## A008725.P10899486544222703386

`A174738(n+7)`
-/

namespace A008725.P10899486544222703386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174738 (n + 7)

end

end A008725.P10899486544222703386

namespace A008725

/-- `A174738(n+7)` -/
def P10899486544222703386.Spec : Prop :=
  ∀ n, P10899486544222703386.a n = A008725 n

end A008725

/-! ## A008725.P4006505268904195686

`ceil(∑[a(n-1)+1]/7)` with `a(0)=4`
-/

namespace A008725.P4006505268904195686
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [4] fun n f1 =>
  f1 (n - 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 7⌉

end

end A008725.P4006505268904195686

namespace A008725

/-- `ceil(∑[a(n-1)+1]/7)` -/
def P4006505268904195686.Spec : Prop :=
  ∀ n, P4006505268904195686.a n = A008725 n

end A008725

/-! ## A008725.P11503098601321336593

`floor(a(n-1)+n/7)+1` with `a(0)=1`
-/

namespace A008725.P11503098601321336593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊(a (n - 1) : ℚ) + (n : ℚ) / 7⌋ + 1

end

end A008725.P11503098601321336593

namespace A008725

/-- `floor(a(n-1)+n/7)+1` -/
def P11503098601321336593.Spec : Prop :=
  ∀ n, P11503098601321336593.a n = A008725 n

end A008725

/-! ## A008725.P16035045628148211981

`ceil(a(n-1)+(n+1)/7)` with `a(0)=1`
-/

namespace A008725.P16035045628148211981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌈(a (n - 1) : ℚ) + (n + 1 : ℚ) / 7⌉

end

end A008725.P16035045628148211981

namespace A008725

/-- `ceil(a(n-1)+(n+1)/7)` -/
def P16035045628148211981.Spec : Prop :=
  ∀ n, P16035045628148211981.a n = A008725 n

end A008725

/-! ## A008725.P9487510481998807184

`abs(n-a(n-1)-comp[8*n])` with `a(0)=1`
-/

namespace A008725.P9487510481998807184
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  |(n : ℤ) - a (n - 1) - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ)|

end

end A008725.P9487510481998807184

namespace A008725

/-- `abs(n-a(n-1)-comp[8*n])` -/
def P9487510481998807184.Spec : Prop :=
  ∀ n, P9487510481998807184.a n = A008725 n

end A008725

/-! ## A008725.P15215683674251882377

`∑[comp[8*n]-C(n+1, n)]+n+1`
-/

namespace A008725.P15215683674251882377
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n : ℤ) - (Nat.choose (n + 1) n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n + 1 : ℤ)

end

end A008725.P15215683674251882377

namespace A008725

/-- `∑[comp[8*n]-C(n+1, n)]+n+1` -/
def P15215683674251882377.Spec : Prop :=
  ∀ n, P15215683674251882377.a n = A008725 n

end A008725

/-! ## A008725.P7949558166768631760

`∑[∑[A082784(n)]]`
-/

namespace A008725.P7949558166768631760
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082784 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008725.P7949558166768631760

namespace A008725

/-- `∑[∑[A082784(n)]]` -/
def P7949558166768631760.Spec : Prop :=
  ∀ n, P7949558166768631760.a n = A008725 n

end A008725

/-! ## A008725.P6921844019943086553

`∑[A132270(n+1)+1]`
-/

namespace A008725.P6921844019943086553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132270 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008725.P6921844019943086553

namespace A008725

/-- `∑[A132270(n+1)+1]` -/
def P6921844019943086553.Spec : Prop :=
  ∀ n, P6921844019943086553.a n = A008725 n

end A008725

/-! ## A008725.P14065354031270618420

`∑[A047592(n+1)-n]`
-/

namespace A008725.P14065354031270618420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047592 (n + 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008725.P14065354031270618420

namespace A008725

/-- `∑[A047592(n+1)-n]` -/
def P14065354031270618420.Spec : Prop :=
  ∀ n, P14065354031270618420.a n = A008725 n

end A008725

/-! ## A008725.P16354704787276081265

`∑[n+1-A145569(n)]`
-/

namespace A008725.P16354704787276081265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A145569 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008725.P16354704787276081265

namespace A008725

/-- `∑[n+1-A145569(n)]` -/
def P16354704787276081265.Spec : Prop :=
  ∀ n, P16354704787276081265.a n = A008725 n

end A008725

/-! ## A008725.P16008483961862158733

`(A008814(n)+1+n)/2`
-/

namespace A008725.P16008483961862158733
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008814 n + 1 + (n : ℤ) : ℚ) / 2

end

end A008725.P16008483961862158733

namespace A008725

/-- `(A008814(n)+1+n)/2` -/
def P16008483961862158733.Spec : Prop :=
  ∀ n, P16008483961862158733.a n = (A008725 n : ℚ)

end A008725

/-! ## A008725.P9393898356925860592

`∑[comp[A047397(4*n+1)]]-∑[n]`
-/

namespace A008725.P9393898356925860592
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047397 (4 * n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ((∑ j ∈ Finset.range (n + 1), f3 j : ℕ) : ℤ)

end

end A008725.P9393898356925860592

namespace A008725

/-- `∑[comp[A047397(4*n+1)]]-∑[n]` -/
def P9393898356925860592.Spec : Prop :=
  ∀ n, P9393898356925860592.a n = A008725 n

end A008725

/-! ## A008725.P14003935667572875645

`A008814(n)-A174738(n)`
-/

namespace A008725.P14003935667572875645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008814 n - A174738 n

end

end A008725.P14003935667572875645

namespace A008725

/-- `A008814(n)-A174738(n)` -/
def P14003935667572875645.Spec : Prop :=
  ∀ n, P14003935667572875645.a n = A008725 n

end A008725

/-! ## A008725.P4178054255050519610

`∑[A002265(A057358(n))]+1+n`
-/

namespace A008725.P4178054255050519610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A057358 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1 + (n : ℤ)

end

end A008725.P4178054255050519610

namespace A008725

/-- `∑[A002265(A057358(n))]+1+n` -/
def P4178054255050519610.Spec : Prop :=
  ∀ n, P4178054255050519610.a n = A008725 n

end A008725

/-! ## A008725.P5926847734759691095

`∑[2*A008617(n)]-A008617(n)`
-/

namespace A008725.P5926847734759691095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008617 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A008617 n

end

end A008725.P5926847734759691095

namespace A008725

/-- `∑[2*A008617(n)]-A008617(n)` -/
def P5926847734759691095.Spec : Prop :=
  ∀ n, P5926847734759691095.a n = A008725 n

end A008725

/-! ## A008725.P876883938085279371

`∑[n+1]-A033439(n+1)`
-/

namespace A008725.P876883938085279371
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A033439 (n + 1)

end

end A008725.P876883938085279371

namespace A008725

/-- `∑[n+1]-A033439(n+1)` -/
def P876883938085279371.Spec : Prop :=
  ∀ n, P876883938085279371.a n = A008725 n

end A008725

/-! ## A008725.P3347024833548053280

`record[A008721(n)]`
-/

namespace A008725.P3347024833548053280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008721 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A008725.P3347024833548053280

namespace A008725

/-- `record[A008721(n)]` -/
def P3347024833548053280.Spec : Prop :=
  ∀ n, P3347024833548053280.a n = A008725 n

end A008725

/-!
# A008726: Molien series 1/((1-x)^2*(1-x^8)) for 3-dimensional group [2,n] = *22n.

The programs for A008726, the canonical program `A008726.P6159308919911437865` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008726 has offset 0).

The definition of A008726 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A008726.P6159308919911437865

`2*a(n-1)-a(n-2)+a(n-8)-2*a(n-9)+a(n-10)` with `a(0)=1, a(1)=2, a(2)=3, a(3)=4, a(4)=5, a(5)=6, a(6)=7, a(7)=8, a(8)=10, a(9)=12`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A008726

/-- `2*a(n-1)-a(n-2)+a(n-8)-2*a(n-9)+a(n-10)` -/
def P6159308919911437865.Spec : Prop :=
  ∀ n, P6159308919911437865.a n = A008726 n

theorem P6159308919911437865.correct : P6159308919911437865.Spec := by
  intro n
  simp only [A008726]

end A008726

/-! ## A008726.P6408583375368643799

`∑[∑[char[8*n]]]`
-/

namespace A008726.P6408583375368643799
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008726.P6408583375368643799

namespace A008726

/-- `∑[∑[char[8*n]]]` -/
def P6408583375368643799.Spec : Prop :=
  ∀ n, (P6408583375368643799.a n : ℤ) = A008726 n

end A008726

/-! ## A008726.P8233610492823240921

`∑[or(7, n)+1]/8`
-/

namespace A008726.P8233610492823240921
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 7 n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 8

end

end A008726.P8233610492823240921

namespace A008726

/-- `∑[or(7, n)+1]/8` -/
def P8233610492823240921.Spec : Prop :=
  ∀ n, P8233610492823240921.a n = (A008726 n : ℚ)

end A008726

/-! ## A008726.P5331577657669556097

`floor(a(n-1)+n/8+1)` with `a(0)=1`
-/

namespace A008726.P5331577657669556097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊(a (n - 1) : ℚ) + ((n : ℚ) / 8 + 1)⌋

end

end A008726.P5331577657669556097

namespace A008726

/-- `floor(a(n-1)+n/8+1)` -/
def P5331577657669556097.Spec : Prop :=
  ∀ n, P5331577657669556097.a n = A008726 n

end A008726

/-! ## A008726.P13332991481742568177

`ceil(a(n-1)+(n+1)/8)` with `a(0)=1`
-/

namespace A008726.P13332991481742568177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌈(a (n - 1) : ℚ) + (n + 1 : ℚ) / 8⌉

end

end A008726.P13332991481742568177

namespace A008726

/-- `ceil(a(n-1)+(n+1)/8)` -/
def P13332991481742568177.Spec : Prop :=
  ∀ n, P13332991481742568177.a n = A008726 n

end A008726

/-! ## A008726.P7248409127509041892

`∑[comp[9*n]%(n+1)]+1+n`
-/

namespace A008726.P7248409127509041892
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n % (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1 + n

end

end A008726.P7248409127509041892

namespace A008726

/-- `∑[comp[9*n]%(n+1)]+1+n` -/
def P7248409127509041892.Spec : Prop :=
  ∀ n, (P7248409127509041892.a n : ℤ) = A008726 n

end A008726

/-! ## A008726.P7026020248098712902

`A118729(n)+1+n`
-/

namespace A008726.P7026020248098712902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118729 n + 1 + (n : ℤ)

end

end A008726.P7026020248098712902

namespace A008726

/-- `A118729(n)+1+n` -/
def P7026020248098712902.Spec : Prop :=
  ∀ n, P7026020248098712902.a n = A008726 n

end A008726

/-! ## A008726.P10204705135757139825

`(A008815(n)+1+n)/2`
-/

namespace A008726.P10204705135757139825
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008815 n + 1 + (n : ℤ) : ℚ) / 2

end

end A008726.P10204705135757139825

namespace A008726

/-- `(A008815(n)+1+n)/2` -/
def P10204705135757139825.Spec : Prop :=
  ∀ n, P10204705135757139825.a n = (A008726 n : ℚ)

end A008726

/-! ## A008726.P5600279371914241659

`∑[A168183(n+1)]-∑[n]`
-/

namespace A008726.P5600279371914241659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168183 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A008726.P5600279371914241659

namespace A008726

/-- `∑[A168183(n+1)]-∑[n]` -/
def P5600279371914241659.Spec : Prop :=
  ∀ n, P5600279371914241659.a n = A008726 n

end A008726

/-! ## A008726.P9383606645181031737

`∑[ceil(sqrt(A005563(n))/8)]+1`
-/

namespace A008726.P9383606645181031737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A005563 n : ℝ) / 8⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A008726.P9383606645181031737

namespace A008726

/-- `∑[ceil(sqrt(A005563(n))/8)]+1` -/
def P9383606645181031737.Spec : Prop :=
  ∀ n, P9383606645181031737.a n = A008726 n

end A008726

/-! ## A008726.P7498779497932982152

`A008815(n)-A118729(n)`
-/

namespace A008726.P7498779497932982152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008815 n - A118729 n

end

end A008726.P7498779497932982152

namespace A008726

/-- `A008815(n)-A118729(n)` -/
def P7498779497932982152.Spec : Prop :=
  ∀ n, P7498779497932982152.a n = A008726 n

end A008726

/-! ## A008726.P8854420653970160556

`A184112(n+1)-A034586(n+1)`
-/

namespace A008726.P8854420653970160556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184112 (n + 1) - A034586 (n + 1)

end

end A008726.P8854420653970160556

namespace A008726

/-- `A184112(n+1)-A034586(n+1)` -/
def P8854420653970160556.Spec : Prop :=
  ∀ n, P8854420653970160556.a n = A008726 n

end A008726

/-! ## A008726.P16787618644146731250

`A357745(n+2)-1`
-/

namespace A008726.P16787618644146731250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357745 (n + 2) - 1

end

end A008726.P16787618644146731250

namespace A008726

/-- `A357745(n+2)-1` -/
def P16787618644146731250.Spec : Prop :=
  ∀ n, P16787618644146731250.a n = A008726 n

end A008726

/-! ## A008726.P6555857642765637901

`∑[n+1]-A033440(n+1)`
-/

namespace A008726.P6555857642765637901
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A033440 (n + 1)

end

end A008726.P6555857642765637901

namespace A008726

/-- `∑[n+1]-A033440(n+1)` -/
def P6555857642765637901.Spec : Prop :=
  ∀ n, P6555857642765637901.a n = A008726 n

end A008726

/-! ## A008726.P10870719115704209167

`A110656(n+1)+a(n-1)` with `a(0)=1`
-/

namespace A008726.P10870719115704209167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A110656 (n + 1) + a (n - 1)

end

end A008726.P10870719115704209167

namespace A008726

/-- `A110656(n+1)+a(n-1)` -/
def P10870719115704209167.Spec : Prop :=
  ∀ n, P10870719115704209167.a n = A008726 n

end A008726

/-! ## A008726.P3644485989270149662

`Δ[A122056(n+1)]`
-/

namespace A008726.P3644485989270149662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122056 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A008726.P3644485989270149662

namespace A008726

/-- `Δ[A122056(n+1)]` -/
def P3644485989270149662.Spec : Prop :=
  ∀ n, P3644485989270149662.a n = A008726 n

end A008726

/-! ## A008726.P12040279777850012050

`A122056(n+2)-A122056(n+1)`
-/

namespace A008726.P12040279777850012050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122056 (n + 2) - A122056 (n + 1)

end

end A008726.P12040279777850012050

namespace A008726

/-- `A122056(n+2)-A122056(n+1)` -/
def P12040279777850012050.Spec : Prop :=
  ∀ n, P12040279777850012050.a n = A008726 n

end A008726

/-! ## A008726.P5727834157610272252

`A118729(n+8)`
-/

namespace A008726.P5727834157610272252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118729 (n + 8)

end

end A008726.P5727834157610272252

namespace A008726

/-- `A118729(n+8)` -/
def P5727834157610272252.Spec : Prop :=
  ∀ n, P5727834157610272252.a n = A008726 n

end A008726

/-! ## A008726.P16235572484995228662

`record[A008736(n)]`
-/

namespace A008726.P16235572484995228662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008736 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A008726.P16235572484995228662

namespace A008726

/-- `record[A008736(n)]` -/
def P16235572484995228662.Spec : Prop :=
  ∀ n, P16235572484995228662.a n = A008726 n

end A008726

/-! ## A008726.P6247046254189302674

`A008736(2*n)`
-/

namespace A008726.P6247046254189302674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008736 (2 * n)

end

end A008726.P6247046254189302674

namespace A008726

/-- `A008736(2*n)` -/
def P6247046254189302674.Spec : Prop :=
  ∀ n, P6247046254189302674.a n = A008726 n

end A008726

/-!
# A008727: Molien series for 3-dimensional group [2,n] = *22n.

The programs for A008727, the canonical program `A008727.P17574675390652837264` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008727 has offset 0).

The definition of A008727 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A008727.P10524867315392171125

`∑[∑[char[9*n]]]`
-/

namespace A008727.P10524867315392171125
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9 * n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008727.P10524867315392171125

namespace A008727

/-- `∑[∑[char[9*n]]]` -/
def P10524867315392171125.Spec : Prop :=
  ∀ n, (P10524867315392171125.a n : ℤ) = A008727 n

end A008727

/-! ## A008727.P17574675390652837264

`ceil(a(n-1)+(n+1)/9)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A008727

/-- `ceil(a(n-1)+(n+1)/9)` -/
def P17574675390652837264.Spec : Prop :=
  ∀ n, P17574675390652837264.a n = A008727 n

theorem P17574675390652837264.correct : P17574675390652837264.Spec := by
  intro n
  simp only [A008727]

end A008727

/-! ## A008727.P3908804410239766591

`A218470(n)+1+n`
-/

namespace A008727.P3908804410239766591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218470 n + 1 + (n : ℤ)

end

end A008727.P3908804410239766591

namespace A008727

/-- `A218470(n)+1+n` -/
def P3908804410239766591.Spec : Prop :=
  ∀ n, P3908804410239766591.a n = A008727 n

end A008727

/-! ## A008727.P3393109071825223275

`∑[A343609(n)]+n+1`
-/

namespace A008727.P3393109071825223275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343609 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n + 1 : ℤ)

end

end A008727.P3393109071825223275

namespace A008727

/-- `∑[A343609(n)]+n+1` -/
def P3393109071825223275.Spec : Prop :=
  ∀ n, P3393109071825223275.a n = A008727 n

end A008727

/-! ## A008727.P15972640682663657404

`(A008816(n)+1+n)/2`
-/

namespace A008727.P15972640682663657404
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008816 n + 1 + (n : ℤ) : ℚ) / 2

end

end A008727.P15972640682663657404

namespace A008727

/-- `(A008816(n)+1+n)/2` -/
def P15972640682663657404.Spec : Prop :=
  ∀ n, P15972640682663657404.a n = (A008727 n : ℚ)

end A008727

/-! ## A008727.P15048410020623856003

`∑[comp[A004277(5*n)]-n]+1`
-/

namespace A008727.P15048410020623856003
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (5 * n)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A008727.P15048410020623856003

namespace A008727

/-- `∑[comp[A004277(5*n)]-n]+1` -/
def P15048410020623856003.Spec : Prop :=
  ∀ n, P15048410020623856003.a n = A008727 n

end A008727

/-! ## A008727.P263234184430619453

`A008816(n)-A218470(n)`
-/

namespace A008727.P263234184430619453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008816 n - A218470 n

end

end A008727.P263234184430619453

namespace A008727

/-- `A008816(n)-A218470(n)` -/
def P263234184430619453.Spec : Prop :=
  ∀ n, P263234184430619453.a n = A008727 n

end A008727

/-! ## A008727.P13414989594526284743

`∑[A002264(A002264(n))]+n+1`
-/

namespace A008727.P13414989594526284743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A002264 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n + 1 : ℤ)

end

end A008727.P13414989594526284743

namespace A008727

/-- `∑[A002264(A002264(n))]+n+1` -/
def P13414989594526284743.Spec : Prop :=
  ∀ n, P13414989594526284743.a n = A008727 n

end A008727

/-! ## A008727.P9171994414137728370

`∑[2*A008618(n)]-A008618(n)`
-/

namespace A008727.P9171994414137728370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008618 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A008618 n

end

end A008727.P9171994414137728370

namespace A008727

/-- `∑[2*A008618(n)]-A008618(n)` -/
def P9171994414137728370.Spec : Prop :=
  ∀ n, P9171994414137728370.a n = A008727 n

end A008727

/-! ## A008727.P11179369103176406225

`∑[n+1]-A033441(n+1)`
-/

namespace A008727.P11179369103176406225
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A033441 (n + 1)

end

end A008727.P11179369103176406225

namespace A008727

/-- `∑[n+1]-A033441(n+1)` -/
def P11179369103176406225.Spec : Prop :=
  ∀ n, P11179369103176406225.a n = A008727 n

end A008727

/-! ## A008727.P6541281994002019087

`A218470(n+9)`
-/

namespace A008727.P6541281994002019087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218470 (n + 9)

end

end A008727.P6541281994002019087

namespace A008727

/-- `A218470(n+9)` -/
def P6541281994002019087.Spec : Prop :=
  ∀ n, P6541281994002019087.a n = A008727 n

end A008727

/-! ## A008727.P3235623301701336195

`record[A008722(n)]`
-/

namespace A008727.P3235623301701336195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008722 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A008727.P3235623301701336195

namespace A008727

/-- `record[A008722(n)]` -/
def P3235623301701336195.Spec : Prop :=
  ∀ n, P3235623301701336195.a n = A008727 n

end A008727

/-! ## A008727.P10804072986805297783

`A008722(2*n)`
-/

namespace A008727.P10804072986805297783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008722 (2 * n)

end

end A008727.P10804072986805297783

namespace A008727

/-- `A008722(2*n)` -/
def P10804072986805297783.Spec : Prop :=
  ∀ n, P10804072986805297783.a n = A008727 n

end A008727

/-! ## A008727.P13559597787552066444

`A008618(2*n)+a(n-1)` with `a(0)=1`
-/

namespace A008727.P13559597787552066444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A008618 (2 * n) + a (n - 1)

end

end A008727.P13559597787552066444

namespace A008727

/-- `A008618(2*n)+a(n-1)` -/
def P13559597787552066444.Spec : Prop :=
  ∀ n, P13559597787552066444.a n = A008727 n

end A008727

/-! ## A008727.P3632958653376432664

`A028242(A008816(n))+A028242(n)`
-/

namespace A008727.P3632958653376432664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (A008816 n).toNat + A028242 n

end

end A008727.P3632958653376432664

namespace A008727

/-- `A028242(A008816(n))+A028242(n)` -/
def P3632958653376432664.Spec : Prop :=
  ∀ n, P3632958653376432664.a n = A008727 n

end A008727

/-! ## A008727.P1678515563999574316

`A004526(A008816(n)+1+n)`
-/

namespace A008727.P1678515563999574316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A008816 n + 1 + (n : ℤ)).toNat

end

end A008727.P1678515563999574316

namespace A008727

/-- `A004526(A008816(n)+1+n)` -/
def P1678515563999574316.Spec : Prop :=
  ∀ n, P1678515563999574316.a n = A008727 n

end A008727

/-! ## A008727.P663974955899009485

`lt[0, Δ[A243838(n)]]`
-/

namespace A008727.P663974955899009485
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243838 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A008727.P663974955899009485

namespace A008727

/-- `lt[0, Δ[A243838(n)]]` -/
def P663974955899009485.Spec : Prop :=
  ∀ n, (P663974955899009485.a n : ℤ) = A008727 n

end A008727

/-! ## A008727.P9123438577593440211

`lt[A243838(n), A243838(n+1)]`
-/

namespace A008727.P9123438577593440211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243838 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243838 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A008727.P9123438577593440211

namespace A008727

/-- `lt[A243838(n), A243838(n+1)]` -/
def P9123438577593440211.Spec : Prop :=
  ∀ n, (P9123438577593440211.a n : ℤ) = A008727 n

end A008727

/-!
# A008728: Molien series for 3-dimensional group [2,n ] = *22n.

The programs for A008728, the canonical program `A008728.P1759664890804576913` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008728 has offset 0).

The definition of A008728 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A008728.P5551439189071692852

`∑[∑[char[10*n]]]`
-/

namespace A008728.P5551439189071692852
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 * n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008728.P5551439189071692852

namespace A008728

/-- `∑[∑[char[10*n]]]` -/
def P5551439189071692852.Spec : Prop :=
  ∀ n, (P5551439189071692852.a n : ℤ) = A008728 n

end A008728

/-! ## A008728.P1759664890804576913

`∑[floor(n/10)]-xor(n, -1)`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A008728

/-- `∑[floor(n/10)]-xor(n, -1)` -/
def P1759664890804576913.Spec : Prop :=
  ∀ n, P1759664890804576913.a n = A008728 n

theorem P1759664890804576913.correct : P1759664890804576913.Spec := by
  intro n
  simp only [A008728]

end A008728

/-! ## A008728.P2595630981594082607

`floor(n/10)+a(n-1)+1` with `a(0)=1`
-/

namespace A008728.P2595630981594082607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊(n : ℚ) / 10⌋ + (a (n - 1) + 1)

end

end A008728.P2595630981594082607

namespace A008728

/-- `floor(n/10)+a(n-1)+1` -/
def P2595630981594082607.Spec : Prop :=
  ∀ n, P2595630981594082607.a n = A008728 n

end A008728

/-! ## A008728.P12230997170628212029

`ceil(a(n-1)+(n+1)/10)` with `a(0)=1`
-/

namespace A008728.P12230997170628212029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌈(a (n - 1) : ℚ) + (n + 1 : ℚ) / 10⌉

end

end A008728.P12230997170628212029

namespace A008728

/-- `ceil(a(n-1)+(n+1)/10)` -/
def P12230997170628212029.Spec : Prop :=
  ∀ n, P12230997170628212029.a n = A008728 n

end A008728

/-! ## A008728.P4341456824070098330

`∑[(floor(n/10)+1)%(n+1)]+1`
-/

namespace A008728.P4341456824070098330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (⌊(n : ℚ) / 10⌋ + 1) (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A008728.P4341456824070098330

namespace A008728

/-- `∑[(floor(n/10)+1)%(n+1)]+1` -/
def P4341456824070098330.Spec : Prop :=
  ∀ n, P4341456824070098330.a n = A008728 n

end A008728

/-! ## A008728.P12919646860973327437

`A131242(n)+1+n`
-/

namespace A008728.P12919646860973327437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131242 n + 1 + (n : ℤ)

end

end A008728.P12919646860973327437

namespace A008728

/-- `A131242(n)+1+n` -/
def P12919646860973327437.Spec : Prop :=
  ∀ n, P12919646860973327437.a n = A008728 n

end A008728

/-! ## A008728.P3777220942719044595

`ceil((A008817(n)+n)/2)`
-/

namespace A008728.P3777220942719044595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A008817 n + (n : ℤ) : ℚ) / 2⌉

end

end A008728.P3777220942719044595

namespace A008728

/-- `ceil((A008817(n)+n)/2)` -/
def P3777220942719044595.Spec : Prop :=
  ∀ n, P3777220942719044595.a n = A008728 n

end A008728

/-! ## A008728.P12224627139973079597

`∑[A059995(n)]+1+n`
-/

namespace A008728.P12224627139973079597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1 + (n : ℤ)

end

end A008728.P12224627139973079597

namespace A008728

/-- `∑[A059995(n)]+1+n` -/
def P12224627139973079597.Spec : Prop :=
  ∀ n, P12224627139973079597.a n = A008728 n

end A008728

/-! ## A008728.P11892939916629921835

`∑[char[A008592(n)]]+a(n-1)` with `a(0)=1`
-/

namespace A008728.P11892939916629921835
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008592 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + a (n - 1)

end

end A008728.P11892939916629921835

namespace A008728

/-- `∑[char[A008592(n)]]+a(n-1)` -/
def P11892939916629921835.Spec : Prop :=
  ∀ n, (P11892939916629921835.a n : ℤ) = A008728 n

end A008728

/-! ## A008728.P11617576120479984226

`∑[floor(n/10)+1]%A267378(n+1)`
-/

namespace A008728.P11617576120479984226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 10⌋ + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A267378 (n + 1))

end

end A008728.P11617576120479984226

namespace A008728

/-- `∑[floor(n/10)+1]%A267378(n+1)` -/
def P11617576120479984226.Spec : Prop :=
  ∀ n, P11617576120479984226.a n = A008728 n

end A008728

/-! ## A008728.P17723075883243807181

`∑[∑[(n+1)%A280569(n)]]+n+1`
-/

namespace A008728.P17723075883243807181
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A280569 n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n + 1 : ℤ)

end

end A008728.P17723075883243807181

namespace A008728

/-- `∑[∑[(n+1)%A280569(n)]]+n+1` -/
def P17723075883243807181.Spec : Prop :=
  ∀ n, P17723075883243807181.a n = A008728 n

end A008728

/-! ## A008728.P17236675574435962048

`A008817(n)-A131242(n)`
-/

namespace A008728.P17236675574435962048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008817 n - A131242 n

end

end A008728.P17236675574435962048

namespace A008728

/-- `A008817(n)-A131242(n)` -/
def P17236675574435962048.Spec : Prop :=
  ∀ n, P17236675574435962048.a n = A008728 n

end A008728

/-! ## A008728.P1691203890689678520

`∑[n+1]-A033442(n+1)`
-/

namespace A008728.P1691203890689678520
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A033442 (n + 1)

end

end A008728.P1691203890689678520

namespace A008728

/-- `∑[n+1]-A033442(n+1)` -/
def P1691203890689678520.Spec : Prop :=
  ∀ n, P1691203890689678520.a n = A008728 n

end A008728

/-! ## A008728.P7579222225184608164

`A131242(n+10)`
-/

namespace A008728.P7579222225184608164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131242 (n + 10)

end

end A008728.P7579222225184608164

namespace A008728

/-- `A131242(n+10)` -/
def P7579222225184608164.Spec : Prop :=
  ∀ n, P7579222225184608164.a n = A008728 n

end A008728

/-! ## A008728.P3157391225742110940

`A004526(2*n+3)+∑[floor(n/10)]`
-/

namespace A008728.P3157391225742110940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 10⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (2 * n + 3) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008728.P3157391225742110940

namespace A008728

/-- `A004526(2*n+3)+∑[floor(n/10)]` -/
def P3157391225742110940.Spec : Prop :=
  ∀ n, P3157391225742110940.a n = A008728 n

end A008728

/-! ## A008728.P9681396091368752422

`A028242(∑[2*floor(n/10)+1])+A028242(n)`
-/

namespace A008728.P9681396091368752422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ⌊(n : ℚ) / 10⌋ + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + A028242 n

end

end A008728.P9681396091368752422

namespace A008728

/-- `A028242(∑[2*floor(n/10)+1])+A028242(n)` -/
def P9681396091368752422.Spec : Prop :=
  ∀ n, P9681396091368752422.a n = A008728 n

end A008728

/-! ## A008728.P5318550928313602532

`A004526(A008817(n)+1+n)`
-/

namespace A008728.P5318550928313602532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A008817 n + 1 + (n : ℤ)).toNat

end

end A008728.P5318550928313602532

namespace A008728

/-- `A004526(A008817(n)+1+n)` -/
def P5318550928313602532.Spec : Prop :=
  ∀ n, P5318550928313602532.a n = A008728 n

end A008728

/-!
# A008729: Molien series for 3-dimensional group [2, n] = *22n.

The programs for A008729, the canonical program `A008729.P9384597751132745354` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008729 has offset 0).

The definition of A008729 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A218530, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A008729.P9384597751132745354

`A218530(n+11)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A008729

/-- `A218530(n+11)` -/
def P9384597751132745354.Spec : Prop :=
  ∀ n, P9384597751132745354.a n = A008729 n

theorem P9384597751132745354.correct : P9384597751132745354.Spec := by
  intro n
  simp only [A008729]

end A008729

/-! ## A008729.P3316359559428552559

`∑[∑[char[11*n]]]`
-/

namespace A008729.P3316359559428552559
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11 * n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008729.P3316359559428552559

namespace A008729

/-- `∑[∑[char[11*n]]]` -/
def P3316359559428552559.Spec : Prop :=
  ∀ n, (P3316359559428552559.a n : ℤ) = A008729 n

end A008729

/-! ## A008729.P12952419534475047226

`∑[∑[char[lcm(11, n+1)]]]+n+1`
-/

namespace A008729.P12952419534475047226
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 11 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n + 1)

end

end A008729.P12952419534475047226

namespace A008729

/-- `∑[∑[char[lcm(11, n+1)]]]+n+1` -/
def P12952419534475047226.Spec : Prop :=
  ∀ n, (P12952419534475047226.a n : ℤ) = A008729 n

end A008729

/-! ## A008729.P7450872005231627524

`-∑[n-A168186(n+1)]`
-/

namespace A008729.P7450872005231627524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A168186 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ j ∈ Finset.range (n + 1), f1 j)

end

end A008729.P7450872005231627524

namespace A008729

/-- `-∑[n-A168186(n+1)]` -/
def P7450872005231627524.Spec : Prop :=
  ∀ n, P7450872005231627524.a n = A008729 n

end A008729

/-! ## A008729.P11168155191575601147

`∑[comp[12*n]]-A000217(n)`
-/

namespace A008729.P11168155191575601147
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A000217 n

end

end A008729.P11168155191575601147

namespace A008729

/-- `∑[comp[12*n]]-A000217(n)` -/
def P11168155191575601147.Spec : Prop :=
  ∀ n, P11168155191575601147.a n = A008729 n

end A008729

/-! ## A008729.P646696121278829926

`∑[∑[char[A017509(n)+1]]]+n+1`
-/

namespace A008729.P646696121278829926
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017509 n + 1

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n + 1)

end

end A008729.P646696121278829926

namespace A008729

/-- `∑[∑[char[A017509(n)+1]]]+n+1` -/
def P646696121278829926.Spec : Prop :=
  ∀ n, (P646696121278829926.a n : ℤ) = A008729 n

end A008729

/-! ## A008729.P6627887810114166187

`∑[comp[A004767(3*n+2)]-n]+n+1`
-/

namespace A008729.P6627887810114166187
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004767 (3 * n + 2)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ) + 1

end

end A008729.P6627887810114166187

namespace A008729

/-- `∑[comp[A004767(3*n+2)]-n]+n+1` -/
def P6627887810114166187.Spec : Prop :=
  ∀ n, P6627887810114166187.a n = A008729 n

end A008729

/-! ## A008729.P3550508896143646484

`∑[n+1]-A033443(n+1)`
-/

namespace A008729.P3550508896143646484
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A033443 (n + 1)

end

end A008729.P3550508896143646484

namespace A008729

/-- `∑[n+1]-A033443(n+1)` -/
def P3550508896143646484.Spec : Prop :=
  ∀ n, P3550508896143646484.a n = A008729 n

end A008729

/-! ## A008729.P17838312329447922455

`record[A008723(n)]`
-/

namespace A008729.P17838312329447922455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008723 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A008729.P17838312329447922455

namespace A008729

/-- `record[A008723(n)]` -/
def P17838312329447922455.Spec : Prop :=
  ∀ n, P17838312329447922455.a n = A008729 n

end A008729

/-! ## A008729.P2963159935047630187

`A008723(2*n)`
-/

namespace A008729.P2963159935047630187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008723 (2 * n)

end

end A008729.P2963159935047630187

namespace A008729

/-- `A008723(2*n)` -/
def P2963159935047630187.Spec : Prop :=
  ∀ n, P2963159935047630187.a n = A008729 n

end A008729

/-! ## A008729.P12070341144407489036

`record[A025766(n)-a(n-1)]` with `a(0)=1`
-/

namespace A008729.P12070341144407489036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A025766 n - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A008729.P12070341144407489036

namespace A008729

/-- `record[A025766(n)-a(n-1)]` -/
def P12070341144407489036.Spec : Prop :=
  ∀ n, P12070341144407489036.a n = A008729 n

end A008729

/-! ## A008729.P4956622987286368493

`A028310(∑[ceil(A222945(n)/44)])`
-/

namespace A008729.P4956622987286368493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A222945 n : ℚ) / 44⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A008729.P4956622987286368493

namespace A008729

/-- `A028310(∑[ceil(A222945(n)/44)])` -/
def P4956622987286368493.Spec : Prop :=
  ∀ n, P4956622987286368493.a n = A008729 n

end A008729

/-!
# A008730: Molien series 1/((1-x)^2*(1-x^12)) for 3-dimensional group [2,n] = *22n.

The programs for A008730, the canonical program `A008730.P5982894440673514970` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008730 has offset 0).

The definition of A008730 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A221912, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A008730.P5982894440673514970

`A221912(n+12)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A008730

/-- `A221912(n+12)` -/
def P5982894440673514970.Spec : Prop :=
  ∀ n, P5982894440673514970.a n = A008730 n

theorem P5982894440673514970.correct : P5982894440673514970.Spec := by
  intro n
  simp only [A008730]

end A008730

/-! ## A008730.P11038780015429616302

`∑[∑[char[12*n]]]`
-/

namespace A008730.P11038780015429616302
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12 * n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008730.P11038780015429616302

namespace A008730

/-- `∑[∑[char[12*n]]]` -/
def P11038780015429616302.Spec : Prop :=
  ∀ n, (P11038780015429616302.a n : ℤ) = A008730 n

end A008730

/-! ## A008730.P5888562487024221546

`floor(a(n-1)+n/12)+1` with `a(0)=1`
-/

namespace A008730.P5888562487024221546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊(a (n - 1) : ℚ) + (n : ℚ) / 12⌋ + 1

end

end A008730.P5888562487024221546

namespace A008730

/-- `floor(a(n-1)+n/12)+1` -/
def P5888562487024221546.Spec : Prop :=
  ∀ n, P5888562487024221546.a n = A008730 n

end A008730

/-! ## A008730.P10780577327912602011

`∑[n-n%12]/12+n+1`
-/

namespace A008730.P10780577327912602011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((n % 12 : ℕ) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 12 + (n + 1 : ℚ)

end

end A008730.P10780577327912602011

namespace A008730

/-- `∑[n-n%12]/12+n+1` -/
def P10780577327912602011.Spec : Prop :=
  ∀ n, P10780577327912602011.a n = (A008730 n : ℚ)

end A008730

/-! ## A008730.P1678209620435759274

`∑[∑[char[lcm(12, n+1)]]]+n+1`
-/

namespace A008730.P1678209620435759274
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 12 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n + 1)

end

end A008730.P1678209620435759274

namespace A008730

/-- `∑[∑[char[lcm(12, n+1)]]]+n+1` -/
def P1678209620435759274.Spec : Prop :=
  ∀ n, (P1678209620435759274.a n : ℤ) = A008730 n

end A008730

/-! ## A008730.P7239107940060970748

`∑[A113763(n+1)]-∑[n]`
-/

namespace A008730.P7239107940060970748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113763 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A008730.P7239107940060970748

namespace A008730

/-- `∑[A113763(n+1)]-∑[n]` -/
def P7239107940060970748.Spec : Prop :=
  ∀ n, P7239107940060970748.a n = A008730 n

end A008730

/-! ## A008730.P8564425507935619021

`∑[floor(A002264(n)/4)]+n+1`
-/

namespace A008730.P8564425507935619021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A002264 n : ℚ) / 4⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ) + 1

end

end A008730.P8564425507935619021

namespace A008730

/-- `∑[floor(A002264(n)/4)]+n+1` -/
def P8564425507935619021.Spec : Prop :=
  ∀ n, P8564425507935619021.a n = A008730 n

end A008730

/-! ## A008730.P435051441996638266

`∑[A002265(A002264(n))]+n+1`
-/

namespace A008730.P435051441996638266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A002264 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ) + 1

end

end A008730.P435051441996638266

namespace A008730

/-- `∑[A002265(A002264(n))]+n+1` -/
def P435051441996638266.Spec : Prop :=
  ∀ n, P435051441996638266.a n = A008730 n

end A008730

/-! ## A008730.P5638018374199797475

`∑[n+1]-A033444(n+1)`
-/

namespace A008730.P5638018374199797475
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A033444 (n + 1)

end

end A008730.P5638018374199797475

namespace A008730

/-- `∑[n+1]-A033444(n+1)` -/
def P5638018374199797475.Spec : Prop :=
  ∀ n, P5638018374199797475.a n = A008730 n

end A008730

/-! ## A008730.P6146992766194939075

`∑[ceil(∑[n]/A004277(3*n+2))]+1`
-/

namespace A008730.P6146992766194939075
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℚ) / (A004277 (3 * n + 2) : ℚ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A008730.P6146992766194939075

namespace A008730

/-- `∑[ceil(∑[n]/A004277(3*n+2))]+1` -/
def P6146992766194939075.Spec : Prop :=
  ∀ n, P6146992766194939075.a n = A008730 n

end A008730

/-! ## A008730.P5861400895678203770

`∑[A002265(val(A000079(n), 8))]+1+n`
-/

namespace A008730.P5861400895678203770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (SequenceMachineLib.valuation (A000079 n).toNat 8)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1 + (n : ℤ)

end

end A008730.P5861400895678203770

namespace A008730

/-- `∑[A002265(val(A000079(n), 8))]+1+n` -/
def P5861400895678203770.Spec : Prop :=
  ∀ n, P5861400895678203770.a n = A008730 n

end A008730

/-!
# A008731: Molien series for 3-dimensional group [2, n] = *22n.

The programs for A008731, the canonical program `A008731.P7025943894574725275` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008731 has offset 0).

The definition of A008731 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A008731.P7025943894574725275

`2*a(n-2)+a(n-3)-a(n-4)-2*a(n-5)+a(n-7)` with `a(0)=1, a(1)=0, a(2)=2, a(3)=1, a(4)=3, a(5)=2, a(6)=5`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A008731

/-- `2*a(n-2)+a(n-3)-a(n-4)-2*a(n-5)+a(n-7)` -/
def P7025943894574725275.Spec : Prop :=
  ∀ n, P7025943894574725275.a n = A008731 n

theorem P7025943894574725275.correct : P7025943894574725275.Spec := by
  intro n
  simp only [A008731]

end A008731

/-! ## A008731.P8724081061509042922

`round((n+3)²/12)-a(n-1)` with `a(0)=1`
-/

namespace A008731.P8724081061509042922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.roundAway (((n + 3) ^ 2 : ℚ) / 12) - a (n - 1)

end

end A008731.P8724081061509042922

namespace A008731

/-- `round((n+3)²/12)-a(n-1)` -/
def P8724081061509042922.Spec : Prop :=
  ∀ n, P8724081061509042922.a n = A008731 n

end A008731

/-! ## A008731.P7470522091260649019

`∑[(-1)^n*round(lcm(2, n+3)/6)]`
-/

namespace A008731.P7470522091260649019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * SequenceMachineLib.roundAway ((Nat.lcm 2 (n + 3) : ℚ) / 6)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008731.P7470522091260649019

namespace A008731

/-- `∑[(-1)^n*round(lcm(2, n+3)/6)]` -/
def P7470522091260649019.Spec : Prop :=
  ∀ n, P7470522091260649019.a n = A008731 n

end A008731

/-! ## A008731.P16340700405278723768

`A001840(ceil(xor(1, n)/2))`
-/

namespace A008731.P16340700405278723768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001840 ⌈(Nat.xor 1 n : ℚ) / 2⌉.toNat

end

end A008731.P16340700405278723768

namespace A008731

/-- `A001840(ceil(xor(1, n)/2))` -/
def P16340700405278723768.Spec : Prop :=
  ∀ n, P16340700405278723768.a n = A008731 n

end A008731

/-! ## A008731.P16702621467492859733

`A001840(A028242(n))`
-/

namespace A008731.P16702621467492859733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001840 (A028242 n).toNat

end

end A008731.P16702621467492859733

namespace A008731

/-- `A001840(A028242(n))` -/
def P16702621467492859733.Spec : Prop :=
  ∀ n, P16702621467492859733.a n = A008731 n

end A008731

/-! ## A008731.P16028672298552679027

`A008742(n)+A008615(n)`
-/

namespace A008731.P16028672298552679027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008742 n + A008615 n

end

end A008731.P16028672298552679027

namespace A008731

/-- `A008742(n)+A008615(n)` -/
def P16028672298552679027.Spec : Prop :=
  ∀ n, P16028672298552679027.a n = A008731 n

end A008731

/-! ## A008731.P18284127982082430390

`A266755(n)+A005044(n+1)`
-/

namespace A008731.P18284127982082430390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266755 n + A005044 (n + 1)

end

end A008731.P18284127982082430390

namespace A008731

/-- `A266755(n)+A005044(n+1)` -/
def P18284127982082430390.Spec : Prop :=
  ∀ n, P18284127982082430390.a n = A008731 n

end A008731

/-! ## A008731.P4533482836838914837

`A001399(n)-A114209(n+1)`
-/

namespace A008731.P4533482836838914837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001399 n - A114209 (n + 1)

end

end A008731.P4533482836838914837

namespace A008731

/-- `A001399(n)-A114209(n+1)` -/
def P4533482836838914837.Spec : Prop :=
  ∀ n, P4533482836838914837.a n = A008731 n

end A008731

/-! ## A008731.P16893562769498782730

`2*A266769(n)-A000601(n)`
-/

namespace A008731.P16893562769498782730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A266769 n - A000601 n

end

end A008731.P16893562769498782730

namespace A008731

/-- `2*A266769(n)-A000601(n)` -/
def P16893562769498782730.Spec : Prop :=
  ∀ n, P16893562769498782730.a n = A008731 n

end A008731

/-! ## A008731.P16193457172850618049

`A001840(A008619(n)-and(1, n))`
-/

namespace A008731.P16193457172850618049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001840 (A008619 n - (Nat.land 1 n : ℤ)).toNat

end

end A008731.P16193457172850618049

namespace A008731

/-- `A001840(A008619(n)-and(1, n))` -/
def P16193457172850618049.Spec : Prop :=
  ∀ n, P16193457172850618049.a n = A008731 n

end A008731

/-! ## A008731.P7627869448466209809

`A069905(n+1)+A008742(n)-A069905(n)`
-/

namespace A008731.P7627869448466209809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069905 (n + 1) + (A008742 n - A069905 n)

end

end A008731.P7627869448466209809

namespace A008731

/-- `A069905(n+1)+A008742(n)-A069905(n)` -/
def P7627869448466209809.Spec : Prop :=
  ∀ n, P7627869448466209809.a n = A008731 n

end A008731

/-! ## A008731.P7382495953517155373

`A005044(n+1)+A008679(n)+A005044(n+1)`
-/

namespace A008731.P7382495953517155373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005044 (n + 1) + (A008679 n + A005044 (n + 1))

end

end A008731.P7382495953517155373

namespace A008731

/-- `A005044(n+1)+A008679(n)+A005044(n+1)` -/
def P7382495953517155373.Spec : Prop :=
  ∀ n, P7382495953517155373.a n = A008731 n

end A008731

/-! ## A008731.P17414688903253210791

`A114209(n+2)`
-/

namespace A008731.P17414688903253210791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114209 (n + 2)

end

end A008731.P17414688903253210791

namespace A008731

/-- `A114209(n+2)` -/
def P17414688903253210791.Spec : Prop :=
  ∀ n, P17414688903253210791.a n = A008731 n

end A008731

/-! ## A008731.P11989152743730167520

`A008642(n)-A005044(n+2)`
-/

namespace A008731.P11989152743730167520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008642 n - A005044 (n + 2)

end

end A008731.P11989152743730167520

namespace A008731

/-- `A008642(n)-A005044(n+2)` -/
def P11989152743730167520.Spec : Prop :=
  ∀ n, P11989152743730167520.a n = A008731 n

end A008731

/-! ## A008731.P1636497071192184313

`A008805(n)-A069905(n+2)`
-/

namespace A008731.P1636497071192184313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008805 n - A069905 (n + 2)

end

end A008731.P1636497071192184313

namespace A008731

/-- `A008805(n)-A069905(n+2)` -/
def P1636497071192184313.Spec : Prop :=
  ∀ n, P1636497071192184313.a n = A008731 n

end A008731

/-!
# A008732: Molien series for 3-dimensional group [2,n] = *22n.

The programs for A008732, the canonical program `A008732.P9132087365826457156` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008732 has offset 0).

The definition of A008732 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A008732.P9132087365826457156

`floor((n+3)*(n+4)/10)`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A008732

/-- `floor((n+3)*(n+4)/10)` -/
def P9132087365826457156.Spec : Prop :=
  ∀ n, P9132087365826457156.a n = A008732 n

theorem P9132087365826457156.correct : P9132087365826457156.Spec := by
  intro n
  simp only [A008732]

end A008732

/-! ## A008732.P7896550504015078551

`a(n-5)+n+1` with `a(0)=1, a(1)=2, a(2)=3, a(3)=4, a(4)=5`
-/

namespace A008732.P7896550504015078551
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 3, 4, 5] fun n a =>
  a (n - 5) + n + 1

end

end A008732.P7896550504015078551

namespace A008732

/-- `a(n-5)+n+1` -/
def P7896550504015078551.Spec : Prop :=
  ∀ n, (P7896550504015078551.a n : ℤ) = A008732 n

end A008732

/-! ## A008732.P12267938453879299343

`A130520(n+5)`
-/

namespace A008732.P12267938453879299343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130520 (n + 5)

end

end A008732.P12267938453879299343

namespace A008732

/-- `A130520(n+5)` -/
def P12267938453879299343.Spec : Prop :=
  ∀ n, P12267938453879299343.a n = A008732 n

end A008732

/-! ## A008732.P12889417945795541049

`∑[floor(n/5)]-xor(n, -1)`
-/

namespace A008732.P12889417945795541049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 5⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - Int.xor (n : ℤ) (-1)

end

end A008732.P12889417945795541049

namespace A008732

/-- `∑[floor(n/5)]-xor(n, -1)` -/
def P12889417945795541049.Spec : Prop :=
  ∀ n, P12889417945795541049.a n = A008732 n

end A008732

/-! ## A008732.P4612127265073734553

`ceil((C(n+3, 2)+n)/5)`
-/

namespace A008732.P4612127265073734553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.choose (n + 3) 2 + n : ℚ) / 5⌉

end

end A008732.P4612127265073734553

namespace A008732

/-- `ceil((C(n+3, 2)+n)/5)` -/
def P4612127265073734553.Spec : Prop :=
  ∀ n, P4612127265073734553.a n = A008732 n

end A008732

/-! ## A008732.P3026042258154446502

`round((C(n+3, 2)+n+1)/5)`
-/

namespace A008732.P3026042258154446502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.choose (n + 3) 2 + (n + 1) : ℚ) / 5)

end

end A008732.P3026042258154446502

namespace A008732

/-- `round((C(n+3, 2)+n+1)/5)` -/
def P3026042258154446502.Spec : Prop :=
  ∀ n, P3026042258154446502.a n = A008732 n

end A008732

/-! ## A008732.P12840631316286032100

`floor(a(n-1)+n/5)+1` with `a(0)=1`
-/

namespace A008732.P12840631316286032100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊(a (n - 1) : ℚ) + (n : ℚ) / 5⌋ + 1

end

end A008732.P12840631316286032100

namespace A008732

/-- `floor(a(n-1)+n/5)+1` -/
def P12840631316286032100.Spec : Prop :=
  ∀ n, P12840631316286032100.a n = A008732 n

end A008732

/-! ## A008732.P11074847055741701526

`ceil(a(n-1)+(n+1)/5)` with `a(0)=1`
-/

namespace A008732.P11074847055741701526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌈(a (n - 1) : ℚ) + (n + 1 : ℚ) / 5⌉

end

end A008732.P11074847055741701526

namespace A008732

/-- `ceil(a(n-1)+(n+1)/5)` -/
def P11074847055741701526.Spec : Prop :=
  ∀ n, P11074847055741701526.a n = A008732 n

end A008732

/-! ## A008732.P2164356210949899948

`round(a(n-1)+(n+3)/5)` with `a(0)=1`
-/

namespace A008732.P2164356210949899948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.roundAway ((a (n - 1) : ℚ) + (n + 3 : ℚ) / 5)

end

end A008732.P2164356210949899948

namespace A008732

/-- `round(a(n-1)+(n+3)/5)` -/
def P2164356210949899948.Spec : Prop :=
  ∀ n, P2164356210949899948.a n = A008732 n

end A008732

/-! ## A008732.P18297824379844642674

`a(n-1)-floor(a(n-1)/(n/2-2-n))` with `a(0)=1`
-/

namespace A008732.P18297824379844642674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) - ⌊(a (n - 1) : ℚ) / ((n : ℚ) / 2 - 2 - (n : ℚ))⌋

end

end A008732.P18297824379844642674

namespace A008732

/-- `a(n-1)-floor(a(n-1)/(n/2-2-n))` -/
def P18297824379844642674.Spec : Prop :=
  ∀ n, P18297824379844642674.a n = A008732 n

end A008732

/-! ## A008732.P8787541655043571456

`∑[∑[A079998(n)]]`
-/

namespace A008732.P8787541655043571456
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079998 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008732.P8787541655043571456

namespace A008732

/-- `∑[∑[A079998(n)]]` -/
def P8787541655043571456.Spec : Prop :=
  ∀ n, P8787541655043571456.a n = A008732 n

end A008732

/-! ## A008732.P2684255683763476223

`∑[A002266(n)+1]`
-/

namespace A008732.P2684255683763476223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002266 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008732.P2684255683763476223

namespace A008732

/-- `∑[A002266(n)+1]` -/
def P2684255683763476223.Spec : Prop :=
  ∀ n, P2684255683763476223.a n = A008732 n

end A008732

/-! ## A008732.P18300687022512633112

`(A008812(n)+1+n)/2`
-/

namespace A008732.P18300687022512633112
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008812 n + 1 + (n : ℤ) : ℚ) / 2

end

end A008732.P18300687022512633112

namespace A008732

/-- `(A008812(n)+1+n)/2` -/
def P18300687022512633112.Spec : Prop :=
  ∀ n, P18300687022512633112.a n = (A008732 n : ℚ)

end A008732

/-! ## A008732.P1101387614942987552

`∑[n+1]-A033437(n+1)`
-/

namespace A008732.P1101387614942987552
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A033437 (n + 1)

end

end A008732.P1101387614942987552

namespace A008732

/-- `∑[n+1]-A033437(n+1)` -/
def P1101387614942987552.Spec : Prop :=
  ∀ n, P1101387614942987552.a n = A008732 n

end A008732

/-! ## A008732.P3123453381330465798

`A008812(n)-A130520(n)`
-/

namespace A008732.P3123453381330465798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008812 n - A130520 n

end

end A008732.P3123453381330465798

namespace A008732

/-- `A008812(n)-A130520(n)` -/
def P3123453381330465798.Spec : Prop :=
  ∀ n, P3123453381330465798.a n = A008732 n

end A008732

/-! ## A008732.P12912536242098651948

`A265078(n)-A398055(n)`
-/

namespace A008732.P12912536242098651948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265078 n - A398055 n

end

end A008732.P12912536242098651948

namespace A008732

/-- `A265078(n)-A398055(n)` -/
def P12912536242098651948.Spec : Prop :=
  ∀ n, P12912536242098651948.a n = A008732 n

end A008732

/-! ## A008732.P1962972015386606119

`A183865(n+1)-A000096(n)`
-/

namespace A008732.P1962972015386606119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183865 (n + 1) - A000096 n

end

end A008732.P1962972015386606119

namespace A008732

/-- `A183865(n+1)-A000096(n)` -/
def P1962972015386606119.Spec : Prop :=
  ∀ n, P1962972015386606119.a n = A008732 n

end A008732

/-! ## A008732.P14834496417909642959

`A186386(n+1)-A057355(n)`
-/

namespace A008732.P14834496417909642959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186386 (n + 1) - A057355 n

end

end A008732.P14834496417909642959

namespace A008732

/-- `A186386(n+1)-A057355(n)` -/
def P14834496417909642959.Spec : Prop :=
  ∀ n, P14834496417909642959.a n = A008732 n

end A008732

/-! ## A008732.P7364565084331039346

`A167499(n)%A290744(n+1)`
-/

namespace A008732.P7364565084331039346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A167499 n) (A290744 (n + 1))

end

end A008732.P7364565084331039346

namespace A008732

/-- `A167499(n)%A290744(n+1)` -/
def P7364565084331039346.Spec : Prop :=
  ∀ n, P7364565084331039346.a n = A008732 n

end A008732

/-! ## A008732.P16651531754979535028

`A000115(n)+A000115(n)-A008616(n)`
-/

namespace A008732.P16651531754979535028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000115 n + (A000115 n - A008616 n)

end

end A008732.P16651531754979535028

namespace A008732

/-- `A000115(n)+A000115(n)-A008616(n)` -/
def P16651531754979535028.Spec : Prop :=
  ∀ n, P16651531754979535028.a n = A008732 n

end A008732

/-!
# A008733: Molien series for 3-dimensional group [2+, n] = 2*(n/2).

The programs for A008733, the canonical program `A008733.P13412150031632858074` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008733 has offset 0).

The definition of A008733 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A008733.P13412150031632858074

`floor((n²+5*n+13+3*(n+1)*(-1)^n)/16)`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A008733

/-- `floor((n²+5*n+13+3*(n+1)*(-1)^n)/16)` -/
def P13412150031632858074.Spec : Prop :=
  ∀ n, P13412150031632858074.a n = A008733 n

theorem P13412150031632858074.correct : P13412150031632858074.Spec := by
  intro n
  simp only [A008733]

end A008733

/-! ## A008733.P2276623734327488687

`∑[∑[∑[2/a(n-2)]-a(n-1)]]` with `a(0)=1, a(1)=-2`
-/

namespace A008733.P2276623734327488687
noncomputable section

def f3 : ℕ → ℚ := SequenceMachineLib.rec [1, -2] fun n f3 =>
  2 / f3 (n - 2)

def f2 : ℕ → ℚ := SequenceMachineLib.rec [1, -2] fun n f2 =>
  ∑ j ∈ Finset.range (n + 1), f3 j - f2 (n - 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008733.P2276623734327488687

namespace A008733

/-- `∑[∑[∑[2/a(n-2)]-a(n-1)]]` -/
def P2276623734327488687.Spec : Prop :=
  ∀ n, P2276623734327488687.a n = (A008733 n : ℚ)

end A008733

/-! ## A008733.P14440850919412785533

`A008624(n)+a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A008733.P14440850919412785533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A008624 n + a (n - 2)

end

end A008733.P14440850919412785533

namespace A008733

/-- `A008624(n)+a(n-2)` -/
def P14440850919412785533.Spec : Prop :=
  ∀ n, P14440850919412785533.a n = A008733 n

end A008733

/-! ## A008733.P11830107076481953912

`A008795(n)-a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A008733.P11830107076481953912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A008795 n - a (n - 2)

end

end A008733.P11830107076481953912

namespace A008733

/-- `A008795(n)-a(n-2)` -/
def P11830107076481953912.Spec : Prop :=
  ∀ n, P11830107076481953912.a n = A008733 n

end A008733

/-! ## A008733.P1130277724558107173

`A002620(ceil(xor(1, n)/2)+1)`
-/

namespace A008733.P1130277724558107173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (⌈(Nat.xor 1 n : ℚ) / 2⌉ + 1).toNat

end

end A008733.P1130277724558107173

namespace A008733

/-- `A002620(ceil(xor(1, n)/2)+1)` -/
def P1130277724558107173.Spec : Prop :=
  ∀ n, P1130277724558107173.a n = A008733 n

end A008733

/-! ## A008733.P8596740419251535604

`A002620(round(xor(1, n)/2)+1)`
-/

namespace A008733.P8596740419251535604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (SequenceMachineLib.roundAway ((Nat.xor 1 n : ℚ) / 2) + 1).toNat

end

end A008733.P8596740419251535604

namespace A008733

/-- `A002620(round(xor(1, n)/2)+1)` -/
def P8596740419251535604.Spec : Prop :=
  ∀ n, P8596740419251535604.a n = A008733 n

end A008733

/-! ## A008733.P11088266171508593802

`A002620(A028242(n)+1)`
-/

namespace A008733.P11088266171508593802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (A028242 n + 1).toNat

end

end A008733.P11088266171508593802

namespace A008733

/-- `A002620(A028242(n)+1)` -/
def P11088266171508593802.Spec : Prop :=
  ∀ n, P11088266171508593802.a n = A008733 n

end A008733

/-! ## A008733.P16238107832651251925

`A002620(A052938(n+1)-1)`
-/

namespace A008733.P16238107832651251925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (A052938 (n + 1) - 1).toNat

end

end A008733.P16238107832651251925

namespace A008733

/-- `A002620(A052938(n+1)-1)` -/
def P16238107832651251925.Spec : Prop :=
  ∀ n, P16238107832651251925.a n = A008733 n

end A008733

/-! ## A008733.P6984243391926900567

`A033638(A028242(n)+1)-1`
-/

namespace A008733.P6984243391926900567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033638 (A028242 n + 1).toNat - 1

end

end A008733.P6984243391926900567

namespace A008733

/-- `A033638(A028242(n)+1)-1` -/
def P6984243391926900567.Spec : Prop :=
  ∀ n, P6984243391926900567.a n = A008733 n

end A008733

/-! ## A008733.P11496959101919438976

`A007590(A028242(n)+1)/2`
-/

namespace A008733.P11496959101919438976
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007590 (A028242 n + 1).toNat : ℚ) / 2

end

end A008733.P11496959101919438976

namespace A008733

/-- `A007590(A028242(n)+1)/2` -/
def P11496959101919438976.Spec : Prop :=
  ∀ n, P11496959101919438976.a n = (A008733 n : ℚ)

end A008733

/-! ## A008733.P12698576068124136354

`A002620(2-A030451(n)+n)`
-/

namespace A008733.P12698576068124136354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (2 - A030451 n + (n : ℤ)).toNat

end

end A008733.P12698576068124136354

namespace A008733

/-- `A002620(2-A030451(n)+n)` -/
def P12698576068124136354.Spec : Prop :=
  ∀ n, P12698576068124136354.a n = A008733 n

end A008733

/-! ## A008733.P7110324476868754450

`A002620(A168237(n)+2-n)`
-/

namespace A008733.P7110324476868754450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (A168237 n + (2 - (n : ℤ))).toNat

end

end A008733.P7110324476868754450

namespace A008733

/-- `A002620(A168237(n)+2-n)` -/
def P7110324476868754450.Spec : Prop :=
  ∀ n, P7110324476868754450.a n = A008733 n

end A008733

/-! ## A008733.P10042122116587167694

`A002620(2-(A030451(n)-n))`
-/

namespace A008733.P10042122116587167694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (2 - (A030451 n - (n : ℤ))).toNat

end

end A008733.P10042122116587167694

namespace A008733

/-- `A002620(2-(A030451(n)-n))` -/
def P10042122116587167694.Spec : Prop :=
  ∀ n, P10042122116587167694.a n = A008733 n

end A008733

/-! ## A008733.P16225370579495331935

`A002620(2-(n-A168237(n)))`
-/

namespace A008733.P16225370579495331935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (2 - ((n : ℤ) - A168237 n)).toNat

end

end A008733.P16225370579495331935

namespace A008733

/-- `A002620(2-(n-A168237(n)))` -/
def P16225370579495331935.Spec : Prop :=
  ∀ n, P16225370579495331935.a n = A008733 n

end A008733

/-! ## A008733.P11965119928910393599

`(A008795(n)+A008624(n))/2`
-/

namespace A008733.P11965119928910393599
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008795 n + A008624 n : ℚ) / 2

end

end A008733.P11965119928910393599

namespace A008733

/-- `(A008795(n)+A008624(n))/2` -/
def P11965119928910393599.Spec : Prop :=
  ∀ n, P11965119928910393599.a n = (A008733 n : ℚ)

end A008733

/-! ## A008733.P14270689132391367624

`A060805(n+1)-A019590(n+1)`
-/

namespace A008733.P14270689132391367624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060805 (n + 1) - A019590 (n + 1)

end

end A008733.P14270689132391367624

namespace A008733

/-- `A060805(n+1)-A019590(n+1)` -/
def P14270689132391367624.Spec : Prop :=
  ∀ n, P14270689132391367624.a n = A008733 n

end A008733

/-! ## A008733.P6254354418974589012

`A346370(n+1)-A093907(n+1)`
-/

namespace A008733.P6254354418974589012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346370 (n + 1) - A093907 (n + 1)

end

end A008733.P6254354418974589012

namespace A008733

/-- `A346370(n+1)-A093907(n+1)` -/
def P6254354418974589012.Spec : Prop :=
  ∀ n, P6254354418974589012.a n = A008733 n

end A008733

/-! ## A008733.P7477159095364995881

`(A059169(n+1)+1)*A008624(n)`
-/

namespace A008733.P7477159095364995881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A059169 (n + 1) + 1) * A008624 n

end

end A008733.P7477159095364995881

namespace A008733

/-- `(A059169(n+1)+1)*A008624(n)` -/
def P7477159095364995881.Spec : Prop :=
  ∀ n, P7477159095364995881.a n = A008733 n

end A008733

/-! ## A008733.P16503534077191543447

`A002620(A047221(n+1)-2*n)`
-/

namespace A008733.P16503534077191543447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (A047221 (n + 1) - (2 * n : ℤ)).toNat

end

end A008733.P16503534077191543447

namespace A008733

/-- `A002620(A047221(n+1)-2*n)` -/
def P16503534077191543447.Spec : Prop :=
  ∀ n, P16503534077191543447.a n = A008733 n

end A008733

/-! ## A008733.P7825372025687625170

`A002620(A047221(n+1)-n-n)`
-/

namespace A008733.P7825372025687625170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (A047221 (n + 1) - (n : ℤ) - (n : ℤ)).toNat

end

end A008733.P7825372025687625170

namespace A008733

/-- `A002620(A047221(n+1)-n-n)` -/
def P7825372025687625170.Spec : Prop :=
  ∀ n, P7825372025687625170.a n = A008733 n

end A008733

/-!
# A008734: Molien series for 3-dimensional group [2+,n ] = 2*(n/2).

The programs for A008734, the canonical program `A008734.P8026027028887654233` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008734 has offset 0).

The definition of A008734 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A008734.P8026027028887654233

`floor((2*n+7+5*(-1)^n)²/128)`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A008734

/-- `floor((2*n+7+5*(-1)^n)²/128)` -/
def P8026027028887654233.Spec : Prop :=
  ∀ n, P8026027028887654233.a n = A008734 n

theorem P8026027028887654233.correct : P8026027028887654233.Spec := by
  intro n
  simp only [A008734]

end A008734

/-! ## A008734.P17569716479182402423

`round(((n+3)/4)²-a(n-1))` with `a(0)=1`
-/

namespace A008734.P17569716479182402423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.roundAway (((n + 3 : ℚ) / 4) ^ 2 - (a (n - 1) : ℚ))

end

end A008734.P17569716479182402423

namespace A008734

/-- `round(((n+3)/4)²-a(n-1))` -/
def P17569716479182402423.Spec : Prop :=
  ∀ n, P17569716479182402423.a n = A008734 n

end A008734

/-! ## A008734.P3768522699142098882

`A130519(∑[1-a(n-1)]+1)` with `a(0)=3`
-/

namespace A008734.P3768522699142098882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f1 =>
  1 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130519 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A008734.P3768522699142098882

namespace A008734

/-- `A130519(∑[1-a(n-1)]+1)` -/
def P3768522699142098882.Spec : Prop :=
  ∀ n, P3768522699142098882.a n = A008734 n

end A008734

/-! ## A008734.P2725100504991106551

`A130519(A084964(n)+2)`
-/

namespace A008734.P2725100504991106551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130519 (A084964 n + 2).toNat

end

end A008734.P2725100504991106551

namespace A008734

/-- `A130519(A084964(n)+2)` -/
def P2725100504991106551.Spec : Prop :=
  ∀ n, P2725100504991106551.a n = A008734 n

end A008734

/-! ## A008734.P7318260272047294870

`A056822(n+3)-a(n-1)` with `a(0)=1`
-/

namespace A008734.P7318260272047294870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A056822 (n + 3) - a (n - 1)

end

end A008734.P7318260272047294870

namespace A008734

/-- `A056822(n+3)-a(n-1)` -/
def P7318260272047294870.Spec : Prop :=
  ∀ n, P7318260272047294870.a n = A008734 n

end A008734

/-! ## A008734.P18322216021368235323

`A008801(A165754(n+1))`
-/

namespace A008734.P18322216021368235323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008801 (A165754 (n + 1)).toNat

end

end A008734.P18322216021368235323

namespace A008734

/-- `A008801(A165754(n+1))` -/
def P18322216021368235323.Spec : Prop :=
  ∀ n, P18322216021368235323.a n = A008734 n

end A008734

/-! ## A008734.P881252271605469042

`A008801(Δ[A052928(n)]²+n)`
-/

namespace A008734.P881252271605469042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052928 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008801 ((f1 (n + 1) - f1 n) ^ 2 + (n : ℤ)).toNat

end

end A008734.P881252271605469042

namespace A008734

/-- `A008801(Δ[A052928(n)]²+n)` -/
def P881252271605469042.Spec : Prop :=
  ∀ n, P881252271605469042.a n = A008734 n

end A008734

/-! ## A008734.P13774959931078301932

`A008801(Δ[2*A052928(n)]+n)`
-/

namespace A008734.P13774959931078301932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A052928 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008801 (f1 (n + 1) - f1 n + (n : ℤ)).toNat

end

end A008734.P13774959931078301932

namespace A008734

/-- `A008801(Δ[2*A052928(n)]+n)` -/
def P13774959931078301932.Spec : Prop :=
  ∀ n, P13774959931078301932.a n = A008734 n

end A008734

/-! ## A008734.P10494816514781505520

`A008801(A165754(2*n)-A165754(n))`
-/

namespace A008734.P10494816514781505520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008801 (A165754 (2 * n) - A165754 n).toNat

end

end A008734.P10494816514781505520

namespace A008734

/-- `A008801(A165754(2*n)-A165754(n))` -/
def P10494816514781505520.Spec : Prop :=
  ∀ n, P10494816514781505520.a n = A008734 n

end A008734

/-! ## A008734.P8801703116131810846

`A025842(A047230(n+1))`
-/

namespace A008734.P8801703116131810846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025842 (A047230 (n + 1)).toNat

end

end A008734.P8801703116131810846

namespace A008734

/-- `A025842(A047230(n+1))` -/
def P8801703116131810846.Spec : Prop :=
  ∀ n, P8801703116131810846.a n = A008734 n

end A008734

/-! ## A008734.P9867749498413006208

`A025842(A047233(n+1))`
-/

namespace A008734.P9867749498413006208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025842 (A047233 (n + 1)).toNat

end

end A008734.P9867749498413006208

namespace A008734

/-- `A025842(A047233(n+1))` -/
def P9867749498413006208.Spec : Prop :=
  ∀ n, P9867749498413006208.a n = A008734 n

end A008734

/-! ## A008734.P1076866374280069861

`A025842(A047241(n+2))`
-/

namespace A008734.P1076866374280069861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025842 (A047241 (n + 2)).toNat

end

end A008734.P1076866374280069861

namespace A008734

/-- `A025842(A047241(n+2))` -/
def P1076866374280069861.Spec : Prop :=
  ∀ n, P1076866374280069861.a n = A008734 n

end A008734

/-! ## A008734.P5448938685318726372

`A025842(A166521(n+2))`
-/

namespace A008734.P5448938685318726372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025842 (A166521 (n + 2)).toNat

end

end A008734.P5448938685318726372

namespace A008734

/-- `A025842(A166521(n+2))` -/
def P5448938685318726372.Spec : Prop :=
  ∀ n, P5448938685318726372.a n = A008734 n

end A008734

/-! ## A008734.P8838107031557539806

`A025888(A146763(n))`
-/

namespace A008734.P8838107031557539806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025888 (A146763 n).toNat

end

end A008734.P8838107031557539806

namespace A008734

/-- `A025888(A146763(n))` -/
def P8838107031557539806.Spec : Prop :=
  ∀ n, P8838107031557539806.a n = A008734 n

end A008734

/-! ## A008734.P10743748527348314244

`A025888(A197652(n+1))`
-/

namespace A008734.P10743748527348314244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025888 (A197652 (n + 1)).toNat

end

end A008734.P10743748527348314244

namespace A008734

/-- `A025888(A197652(n+1))` -/
def P10743748527348314244.Spec : Prop :=
  ∀ n, P10743748527348314244.a n = A008734 n

end A008734

/-! ## A008734.P8699057468370545157

`A025888(A063093(n+2))`
-/

namespace A008734.P8699057468370545157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025888 (A063093 (n + 2)).toNat

end

end A008734.P8699057468370545157

namespace A008734

/-- `A025888(A063093(n+2))` -/
def P8699057468370545157.Spec : Prop :=
  ∀ n, P8699057468370545157.a n = A008734 n

end A008734

/-! ## A008734.P16269819748548919118

`A025888(A063225(n+2))`
-/

namespace A008734.P16269819748548919118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025888 (A063225 (n + 2)).toNat

end

end A008734.P16269819748548919118

namespace A008734

/-- `A025888(A063225(n+2))` -/
def P16269819748548919118.Spec : Prop :=
  ∀ n, P16269819748548919118.a n = A008734 n

end A008734

/-! ## A008734.P15679831269762853917

`A025888(A090772(n+2))`
-/

namespace A008734.P15679831269762853917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025888 (A090772 (n + 2)).toNat

end

end A008734.P15679831269762853917

namespace A008734

/-- `A025888(A090772(n+2))` -/
def P15679831269762853917.Spec : Prop :=
  ∀ n, P15679831269762853917.a n = A008734 n

end A008734

/-! ## A008734.P5650072111289636170

`A004526(A008797(n+2))`
-/

namespace A008734.P5650072111289636170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A008797 (n + 2)).toNat

end

end A008734.P5650072111289636170

namespace A008734

/-- `A004526(A008797(n+2))` -/
def P5650072111289636170.Spec : Prop :=
  ∀ n, P5650072111289636170.a n = A008734 n

end A008734

/-!
# A008735: Molien series for 3-dimensional group [2+,n ] = 2*(n/2).

The programs for A008735, the canonical program `A008735.P7599320673823331292` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008735 has offset 0).

The definition of A008735 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A008735.P7599320673823331292

`floor((2*n+7*(-1)^n+9)²/192)`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A008735

/-- `floor((2*n+7*(-1)^n+9)²/192)` -/
def P7599320673823331292.Spec : Prop :=
  ∀ n, P7599320673823331292.a n = A008735 n

theorem P7599320673823331292.correct : P7599320673823331292.Spec := by
  intro n
  simp only [A008735]

end A008735

/-! ## A008735.P11105795028631367874

`round(A112421(n+7)/4)-a(n-1)` with `a(0)=1`
-/

namespace A008735.P11105795028631367874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.roundAway ((A112421 (n + 7) : ℚ) / 4) - a (n - 1)

end

end A008735.P11105795028631367874

namespace A008735

/-- `round(A112421(n+7)/4)-a(n-1)` -/
def P11105795028631367874.Spec : Prop :=
  ∀ n, P11105795028631367874.a n = A008735 n

end A008735

/-! ## A008735.P17156544217785823954

`A008724(∑[3-a(n-1)]-(n+1))` with `a(0)=5`
-/

namespace A008735.P17156544217785823954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [5] fun n f1 =>
  3 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008724 (∑ j ∈ Finset.range (n + 1), f1 j - (n + 1 : ℤ)).toNat

end

end A008735.P17156544217785823954

namespace A008735

/-- `A008724(∑[3-a(n-1)]-(n+1))` -/
def P17156544217785823954.Spec : Prop :=
  ∀ n, P17156544217785823954.a n = A008735 n

end A008735

/-! ## A008735.P15646935605381591091

`(A027656(n)+A008820(n))/2`
-/

namespace A008735.P15646935605381591091
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027656 n + A008820 n : ℚ) / 2

end

end A008735.P15646935605381591091

namespace A008735

/-- `(A027656(n)+A008820(n))/2` -/
def P15646935605381591091.Spec : Prop :=
  ∀ n, P15646935605381591091.a n = (A008735 n : ℚ)

end A008735

/-! ## A008735.P9743788987690437783

`A008724(A089644(n+1)-A017305(n))`
-/

namespace A008735.P9743788987690437783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008724 (A089644 (n + 1) - A017305 n).toNat

end

end A008735.P9743788987690437783

namespace A008735

/-- `A008724(A089644(n+1)-A017305(n))` -/
def P9743788987690437783.Spec : Prop :=
  ∀ n, P9743788987690437783.a n = A008735 n

end A008735

/-! ## A008735.P13729966498149165105

`A008724(A168230(n+2))`
-/

namespace A008735.P13729966498149165105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008724 (A168230 (n + 2)).toNat

end

end A008735.P13729966498149165105

namespace A008735

/-- `A008724(A168230(n+2))` -/
def P13729966498149165105.Spec : Prop :=
  ∀ n, P13729966498149165105.a n = A008735 n

end A008735

/-! ## A008735.P9366317911249101822

`A008724(A028878(n+7)%A110654(n+11))`
-/

namespace A008735.P9366317911249101822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008724 (Int.tmod (A028878 (n + 7)) (A110654 (n + 11))).toNat

end

end A008735.P9366317911249101822

namespace A008735

/-- `A008724(A028878(n+7)%A110654(n+11))` -/
def P9366317911249101822.Spec : Prop :=
  ∀ n, P9366317911249101822.a n = A008735 n

end A008735

/-! ## A008735.P3133881394306841737

`A025895(A146951(n))`
-/

namespace A008735.P3133881394306841737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025895 (A146951 n).toNat

end

end A008735.P3133881394306841737

namespace A008735

/-- `A025895(A146951(n))` -/
def P3133881394306841737.Spec : Prop :=
  ∀ n, P3133881394306841737.a n = A008735 n

end A008735

/-! ## A008735.P10708221325484882410

`A025895(A187715(n+2))`
-/

namespace A008735.P10708221325484882410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025895 (A187715 (n + 2)).toNat

end

end A008735.P10708221325484882410

namespace A008735

/-- `A025895(A187715(n+2))` -/
def P10708221325484882410.Spec : Prop :=
  ∀ n, P10708221325484882410.a n = A008735 n

end A008735

/-! ## A008735.P2843934878680699229

`A027656(n)+A026741(A008820(n)-A027656(n))`
-/

namespace A008735.P2843934878680699229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027656 n + A026741 (A008820 n - A027656 n).toNat

end

end A008735.P2843934878680699229

namespace A008735

/-- `A027656(n)+A026741(A008820(n)-A027656(n))` -/
def P2843934878680699229.Spec : Prop :=
  ∀ n, P2843934878680699229.a n = A008735 n

end A008735

/-! ## A008735.P4765218031900093071

`A008820(n)-A004526(A008820(n)-A027656(n))`
-/

namespace A008735.P4765218031900093071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008820 n - A004526 (A008820 n - A027656 n).toNat

end

end A008735.P4765218031900093071

namespace A008735

/-- `A008820(n)-A004526(A008820(n)-A027656(n))` -/
def P4765218031900093071.Spec : Prop :=
  ∀ n, P4765218031900093071.a n = A008735 n

end A008735

/-! ## A008735.P8925106503829043406

`A004526(A027656(n)+A008820(n))`
-/

namespace A008735.P8925106503829043406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A027656 n + A008820 n).toNat

end

end A008735.P8925106503829043406

namespace A008735

/-- `A004526(A027656(n)+A008820(n))` -/
def P8925106503829043406.Spec : Prop :=
  ∀ n, P8925106503829043406.a n = A008735 n

end A008735

/-! ## A008735.P7184222470520434855

`A026741(A027656(n)+A008820(n))`
-/

namespace A008735.P7184222470520434855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A027656 n + A008820 n).toNat

end

end A008735.P7184222470520434855

namespace A008735

/-- `A026741(A027656(n)+A008820(n))` -/
def P7184222470520434855.Spec : Prop :=
  ∀ n, P7184222470520434855.a n = A008735 n

end A008735

/-! ## A008735.P6350789339010919762

`A027656(A027656(n)+A008820(n))-1`
-/

namespace A008735.P6350789339010919762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027656 (A027656 n + A008820 n).toNat - 1

end

end A008735.P6350789339010919762

namespace A008735

/-- `A027656(A027656(n)+A008820(n))-1` -/
def P6350789339010919762.Spec : Prop :=
  ∀ n, P6350789339010919762.a n = A008735 n

end A008735

/-!
# A008736: Molien series for 3-dimensional group [2+,n] = 2*(n/2).

The programs for A008736, there is no canonical definition to state claims against.
-/

/-! ## A008736.P7269046657047286106

`(A027656(n)+A008821(n))/2`
-/

namespace A008736.P7269046657047286106
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027656 n + A008821 n : ℚ) / 2

end

end A008736.P7269046657047286106

/-! ## A008736.P6820941575535438354

`A008821(n)-A014682(A008821(n)-A027656(n))`
-/

namespace A008736.P6820941575535438354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008821 n - A014682 (A008821 n - A027656 n).toNat

end

end A008736.P6820941575535438354

/-! ## A008736.P13882748361458362181

`A014682(A027656(n)+A008821(n))`
-/

namespace A008736.P13882748361458362181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A027656 n + A008821 n).toNat

end

end A008736.P13882748361458362181

/-! ## A008736.P15470659460091978

`A008821(n)-A004525(A008821(n)-A027656(n))`
-/

namespace A008736.P15470659460091978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008821 n - A004525 (A008821 n - A027656 n).toNat

end

end A008736.P15470659460091978

/-! ## A008736.P18046700403097858096

`A008821(n)-A004526(A008821(n)-A027656(n))`
-/

namespace A008736.P18046700403097858096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008821 n - A004526 (A008821 n - A027656 n).toNat

end

end A008736.P18046700403097858096

/-! ## A008736.P5113895194363886314

`A008821(n)-A006370(A008821(n)-A027656(n))`
-/

namespace A008736.P5113895194363886314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008821 n - A006370 (A008821 n - A027656 n).toNat

end

end A008736.P5113895194363886314

/-! ## A008736.P11576911425663144829

`A008821(n)-A025480(A008821(n)-A027656(n))`
-/

namespace A008736.P11576911425663144829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008821 n - A025480 (A008821 n - A027656 n).toNat

end

end A008736.P11576911425663144829

/-! ## A008736.P10374812558555755552

`A008821(n)-A026741(A008821(n)-A027656(n))`
-/

namespace A008736.P10374812558555755552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008821 n - A026741 (A008821 n - A027656 n).toNat

end

end A008736.P10374812558555755552

/-! ## A008736.P4227547458721300142

`A008821(n)-A029578(A008821(n)-A027656(n))`
-/

namespace A008736.P4227547458721300142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008821 n - A029578 (A008821 n - A027656 n).toNat

end

end A008736.P4227547458721300142

/-! ## A008736.P14591290358313812318

`A008821(n)-A110654(A008821(n)-A027656(n))`
-/

namespace A008736.P14591290358313812318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008821 n - A110654 (A008821 n - A027656 n).toNat

end

end A008736.P14591290358313812318

/-! ## A008736.P17336286354172904331

`A008821(n)-A142150(A008821(n)-A027656(n))`
-/

namespace A008736.P17336286354172904331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008821 n - A142150 (A008821 n - A027656 n).toNat

end

end A008736.P17336286354172904331

/-! ## A008736.P5624334236990120968

`A110654(A008821(n))+A110654(A142150(n))`
-/

namespace A008736.P5624334236990120968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A008821 n).toNat + A110654 (A142150 n).toNat

end

end A008736.P5624334236990120968

/-! ## A008736.P11643418964928731342

`A004525(A027656(n)+A008821(n))`
-/

namespace A008736.P11643418964928731342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A027656 n + A008821 n).toNat

end

end A008736.P11643418964928731342

/-! ## A008736.P11528448631208526601

`A004526(A027656(n)+A008821(n))`
-/

namespace A008736.P11528448631208526601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A027656 n + A008821 n).toNat

end

end A008736.P11528448631208526601

/-! ## A008736.P7015699125926189296

`A006370(A027656(n)+A008821(n))`
-/

namespace A008736.P7015699125926189296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 (A027656 n + A008821 n).toNat

end

end A008736.P7015699125926189296

/-! ## A008736.P12194864025178255336

`A025480(A027656(n)+A008821(n))`
-/

namespace A008736.P12194864025178255336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A027656 n + A008821 n).toNat

end

end A008736.P12194864025178255336

/-! ## A008736.P10931433446454671693

`A026741(A027656(n)+A008821(n))`
-/

namespace A008736.P10931433446454671693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A027656 n + A008821 n).toNat

end

end A008736.P10931433446454671693

/-! ## A008736.P14168428669953362637

`A029578(A027656(n)+A008821(n))`
-/

namespace A008736.P14168428669953362637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029578 (A027656 n + A008821 n).toNat

end

end A008736.P14168428669953362637

/-! ## A008736.P6046398900044874599

`A110654(A027656(n)+A008821(n))`
-/

namespace A008736.P6046398900044874599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A027656 n + A008821 n).toNat

end

end A008736.P6046398900044874599

/-! ## A008736.P566409050598447600

`A142150(A027656(n)+A008821(n))`
-/

namespace A008736.P566409050598447600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (A027656 n + A008821 n).toNat

end

end A008736.P566409050598447600

/-!
# A008737: a(n) = floor(n/6)*ceiling(n/6).

The programs for A008737, the canonical program `A008737.P1573377392559350677` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008737 has offset 0).

The definition of A008737 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(n/6)*ceil(n/6)` (program `A008737.P1573377392559350677`, by `A008737.P1573377392559350677.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A008737.P1573377392559350677

`floor(n/6)*ceil(n/6)`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A008737

/-- `floor(n/6)*ceil(n/6)` -/
def P1573377392559350677.Spec : Prop :=
  ∀ n, P1573377392559350677.a n = A008737 n

theorem P1573377392559350677.correct : P1573377392559350677.Spec := by
  intro n
  simp only [A008737]

end A008737

/-! ## A008737.P9911218096152938663

`A008238(A004396(n))`
-/

namespace A008737.P9911218096152938663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008238 (A004396 n).toNat

end

end A008737.P9911218096152938663

namespace A008737

/-- `A008238(A004396(n))` -/
def P9911218096152938663.Spec : Prop :=
  ∀ n, P9911218096152938663.a n = A008737 n

end A008737

/-! ## A008737.P1328397133962965179

`A008363(A090168(n))`
-/

namespace A008737.P1328397133962965179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008363 (A090168 n).toNat

end

end A008737.P1328397133962965179

namespace A008737

/-- `A008363(A090168(n))` -/
def P1328397133962965179.Spec : Prop :=
  ∀ n, P1328397133962965179.a n = A008737 n

end A008737

/-! ## A008737.P16475314936830739425

`A008238(A274616(n))`
-/

namespace A008737.P16475314936830739425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008238 (A274616 n).toNat

end

end A008737.P16475314936830739425

namespace A008737

/-- `A008238(A274616(n))` -/
def P16475314936830739425.Spec : Prop :=
  ∀ n, P16475314936830739425.a n = A008737 n

end A008737

/-! ## A008737.P7349538952461119832

`A008130(A300076(n))`
-/

namespace A008737.P7349538952461119832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008130 (A300076 n).toNat

end

end A008737.P7349538952461119832

namespace A008737

/-- `A008130(A300076(n))` -/
def P7349538952461119832.Spec : Prop :=
  ∀ n, P7349538952461119832.a n = A008737 n

end A008737

/-! ## A008737.P1067179519507035526

`A008238(2*n-A042965(n+1))`
-/

namespace A008737.P1067179519507035526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008238 ((2 * n : ℤ) - A042965 (n + 1)).toNat

end

end A008737.P1067179519507035526

namespace A008737

/-- `A008238(2*n-A042965(n+1))` -/
def P1067179519507035526.Spec : Prop :=
  ∀ n, P1067179519507035526.a n = A008737 n

end A008737

/-! ## A008737.P10112012886322022249

`A008238(n-A042965(n+1)+n)`
-/

namespace A008737.P10112012886322022249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008238 ((n : ℤ) - A042965 (n + 1) + (n : ℤ)).toNat

end

end A008737.P10112012886322022249

namespace A008737

/-- `A008238(n-A042965(n+1)+n)` -/
def P10112012886322022249.Spec : Prop :=
  ∀ n, P10112012886322022249.a n = A008737 n

end A008737

/-! ## A008737.P9203635528882048096

`∑[A004526(n)-A186101(A004526(n))]`
-/

namespace A008737.P9203635528882048096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n - A186101 (A004526 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008737.P9203635528882048096

namespace A008737

/-- `∑[A004526(n)-A186101(A004526(n))]` -/
def P9203635528882048096.Spec : Prop :=
  ∀ n, P9203635528882048096.a n = A008737 n

end A008737

/-! ## A008737.P8996864992952297956

`A008238(A008615(n+1)+A004526(n))`
-/

namespace A008737.P8996864992952297956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008238 (A008615 (n + 1) + A004526 n).toNat

end

end A008737.P8996864992952297956

namespace A008737

/-- `A008238(A008615(n+1)+A004526(n))` -/
def P8996864992952297956.Spec : Prop :=
  ∀ n, P8996864992952297956.a n = A008737 n

end A008737

/-! ## A008737.P13498261793990369295

`A008767(A032775(n+1))`
-/

namespace A008737.P13498261793990369295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008767 (A032775 (n + 1)).toNat

end

end A008737.P13498261793990369295

namespace A008737

/-- `A008767(A032775(n+1))` -/
def P13498261793990369295.Spec : Prop :=
  ∀ n, P13498261793990369295.a n = A008737 n

end A008737

/-! ## A008737.P13910673302205951946

`A008767(A047303(n+1))`
-/

namespace A008737.P13910673302205951946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008767 (A047303 (n + 1)).toNat

end

end A008737.P13910673302205951946

namespace A008737

/-- `A008767(A047303(n+1))` -/
def P13910673302205951946.Spec : Prop :=
  ∀ n, P13910673302205951946.a n = A008737 n

end A008737

/-! ## A008737.P7074725230311410276

`A008767(A047368(n+1))`
-/

namespace A008737.P7074725230311410276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008767 (A047368 (n + 1)).toNat

end

end A008737.P7074725230311410276

namespace A008737

/-- `A008767(A047368(n+1))` -/
def P7074725230311410276.Spec : Prop :=
  ∀ n, P7074725230311410276.a n = A008737 n

end A008737

/-! ## A008737.P1309316424958333491

`A008767(A047306(n+2)-2)`
-/

namespace A008737.P1309316424958333491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008767 (A047306 (n + 2) - 2).toNat

end

end A008737.P1309316424958333491

namespace A008737

/-- `A008767(A047306(n+2)-2)` -/
def P1309316424958333491.Spec : Prop :=
  ∀ n, P1309316424958333491.a n = A008737 n

end A008737

/-! ## A008737.P33206990540323498

`A008767(A047306(n+1))`
-/

namespace A008737.P33206990540323498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008767 (A047306 (n + 1)).toNat

end

end A008737.P33206990540323498

namespace A008737

/-- `A008767(A047306(n+1))` -/
def P33206990540323498.Spec : Prop :=
  ∀ n, P33206990540323498.a n = A008737 n

end A008737

/-! ## A008737.P13056020910806808079

`A008767(A047310(n+1))`
-/

namespace A008737.P13056020910806808079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008767 (A047310 (n + 1)).toNat

end

end A008737.P13056020910806808079

namespace A008737

/-- `A008767(A047310(n+1))` -/
def P13056020910806808079.Spec : Prop :=
  ∀ n, P13056020910806808079.a n = A008737 n

end A008737

/-! ## A008737.P2315398275595031773

`A008767(A047318(n+1))`
-/

namespace A008737.P2315398275595031773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008767 (A047318 (n + 1)).toNat

end

end A008737.P2315398275595031773

namespace A008737

/-- `A008767(A047318(n+1))` -/
def P2315398275595031773.Spec : Prop :=
  ∀ n, P2315398275595031773.a n = A008737 n

end A008737

/-! ## A008737.P13799823933582711594

`A008838(A004773(n))`
-/

namespace A008737.P13799823933582711594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008838 (A004773 n).toNat

end

end A008737.P13799823933582711594

namespace A008737

/-- `A008838(A004773(n))` -/
def P13799823933582711594.Spec : Prop :=
  ∀ n, P13799823933582711594.a n = A008737 n

end A008737

/-! ## A008737.P7456308003590333286

`A008838(A131452(n))`
-/

namespace A008737.P7456308003590333286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008838 (A131452 n).toNat

end

end A008737.P7456308003590333286

namespace A008737

/-- `A008838(A131452(n))` -/
def P7456308003590333286.Spec : Prop :=
  ∀ n, P7456308003590333286.a n = A008737 n

end A008737

/-! ## A008737.P8503557482108346454

`A008838(A004772(n+1))`
-/

namespace A008737.P8503557482108346454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008838 (A004772 (n + 1)).toNat

end

end A008737.P8503557482108346454

namespace A008737

/-- `A008838(A004772(n+1))` -/
def P8503557482108346454.Spec : Prop :=
  ∀ n, P8503557482108346454.a n = A008737 n

end A008737

/-! ## A008737.P350454634185161451

`A008838(A042965(n+1))`
-/

namespace A008737.P350454634185161451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008838 (A042965 (n + 1)).toNat

end

end A008737.P350454634185161451

namespace A008737

/-- `A008838(A042965(n+1))` -/
def P350454634185161451.Spec : Prop :=
  ∀ n, P350454634185161451.a n = A008737 n

end A008737

/-!
# A008738: a(n) = floor((n^2 + 1)/5).

The programs for A008738, the canonical program `A008738.P66942315527363512` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008738 has offset 0).

The definition of A008738 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor((n²+1)/5)` (program `A008738.P66942315527363512`, by `A008738.P66942315527363512.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A008738.P66942315527363512

`floor((n²+1)/5)`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A008738

/-- `floor((n²+1)/5)` -/
def P66942315527363512.Spec : Prop :=
  ∀ n, P66942315527363512.a n = A008738 n

theorem P66942315527363512.correct : P66942315527363512.Spec := by
  intro n
  simp only [A008738]

end A008738

/-! ## A008738.P5090936753140992861

`∑[∑[char[∑[n%2+2]]]]`
-/

namespace A008738.P5090936753140992861
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2 + 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008738.P5090936753140992861

namespace A008738

/-- `∑[∑[char[∑[n%2+2]]]]` -/
def P5090936753140992861.Spec : Prop :=
  ∀ n, (P5090936753140992861.a n : ℤ) = A008738 n

end A008738

/-! ## A008738.P17848789694020770221

`and(∑[floor(Δ[n²]/5)], -1)`
-/

namespace A008738.P17848789694020770221
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((f2 (n + 1) : ℤ) - (f2 n : ℤ) : ℚ) / 5⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (∑ j ∈ Finset.range (n + 1), f1 j) (-1)

end

end A008738.P17848789694020770221

namespace A008738

/-- `and(∑[floor(Δ[n²]/5)], -1)` -/
def P17848789694020770221.Spec : Prop :=
  ∀ n, P17848789694020770221.a n = A008738 n

end A008738

/-! ## A008738.P15836529239386502964

`∑[∑[((n+1)%5)%2]-1]`
-/

namespace A008738.P15836529239386502964
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) % 5 % 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008738.P15836529239386502964

namespace A008738

/-- `∑[∑[((n+1)%5)%2]-1]` -/
def P15836529239386502964.Spec : Prop :=
  ∀ n, P15836529239386502964.a n = A008738 n

end A008738

/-! ## A008738.P17959782010798217414

`ceil((n+2)/(5*acot(n-2)))`
-/

namespace A008738.P17959782010798217414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 2 : ℝ) / (5 * SequenceMachineLib.acot ((n : ℤ) - 2 : ℝ))⌉

end

end A008738.P17959782010798217414

namespace A008738

/-- `ceil((n+2)/(5*acot(n-2)))` -/
def P17959782010798217414.Spec : Prop :=
  ∀ n, P17959782010798217414.a n = A008738 n

end A008738

/-! ## A008738.P2419483136431988299

`∑[a(n-5)+2]` with `a(0)=0, a(1)=0, a(2)=1, a(3)=1, a(4)=1`
-/

namespace A008738.P2419483136431988299
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 1, 1, 1] fun n f1 =>
  f1 (n - 5) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008738.P2419483136431988299

namespace A008738

/-- `∑[a(n-5)+2]` -/
def P2419483136431988299.Spec : Prop :=
  ∀ n, (P2419483136431988299.a n : ℤ) = A008738 n

end A008738

/-! ## A008738.P18282557435141569209

`ceil(or(2, (n+2)*(n-2))/5)`
-/

namespace A008738.P18282557435141569209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Int.lor 2 ((n + 2 : ℤ) * ((n : ℤ) - 2)) : ℚ) / 5⌉

end

end A008738.P18282557435141569209

namespace A008738

/-- `ceil(or(2, (n+2)*(n-2))/5)` -/
def P18282557435141569209.Spec : Prop :=
  ∀ n, P18282557435141569209.a n = A008738 n

end A008738

/-! ## A008738.P14665019100886099679

`ceil(xor(2, (n+2)*(n-2))/5)`
-/

namespace A008738.P14665019100886099679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Int.xor 2 ((n + 2 : ℤ) * ((n : ℤ) - 2)) : ℚ) / 5⌉

end

end A008738.P14665019100886099679

namespace A008738

/-- `ceil(xor(2, (n+2)*(n-2))/5)` -/
def P14665019100886099679.Spec : Prop :=
  ∀ n, P14665019100886099679.a n = A008738 n

end A008738

/-! ## A008738.P82277279028958005

`ceil((n-1)/5*C(n+1, n))`
-/

namespace A008738.P82277279028958005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((n : ℤ) - 1 : ℚ) / 5 * (Nat.choose (n + 1) n : ℚ)⌉

end

end A008738.P82277279028958005

namespace A008738

/-- `ceil((n-1)/5*C(n+1, n))` -/
def P82277279028958005.Spec : Prop :=
  ∀ n, P82277279028958005.a n = A008738 n

end A008738

/-! ## A008738.P1695374761773087306

`∑[∑[a(n-5)²]]` with `a(0)=0, a(1)=0, a(2)=1, a(3)=0, a(4)=0, a(5)=1`
-/

namespace A008738.P1695374761773087306
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 1, 0, 0, 1] fun n f2 =>
  f2 (n - 5) ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008738.P1695374761773087306

namespace A008738

/-- `∑[∑[a(n-5)²]]` -/
def P1695374761773087306.Spec : Prop :=
  ∀ n, (P1695374761773087306.a n : ℤ) = A008738 n

end A008738

/-! ## A008738.P1163793617198721428

`∑[∑[floor(a(n-5))]]` with `a(0)=0, a(1)=0, a(2)=1, a(3)=0, a(4)=0, a(5)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A008738.P1163793617198721428
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 1, 0, 0, 1] fun n f2 =>
  f2 (n - 5)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008738.P1163793617198721428

namespace A008738

/-- `∑[∑[floor(a(n-5))]]` -/
def P1163793617198721428.Spec : Prop :=
  ∀ n, (P1163793617198721428.a n : ℤ) = A008738 n

end A008738

/-! ## A008738.P13409170066946404675

`∑[floor((2*n+1)/5)%(n+1)]`
-/

namespace A008738.P13409170066946404675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊(2 * n + 1 : ℚ) / 5⌋ (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008738.P13409170066946404675

namespace A008738

/-- `∑[floor((2*n+1)/5)%(n+1)]` -/
def P13409170066946404675.Spec : Prop :=
  ∀ n, P13409170066946404675.a n = A008738 n

end A008738

/-! ## A008738.P18119865490319798224

`a(n-1)+floor((2*n+1)/5)` with `a(0)=0`
-/

namespace A008738.P18119865490319798224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + ⌊(2 * n + 1 : ℚ) / 5⌋

end

end A008738.P18119865490319798224

namespace A008738

/-- `a(n-1)+floor((2*n+1)/5)` -/
def P18119865490319798224.Spec : Prop :=
  ∀ n, P18119865490319798224.a n = A008738 n

end A008738

/-! ## A008738.P15625945837412091313

`round(lcm(n+2, n+3)/5)-(n+1)`
-/

namespace A008738.P15625945837412091313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.lcm (n + 2) (n + 3) : ℚ) / 5) - (n + 1 : ℤ)

end

end A008738.P15625945837412091313

namespace A008738

/-- `round(lcm(n+2, n+3)/5)-(n+1)` -/
def P15625945837412091313.Spec : Prop :=
  ∀ n, P15625945837412091313.a n = A008738 n

end A008738

/-! ## A008738.P12250964345439558537

`∑[A288156(n)]`
-/

namespace A008738.P12250964345439558537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288156 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008738.P12250964345439558537

namespace A008738

/-- `∑[A288156(n)]` -/
def P12250964345439558537.Spec : Prop :=
  ∀ n, P12250964345439558537.a n = A008738 n

end A008738

/-! ## A008738.P6381459125416607918

`∑[A289195(n)/2]`
-/

namespace A008738.P6381459125416607918
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A289195 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008738.P6381459125416607918

namespace A008738

/-- `∑[A289195(n)/2]` -/
def P6381459125416607918.Spec : Prop :=
  ∀ n, P6381459125416607918.a n = (A008738 n : ℚ)

end A008738

/-! ## A008738.P2033163840232084315

`Δ[A173690(abs(1-n))]`
-/

namespace A008738.P2033163840232084315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173690 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A008738.P2033163840232084315

namespace A008738

/-- `Δ[A173690(abs(1-n))]` -/
def P2033163840232084315.Spec : Prop :=
  ∀ n, P2033163840232084315.a n = A008738 n

end A008738

/-! ## A008738.P633819000721670560

`∑[A047367(n+1)-n]`
-/

namespace A008738.P633819000721670560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047367 (n + 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008738.P633819000721670560

namespace A008738

/-- `∑[A047367(n+1)-n]` -/
def P633819000721670560.Spec : Prop :=
  ∀ n, P633819000721670560.a n = A008738 n

end A008738

/-! ## A008738.P10537007003742949119

`∑[n]-A227353(n+1)`
-/

namespace A008738.P10537007003742949119
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A227353 (n + 1)

end

end A008738.P10537007003742949119

namespace A008738

/-- `∑[n]-A227353(n+1)` -/
def P10537007003742949119.Spec : Prop :=
  ∀ n, P10537007003742949119.a n = A008738 n

end A008738

/-! ## A008738.P7037101491953736549

`∑[A047317(n+1)-(n+1)]`
-/

namespace A008738.P7037101491953736549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047317 (n + 1) - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008738.P7037101491953736549

namespace A008738

/-- `∑[A047317(n+1)-(n+1)]` -/
def P7037101491953736549.Spec : Prop :=
  ∀ n, P7037101491953736549.a n = A008738 n

end A008738

/-!
# A008739: Molien series for 3-dimensional group [2+,n] = 2*(n/2).

The programs for A008739, the canonical program `A008739.P8183406835791481912` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008739 has offset 0).

The definition of A008739 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A008739.P8183406835791481912

`round((n+2)*(n+3)/7)`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A008739

/-- `round((n+2)*(n+3)/7)` -/
def P8183406835791481912.Spec : Prop :=
  ∀ n, P8183406835791481912.a n = A008739 n

theorem P8183406835791481912.correct : P8183406835791481912.Spec := by
  intro n
  simp only [A008739]

end A008739

/-! ## A008739.P1091723724947188044

`2*a(n-1)-a(n-2)+a(n-7)-2*a(n-8)+a(n-9)` with `a(0)=1, a(1)=2, a(2)=3, a(3)=4, a(4)=6, a(5)=8, a(6)=10, a(7)=13, a(8)=16`
-/

namespace A008739.P1091723724947188044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 3, 4, 6, 8, 10, 13, 16] fun n a =>
  2 * a (n - 1) - a (n - 2) + a (n - 7) - 2 * a (n - 8) + a (n - 9)

end

end A008739.P1091723724947188044

namespace A008739

/-- `2*a(n-1)-a(n-2)+a(n-7)-2*a(n-8)+a(n-9)` -/
def P1091723724947188044.Spec : Prop :=
  ∀ n, P1091723724947188044.a n = A008739 n

end A008739

/-! ## A008739.P10930501452754825855

`record[round((n-2)*(n-3)/7)]`
-/

namespace A008739.P10930501452754825855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((n : ℤ) - 2 : ℚ) * (((n : ℤ) - 3 : ℚ) / 7))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A008739.P10930501452754825855

namespace A008739

/-- `record[round((n-2)*(n-3)/7)]` -/
def P10930501452754825855.Spec : Prop :=
  ∀ n, P10930501452754825855.a n = A008739 n

end A008739

/-! ## A008739.P5246770607168217513

`floor(∑[a(n-1)+2]/7)` with `a(0)=8, a(1)=6`
-/

namespace A008739.P5246770607168217513
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [8, 6] fun n f1 =>
  f1 (n - 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 7⌋

end

end A008739.P5246770607168217513

namespace A008739

/-- `floor(∑[a(n-1)+2]/7)` -/
def P5246770607168217513.Spec : Prop :=
  ∀ n, P5246770607168217513.a n = A008739 n

end A008739

/-! ## A008739.P287918090237829103

`ceil(a(n-1)+(2*n+1)/7)` with `a(0)=1`
-/

namespace A008739.P287918090237829103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌈(a (n - 1) : ℚ) + (2 * n + 1 : ℚ) / 7⌉

end

end A008739.P287918090237829103

namespace A008739

/-- `ceil(a(n-1)+(2*n+1)/7)` -/
def P287918090237829103.Spec : Prop :=
  ∀ n, P287918090237829103.a n = A008739 n

end A008739

/-! ## A008739.P15525985530539335017

`∑[A057356(n)+1]`
-/

namespace A008739.P15525985530539335017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057356 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008739.P15525985530539335017

namespace A008739

/-- `∑[A057356(n)+1]` -/
def P15525985530539335017.Spec : Prop :=
  ∀ n, P15525985530539335017.a n = A008739 n

end A008739

/-! ## A008739.P9694212278602687100

`ceil(A028552(n+1)/7)`
-/

namespace A008739.P9694212278602687100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A028552 (n + 1) : ℚ) / 7⌉

end

end A008739.P9694212278602687100

namespace A008739

/-- `ceil(A028552(n+1)/7)` -/
def P9694212278602687100.Spec : Prop :=
  ∀ n, P9694212278602687100.a n = A008739 n

end A008739

/-! ## A008739.P8524983800085785301

`(A008824(n)+1+n)/2`
-/

namespace A008739.P8524983800085785301
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008824 n + 1 + (n : ℤ) : ℚ) / 2

end

end A008739.P8524983800085785301

namespace A008739

/-- `(A008824(n)+1+n)/2` -/
def P8524983800085785301.Spec : Prop :=
  ∀ n, P8524983800085785301.a n = (A008739 n : ℚ)

end A008739

/-! ## A008739.P8979575829178283709

`(n+1)²-∑[A083089(n+1)]`
-/

namespace A008739.P8979575829178283709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083089 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008739.P8979575829178283709

namespace A008739

/-- `(n+1)²-∑[A083089(n+1)]` -/
def P8979575829178283709.Spec : Prop :=
  ∀ n, P8979575829178283709.a n = A008739 n

end A008739

/-! ## A008739.P11227761189785405987

`A011867(n+1)+A008725(n)`
-/

namespace A008739.P11227761189785405987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011867 (n + 1) + A008725 n

end

end A008739.P11227761189785405987

namespace A008739

/-- `A011867(n+1)+A008725(n)` -/
def P11227761189785405987.Spec : Prop :=
  ∀ n, P11227761189785405987.a n = A008739 n

end A008739

/-! ## A008739.P3847740871454788554

`floor((A000290(n+3)-n)/7)`
-/

namespace A008739.P3847740871454788554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000290 (n + 3) - (n : ℤ) : ℚ) / 7⌋

end

end A008739.P3847740871454788554

namespace A008739

/-- `floor((A000290(n+3)-n)/7)` -/
def P3847740871454788554.Spec : Prop :=
  ∀ n, P3847740871454788554.a n = A008739 n

end A008739

/-! ## A008739.P16427628268810884262

`A174738(n+3)+A008725(n)`
-/

namespace A008739.P16427628268810884262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174738 (n + 3) + A008725 n

end

end A008739.P16427628268810884262

namespace A008739

/-- `A174738(n+3)+A008725(n)` -/
def P16427628268810884262.Spec : Prop :=
  ∀ n, P16427628268810884262.a n = A008739 n

end A008739

/-! ## A008739.P15733923300290463112

`A008800(2*n)`
-/

namespace A008739.P15733923300290463112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008800 (2 * n)

end

end A008739.P15733923300290463112

namespace A008739

/-- `A008800(2*n)` -/
def P15733923300290463112.Spec : Prop :=
  ∀ n, P15733923300290463112.a n = A008739 n

end A008739

/-! ## A008739.P3059834987585500901

`A025764(2*n)`
-/

namespace A008739.P3059834987585500901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025764 (2 * n)

end

end A008739.P3059834987585500901

namespace A008739

/-- `A025764(2*n)` -/
def P3059834987585500901.Spec : Prop :=
  ∀ n, P3059834987585500901.a n = A008739 n

end A008739

/-! ## A008739.P13654176565586562634

`record[A008800(n)+1]-1`
-/

namespace A008739.P13654176565586562634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008800 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - 1

end

end A008739.P13654176565586562634

namespace A008739

/-- `record[A008800(n)+1]-1` -/
def P13654176565586562634.Spec : Prop :=
  ∀ n, P13654176565586562634.a n = A008739 n

end A008739

/-! ## A008739.P11299217854582325239

`(n+1)²-A194229(2*n+1)`
-/

namespace A008739.P11299217854582325239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - A194229 (2 * n + 1)

end

end A008739.P11299217854582325239

namespace A008739

/-- `(n+1)²-A194229(2*n+1)` -/
def P11299217854582325239.Spec : Prop :=
  ∀ n, P11299217854582325239.a n = A008739 n

end A008739

/-! ## A008739.P16423904343171339621

`A025803(4*n)`
-/

namespace A008739.P16423904343171339621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025803 (4 * n)

end

end A008739.P16423904343171339621

namespace A008739

/-- `A025803(4*n)` -/
def P16423904343171339621.Spec : Prop :=
  ∀ n, P16423904343171339621.a n = A008739 n

end A008739

/-! ## A008739.P13139191863738892050

`∑[A008617(4*n)]`
-/

namespace A008739.P13139191863738892050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008617 (4 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008739.P13139191863738892050

namespace A008739

/-- `∑[A008617(4*n)]` -/
def P13139191863738892050.Spec : Prop :=
  ∀ n, P13139191863738892050.a n = A008739 n

end A008739

/-! ## A008739.P1401162710966358543

`A025841(6*n)`
-/

namespace A008739.P1401162710966358543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025841 (6 * n)

end

end A008739.P1401162710966358543

namespace A008739

/-- `A025841(6*n)` -/
def P1401162710966358543.Spec : Prop :=
  ∀ n, P1401162710966358543.a n = A008739 n

end A008739

/-! ## A008739.P17270285582650486704

`A025867(8*n)`
-/

namespace A008739.P17270285582650486704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025867 (8 * n)

end

end A008739.P17270285582650486704

namespace A008739

/-- `A025867(8*n)` -/
def P17270285582650486704.Spec : Prop :=
  ∀ n, P17270285582650486704.a n = A008739 n

end A008739

/-!
# A008740: Molien series for 3-dimensional group [2+,n] = 2*(n/2).

The programs for A008740, the canonical program `A008740.P1669574297798670486` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008740 has offset 0).

The definition of A008740 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A008740.P1669574297798670486

`floor((n²+6*n+12)/9)`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A008740

/-- `floor((n²+6*n+12)/9)` -/
def P1669574297798670486.Spec : Prop :=
  ∀ n, P1669574297798670486.a n = A008740 n

theorem P1669574297798670486.correct : P1669574297798670486.Spec := by
  intro n
  simp only [A008740]

end A008740

/-! ## A008740.P5022014697041734224

`a(n-9)+2*n-3` with `a(0)=1, a(1)=2, a(2)=3, a(3)=4, a(4)=5, a(5)=7, a(6)=9, a(7)=11, a(8)=13`
-/

namespace A008740.P5022014697041734224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 3, 4, 5, 7, 9, 11, 13] fun n a =>
  a (n - 9) + (2 * n : ℤ) - 3

end

end A008740.P5022014697041734224

namespace A008740

/-- `a(n-9)+2*n-3` -/
def P5022014697041734224.Spec : Prop :=
  ∀ n, P5022014697041734224.a n = A008740 n

end A008740

/-! ## A008740.P8057361919338920164

`record[round((1-n/3)²)]`
-/

namespace A008740.P8057361919338920164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((1 - (n : ℚ) / 3) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A008740.P8057361919338920164

namespace A008740

/-- `record[round((1-n/3)²)]` -/
def P8057361919338920164.Spec : Prop :=
  ∀ n, P8057361919338920164.a n = A008740 n

end A008740

/-! ## A008740.P616110213040318900

`ceil(cot(3/(n+3))²)`
-/

namespace A008740.P616110213040318900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.cot (3 / (n + 3 : ℚ) : ℝ) ^ 2⌉

end

end A008740.P616110213040318900

namespace A008740

/-- `ceil(cot(3/(n+3))²)` -/
def P616110213040318900.Spec : Prop :=
  ∀ n, P616110213040318900.a n = A008740 n

end A008740

/-! ## A008740.P2605588983442205423

`∑[∑[(∑[∑[(n+1)²]]%3)%2]]`
-/

namespace A008740.P2605588983442205423
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f3 j) % 3 % 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008740.P2605588983442205423

namespace A008740

/-- `∑[∑[(∑[∑[(n+1)²]]%3)%2]]` -/
def P2605588983442205423.Spec : Prop :=
  ∀ n, (P2605588983442205423.a n : ℤ) = A008740 n

end A008740

/-! ## A008740.P11055981025754736102

`∑[ceil((2*n+1)/9)%(n+2)]`
-/

namespace A008740.P11055981025754736102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌈(2 * n + 1 : ℚ) / 9⌉ (n + 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008740.P11055981025754736102

namespace A008740

/-- `∑[ceil((2*n+1)/9)%(n+2)]` -/
def P11055981025754736102.Spec : Prop :=
  ∀ n, P11055981025754736102.a n = A008740 n

end A008740

/-! ## A008740.P3204020706658686292

`ceil(a(n-1)+(2*n+1)/9)` with `a(0)=1`
-/

namespace A008740.P3204020706658686292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌈(a (n - 1) : ℚ) + (2 * n + 1 : ℚ) / 9⌉

end

end A008740.P3204020706658686292

namespace A008740

/-- `ceil(a(n-1)+(2*n+1)/9)` -/
def P3204020706658686292.Spec : Prop :=
  ∀ n, P3204020706658686292.a n = A008740 n

end A008740

/-! ## A008740.P10450733087866526355

`ceil((A008825(n)+n)/2)`
-/

namespace A008740.P10450733087866526355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A008825 n + (n : ℤ) : ℚ) / 2⌉

end

end A008740.P10450733087866526355

namespace A008740

/-- `ceil((A008825(n)+n)/2)` -/
def P10450733087866526355.Spec : Prop :=
  ∀ n, P10450733087866526355.a n = A008740 n

end A008740

/-! ## A008740.P2734165426955669900

`∑[A032797(n+1)-n]`
-/

namespace A008740.P2734165426955669900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032797 (n + 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008740.P2734165426955669900

namespace A008740

/-- `∑[A032797(n+1)-n]` -/
def P2734165426955669900.Spec : Prop :=
  ∀ n, P2734165426955669900.a n = A008740 n

end A008740

/-! ## A008740.P10026213503468337079

`∑[∑[char[A007494(3*n)]]]`
-/

namespace A008740.P10026213503468337079
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007494 (3 * n)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008740.P10026213503468337079

namespace A008740

/-- `∑[∑[char[A007494(3*n)]]]` -/
def P10026213503468337079.Spec : Prop :=
  ∀ n, (P10026213503468337079.a n : ℤ) = A008740 n

end A008740

/-! ## A008740.P12511849288319501378

`∑[A002264(round((2*n+5)/3)+1)]`
-/

namespace A008740.P12511849288319501378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (SequenceMachineLib.roundAway ((2 * n + 5 : ℚ) / 3) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008740.P12511849288319501378

namespace A008740

/-- `∑[A002264(round((2*n+5)/3)+1)]` -/
def P12511849288319501378.Spec : Prop :=
  ∀ n, P12511849288319501378.a n = A008740 n

end A008740

/-! ## A008740.P8002035382773399421

`∑[A008620(A004523(n))]`
-/

namespace A008740.P8002035382773399421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A004523 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008740.P8002035382773399421

namespace A008740

/-- `∑[A008620(A004523(n))]` -/
def P8002035382773399421.Spec : Prop :=
  ∀ n, P8002035382773399421.a n = A008740 n

end A008740

/-! ## A008740.P11297099561179476235

`∑[A008620(A004396(n+1)-1)]`
-/

namespace A008740.P11297099561179476235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A004396 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008740.P11297099561179476235

namespace A008740

/-- `∑[A008620(A004396(n+1)-1)]` -/
def P11297099561179476235.Spec : Prop :=
  ∀ n, P11297099561179476235.a n = A008740 n

end A008740

/-! ## A008740.P10718694720064063124

`Δ[A177100(n+2)]`
-/

namespace A008740.P10718694720064063124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177100 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A008740.P10718694720064063124

namespace A008740

/-- `Δ[A177100(n+2)]` -/
def P10718694720064063124.Spec : Prop :=
  ∀ n, P10718694720064063124.a n = A008740 n

end A008740

/-! ## A008740.P17427560734235609572

`A177100(n+3)-A177100(n+2)`
-/

namespace A008740.P17427560734235609572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177100 (n + 3) - A177100 (n + 2)

end

end A008740.P17427560734235609572

namespace A008740

/-- `A177100(n+3)-A177100(n+2)` -/
def P17427560734235609572.Spec : Prop :=
  ∀ n, P17427560734235609572.a n = A008740 n

end A008740

/-! ## A008740.P13999387354923971744

`∑[A289133(n+3)]`
-/

namespace A008740.P13999387354923971744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289133 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008740.P13999387354923971744

namespace A008740

/-- `∑[A289133(n+3)]` -/
def P13999387354923971744.Spec : Prop :=
  ∀ n, P13999387354923971744.a n = A008740 n

end A008740

/-! ## A008740.P2398243737726505422

`∑[A008615(A168056(n)+1)]`
-/

namespace A008740.P2398243737726505422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (A168056 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008740.P2398243737726505422

namespace A008740

/-- `∑[A008615(A168056(n)+1)]` -/
def P2398243737726505422.Spec : Prop :=
  ∀ n, P2398243737726505422.a n = A008740 n

end A008740

/-! ## A008740.P4966522243294433982

`A008802(2*n)`
-/

namespace A008740.P4966522243294433982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008802 (2 * n)

end

end A008740.P4966522243294433982

namespace A008740

/-- `A008802(2*n)` -/
def P4966522243294433982.Spec : Prop :=
  ∀ n, P4966522243294433982.a n = A008740 n

end A008740

/-! ## A008740.P16549923363505381559

`A025765(2*n)`
-/

namespace A008740.P16549923363505381559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025765 (2 * n)

end

end A008740.P16549923363505381559

namespace A008740

/-- `A025765(2*n)` -/
def P16549923363505381559.Spec : Prop :=
  ∀ n, P16549923363505381559.a n = A008740 n

end A008740

/-! ## A008740.P16378226350190885910

`A025804(4*n)`
-/

namespace A008740.P16378226350190885910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025804 (4 * n)

end

end A008740.P16378226350190885910

namespace A008740

/-- `A025804(4*n)` -/
def P16378226350190885910.Spec : Prop :=
  ∀ n, P16378226350190885910.a n = A008740 n

end A008740

/-!
# A008742: Molien series for 3-dimensional group [3,3 ]+ = 332.

The programs for A008742, the canonical program `A008742.P12298069899651337767` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008742 has offset 0).

The definition of A008742 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A008742.P1698226883154691166

`floor((n²+3*n+20)/24+(2*n+3)*(-1)^n/16)`
-/

namespace A008742.P1698226883154691166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n ^ 2 + 3 * n + 20 : ℚ) / 24 + ((2 * n + 3 : ℤ) * (-1) ^ n : ℚ) / 16⌋

end

end A008742.P1698226883154691166

namespace A008742

/-- `floor((n²+3*n+20)/24+(2*n+3)*(-1)^n/16)` -/
def P1698226883154691166.Spec : Prop :=
  ∀ n, P1698226883154691166.a n = A008742 n

end A008742

/-! ## A008742.P12298069899651337767

`2*a(n-2)+a(n-3)-a(n-4)-2*a(n-5)+a(n-7)` with `a(0)=1, a(1)=0, a(2)=1, a(3)=1, a(4)=2, a(5)=1, a(6)=4`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A008742

/-- `2*a(n-2)+a(n-3)-a(n-4)-2*a(n-5)+a(n-7)` -/
def P12298069899651337767.Spec : Prop :=
  ∀ n, P12298069899651337767.a n = A008742 n

theorem P12298069899651337767.correct : P12298069899651337767.Spec := by
  intro n
  simp only [A008742]

end A008742

/-! ## A008742.P17635150366902961479

`a(n-3)+∑[n]%n` with `a(0)=1, a(1)=0, a(2)=1`
-/

namespace A008742.P17635150366902961479
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 1] fun n a =>
  a (n - 3) + (∑ j ∈ Finset.range (n + 1), f1 j) % n

end

end A008742.P17635150366902961479

namespace A008742

/-- `a(n-3)+∑[n]%n` -/
def P17635150366902961479.Spec : Prop :=
  ∀ n, (P17635150366902961479.a n : ℤ) = A008742 n

end A008742

/-! ## A008742.P13248628260884893244

`ceil(C(∑[gcd(2, n)²-2], 2)/3)`
-/

namespace A008742.P13248628260884893244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 2 n ^ 2 : ℤ) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j).toNat 2 : ℚ) / 3⌉

end

end A008742.P13248628260884893244

namespace A008742

/-- `ceil(C(∑[gcd(2, n)²-2], 2)/3)` -/
def P13248628260884893244.Spec : Prop :=
  ∀ n, P13248628260884893244.a n = A008742 n

end A008742

/-! ## A008742.P5091595605845893933

`ceil(C(round(xor(1, n)/2)+1, 2)/3)`
-/

namespace A008742.P5091595605845893933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.choose (SequenceMachineLib.roundAway ((Nat.xor 1 n : ℚ) / 2) + 1).toNat 2 : ℚ) / 3⌉

end

end A008742.P5091595605845893933

namespace A008742

/-- `ceil(C(round(xor(1, n)/2)+1, 2)/3)` -/
def P5091595605845893933.Spec : Prop :=
  ∀ n, P5091595605845893933.a n = A008742 n

end A008742

/-! ## A008742.P2128422294144262605

`ceil((n+1)²/12)-a(n-1)` with `a(0)=1`
-/

namespace A008742.P2128422294144262605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌈((n + 1) ^ 2 : ℚ) / 12⌉ - a (n - 1)

end

end A008742.P2128422294144262605

namespace A008742

/-- `ceil((n+1)²/12)-a(n-1)` -/
def P2128422294144262605.Spec : Prop :=
  ∀ n, P2128422294144262605.a n = A008742 n

end A008742

/-! ## A008742.P1876818569999663215

`ceil(A008796(n)/2)`
-/

namespace A008742.P1876818569999663215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A008796 n : ℚ) / 2⌉

end

end A008742.P1876818569999663215

namespace A008742

/-- `ceil(A008796(n)/2)` -/
def P1876818569999663215.Spec : Prop :=
  ∀ n, P1876818569999663215.a n = A008742 n

end A008742

/-! ## A008742.P2433922612747294205

`ceil(A008795(n)/3)`
-/

namespace A008742.P2433922612747294205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A008795 n : ℚ) / 3⌉

end

end A008742.P2433922612747294205

namespace A008742

/-- `ceil(A008795(n)/3)` -/
def P2433922612747294205.Spec : Prop :=
  ∀ n, P2433922612747294205.a n = A008742 n

end A008742

/-! ## A008742.P17601993034095812741

`A058212(A052938(n+1))`
-/

namespace A008742.P17601993034095812741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058212 (A052938 (n + 1)).toNat

end

end A008742.P17601993034095812741

namespace A008742

/-- `A058212(A052938(n+1))` -/
def P17601993034095812741.Spec : Prop :=
  ∀ n, P17601993034095812741.a n = A008742 n

end A008742

/-! ## A008742.P13117226521016857455

`A008743(n)+A005044(n)`
-/

namespace A008742.P13117226521016857455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008743 n + A005044 n

end

end A008742.P13117226521016857455

namespace A008742

/-- `A008743(n)+A005044(n)` -/
def P13117226521016857455.Spec : Prop :=
  ∀ n, P13117226521016857455.a n = A008742 n

end A008742

/-! ## A008742.P4080784532920181464

`A008731(n)-A008615(n)`
-/

namespace A008742.P4080784532920181464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008731 n - A008615 n

end

end A008742.P4080784532920181464

namespace A008742

/-- `A008731(n)-A008615(n)` -/
def P4080784532920181464.Spec : Prop :=
  ∀ n, P4080784532920181464.a n = A008742 n

end A008742

/-! ## A008742.P2280829283648743168

`A023054(n)-A001840(n)`
-/

namespace A008742.P2280829283648743168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023054 n - A001840 n

end

end A008742.P2280829283648743168

namespace A008742

/-- `A023054(n)-A001840(n)` -/
def P2280829283648743168.Spec : Prop :=
  ∀ n, P2280829283648743168.a n = A008742 n

end A008742

/-! ## A008742.P102962339306873929

`A212987(n)-A002620(n+1)`
-/

namespace A008742.P102962339306873929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212987 n - A002620 (n + 1)

end

end A008742.P102962339306873929

namespace A008742

/-- `A212987(n)-A002620(n+1)` -/
def P102962339306873929.Spec : Prop :=
  ∀ n, P102962339306873929.a n = A008742 n

end A008742

/-! ## A008742.P14439241839891077811

`2*A008796(n)-A008795(n)`
-/

namespace A008742.P14439241839891077811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008796 n - A008795 n

end

end A008742.P14439241839891077811

namespace A008742

/-- `2*A008796(n)-A008795(n)` -/
def P14439241839891077811.Spec : Prop :=
  ∀ n, P14439241839891077811.a n = A008742 n

end A008742

/-! ## A008742.P5272440669827203783

`∑[A008611(n)-∑[A001057(n)]]`
-/

namespace A008742.P5272440669827203783
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 n - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008742.P5272440669827203783

namespace A008742

/-- `∑[A008611(n)-∑[A001057(n)]]` -/
def P5272440669827203783.Spec : Prop :=
  ∀ n, P5272440669827203783.a n = A008742 n

end A008742

/-! ## A008742.P3291624000968200382

`A069905(n+1-round(xor(1, n)/2))+A008743(n)`
-/

namespace A008742.P3291624000968200382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069905 ((n + 1 : ℤ) - SequenceMachineLib.roundAway ((Nat.xor 1 n : ℚ) / 2)).toNat + A008743 n

end

end A008742.P3291624000968200382

namespace A008742

/-- `A069905(n+1-round(xor(1, n)/2))+A008743(n)` -/
def P3291624000968200382.Spec : Prop :=
  ∀ n, P3291624000968200382.a n = A008742 n

end A008742

/-! ## A008742.P12270690204592567351

`A008627(n)-∑[A058212(A052938(n))]`
-/

namespace A008742.P12270690204592567351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058212 (A052938 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008627 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008742.P12270690204592567351

namespace A008742

/-- `A008627(n)-∑[A058212(A052938(n))]` -/
def P12270690204592567351.Spec : Prop :=
  ∀ n, P12270690204592567351.a n = A008742 n

end A008742

/-! ## A008742.P4264713770243466684

`A008625(n)+A008743(n)-A008614(n)`
-/

namespace A008742.P4264713770243466684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008625 n + (A008743 n - A008614 n)

end

end A008742.P4264713770243466684

namespace A008742

/-- `A008625(n)+A008743(n)-A008614(n)` -/
def P4264713770243466684.Spec : Prop :=
  ∀ n, P4264713770243466684.a n = A008742 n

end A008742

/-! ## A008742.P4164193702641523641

`A001399(n)+A000217(A004526(n))-A001840(n)`
-/

namespace A008742.P4164193702641523641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001399 n + (A000217 (A004526 n).toNat - A001840 n)

end

end A008742.P4164193702641523641

namespace A008742

/-- `A001399(n)+A000217(A004526(n))-A001840(n)` -/
def P4164193702641523641.Spec : Prop :=
  ∀ n, P4164193702641523641.a n = A008742 n

end A008742

/-! ## A008742.P10718966810299481154

`A114209(n+2)-A008615(n)`
-/

namespace A008742.P10718966810299481154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114209 (n + 2) - A008615 n

end

end A008742.P10718966810299481154

namespace A008742

/-- `A114209(n+2)-A008615(n)` -/
def P10718966810299481154.Spec : Prop :=
  ∀ n, P10718966810299481154.a n = A008742 n

end A008742

/-!
# A008743: Molien series for 3-dimensional group [3,4]+ = 432.

The programs for A008743, the canonical program `A008743.P13236344471531714695` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008743 has offset 0).

The definition of A008743 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A008743.P13236344471531714695

`floor((n²+n*(3+9*(-1)^n)+14*(-1)^n+35)/48)`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A008743

/-- `floor((n²+n*(3+9*(-1)^n)+14*(-1)^n+35)/48)` -/
def P13236344471531714695.Spec : Prop :=
  ∀ n, P13236344471531714695.a n = A008743 n

theorem P13236344471531714695.correct : P13236344471531714695.Spec := by
  intro n
  simp only [A008743]

end A008743

/-! ## A008743.P11549673471540943719

`A008647(n)+a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A008743.P11549673471540943719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A008647 n + a (n - 2)

end

end A008743.P11549673471540943719

namespace A008743

/-- `A008647(n)+a(n-2)` -/
def P11549673471540943719.Spec : Prop :=
  ∀ n, P11549673471540943719.a n = A008743 n

end A008743

/-! ## A008743.P17774535078610998033

`A008742(n)-A005044(n)`
-/

namespace A008743.P17774535078610998033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008742 n - A005044 n

end

end A008743.P17774535078610998033

namespace A008743

/-- `A008742(n)-A005044(n)` -/
def P17774535078610998033.Spec : Prop :=
  ∀ n, P17774535078610998033.a n = A008743 n

end A008743

/-! ## A008743.P12844355206917256611

`A008742(n)-Δ[A026810(n)]`
-/

namespace A008743.P12844355206917256611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026810 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008742 n - (f1 (n + 1) - f1 n)

end

end A008743.P12844355206917256611

namespace A008743

/-- `A008742(n)-Δ[A026810(n)]` -/
def P12844355206917256611.Spec : Prop :=
  ∀ n, P12844355206917256611.a n = A008743 n

end A008743

/-! ## A008743.P17378474100738851622

`A008742(n)-∑{d}[n, A051493(#)]`
-/

namespace A008743.P17378474100738851622
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008742 n - ∑ d ∈ Nat.divisors (f1 n), A051493 d

end

end A008743.P17378474100738851622

namespace A008743

/-- `A008742(n)-∑{d}[n, A051493(#)]` -/
def P17378474100738851622.Spec : Prop :=
  ∀ n, P17378474100738851622.a n = A008743 n

end A008743

/-! ## A008743.P3748560119377651072

`A008742(n)-A069905(n+1-round(xor(1, n)/2))`
-/

namespace A008743.P3748560119377651072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008742 n - A069905 ((n + 1 : ℤ) - SequenceMachineLib.roundAway ((Nat.xor 1 n : ℚ) / 2)).toNat

end

end A008743.P3748560119377651072

namespace A008743

/-- `A008742(n)-A069905(n+1-round(xor(1, n)/2))` -/
def P3748560119377651072.Spec : Prop :=
  ∀ n, P3748560119377651072.a n = A008743 n

end A008743

/-! ## A008743.P6239556115623980545

`A008742(n)-(A325691(n+1)-Δ[round(n²/12)])`
-/

namespace A008743.P6239556115623980545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n ^ 2 : ℚ) / 12)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008742 n - (A325691 (n + 1) - (f1 (n + 1) - f1 n))

end

end A008743.P6239556115623980545

namespace A008743

/-- `A008742(n)-(A325691(n+1)-Δ[round(n²/12)])` -/
def P6239556115623980545.Spec : Prop :=
  ∀ n, P6239556115623980545.a n = A008743 n

end A008743

/-! ## A008743.P7291283929730674447

`A008614(n)+A008742(n)-A008625(n)`
-/

namespace A008743.P7291283929730674447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008614 n + (A008742 n - A008625 n)

end

end A008743.P7291283929730674447

namespace A008743

/-- `A008614(n)+A008742(n)-A008625(n)` -/
def P7291283929730674447.Spec : Prop :=
  ∀ n, P7291283929730674447.a n = A008743 n

end A008743

/-! ## A008743.P3576489268778340783

`A008742(n)-(A026810(n+1)-A026810(n))`
-/

namespace A008743.P3576489268778340783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008742 n - (A026810 (n + 1) - A026810 n)

end

end A008743.P3576489268778340783

namespace A008743

/-- `A008742(n)-(A026810(n+1)-A026810(n))` -/
def P3576489268778340783.Spec : Prop :=
  ∀ n, P3576489268778340783.a n = A008743 n

end A008743

/-! ## A008743.P5779804060765880667

`A005044(n+1)+A266755(n)-A325691(n+1)`
-/

namespace A008743.P5779804060765880667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005044 (n + 1) + (A266755 n - A325691 (n + 1))

end

end A008743.P5779804060765880667

namespace A008743

/-- `A005044(n+1)+A266755(n)-A325691(n+1)` -/
def P5779804060765880667.Spec : Prop :=
  ∀ n, P5779804060765880667.a n = A008743 n

end A008743

/-! ## A008743.P8587328215428794437

`Δ[A175870(n)]-a(n-1)` with `a(0)=1`
-/

namespace A008743.P8587328215428794437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175870 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  f1 (n + 1) - f1 n - a (n - 1)

end

end A008743.P8587328215428794437

namespace A008743

/-- `Δ[A175870(n)]-a(n-1)` -/
def P8587328215428794437.Spec : Prop :=
  ∀ n, P8587328215428794437.a n = A008743 n

end A008743

/-! ## A008743.P5619354601593891410

`A266755(2*n)+A266755(3*n)-A008642(2*n)`
-/

namespace A008743.P5619354601593891410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266755 (2 * n) + (A266755 (3 * n) - A008642 (2 * n))

end

end A008743.P5619354601593891410

namespace A008743

/-- `A266755(2*n)+A266755(3*n)-A008642(2*n)` -/
def P5619354601593891410.Spec : Prop :=
  ∀ n, P5619354601593891410.a n = A008743 n

end A008743

/-! ## A008743.P14361328035858334577

`A266769(2*n)+A266755(3*n)-A266769(2*n+1)`
-/

namespace A008743.P14361328035858334577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266769 (2 * n) + (A266755 (3 * n) - A266769 (2 * n + 1))

end

end A008743.P14361328035858334577

namespace A008743

/-- `A266769(2*n)+A266755(3*n)-A266769(2*n+1)` -/
def P14361328035858334577.Spec : Prop :=
  ∀ n, P14361328035858334577.a n = A008743 n

end A008743

/-! ## A008743.P123904865418492159

`A005044(3*(n+1))-round(∑[n+1]/3)`
-/

namespace A008743.P123904865418492159
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005044 (3 * (n + 1)) - SequenceMachineLib.roundAway (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 3)

end

end A008743.P123904865418492159

namespace A008743

/-- `A005044(3*(n+1))-round(∑[n+1]/3)` -/
def P123904865418492159.Spec : Prop :=
  ∀ n, P123904865418492159.a n = A008743 n

end A008743

/-! ## A008743.P17260134956921918000

`abs(A001840(n)-A005044(3*(n+1)))`
-/

namespace A008743.P17260134956921918000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001840 n - A005044 (3 * (n + 1))|

end

end A008743.P17260134956921918000

namespace A008743

/-- `abs(A001840(n)-A005044(3*(n+1)))` -/
def P17260134956921918000.Spec : Prop :=
  ∀ n, P17260134956921918000.a n = A008743 n

end A008743

/-! ## A008743.P15115949780915006811

`A004396(A008801(n))`
-/

namespace A008743.P15115949780915006811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A008801 n).toNat

end

end A008743.P15115949780915006811

namespace A008743

/-- `A004396(A008801(n))` -/
def P15115949780915006811.Spec : Prop :=
  ∀ n, P15115949780915006811.a n = A008743 n

end A008743

/-! ## A008743.P5030676066278069448

`A001975(2*n)-A001976(2*n)`
-/

namespace A008743.P5030676066278069448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001975 (2 * n) - A001976 (2 * n)

end

end A008743.P5030676066278069448

namespace A008743

/-- `A001975(2*n)-A001976(2*n)` -/
def P5030676066278069448.Spec : Prop :=
  ∀ n, P5030676066278069448.a n = A008743 n

end A008743

/-!
# A008747: Expansion of (1+x^4)/((1-x)*(1-x^2)*(1-x^3)).

The programs for A008747, the canonical program `A008747.P8156349194213413477` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008747 has offset 0).

The definition of A008747 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+x^4)/(1-x-x^2+x^4+x^5-x^6))` (program `A008747.P8156349194213413477`, by `A008747.P8156349194213413477.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A008747.P3221543959208081492

`ceil((n+1)²/6)`
-/

namespace A008747.P3221543959208081492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((n + 1) ^ 2 : ℚ) / 6⌉

end

end A008747.P3221543959208081492

namespace A008747

/-- `ceil((n+1)²/6)` -/
def P3221543959208081492.Spec : Prop :=
  ∀ n, P3221543959208081492.a n = A008747 n

end A008747

/-! ## A008747.P8156349194213413477

`ogf((1+x^4)/(1-x-x^2+x^4+x^5-x^6))`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A008747

/-- `ogf((1+x^4)/(1-x-x^2+x^4+x^5-x^6))` -/
def P8156349194213413477.Spec : Prop :=
  ∀ n, P8156349194213413477.a n = A008747 n

theorem P8156349194213413477.correct : P8156349194213413477.Spec := by
  intro n
  simp only [A008747]

end A008747

/-! ## A008747.P12167191396184187570

`a(n-1)+a(n-2)-a(n-4)-a(n-5)+a(n-6)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=3, a(4)=5, a(5)=6`
-/

namespace A008747.P12167191396184187570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2, 3, 5, 6] fun n a =>
  a (n - 1) + a (n - 2) - a (n - 4) - a (n - 5) + a (n - 6)

end

end A008747.P12167191396184187570

namespace A008747

/-- `a(n-1)+a(n-2)-a(n-4)-a(n-5)+a(n-6)` -/
def P12167191396184187570.Spec : Prop :=
  ∀ n, P12167191396184187570.a n = A008747 n

end A008747

/-! ## A008747.P2594079578290917475

`(12*n+23+6*n²+9*(-1)^n+4*A061347(n+1))/36`
-/

namespace A008747.P2594079578290917475
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((12 * n + 23 + 6 * n ^ 2 : ℤ) + 9 * (-1) ^ n + 4 * A061347 (n + 1) : ℚ) / 36

end

end A008747.P2594079578290917475

namespace A008747

/-- `(12*n+23+6*n²+9*(-1)^n+4*A061347(n+1))/36` -/
def P2594079578290917475.Spec : Prop :=
  ∀ n, P2594079578290917475.a n = (A008747 n : ℚ)

end A008747

/-! ## A008747.P9601044922067006993

`round(or(2, (n+1)²)/6)`
-/

namespace A008747.P9601044922067006993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.lor 2 ((n + 1) ^ 2) : ℚ) / 6)

end

end A008747.P9601044922067006993

namespace A008747

/-- `round(or(2, (n+1)²)/6)` -/
def P9601044922067006993.Spec : Prop :=
  ∀ n, P9601044922067006993.a n = A008747 n

end A008747

/-! ## A008747.P8790419471652743401

`round(xor(2, (n+1)²)/6)`
-/

namespace A008747.P8790419471652743401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.xor 2 ((n + 1) ^ 2) : ℚ) / 6)

end

end A008747.P8790419471652743401

namespace A008747

/-- `round(xor(2, (n+1)²)/6)` -/
def P8790419471652743401.Spec : Prop :=
  ∀ n, P8790419471652743401.a n = A008747 n

end A008747

/-! ## A008747.P8581285505327054258

`floor((∑[or(1, n)]+2)/3)`
-/

namespace A008747.P8581285505327054258
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j + 2 : ℕ) : ℚ) / 3⌋

end

end A008747.P8581285505327054258

namespace A008747

/-- `floor((∑[or(1, n)]+2)/3)` -/
def P8581285505327054258.Spec : Prop :=
  ∀ n, P8581285505327054258.a n = A008747 n

end A008747

/-! ## A008747.P15345364505838241241

`round((∑[or(1, n)]+1)/3)`
-/

namespace A008747.P15345364505838241241
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℕ) : ℚ) / 3)

end

end A008747.P15345364505838241241

namespace A008747

/-- `round((∑[or(1, n)]+1)/3)` -/
def P15345364505838241241.Spec : Prop :=
  ∀ n, P15345364505838241241.a n = A008747 n

end A008747

/-! ## A008747.P5340426511685892014

`∑[floor(n/3)+log2(gcd(2, n))]`
-/

namespace A008747.P5340426511685892014
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (⌊(n : ℚ) / 3⌋ : ℝ) + Real.logb 2 (Nat.gcd 2 n : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008747.P5340426511685892014

namespace A008747

/-- `∑[floor(n/3)+log2(gcd(2, n))]` -/
def P5340426511685892014.Spec : Prop :=
  ∀ n, P5340426511685892014.a n = (A008747 n : ℝ)

end A008747

/-! ## A008747.P14192685012896476294

`round(∑[∑[xor(1, n)]]/(n+1))`
-/

namespace A008747.P14192685012896476294
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / (n + 1 : ℚ))

end

end A008747.P14192685012896476294

namespace A008747

/-- `round(∑[∑[xor(1, n)]]/(n+1))` -/
def P14192685012896476294.Spec : Prop :=
  ∀ n, P14192685012896476294.a n = A008747 n

end A008747

/-! ## A008747.P15160202550333589016

`floor(C(n+2, 3)/(n+1))+1`
-/

namespace A008747.P15160202550333589016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.choose (n + 2) 3 : ℚ) / (n + 1 : ℚ)⌋ + 1

end

end A008747.P15160202550333589016

namespace A008747

/-- `floor(C(n+2, 3)/(n+1))+1` -/
def P15160202550333589016.Spec : Prop :=
  ∀ n, P15160202550333589016.a n = A008747 n

end A008747

/-! ## A008747.P5087572010518431155

`∑[∑[1-n²%3]-n%2]`
-/

namespace A008747.P5087572010518431155
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((n ^ 2 % 3 : ℕ) : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - ((n % 2 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008747.P5087572010518431155

namespace A008747

/-- `∑[∑[1-n²%3]-n%2]` -/
def P5087572010518431155.Spec : Prop :=
  ∀ n, P5087572010518431155.a n = A008747 n

end A008747

/-! ## A008747.P11673668768449798629

`round(a(n-2)+2*n/3)` with `a(0)=1, a(1)=1`
-/

namespace A008747.P11673668768449798629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  SequenceMachineLib.roundAway ((a (n - 2) : ℚ) + (2 * n : ℚ) / 3)

end

end A008747.P11673668768449798629

namespace A008747

/-- `round(a(n-2)+2*n/3)` -/
def P11673668768449798629.Spec : Prop :=
  ∀ n, P11673668768449798629.a n = A008747 n

end A008747

/-! ## A008747.P5290482492538850542

`floor(∑[a(n-1)+n]/(n+1))` with `a(0)=1`
-/

namespace A008747.P5290482492538850542
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / (n + 1 : ℚ)⌋

end

end A008747.P5290482492538850542

namespace A008747

/-- `floor(∑[a(n-1)+n]/(n+1))` -/
def P5290482492538850542.Spec : Prop :=
  ∀ n, P5290482492538850542.a n = A008747 n

end A008747

/-! ## A008747.P12367752972622226982

`∑[floor(∑[2-a(n-1)]/3)]` with `a(0)=3, a(1)=-2`
-/

namespace A008747.P12367752972622226982
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3, -2] fun n f2 =>
  2 - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / 3⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008747.P12367752972622226982

namespace A008747

/-- `∑[floor(∑[2-a(n-1)]/3)]` -/
def P12367752972622226982.Spec : Prop :=
  ∀ n, P12367752972622226982.a n = A008747 n

end A008747

/-! ## A008747.P7964173802133724706

`floor(a(n-2)+(2*n+1)/3)` with `a(0)=1, a(1)=1`
-/

namespace A008747.P7964173802133724706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  ⌊(a (n - 2) : ℚ) + (2 * n + 1 : ℚ) / 3⌋

end

end A008747.P7964173802133724706

namespace A008747

/-- `floor(a(n-2)+(2*n+1)/3)` -/
def P7964173802133724706.Spec : Prop :=
  ∀ n, P7964173802133724706.a n = A008747 n

end A008747

/-! ## A008747.P6549367526297606008

`a(n-2)+floor((n+1+n)/3)` with `a(0)=1, a(1)=1`
-/

namespace A008747.P6549367526297606008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 2) + ⌊(n + 1 + n : ℚ) / 3⌋

end

end A008747.P6549367526297606008

namespace A008747

/-- `a(n-2)+floor((n+1+n)/3)` -/
def P6549367526297606008.Spec : Prop :=
  ∀ n, P6549367526297606008.a n = A008747 n

end A008747

/-! ## A008747.P4714946977080892188

`∑[a(n-2)+∑[a(n-1)-a(n-2)]²]` with `a(0)=1, a(1)=0`
-/

namespace A008747.P4714946977080892188
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n f2 =>
  f2 (n - 1) - f2 (n - 2)

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n f1 =>
  f1 (n - 2) + (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008747.P4714946977080892188

namespace A008747

/-- `∑[a(n-2)+∑[a(n-1)-a(n-2)]²]` -/
def P4714946977080892188.Spec : Prop :=
  ∀ n, P4714946977080892188.a n = A008747 n

end A008747

/-! ## A008747.P10439441508295074373

`∑[A051274(n)]`
-/

namespace A008747.P10439441508295074373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051274 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008747.P10439441508295074373

namespace A008747

/-- `∑[A051274(n)]` -/
def P10439441508295074373.Spec : Prop :=
  ∀ n, P10439441508295074373.a n = A008747 n

end A008747

/-! ## A008747.P16077210671856791073

`Δ[A175812(n)]`
-/

namespace A008747.P16077210671856791073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175812 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A008747.P16077210671856791073

namespace A008747

/-- `Δ[A175812(n)]` -/
def P16077210671856791073.Spec : Prop :=
  ∀ n, P16077210671856791073.a n = A008747 n

end A008747

/-!
# A008748: Expansion of (1 + x^5) / ((1-x) * (1-x^2) * (1-x^3)) in powers of x.

The programs for A008748, the canonical program `A008748.P11032146120003319318` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008748 has offset 0).

The definition of A008748 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+x^5)/(1-x-x^2+x^4+x^5-x^6))` (program `A008748.P11032146120003319318`, by `A008748.P11032146120003319318.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A008748.P16911715893202199193

`1+floor(n*(n+1)/6)`
-/

namespace A008748.P16911715893202199193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + ⌊(n * (n + 1) : ℚ) / 6⌋

end

end A008748.P16911715893202199193

namespace A008748

/-- `1+floor(n*(n+1)/6)` -/
def P16911715893202199193.Spec : Prop :=
  ∀ n, P16911715893202199193.a n = A008748 n

end A008748

/-! ## A008748.P11032146120003319318

`ogf((1+x^5)/(1-x-x^2+x^4+x^5-x^6))`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A008748

/-- `ogf((1+x^5)/(1-x-x^2+x^4+x^5-x^6))` -/
def P11032146120003319318.Spec : Prop :=
  ∀ n, P11032146120003319318.a n = A008748 n

theorem P11032146120003319318.correct : P11032146120003319318.Spec := by
  intro n
  simp only [A008748]

end A008748

/-! ## A008748.P11281097341313222101

`ceil(cos(1)+∑[n/3])`
-/

namespace A008748.P11281097341313222101
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.cos (1 : ℝ) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℚ) : ℝ)⌉

end

end A008748.P11281097341313222101

namespace A008748

/-- `ceil(cos(1)+∑[n/3])` -/
def P11281097341313222101.Spec : Prop :=
  ∀ n, P11281097341313222101.a n = A008748 n

end A008748

/-! ## A008748.P16427764444807010061

`round(cos(1)+∑[n/3])`
-/

namespace A008748.P16427764444807010061
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.cos (1 : ℝ) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℚ) : ℝ))

end

end A008748.P16427764444807010061

namespace A008748

/-- `round(cos(1)+∑[n/3])` -/
def P16427764444807010061.Spec : Prop :=
  ∀ n, P16427764444807010061.a n = A008748 n

end A008748

/-! ## A008748.P1917742012676596625

`ceil((sin(1)+∑[n])/3)`
-/

namespace A008748.P1917742012676596625
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Real.sin (1 : ℝ) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ)) / 3⌉

end

end A008748.P1917742012676596625

namespace A008748

/-- `ceil((sin(1)+∑[n])/3)` -/
def P1917742012676596625.Spec : Prop :=
  ∀ n, P1917742012676596625.a n = A008748 n

end A008748

/-! ## A008748.P3893804302256633501

`round(sin(1)+∑[n/3])`
-/

namespace A008748.P3893804302256633501
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sin (1 : ℝ) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℚ) : ℝ))

end

end A008748.P3893804302256633501

namespace A008748

/-- `round(sin(1)+∑[n/3])` -/
def P3893804302256633501.Spec : Prop :=
  ∀ n, P3893804302256633501.a n = A008748 n

end A008748

/-! ## A008748.P5865556770952272653

`ceil((tan(1)+∑[n])/3)`
-/

namespace A008748.P5865556770952272653
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Real.tan (1 : ℝ) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ)) / 3⌉

end

end A008748.P5865556770952272653

namespace A008748

/-- `ceil((tan(1)+∑[n])/3)` -/
def P5865556770952272653.Spec : Prop :=
  ∀ n, P5865556770952272653.a n = A008748 n

end A008748

/-! ## A008748.P18178263151619727370

`ceil(∑[n/3]-cos(2))`
-/

namespace A008748.P18178263151619727370
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((∑ j ∈ Finset.range (n + 1), f1 j : ℚ) : ℝ) - Real.cos (2 : ℝ)⌉

end

end A008748.P18178263151619727370

namespace A008748

/-- `ceil(∑[n/3]-cos(2))` -/
def P18178263151619727370.Spec : Prop :=
  ∀ n, P18178263151619727370.a n = A008748 n

end A008748

/-! ## A008748.P4465048693308082407

`round((tan(1)+∑[n])/3)`
-/

namespace A008748.P4465048693308082407
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Real.tan (1 : ℝ) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ)) / 3)

end

end A008748.P4465048693308082407

namespace A008748

/-- `round((tan(1)+∑[n])/3)` -/
def P4465048693308082407.Spec : Prop :=
  ∀ n, P4465048693308082407.a n = A008748 n

end A008748

/-! ## A008748.P6828776225285831087

`ceil((asin(1)+∑[n])/3)`
-/

namespace A008748.P6828776225285831087
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Real.arcsin (1 : ℝ) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ)) / 3⌉

end

end A008748.P6828776225285831087

namespace A008748

/-- `ceil((asin(1)+∑[n])/3)` -/
def P6828776225285831087.Spec : Prop :=
  ∀ n, P6828776225285831087.a n = A008748 n

end A008748

/-! ## A008748.P1176741822873677392

`round(∑[n/3]-cos(3))`
-/

namespace A008748.P1176741822873677392
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((∑ j ∈ Finset.range (n + 1), f1 j : ℚ) : ℝ) - Real.cos (3 : ℝ))

end

end A008748.P1176741822873677392

namespace A008748

/-- `round(∑[n/3]-cos(3))` -/
def P1176741822873677392.Spec : Prop :=
  ∀ n, P1176741822873677392.a n = A008748 n

end A008748

/-! ## A008748.P11950861420734014929

`round((asin(1)+∑[n])/3)`
-/

namespace A008748.P11950861420734014929
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Real.arcsin (1 : ℝ) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ)) / 3)

end

end A008748.P11950861420734014929

namespace A008748

/-- `round((asin(1)+∑[n])/3)` -/
def P11950861420734014929.Spec : Prop :=
  ∀ n, P11950861420734014929.a n = A008748 n

end A008748

/-! ## A008748.P7036610302142268743

`ceil((atan(1)+∑[n])/3)`
-/

namespace A008748.P7036610302142268743
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Real.arctan (1 : ℝ) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ)) / 3⌉

end

end A008748.P7036610302142268743

namespace A008748

/-- `ceil((atan(1)+∑[n])/3)` -/
def P7036610302142268743.Spec : Prop :=
  ∀ n, P7036610302142268743.a n = A008748 n

end A008748

/-! ## A008748.P5902242174491866431

`ceil(∑[n/3]-tan(3))`
-/

namespace A008748.P5902242174491866431
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((∑ j ∈ Finset.range (n + 1), f1 j : ℚ) : ℝ) - Real.tan (3 : ℝ)⌉

end

end A008748.P5902242174491866431

namespace A008748

/-- `ceil(∑[n/3]-tan(3))` -/
def P5902242174491866431.Spec : Prop :=
  ∀ n, P5902242174491866431.a n = A008748 n

end A008748

/-! ## A008748.P2080726201211284793

`round((∑[n]-tan(2))/3)`
-/

namespace A008748.P2080726201211284793
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ) - Real.tan (2 : ℝ)) / 3)

end

end A008748.P2080726201211284793

namespace A008748

/-- `round((∑[n]-tan(2))/3)` -/
def P2080726201211284793.Spec : Prop :=
  ∀ n, P2080726201211284793.a n = A008748 n

end A008748

/-! ## A008748.P2149390987689278692

`round(atan(1)+∑[n/3])`
-/

namespace A008748.P2149390987689278692
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.arctan (1 : ℝ) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℚ) : ℝ))

end

end A008748.P2149390987689278692

namespace A008748

/-- `round(atan(1)+∑[n/3])` -/
def P2149390987689278692.Spec : Prop :=
  ∀ n, P2149390987689278692.a n = A008748 n

end A008748

/-! ## A008748.P10293846987303889500

`ceil((cosh(1)+∑[n])/3)`
-/

namespace A008748.P10293846987303889500
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Real.cosh (1 : ℝ) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ)) / 3⌉

end

end A008748.P10293846987303889500

namespace A008748

/-- `ceil((cosh(1)+∑[n])/3)` -/
def P10293846987303889500.Spec : Prop :=
  ∀ n, P10293846987303889500.a n = A008748 n

end A008748

/-! ## A008748.P10309199290490564394

`round((cosh(1)+∑[n])/3)`
-/

namespace A008748.P10309199290490564394
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Real.cosh (1 : ℝ) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ)) / 3)

end

end A008748.P10309199290490564394

namespace A008748

/-- `round((cosh(1)+∑[n])/3)` -/
def P10309199290490564394.Spec : Prop :=
  ∀ n, P10309199290490564394.a n = A008748 n

end A008748

/-! ## A008748.P7918616277309767726

`ceil((sinh(1)+∑[n])/3)`
-/

namespace A008748.P7918616277309767726
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Real.sinh (1 : ℝ) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ)) / 3⌉

end

end A008748.P7918616277309767726

namespace A008748

/-- `ceil((sinh(1)+∑[n])/3)` -/
def P7918616277309767726.Spec : Prop :=
  ∀ n, P7918616277309767726.a n = A008748 n

end A008748

/-! ## A008748.P3232849920353296296

`ceil((tanh(3)+∑[n])/3)`
-/

namespace A008748.P3232849920353296296
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Real.tanh (3 : ℝ) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ)) / 3⌉

end

end A008748.P3232849920353296296

namespace A008748

/-- `ceil((tanh(3)+∑[n])/3)` -/
def P3232849920353296296.Spec : Prop :=
  ∀ n, P3232849920353296296.a n = A008748 n

end A008748

/-!
# A008749: Expansion of (1+x^6)/((1-x)*(1-x^2)*(1-x^3)).

The programs for A008749, the canonical program `A008749.P8595837798728956858` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008749 has offset 0).

The definition of A008749 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+x^6)/(1-x-x^2+x^4+x^5-x^6))` (program `A008749.P8595837798728956858`, by `A008749.P8595837798728956858.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A008749.P8595837798728956858

`ogf((1+x^6)/(1-x-x^2+x^4+x^5-x^6))`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A008749

/-- `ogf((1+x^6)/(1-x-x^2+x^4+x^5-x^6))` -/
def P8595837798728956858.Spec : Prop :=
  ∀ n, P8595837798728956858.a n = A008749 n

theorem P8595837798728956858.correct : P8595837798728956858.Spec := by
  intro n
  simp only [A008749]

end A008749

/-! ## A008749.P7248640808644701508

`a(n-1)+a(n-2)-a(n-4)-a(n-5)+a(n-6)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=3, a(4)=4, a(5)=5, a(6)=8`
-/

namespace A008749.P7248640808644701508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2, 3, 4, 5, 8] fun n a =>
  a (n - 1) + a (n - 2) - a (n - 4) - a (n - 5) + a (n - 6)

end

end A008749.P7248640808644701508

namespace A008749

/-- `a(n-1)+a(n-2)-a(n-4)-a(n-5)+a(n-6)` -/
def P7248640808644701508.Spec : Prop :=
  ∀ n, P7248640808644701508.a n = A008749 n

end A008749

/-! ## A008749.P11412389531402000627

`a(n-2)+2*floor(n/3)` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A008749.P11412389531402000627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  a (n - 2) + 2 * ⌊(n : ℚ) / 3⌋

end

end A008749.P11412389531402000627

namespace A008749

/-- `a(n-2)+2*floor(n/3)` -/
def P11412389531402000627.Spec : Prop :=
  ∀ n, P11412389531402000627.a n = A008749 n

end A008749

/-! ## A008749.P12946570757213536960

`a(n-3)-gcd(2, a(n-3))+n` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A008749.P12946570757213536960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  a (n - 3) - (Int.gcd 2 (a (n - 3)) : ℤ) + (n : ℤ)

end

end A008749.P12946570757213536960

namespace A008749

/-- `a(n-3)-gcd(2, a(n-3))+n` -/
def P12946570757213536960.Spec : Prop :=
  ∀ n, P12946570757213536960.a n = A008749 n

end A008749

/-! ## A008749.P2350113921219075884

`a(n-2)+a(n-3)-a(n-5)+2` with `a(0)=1, a(1)=1, a(2)=2, a(3)=3, a(4)=4, a(5)=5`
-/

namespace A008749.P2350113921219075884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2, 3, 4, 5] fun n a =>
  a (n - 2) + (a (n - 3) - a (n - 5)) + 2

end

end A008749.P2350113921219075884

namespace A008749

/-- `a(n-2)+a(n-3)-a(n-5)+2` -/
def P2350113921219075884.Spec : Prop :=
  ∀ n, P2350113921219075884.a n = A008749 n

end A008749

/-! ## A008749.P6944896925411100303

`A063195(n)+a(n-1)` with `a(0)=1`
-/

namespace A008749.P6944896925411100303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A063195 n + a (n - 1)

end

end A008749.P6944896925411100303

namespace A008749

/-- `A063195(n)+a(n-1)` -/
def P6944896925411100303.Spec : Prop :=
  ∀ n, P6944896925411100303.a n = A008749 n

end A008749

/-! ## A008749.P8011483063583581752

`∑[A063195(n*a(2%n))]` with `a(0)=1`
-/

namespace A008749.P8011483063583581752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A063195 ((n : ℤ) * f1 (2 % n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008749.P8011483063583581752

namespace A008749

/-- `∑[A063195(n*a(2%n))]` -/
def P8011483063583581752.Spec : Prop :=
  ∀ n, P8011483063583581752.a n = A008749 n

end A008749

/-! ## A008749.P7140503380891983925

`A097921(n)+1-a(n-1)` with `a(0)=1`
-/

namespace A008749.P7140503380891983925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A097921 n + (1 - a (n - 1))

end

end A008749.P7140503380891983925

namespace A008749

/-- `A097921(n)+1-a(n-1)` -/
def P7140503380891983925.Spec : Prop :=
  ∀ n, P7140503380891983925.a n = A008749 n

end A008749

/-! ## A008749.P7684939923654362586

`∑[A008611(n)]-floor(abs(1-n)/2)`
-/

namespace A008749.P7684939923654362586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ⌊(|1 - (n : ℤ)| : ℚ) / 2⌋

end

end A008749.P7684939923654362586

namespace A008749

/-- `∑[A008611(n)]-floor(abs(1-n)/2)` -/
def P7684939923654362586.Spec : Prop :=
  ∀ n, P7684939923654362586.a n = A008749 n

end A008749

/-! ## A008749.P14124803660035839537

`A053799(n)-A000982(n)`
-/

namespace A008749.P14124803660035839537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053799 n - A000982 n

end

end A008749.P14124803660035839537

namespace A008749

/-- `A053799(n)-A000982(n)` -/
def P14124803660035839537.Spec : Prop :=
  ∀ n, P14124803660035839537.a n = A008749 n

theorem P14124803660035839537.correct : P14124803660035839537.Spec := by
  intro n
  simp only [A008749, Nat.add_sub_cancel, A008749.P14124803660035839537.a, A008749.P8595837798728956858.a, A000982, A000982.P7286196366017051516.a, A053799, A053799.P904661431918655857.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A008749

/-! ## A008749.P4001338121378242327

`A033638(n)-A230059(n+1)`
-/

namespace A008749.P4001338121378242327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033638 n - A230059 (n + 1)

end

end A008749.P4001338121378242327

namespace A008749

/-- `A033638(n)-A230059(n+1)` -/
def P4001338121378242327.Spec : Prop :=
  ∀ n, P4001338121378242327.a n = A008749 n

end A008749

/-! ## A008749.P1760065325324942

`A333574(n+1)-A008810(n)`
-/

namespace A008749.P1760065325324942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333574 (n + 1) - A008810 n

end

end A008749.P1760065325324942

namespace A008749

/-- `A333574(n+1)-A008810(n)` -/
def P1760065325324942.Spec : Prop :=
  ∀ n, P1760065325324942.a n = A008749 n

end A008749

/-! ## A008749.P17274416687078658874

`A152947(n+1)-A337484(n)`
-/

namespace A008749.P17274416687078658874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152947 (n + 1) - A337484 n

end

end A008749.P17274416687078658874

namespace A008749

/-- `A152947(n+1)-A337484(n)` -/
def P17274416687078658874.Spec : Prop :=
  ∀ n, P17274416687078658874.a n = A008749 n

end A008749

/-! ## A008749.P16007372466029192405

`2*A001399(n)-A028310(n)`
-/

namespace A008749.P16007372466029192405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001399 n - A028310 n

end

end A008749.P16007372466029192405

namespace A008749

/-- `2*A001399(n)-A028310(n)` -/
def P16007372466029192405.Spec : Prop :=
  ∀ n, P16007372466029192405.a n = A008749 n

end A008749

/-! ## A008749.P10722743659294573471

`∑[A004277(∑[A115360(n)])-1]`
-/

namespace A008749.P10722743659294573471
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115360 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (∑ j ∈ Finset.range (n + 1), f2 j).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008749.P10722743659294573471

namespace A008749

/-- `∑[A004277(∑[A115360(n)])-1]` -/
def P10722743659294573471.Spec : Prop :=
  ∀ n, P10722743659294573471.a n = A008749 n

end A008749

/-! ## A008749.P15635204694561947190

`∑[2*A103221(n)]-A028310(n)`
-/

namespace A008749.P15635204694561947190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A103221 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A028310 n

end

end A008749.P15635204694561947190

namespace A008749

/-- `∑[2*A103221(n)]-A028310(n)` -/
def P15635204694561947190.Spec : Prop :=
  ∀ n, P15635204694561947190.a n = A008749 n

end A008749

/-! ## A008749.P2202480388990074543

`A186498(n+1)-A294732(n+2)`
-/

namespace A008749.P2202480388990074543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186498 (n + 1) - A294732 (n + 2)

end

end A008749.P2202480388990074543

namespace A008749

/-- `A186498(n+1)-A294732(n+2)` -/
def P2202480388990074543.Spec : Prop :=
  ∀ n, P2202480388990074543.a n = A008749 n

end A008749

/-! ## A008749.P16199000523688366265

`A186357(n+1)+1-A294732(n+2)`
-/

namespace A008749.P16199000523688366265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186357 (n + 1) + (1 - A294732 (n + 2))

end

end A008749.P16199000523688366265

namespace A008749

/-- `A186357(n+1)+1-A294732(n+2)` -/
def P16199000523688366265.Spec : Prop :=
  ∀ n, P16199000523688366265.a n = A008749 n

end A008749

/-! ## A008749.P15025934060600645659

`∑[A063195(n+1)]+1-A063195(n+1)`
-/

namespace A008749.P15025934060600645659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063195 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A063195 (n + 1))

end

end A008749.P15025934060600645659

namespace A008749

/-- `∑[A063195(n+1)]+1-A063195(n+1)` -/
def P15025934060600645659.Spec : Prop :=
  ∀ n, P15025934060600645659.a n = A008749 n

end A008749

/-! ## A008749.P16405708522504900969

`A001399(n)+A014591(n)-A065033(n)`
-/

namespace A008749.P16405708522504900969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001399 n + (A014591 n - A065033 n)

end

end A008749.P16405708522504900969

namespace A008749

/-- `A001399(n)+A014591(n)-A065033(n)` -/
def P16405708522504900969.Spec : Prop :=
  ∀ n, P16405708522504900969.a n = A008749 n

end A008749

/-!
# A008750: Expansion of (1+x^7)/((1-x)*(1-x^2)*(1-x^3)).

The programs for A008750, the canonical program `A008750.P9330105906852873146` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008750 has offset 0).

The definition of A008750 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+x^7)/(1-x-x^2+x^4+x^5-x^6))` (program `A008750.P9330105906852873146`, by `A008750.P9330105906852873146.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A008750.P4149855516098242020

`n-2+a(n-3)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=3, a(4)=4`
-/

namespace A008750.P4149855516098242020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2, 3, 4] fun n a =>
  (n : ℤ) - 2 + a (n - 3)

end

end A008750.P4149855516098242020

namespace A008750

/-- `n-2+a(n-3)` -/
def P4149855516098242020.Spec : Prop :=
  ∀ n, P4149855516098242020.a n = A008750 n

end A008750

/-! ## A008750.P9330105906852873146

`ogf((1+x^7)/(1-x-x^2+x^4+x^5-x^6))`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A008750

/-- `ogf((1+x^7)/(1-x-x^2+x^4+x^5-x^6))` -/
def P9330105906852873146.Spec : Prop :=
  ∀ n, P9330105906852873146.a n = A008750 n

theorem P9330105906852873146.correct : P9330105906852873146.Spec := by
  intro n
  simp only [A008750]

end A008750

/-! ## A008750.P2107390110111477468

`∑[floor(1/(n+1)+n/3)]`
-/

namespace A008750.P2107390110111477468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / (n + 1 : ℚ) + (n : ℚ) / 3⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008750.P2107390110111477468

namespace A008750

/-- `∑[floor(1/(n+1)+n/3)]` -/
def P2107390110111477468.Spec : Prop :=
  ∀ n, P2107390110111477468.a n = A008750 n

end A008750

/-! ## A008750.P4801031772827053086

`floor(a(n-1)+n/3)` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A008750.P4801031772827053086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  ⌊(a (n - 1) : ℚ) + (n : ℚ) / 3⌋

end

end A008750.P4801031772827053086

namespace A008750

/-- `floor(a(n-1)+n/3)` -/
def P4801031772827053086.Spec : Prop :=
  ∀ n, P4801031772827053086.a n = A008750 n

end A008750

/-! ## A008750.P17254804582733182042

`n-(2-a(n-3))` with `a(0)=1, a(1)=1, a(2)=2, a(3)=3, a(4)=4`
-/

namespace A008750.P17254804582733182042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2, 3, 4] fun n a =>
  (n : ℤ) - (2 - a (n - 3))

end

end A008750.P17254804582733182042

namespace A008750

/-- `n-(2-a(n-3))` -/
def P17254804582733182042.Spec : Prop :=
  ∀ n, P17254804582733182042.a n = A008750 n

end A008750

/-! ## A008750.P5500050377974441610

`ceil(A077169(n)/3)`
-/

namespace A008750.P5500050377974441610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A077169 n : ℚ) / 3⌉

end

end A008750.P5500050377974441610

namespace A008750

/-- `ceil(A077169(n)/3)` -/
def P5500050377974441610.Spec : Prop :=
  ∀ n, P5500050377974441610.a n = A008750 n

end A008750

/-! ## A008750.P3969907582636298006

`round((A097922(n)+1)/2)`
-/

namespace A008750.P3969907582636298006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A097922 n + 1 : ℚ) / 2)

end

end A008750.P3969907582636298006

namespace A008750

/-- `round((A097922(n)+1)/2)` -/
def P3969907582636298006.Spec : Prop :=
  ∀ n, P3969907582636298006.a n = A008750 n

end A008750

/-! ## A008750.P14894879509939573345

`∑[A002264(char[2]+n)]+1`
-/

namespace A008750.P14894879509939573345
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 ((if ∃ j, f2 j = n then 1 else 0) + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A008750.P14894879509939573345

namespace A008750

/-- `∑[A002264(char[2]+n)]+1` -/
def P14894879509939573345.Spec : Prop :=
  ∀ n, P14894879509939573345.a n = A008750 n

end A008750

/-! ## A008750.P13131862292946597380

`∑[∑[char[(n+1)*A157532(n+1)]]]+1`
-/

namespace A008750.P13131862292946597380
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A157532 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A008750.P13131862292946597380

namespace A008750

/-- `∑[∑[char[(n+1)*A157532(n+1)]]]+1` -/
def P13131862292946597380.Spec : Prop :=
  ∀ n, (P13131862292946597380.a n : ℤ) = A008750 n

end A008750

/-! ## A008750.P15431126493653200432

`A097922(n)-A007997(n+3)`
-/

namespace A008750.P15431126493653200432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097922 n - A007997 (n + 3)

end

end A008750.P15431126493653200432

namespace A008750

/-- `A097922(n)-A007997(n+3)` -/
def P15431126493653200432.Spec : Prop :=
  ∀ n, P15431126493653200432.a n = A008750 n

end A008750

/-! ## A008750.P7992559420194478030

`A008751(n+1)+A001399(n)-A001399(n+1)`
-/

namespace A008750.P7992559420194478030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008751 (n + 1) + (A001399 n - A001399 (n + 1))

end

end A008750.P7992559420194478030

namespace A008750

/-- `A008751(n+1)+A001399(n)-A001399(n+1)` -/
def P7992559420194478030.Spec : Prop :=
  ∀ n, P7992559420194478030.a n = A008750 n

end A008750

/-! ## A008750.P9114905988666603903

`round(A288937(n+2)/3)`
-/

namespace A008750.P9114905988666603903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A288937 (n + 2) : ℚ) / 3)

end

end A008750.P9114905988666603903

namespace A008750

/-- `round(A288937(n+2)/3)` -/
def P9114905988666603903.Spec : Prop :=
  ∀ n, P9114905988666603903.a n = A008750 n

end A008750

/-! ## A008750.P7405851900201330114

`A289207(a(n-3))+n` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A008750.P7405851900201330114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  A289207 (a (n - 3)).toNat + (n : ℤ)

end

end A008750.P7405851900201330114

namespace A008750

/-- `A289207(a(n-3))+n` -/
def P7405851900201330114.Spec : Prop :=
  ∀ n, P7405851900201330114.a n = A008750 n

end A008750

/-! ## A008750.P7617446356952387612

`A008619(A097921(n))`
-/

namespace A008750.P7617446356952387612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A097921 n).toNat

end

end A008750.P7617446356952387612

namespace A008750

/-- `A008619(A097921(n))` -/
def P7617446356952387612.Spec : Prop :=
  ∀ n, P7617446356952387612.a n = A008750 n

end A008750

/-! ## A008750.P9650206137782861952

`A008619(A097922(n))`
-/

namespace A008750.P9650206137782861952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A097922 n).toNat

end

end A008750.P9650206137782861952

namespace A008750

/-- `A008619(A097922(n))` -/
def P9650206137782861952.Spec : Prop :=
  ∀ n, P9650206137782861952.a n = A008750 n

end A008750

/-! ## A008750.P13558593014205372154

`A004525(A097921(n)+2)`
-/

namespace A008750.P13558593014205372154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A097921 n + 2).toNat

end

end A008750.P13558593014205372154

namespace A008750

/-- `A004525(A097921(n)+2)` -/
def P13558593014205372154.Spec : Prop :=
  ∀ n, P13558593014205372154.a n = A008750 n

end A008750

/-! ## A008750.P10353091655038217928

`A004526(A097922(n)+2)`
-/

namespace A008750.P10353091655038217928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A097922 n + 2).toNat

end

end A008750.P10353091655038217928

namespace A008750

/-- `A004526(A097922(n)+2)` -/
def P10353091655038217928.Spec : Prop :=
  ∀ n, P10353091655038217928.a n = A008750 n

end A008750

/-! ## A008750.P6041007812018850081

`A249738(A097921(n)+2)+1`
-/

namespace A008750.P6041007812018850081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249738 (A097921 n + 2).toNat + 1

end

end A008750.P6041007812018850081

namespace A008750

/-- `A249738(A097921(n)+2)+1` -/
def P6041007812018850081.Spec : Prop :=
  ∀ n, P6041007812018850081.a n = A008750 n

end A008750

/-! ## A008750.P7199498629074078269

`A131055(A097922(n)+2)/2`
-/

namespace A008750.P7199498629074078269
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A131055 (A097922 n + 2).toNat : ℚ) / 2

end

end A008750.P7199498629074078269

namespace A008750

/-- `A131055(A097922(n)+2)/2` -/
def P7199498629074078269.Spec : Prop :=
  ∀ n, P7199498629074078269.a n = (A008750 n : ℚ)

end A008750

/-!
# A008751: Expansion of (1+x^8)/((1-x)*(1-x^2)*(1-x^3)).

The programs for A008751, the canonical program `A008751.P11410051844334841084` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008751 has offset 0).

The definition of A008751 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+x^8)/(1-x-x^2+x^4+x^5-x^6))` (program `A008751.P11410051844334841084`, by `A008751.P11410051844334841084.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A008751.P11410051844334841084

`ogf((1+x^8)/(1-x-x^2+x^4+x^5-x^6))`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A008751

/-- `ogf((1+x^8)/(1-x-x^2+x^4+x^5-x^6))` -/
def P11410051844334841084.Spec : Prop :=
  ∀ n, P11410051844334841084.a n = A008751 n

theorem P11410051844334841084.correct : P11410051844334841084.Spec := by
  intro n
  simp only [A008751]

end A008751

/-! ## A008751.P4954051745703612900

`a(n-2)+a(n-3)-a(n-5)+2` with `a(0)=1, a(1)=1, a(2)=2, a(3)=3, a(4)=4, a(5)=5, a(6)=7, a(7)=8`
-/

namespace A008751.P4954051745703612900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2, 3, 4, 5, 7, 8] fun n a =>
  a (n - 2) + a (n - 3) - a (n - 5) + 2

end

end A008751.P4954051745703612900

namespace A008751

/-- `a(n-2)+a(n-3)-a(n-5)+2` -/
def P4954051745703612900.Spec : Prop :=
  ∀ n, P4954051745703612900.a n = A008751 n

end A008751

/-! ## A008751.P5526707668164477562

`∑[A131737(A028242(n))]`
-/

namespace A008751.P5526707668164477562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131737 (A028242 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008751.P5526707668164477562

namespace A008751

/-- `∑[A131737(A028242(n))]` -/
def P5526707668164477562.Spec : Prop :=
  ∀ n, P5526707668164477562.a n = A008751 n

end A008751

/-! ## A008751.P16816460428930865393

`∑[A131737(Δ[A004652(n)])]`
-/

namespace A008751.P16816460428930865393
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004652 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131737 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008751.P16816460428930865393

namespace A008751

/-- `∑[A131737(Δ[A004652(n)])]` -/
def P16816460428930865393.Spec : Prop :=
  ∀ n, P16816460428930865393.a n = A008751 n

end A008751

/-! ## A008751.P834243548959905541

`A008620(n)+∑[A004273(A008615(n))]`
-/

namespace A008751.P834243548959905541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A008615 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008751.P834243548959905541

namespace A008751

/-- `A008620(n)+∑[A004273(A008615(n))]` -/
def P834243548959905541.Spec : Prop :=
  ∀ n, P834243548959905541.a n = A008751 n

end A008751

/-! ## A008751.P10339106530673872981

`floor(sqrt(A008752(n+1)*A008752(n)))`
-/

namespace A008751.P10339106530673872981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A008752 (n + 1) * A008752 n)

end

end A008751.P10339106530673872981

namespace A008751

/-- `floor(sqrt(A008752(n+1)*A008752(n)))` -/
def P10339106530673872981.Spec : Prop :=
  ∀ n, P10339106530673872981.a n = A008751 n

end A008751

/-! ## A008751.P4222749498228604355

`∑[A131737(A065033(n+1)-n%2)]`
-/

namespace A008751.P4222749498228604355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131737 (A065033 (n + 1) - ((n % 2 : ℕ) : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008751.P4222749498228604355

namespace A008751

/-- `∑[A131737(A065033(n+1)-n%2)]` -/
def P4222749498228604355.Spec : Prop :=
  ∀ n, P4222749498228604355.a n = A008751 n

end A008751

/-! ## A008751.P13691134933554249718

`A008757(n+6)-(n+6)`
-/

namespace A008751.P13691134933554249718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008757 (n + 6) - (n + 6 : ℤ)

end

end A008751.P13691134933554249718

namespace A008751

/-- `A008757(n+6)-(n+6)` -/
def P13691134933554249718.Spec : Prop :=
  ∀ n, P13691134933554249718.a n = A008751 n

end A008751

/-! ## A008751.P2074108707811150041

`A267808(A028309(n))`
-/

namespace A008751.P2074108707811150041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267808 (A028309 n).toNat

end

end A008751.P2074108707811150041

namespace A008751

/-- `A267808(A028309(n))` -/
def P2074108707811150041.Spec : Prop :=
  ∀ n, P2074108707811150041.a n = A008751 n

end A008751

/-! ## A008751.P1619060793364026049

`A004396(record[A330715(A052938(n))])`
-/

namespace A008751.P1619060793364026049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330715 (A052938 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A008751.P1619060793364026049

namespace A008751

/-- `A004396(record[A330715(A052938(n))])` -/
def P1619060793364026049.Spec : Prop :=
  ∀ n, P1619060793364026049.a n = A008751 n

end A008751

/-! ## A008751.P9032874204210122106

`A008620(A288937(n+1)+A004526(n))`
-/

namespace A008751.P9032874204210122106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A288937 (n + 1) + A004526 n).toNat

end

end A008751.P9032874204210122106

namespace A008751

/-- `A008620(A288937(n+1)+A004526(n))` -/
def P9032874204210122106.Spec : Prop :=
  ∀ n, P9032874204210122106.a n = A008751 n

end A008751

/-!
# A008752: Expansion of (1+x^9)/((1-x)*(1-x^2)*(1-x^3)).

The programs for A008752, the canonical program `A008752.P5957118646782105011` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008752 has offset 0).

The definition of A008752 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+x^9)/(1-x-x^2+x^4+x^5-x^6))` (program `A008752.P5957118646782105011`, by `A008752.P5957118646782105011.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A008752.P5957118646782105011

`ogf((1+x^9)/(1-x-x^2+x^4+x^5-x^6))`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A008752

/-- `ogf((1+x^9)/(1-x-x^2+x^4+x^5-x^6))` -/
def P5957118646782105011.Spec : Prop :=
  ∀ n, P5957118646782105011.a n = A008752 n

theorem P5957118646782105011.correct : P5957118646782105011.Spec := by
  intro n
  simp only [A008752]

end A008752

/-! ## A008752.P14745864576108330948

`2*a(n-1)-a(n-2)+a(n-3)-2*a(n-4)+a(n-5)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=3, a(4)=4, a(5)=5, a(6)=7, a(7)=8, a(8)=10`
-/

namespace A008752.P14745864576108330948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2, 3, 4, 5, 7, 8, 10] fun n a =>
  2 * a (n - 1) - a (n - 2) + a (n - 3) - 2 * a (n - 4) + a (n - 5)

end

end A008752.P14745864576108330948

namespace A008752

/-- `2*a(n-1)-a(n-2)+a(n-3)-2*a(n-4)+a(n-5)` -/
def P14745864576108330948.Spec : Prop :=
  ∀ n, P14745864576108330948.a n = A008752 n

end A008752

/-! ## A008752.P4368125082925192327

`floor(∑[n-2%a(n-1)]/3)` with `a(0)=3, a(1)=2`
-/

namespace A008752.P4368125082925192327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3, 2] fun n f1 =>
  (n : ℤ) - Int.tmod 2 (f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 3⌋

end

end A008752.P4368125082925192327

namespace A008752

/-- `floor(∑[n-2%a(n-1)]/3)` -/
def P4368125082925192327.Spec : Prop :=
  ∀ n, P4368125082925192327.a n = A008752 n

end A008752

/-! ## A008752.P8514409057398887789

`∑[a(n-3)+1]` with `a(0)=1, a(1)=0, a(2)=1, a(3)=1, a(4)=1, a(5)=1, a(6)=2, a(7)=1`
-/

namespace A008752.P8514409057398887789
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 1, 1, 1, 1, 2, 1] fun n f1 =>
  f1 (n - 3) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008752.P8514409057398887789

namespace A008752

/-- `∑[a(n-3)+1]` -/
def P8514409057398887789.Spec : Prop :=
  ∀ n, (P8514409057398887789.a n : ℤ) = A008752 n

end A008752

/-! ## A008752.P14279705519057575871

`a(n-2)+2*floor(n/3)-1` with `a(0)=1, a(1)=1, a(2)=2, a(3)=3, a(4)=4, a(5)=5`
-/

namespace A008752.P14279705519057575871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2, 3, 4, 5] fun n a =>
  a (n - 2) + 2 * ⌊(n : ℚ) / 3⌋ - 1

end

end A008752.P14279705519057575871

namespace A008752

/-- `a(n-2)+2*floor(n/3)-1` -/
def P14279705519057575871.Spec : Prop :=
  ∀ n, P14279705519057575871.a n = A008752 n

end A008752

/-! ## A008752.P15574314522876927326

`A053799(n)-A054254(n)`
-/

namespace A008752.P15574314522876927326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053799 n - A054254 n

end

end A008752.P15574314522876927326

namespace A008752

/-- `A053799(n)-A054254(n)` -/
def P15574314522876927326.Spec : Prop :=
  ∀ n, P15574314522876927326.a n = A008752 n

end A008752

/-! ## A008752.P1707649412427976530

`A007997(A007997(n+4)-a(n-1)+3)+n` with `a(0)=1`
-/

namespace A008752.P1707649412427976530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A007997 (A007997 (n + 4) - a (n - 1) + 3).toNat + (n : ℤ)

end

end A008752.P1707649412427976530

namespace A008752

/-- `A007997(A007997(n+4)-a(n-1)+3)+n` -/
def P1707649412427976530.Spec : Prop :=
  ∀ n, P1707649412427976530.a n = A008752 n

end A008752

/-! ## A008752.P3131956291651880912

`A008758(n+6)-(n+6)`
-/

namespace A008752.P3131956291651880912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008758 (n + 6) - (n + 6 : ℤ)

end

end A008752.P3131956291651880912

namespace A008752

/-- `A008758(n+6)-(n+6)` -/
def P3131956291651880912.Spec : Prop :=
  ∀ n, P3131956291651880912.a n = A008752 n

end A008752

/-! ## A008752.P3718387825226510477

`record[A008761(n)-a(n-1)]-a(n-1)` with `a(0)=1`
-/

namespace A008752.P3718387825226510477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A008761 n - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - a (n - 1)

end

end A008752.P3718387825226510477

namespace A008752

/-- `record[A008761(n)-a(n-1)]-a(n-1)` -/
def P3718387825226510477.Spec : Prop :=
  ∀ n, P3718387825226510477.a n = A008752 n

end A008752

/-!
# A008753: Expansion of (1+x^10)/((1-x)*(1-x^2)*(1-x^3)).

The programs for A008753, the canonical program `A008753.P16776560468628461615` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008753 has offset 0).

The definition of A008753 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+x^10)/(1-x-x^2+x^4+x^5-x^6))` (program `A008753.P16776560468628461615`, by `A008753.P16776560468628461615.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A008753.P16776560468628461615

`ogf((1+x^10)/(1-x-x^2+x^4+x^5-x^6))`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A008753

/-- `ogf((1+x^10)/(1-x-x^2+x^4+x^5-x^6))` -/
def P16776560468628461615.Spec : Prop :=
  ∀ n, P16776560468628461615.a n = A008753 n

theorem P16776560468628461615.correct : P16776560468628461615.Spec := by
  intro n
  simp only [A008753]

end A008753

/-! ## A008753.P1442134875257087872

`round(sqrt(A008751(n)*A008755(n)))`
-/

namespace A008753.P1442134875257087872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A008751 n * A008755 n : ℝ))

end

end A008753.P1442134875257087872

namespace A008753

/-- `round(sqrt(A008751(n)*A008755(n)))` -/
def P1442134875257087872.Spec : Prop :=
  ∀ n, P1442134875257087872.a n = A008753 n

end A008753

/-! ## A008753.P1046397937723757581

`∑[A004525(A004275(A051274(n)))]`
-/

namespace A008753.P1046397937723757581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A004275 (A051274 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008753.P1046397937723757581

namespace A008753

/-- `∑[A004525(A004275(A051274(n)))]` -/
def P1046397937723757581.Spec : Prop :=
  ∀ n, P1046397937723757581.a n = A008753 n

end A008753

/-! ## A008753.P5669211457136873765

`A008754(n+1)-A103221(n+1)`
-/

namespace A008753.P5669211457136873765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008754 (n + 1) - A103221 (n + 1)

end

end A008753.P5669211457136873765

namespace A008753

/-- `A008754(n+1)-A103221(n+1)` -/
def P5669211457136873765.Spec : Prop :=
  ∀ n, P5669211457136873765.a n = A008753 n

end A008753

/-! ## A008753.P3889853409643831944

`A008756(n+3)-A123108(n+5)`
-/

namespace A008753.P3889853409643831944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008756 (n + 3) - A123108 (n + 5)

end

end A008753.P3889853409643831944

namespace A008753

/-- `A008756(n+3)-A123108(n+5)` -/
def P3889853409643831944.Spec : Prop :=
  ∀ n, P3889853409643831944.a n = A008753 n

end A008753

/-! ## A008753.P11920970178602585420

`A008759(n+6)-(n+6)`
-/

namespace A008753.P11920970178602585420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008759 (n + 6) - (n + 6 : ℤ)

end

end A008753.P11920970178602585420

namespace A008753

/-- `A008759(n+6)-(n+6)` -/
def P11920970178602585420.Spec : Prop :=
  ∀ n, P11920970178602585420.a n = A008753 n

end A008753

/-! ## A008753.P4034184693438878540

`∑[A055086(A004396(A008742(n)))]`
-/

namespace A008753.P4034184693438878540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055086 (A004396 (A008742 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008753.P4034184693438878540

namespace A008753

/-- `∑[A055086(A004396(A008742(n)))]` -/
def P4034184693438878540.Spec : Prop :=
  ∀ n, P4034184693438878540.a n = A008753 n

end A008753

/-!
# A008754: Expansion of (1+x^11)/((1-x)*(1-x^2)*(1-x^3)).

The programs for A008754, the canonical program `A008754.P9844238612785845100` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008754 has offset 0).

The definition of A008754 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+x^11)/(1-x-x^2+x^4+x^5-x^6))` (program `A008754.P9844238612785845100`, by `A008754.P9844238612785845100.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A008754.P9844238612785845100

`ogf((1+x^11)/(1-x-x^2+x^4+x^5-x^6))`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A008754

/-- `ogf((1+x^11)/(1-x-x^2+x^4+x^5-x^6))` -/
def P9844238612785845100.Spec : Prop :=
  ∀ n, P9844238612785845100.a n = A008754 n

theorem P9844238612785845100.correct : P9844238612785845100.Spec := by
  intro n
  simp only [A008754]

end A008754

/-! ## A008754.P10781195104760174792

`floor(∑[n-3%a(n-2)]/3)` with `a(0)=3, a(1)=2`
-/

namespace A008754.P10781195104760174792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3, 2] fun n f1 =>
  (n : ℤ) - Int.tmod 3 (f1 (n - 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 3⌋

end

end A008754.P10781195104760174792

namespace A008754

/-- `floor(∑[n-3%a(n-2)]/3)` -/
def P10781195104760174792.Spec : Prop :=
  ∀ n, P10781195104760174792.a n = A008754 n

end A008754

/-! ## A008754.P13994660583405306841

`∑[a(n-3)+1]` with `a(0)=1, a(1)=0, a(2)=1, a(3)=1, a(4)=1, a(5)=1, a(6)=2, a(7)=1, a(8)=2, a(9)=2`
-/

namespace A008754.P13994660583405306841
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 1, 1, 1, 1, 2, 1, 2, 2] fun n f1 =>
  f1 (n - 3) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008754.P13994660583405306841

namespace A008754

/-- `∑[a(n-3)+1]` -/
def P13994660583405306841.Spec : Prop :=
  ∀ n, (P13994660583405306841.a n : ℤ) = A008754 n

end A008754

/-! ## A008754.P8206066409548071879

`round(sqrt(A008752(n)*A008756(n)))`
-/

namespace A008754.P8206066409548071879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A008752 n * A008756 n : ℝ))

end

end A008754.P8206066409548071879

namespace A008754

/-- `round(sqrt(A008752(n)*A008756(n)))` -/
def P8206066409548071879.Spec : Prop :=
  ∀ n, P8206066409548071879.a n = A008754 n

end A008754

/-! ## A008754.P13537083592670241259

`A008756(n)+A004526(A008752(n)-A008756(n))`
-/

namespace A008754.P13537083592670241259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008756 n + A004526 (A008752 n - A008756 n).toNat

end

end A008754.P13537083592670241259

namespace A008754

/-- `A008756(n)+A004526(A008752(n)-A008756(n))` -/
def P13537083592670241259.Spec : Prop :=
  ∀ n, P13537083592670241259.a n = A008754 n

end A008754

/-! ## A008754.P95516242814424298

`A008755(n+1)-A103221(n+1)`
-/

namespace A008754.P95516242814424298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008755 (n + 1) - A103221 (n + 1)

end

end A008754.P95516242814424298

namespace A008754

/-- `A008755(n+1)-A103221(n+1)` -/
def P95516242814424298.Spec : Prop :=
  ∀ n, P95516242814424298.a n = A008754 n

end A008754

/-! ## A008754.P14967653534099640855

`A008760(n+6)-(n+6)`
-/

namespace A008754.P14967653534099640855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008760 (n + 6) - (n + 6 : ℤ)

end

end A008754.P14967653534099640855

namespace A008754

/-- `A008760(n+6)-(n+6)` -/
def P14967653534099640855.Spec : Prop :=
  ∀ n, P14967653534099640855.a n = A008754 n

end A008754

/-! ## A008754.P6209956429105075502

`A004526(A008756(n)+A008752(n))`
-/

namespace A008754.P6209956429105075502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A008756 n + A008752 n).toNat

end

end A008754.P6209956429105075502

namespace A008754

/-- `A004526(A008756(n)+A008752(n))` -/
def P6209956429105075502.Spec : Prop :=
  ∀ n, P6209956429105075502.a n = A008754 n

end A008754

/-!
# A008755: Expansion of (1+x^12)/((1-x)*(1-x^2)*(1-x^3)).

The programs for A008755, the canonical program `A008755.P13761321108530026530` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008755 has offset 0).

The definition of A008755 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+x^12)/(1-x-x^2+x^4+x^5-x^6))` (program `A008755.P13761321108530026530`, by `A008755.P13761321108530026530.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A008755.P13761321108530026530

`ogf((1+x^12)/(1-x-x^2+x^4+x^5-x^6))`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A008755

/-- `ogf((1+x^12)/(1-x-x^2+x^4+x^5-x^6))` -/
def P13761321108530026530.Spec : Prop :=
  ∀ n, P13761321108530026530.a n = A008755 n

theorem P13761321108530026530.correct : P13761321108530026530.Spec := by
  intro n
  simp only [A008755]

end A008755

/-! ## A008755.P14220299925981399534

`∑[A004275(A103221(n))]`
-/

namespace A008755.P14220299925981399534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A103221 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008755.P14220299925981399534

namespace A008755

/-- `∑[A004275(A103221(n))]` -/
def P14220299925981399534.Spec : Prop :=
  ∀ n, P14220299925981399534.a n = A008755 n

end A008755

/-! ## A008755.P9640726761044605664

`∑[A004275(∑[A115360(n)])]`
-/

namespace A008755.P9640726761044605664
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115360 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008755.P9640726761044605664

namespace A008755

/-- `∑[A004275(∑[A115360(n)])]` -/
def P9640726761044605664.Spec : Prop :=
  ∀ n, P9640726761044605664.a n = A008755 n

end A008755

/-! ## A008755.P7905853417950224580

`∑[A004275(A008615(n+2))]`
-/

namespace A008755.P7905853417950224580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A008615 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008755.P7905853417950224580

namespace A008755

/-- `∑[A004275(A008615(n+2))]` -/
def P7905853417950224580.Spec : Prop :=
  ∀ n, P7905853417950224580.a n = A008755 n

end A008755

/-! ## A008755.P17813346396773053914

`∑[A004275(A008679(2*n))]`
-/

namespace A008755.P17813346396773053914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A008679 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008755.P17813346396773053914

namespace A008755

/-- `∑[A004275(A008679(2*n))]` -/
def P17813346396773053914.Spec : Prop :=
  ∀ n, P17813346396773053914.a n = A008755 n

end A008755

/-! ## A008755.P14144593004184813895

`∑[A004275(A266755(2*n)-A266755(2*n+1))]`
-/

namespace A008755.P14144593004184813895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A266755 (2 * n) - A266755 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008755.P14144593004184813895

namespace A008755

/-- `∑[A004275(A266755(2*n)-A266755(2*n+1))]` -/
def P14144593004184813895.Spec : Prop :=
  ∀ n, P14144593004184813895.a n = A008755 n

end A008755

/-! ## A008755.P4417796211206792083

`∑[A004275(Δ[A266755(2*n+1)])]`
-/

namespace A008755.P4417796211206792083
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266755 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008755.P4417796211206792083

namespace A008755

/-- `∑[A004275(Δ[A266755(2*n+1)])]` -/
def P4417796211206792083.Spec : Prop :=
  ∀ n, P4417796211206792083.a n = A008755 n

end A008755

/-!
# A008756: Expansion of (1+x^13)/((1-x)*(1-x^2)*(1-x^3)).

The programs for A008756, the canonical program `A008756.P10651659776778105241` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008756 has offset 0).

The definition of A008756 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+x^13)/(1-x-x^2+x^4+x^5-x^6))` (program `A008756.P10651659776778105241`, by `A008756.P10651659776778105241.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A008756.P10651659776778105241

`ogf((1+x^13)/(1-x-x^2+x^4+x^5-x^6))`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A008756

/-- `ogf((1+x^13)/(1-x-x^2+x^4+x^5-x^6))` -/
def P10651659776778105241.Spec : Prop :=
  ∀ n, P10651659776778105241.a n = A008756 n

theorem P10651659776778105241.correct : P10651659776778105241.Spec := by
  intro n
  simp only [A008756]

end A008756

/-! ## A008756.P6894392132764236456

`round(sqrt(A008754(n)*A008758(n)))`
-/

namespace A008756.P6894392132764236456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A008754 n * A008758 n : ℝ))

end

end A008756.P6894392132764236456

namespace A008756

/-- `round(sqrt(A008754(n)*A008758(n)))` -/
def P6894392132764236456.Spec : Prop :=
  ∀ n, P6894392132764236456.a n = A008756 n

end A008756

/-! ## A008756.P14775856774063059130

`A289207(A008615(n+1))+A008757(n)`
-/

namespace A008756.P14775856774063059130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A008615 (n + 1)).toNat + A008757 n

end

end A008756.P14775856774063059130

namespace A008756

/-- `A289207(A008615(n+1))+A008757(n)` -/
def P14775856774063059130.Spec : Prop :=
  ∀ n, P14775856774063059130.a n = A008756 n

end A008756

/-! ## A008756.P6176320438107852107

`A008757(n+1)-Δ[A001399(n)]`
-/

namespace A008756.P6176320438107852107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001399 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008757 (n + 1) - (f1 (n + 1) - f1 n)

end

end A008756.P6176320438107852107

namespace A008756

/-- `A008757(n+1)-Δ[A001399(n)]` -/
def P6176320438107852107.Spec : Prop :=
  ∀ n, P6176320438107852107.a n = A008756 n

end A008756

/-! ## A008756.P589004720712534894

`A008757(n+1)-A103221(n+1)`
-/

namespace A008756.P589004720712534894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008757 (n + 1) - A103221 (n + 1)

end

end A008756.P589004720712534894

namespace A008756

/-- `A008757(n+1)-A103221(n+1)` -/
def P589004720712534894.Spec : Prop :=
  ∀ n, P589004720712534894.a n = A008756 n

end A008756

/-! ## A008756.P13841128156487621327

`∑[A103221(comp[2*n+13])]`
-/

namespace A008756.P13841128156487621327
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 13

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008756.P13841128156487621327

namespace A008756

/-- `∑[A103221(comp[2*n+13])]` -/
def P13841128156487621327.Spec : Prop :=
  ∀ n, P13841128156487621327.a n = A008756 n

end A008756

/-! ## A008756.P8870166162736659606

`A008679(2*n)+∑[A004275(A008679(2*n+1))]`
-/

namespace A008756.P8870166162736659606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A008679 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008679 (2 * n) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008756.P8870166162736659606

namespace A008756

/-- `A008679(2*n)+∑[A004275(A008679(2*n+1))]` -/
def P8870166162736659606.Spec : Prop :=
  ∀ n, P8870166162736659606.a n = A008756 n

end A008756

/-!
# A008757: Expansion of (1+x^14)/((1-x)*(1-x^2)*(1-x^3)).

The programs for A008757, the canonical program `A008757.P8393934922688913492` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008757 has offset 0).

The definition of A008757 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+x^14)/(1-x-x^2+x^4+x^5-x^6))` (program `A008757.P8393934922688913492`, by `A008757.P8393934922688913492.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A008757.P8393934922688913492

`ogf((1+x^14)/(1-x-x^2+x^4+x^5-x^6))`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A008757

/-- `ogf((1+x^14)/(1-x-x^2+x^4+x^5-x^6))` -/
def P8393934922688913492.Spec : Prop :=
  ∀ n, P8393934922688913492.a n = A008757 n

theorem P8393934922688913492.correct : P8393934922688913492.Spec := by
  intro n
  simp only [A008757]

end A008757

/-! ## A008757.P9119759202089282376

`round(sqrt(A008755(n)*A008759(n)))`
-/

namespace A008757.P9119759202089282376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A008755 n * A008759 n : ℝ))

end

end A008757.P9119759202089282376

namespace A008757

/-- `round(sqrt(A008755(n)*A008759(n)))` -/
def P9119759202089282376.Spec : Prop :=
  ∀ n, P9119759202089282376.a n = A008757 n

end A008757

/-! ## A008757.P9408197415117862750

`A289207(A008615(n))+A008758(n)`
-/

namespace A008757.P9408197415117862750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A008615 n).toNat + A008758 n

end

end A008757.P9408197415117862750

namespace A008757

/-- `A289207(A008615(n))+A008758(n)` -/
def P9408197415117862750.Spec : Prop :=
  ∀ n, P9408197415117862750.a n = A008757 n

end A008757

/-! ## A008757.P4713174487264316010

`A008620(n)+∑[A004275(A008615(n))]`
-/

namespace A008757.P4713174487264316010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A008615 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008757.P4713174487264316010

namespace A008757

/-- `A008620(n)+∑[A004275(A008615(n))]` -/
def P4713174487264316010.Spec : Prop :=
  ∀ n, P4713174487264316010.a n = A008757 n

end A008757

/-! ## A008757.P17941287146517061251

`A001399(n)+∑[A289207(A008615(n))]`
-/

namespace A008757.P17941287146517061251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A008615 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001399 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008757.P17941287146517061251

namespace A008757

/-- `A001399(n)+∑[A289207(A008615(n))]` -/
def P17941287146517061251.Spec : Prop :=
  ∀ n, P17941287146517061251.a n = A008757 n

end A008757

/-! ## A008757.P9803983208179196472

`∑[A289207(A008615(n))+A103221(n)]`
-/

namespace A008757.P9803983208179196472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A008615 n).toNat + A103221 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008757.P9803983208179196472

namespace A008757

/-- `∑[A289207(A008615(n))+A103221(n)]` -/
def P9803983208179196472.Spec : Prop :=
  ∀ n, P9803983208179196472.a n = A008757 n

end A008757

/-!
# A008758: Expansion of (1+x^15)/((1-x)*(1-x^2)*(1-x^3)).

The programs for A008758, the canonical program `A008758.P11545390599375778860` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008758 has offset 0).

The definition of A008758 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+x^15)/(1-x-x^2+x^4+x^5-x^6))` (program `A008758.P11545390599375778860`, by `A008758.P11545390599375778860.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A008758.P11545390599375778860

`ogf((1+x^15)/(1-x-x^2+x^4+x^5-x^6))`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A008758

/-- `ogf((1+x^15)/(1-x-x^2+x^4+x^5-x^6))` -/
def P11545390599375778860.Spec : Prop :=
  ∀ n, P11545390599375778860.a n = A008758 n

theorem P11545390599375778860.correct : P11545390599375778860.Spec := by
  intro n
  simp only [A008758]

end A008758

/-! ## A008758.P12858743690567284133

`round(sqrt(A008756(n)*A008760(n)))`
-/

namespace A008758.P12858743690567284133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A008756 n * A008760 n : ℝ))

end

end A008758.P12858743690567284133

namespace A008758

/-- `round(sqrt(A008756(n)*A008760(n)))` -/
def P12858743690567284133.Spec : Prop :=
  ∀ n, P12858743690567284133.a n = A008758 n

end A008758

/-! ## A008758.P2693039942539249926

`∑[A110654(A004276(A008611(n)))]`
-/

namespace A008758.P2693039942539249926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A004276 (A008611 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008758.P2693039942539249926

namespace A008758

/-- `∑[A110654(A004276(A008611(n)))]` -/
def P2693039942539249926.Spec : Prop :=
  ∀ n, P2693039942539249926.a n = A008758 n

end A008758

/-! ## A008758.P10616767318556513049

`A008757(n)-A289207(A008615(n))`
-/

namespace A008758.P10616767318556513049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008757 n - A289207 (A008615 n).toNat

end

end A008758.P10616767318556513049

namespace A008758

/-- `A008757(n)-A289207(A008615(n))` -/
def P10616767318556513049.Spec : Prop :=
  ∀ n, P10616767318556513049.a n = A008758 n

end A008758

/-! ## A008758.P2262851560605684244

`A008760(n)+A004526(A008756(n)-A008760(n))`
-/

namespace A008758.P2262851560605684244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008760 n + A004526 (A008756 n - A008760 n).toNat

end

end A008758.P2262851560605684244

namespace A008758

/-- `A008760(n)+A004526(A008756(n)-A008760(n))` -/
def P2262851560605684244.Spec : Prop :=
  ∀ n, P2262851560605684244.a n = A008758 n

end A008758

/-! ## A008758.P17925353004938870573

`A008759(n+1)-Δ[A001399(n)]`
-/

namespace A008758.P17925353004938870573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001399 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008759 (n + 1) - (f1 (n + 1) - f1 n)

end

end A008758.P17925353004938870573

namespace A008758

/-- `A008759(n+1)-Δ[A001399(n)]` -/
def P17925353004938870573.Spec : Prop :=
  ∀ n, P17925353004938870573.a n = A008758 n

end A008758

/-! ## A008758.P16694061586767916238

`A008761(n+3)-A008619(n+3)`
-/

namespace A008758.P16694061586767916238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008761 (n + 3) - A008619 (n + 3)

end

end A008758.P16694061586767916238

namespace A008758

/-- `A008761(n+3)-A008619(n+3)` -/
def P16694061586767916238.Spec : Prop :=
  ∀ n, P16694061586767916238.a n = A008758 n

end A008758

/-! ## A008758.P2601492170340758676

`A004526(A008760(n)+A008756(n))`
-/

namespace A008758.P2601492170340758676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A008760 n + A008756 n).toNat

end

end A008758.P2601492170340758676

namespace A008758

/-- `A004526(A008760(n)+A008756(n))` -/
def P2601492170340758676.Spec : Prop :=
  ∀ n, P2601492170340758676.a n = A008758 n

end A008758

/-! ## A008758.P9590272295860415538

`A008619(A008760(n)+A008756(n))-1`
-/

namespace A008758.P9590272295860415538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A008760 n + A008756 n).toNat - 1

end

end A008758.P9590272295860415538

namespace A008758

/-- `A008619(A008760(n)+A008756(n))-1` -/
def P9590272295860415538.Spec : Prop :=
  ∀ n, P9590272295860415538.a n = A008758 n

end A008758

/-! ## A008758.P9497423903584250827

`A008619(A008756(n)-(2-A008760(n)))`
-/

namespace A008758.P9497423903584250827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A008756 n - (2 - A008760 n)).toNat

end

end A008758.P9497423903584250827

namespace A008758

/-- `A008619(A008756(n)-(2-A008760(n)))` -/
def P9497423903584250827.Spec : Prop :=
  ∀ n, P9497423903584250827.a n = A008758 n

end A008758

/-!
# A008759: Expansion of (1+x^16)/(1-x)/(1-x^2)/(1-x^3).

The programs for A008759, the canonical program `A008759.P8594354437826005298` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008759 has offset 0).

The definition of A008759 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+x^16)/(1-x-x^2+x^4+x^5-x^6))` (program `A008759.P8594354437826005298`, by `A008759.P8594354437826005298.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A008759.P8594354437826005298

`ogf((1+x^16)/(1-x-x^2+x^4+x^5-x^6))`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A008759

/-- `ogf((1+x^16)/(1-x-x^2+x^4+x^5-x^6))` -/
def P8594354437826005298.Spec : Prop :=
  ∀ n, P8594354437826005298.a n = A008759 n

theorem P8594354437826005298.correct : P8594354437826005298.Spec := by
  intro n
  simp only [A008759]

end A008759

/-! ## A008759.P12161058728650679973

`round(sqrt(A008757(n)*A008761(n)))`
-/

namespace A008759.P12161058728650679973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A008757 n * A008761 n : ℝ))

end

end A008759.P12161058728650679973

namespace A008759

/-- `round(sqrt(A008757(n)*A008761(n)))` -/
def P12161058728650679973.Spec : Prop :=
  ∀ n, P12161058728650679973.a n = A008759 n

end A008759

/-! ## A008759.P440883282278370471

`A008761(n)+A004526(A008757(n)-A008761(n))`
-/

namespace A008759.P440883282278370471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008761 n + A004526 (A008757 n - A008761 n).toNat

end

end A008759.P440883282278370471

namespace A008759

/-- `A008761(n)+A004526(A008757(n)-A008761(n))` -/
def P440883282278370471.Spec : Prop :=
  ∀ n, P440883282278370471.a n = A008759 n

end A008759

/-! ## A008759.P1725617464012618679

`A008760(n+1)-Δ[A001399(n)]`
-/

namespace A008759.P1725617464012618679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001399 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008760 (n + 1) - (f1 (n + 1) - f1 n)

end

end A008759.P1725617464012618679

namespace A008759

/-- `A008760(n+1)-Δ[A001399(n)]` -/
def P1725617464012618679.Spec : Prop :=
  ∀ n, P1725617464012618679.a n = A008759 n

end A008759

/-! ## A008759.P8389627696194409902

`A008760(n+1)-A103221(n+1)`
-/

namespace A008759.P8389627696194409902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008760 (n + 1) - A103221 (n + 1)

end

end A008759.P8389627696194409902

namespace A008759

/-- `A008760(n+1)-A103221(n+1)` -/
def P8389627696194409902.Spec : Prop :=
  ∀ n, P8389627696194409902.a n = A008759 n

end A008759

/-! ## A008759.P8534323269697913766

`A008760(n+1)+A001489(Δ[A001399(n)])`
-/

namespace A008759.P8534323269697913766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001399 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008760 (n + 1) + A001489 (f1 (n + 1) - f1 n).toNat

end

end A008759.P8534323269697913766

namespace A008759

/-- `A008760(n+1)+A001489(Δ[A001399(n)])` -/
def P8534323269697913766.Spec : Prop :=
  ∀ n, P8534323269697913766.a n = A008759 n

end A008759

/-! ## A008759.P13771576628798535208

`A008760(n)-Δ[A001399(n)-A008760(n)]`
-/

namespace A008759.P13771576628798535208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001399 n - A008760 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008760 n - (f1 (n + 1) - f1 n)

end

end A008759.P13771576628798535208

namespace A008759

/-- `A008760(n)-Δ[A001399(n)-A008760(n)]` -/
def P13771576628798535208.Spec : Prop :=
  ∀ n, P13771576628798535208.a n = A008759 n

end A008759

/-! ## A008759.P17942117923564154700

`A004526(A008761(n)+A008757(n))`
-/

namespace A008759.P17942117923564154700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A008761 n + A008757 n).toNat

end

end A008759.P17942117923564154700

namespace A008759

/-- `A004526(A008761(n)+A008757(n))` -/
def P17942117923564154700.Spec : Prop :=
  ∀ n, P17942117923564154700.a n = A008759 n

end A008759

/-! ## A008759.P13899457087104026791

`A123108(A008761(n)+A008757(n))`
-/

namespace A008759.P13899457087104026791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A008761 n + A008757 n).toNat

end

end A008759.P13899457087104026791

namespace A008759

/-- `A123108(A008761(n)+A008757(n))` -/
def P13899457087104026791.Spec : Prop :=
  ∀ n, P13899457087104026791.a n = A008759 n

end A008759

/-! ## A008759.P89664598528586507

`A004524(or(1, A008761(n)+A008757(n)))`
-/

namespace A008759.P89664598528586507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (Int.lor 1 (A008761 n + A008757 n)).toNat

end

end A008759.P89664598528586507

namespace A008759

/-- `A004524(or(1, A008761(n)+A008757(n)))` -/
def P89664598528586507.Spec : Prop :=
  ∀ n, P89664598528586507.a n = A008759 n

end A008759

/-! ## A008759.P6678133052927711164

`A008615(3*(A008761(n)+A008757(n)))`
-/

namespace A008759.P6678133052927711164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (3 * (A008761 n + A008757 n)).toNat

end

end A008759.P6678133052927711164

namespace A008759

/-- `A008615(3*(A008761(n)+A008757(n)))` -/
def P6678133052927711164.Spec : Prop :=
  ∀ n, P6678133052927711164.a n = A008759 n

end A008759

/-!
# A008760: Expansion of (1+x^17)/((1-x)*(1-x^2)*(1-x^3)).

The programs for A008760, the canonical program `A008760.P13838986825417158680` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008760 has offset 0).

The definition of A008760 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+x^17)/(1-x-x^2+x^4+x^5-x^6))` (program `A008760.P13838986825417158680`, by `A008760.P13838986825417158680.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A008760.P13838986825417158680

`ogf((1+x^17)/(1-x-x^2+x^4+x^5-x^6))`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A008760

/-- `ogf((1+x^17)/(1-x-x^2+x^4+x^5-x^6))` -/
def P13838986825417158680.Spec : Prop :=
  ∀ n, P13838986825417158680.a n = A008760 n

theorem P13838986825417158680.correct : P13838986825417158680.Spec := by
  intro n
  simp only [A008760]

end A008760

/-! ## A008760.P15130217661337912003

`Δ[∑[A008761(n)]-A001399(n)]`
-/

namespace A008760.P15130217661337912003
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008761 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A001399 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A008760.P15130217661337912003

namespace A008760

/-- `Δ[∑[A008761(n)]-A001399(n)]` -/
def P15130217661337912003.Spec : Prop :=
  ∀ n, P15130217661337912003.a n = A008760 n

end A008760

/-! ## A008760.P12901449382539898386

`A008761(n+1)-Δ[A001399(n)]`
-/

namespace A008760.P12901449382539898386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001399 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008761 (n + 1) - (f1 (n + 1) - f1 n)

end

end A008760.P12901449382539898386

namespace A008760

/-- `A008761(n+1)-Δ[A001399(n)]` -/
def P12901449382539898386.Spec : Prop :=
  ∀ n, P12901449382539898386.a n = A008760 n

end A008760

/-! ## A008760.P13007447376973248488

`∑[A103221(lt[A077909(n), 10])]`
-/

namespace A008760.P13007447376973248488
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077909 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 (SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008760.P13007447376973248488

namespace A008760

/-- `∑[A103221(lt[A077909(n), 10])]` -/
def P13007447376973248488.Spec : Prop :=
  ∀ n, P13007447376973248488.a n = A008760 n

end A008760

/-! ## A008760.P7751633612413342703

`A102683(A001612(n)+n)+A001399(n)`
-/

namespace A008760.P7751633612413342703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102683 (A001612 n + (n : ℤ)).toNat + A001399 n

end

end A008760.P7751633612413342703

namespace A008760

/-- `A102683(A001612(n)+n)+A001399(n)` -/
def P7751633612413342703.Spec : Prop :=
  ∀ n, P7751633612413342703.a n = A008760 n

end A008760

/-!
# A008761: Expansion of (1+x^18)/((1-x)*(1-x^2)*(1-x^3)).

The programs for A008761, the canonical program `A008761.P5490421565093884675` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008761 has offset 0).

The definition of A008761 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+x^18)/(1-x-x^2+x^4+x^5-x^6))` (program `A008761.P5490421565093884675`, by `A008761.P5490421565093884675.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A008761.P5490421565093884675

`ogf((1+x^18)/(1-x-x^2+x^4+x^5-x^6))`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A008761

/-- `ogf((1+x^18)/(1-x-x^2+x^4+x^5-x^6))` -/
def P5490421565093884675.Spec : Prop :=
  ∀ n, P5490421565093884675.a n = A008761 n

theorem P5490421565093884675.correct : P5490421565093884675.Spec := by
  intro n
  simp only [A008761]

end A008761

/-! ## A008761.P277152152223473802

`∑[A004274(A103221(n))]`
-/

namespace A008761.P277152152223473802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004274 (A103221 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008761.P277152152223473802

namespace A008761

/-- `∑[A004274(A103221(n))]` -/
def P277152152223473802.Spec : Prop :=
  ∀ n, P277152152223473802.a n = A008761 n

end A008761

/-! ## A008761.P2295431485330698835

`∑[A004274(A110654(A008611(n)))]`
-/

namespace A008761.P2295431485330698835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004274 (A110654 (A008611 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008761.P2295431485330698835

namespace A008761

/-- `∑[A004274(A110654(A008611(n)))]` -/
def P2295431485330698835.Spec : Prop :=
  ∀ n, P2295431485330698835.a n = A008761 n

end A008761

/-! ## A008761.P15046742140603404939

`∑[A004274(A008615(n+2))]`
-/

namespace A008761.P15046742140603404939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004274 (A008615 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008761.P15046742140603404939

namespace A008761

/-- `∑[A004274(A008615(n+2))]` -/
def P15046742140603404939.Spec : Prop :=
  ∀ n, P15046742140603404939.a n = A008761 n

end A008761

/-! ## A008761.P501965654787652950

`∑[A004274(A008647(2*n))]`
-/

namespace A008761.P501965654787652950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004274 (A008647 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008761.P501965654787652950

namespace A008761

/-- `∑[A004274(A008647(2*n))]` -/
def P501965654787652950.Spec : Prop :=
  ∀ n, P501965654787652950.a n = A008761 n

end A008761

/-! ## A008761.P7266462743655294623

`∑[A004274(log2(A060548(n+1)))]`
-/

namespace A008761.P7266462743655294623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004274 (SequenceMachineLib.roundAway (Real.logb 2 (A060548 (n + 1) : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008761.P7266462743655294623

namespace A008761

/-- `∑[A004274(log2(A060548(n+1)))]` -/
def P7266462743655294623.Spec : Prop :=
  ∀ n, P7266462743655294623.a n = A008761 n

end A008761

/-!
# A008762: Expansion of (1+x)/((1-x)*(1-x^2)*(1-x^3)*(1-x^4)).

The programs for A008762, the canonical program `A008762.P14756709783646254823` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008762 has offset 0).

The definition of A008762 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+x)/(1-x-x^2+2x^5-x^8-x^9+x^10))` (program `A008762.P14756709783646254823`, by `A008762.P14756709783646254823.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A008762.P14756709783646254823

`ogf((1+x)/(1-x-x^2+2x^5-x^8-x^9+x^10))`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A008762

/-- `ogf((1+x)/(1-x-x^2+2x^5-x^8-x^9+x^10))` -/
def P14756709783646254823.Spec : Prop :=
  ∀ n, P14756709783646254823.a n = A008762 n

theorem P14756709783646254823.correct : P14756709783646254823.Spec := by
  intro n
  simp only [A008762]

end A008762

/-! ## A008762.P10922759217735948422

`floor((2*n^3+27*n²+108*n+207)/144)`
-/

namespace A008762.P10922759217735948422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 * n ^ 3 + 27 * n ^ 2 + 108 * n + 207 : ℚ) / 144⌋

end

end A008762.P10922759217735948422

namespace A008762

/-- `floor((2*n^3+27*n²+108*n+207)/144)` -/
def P10922759217735948422.Spec : Prop :=
  ∀ n, P10922759217735948422.a n = A008762 n

end A008762

/-! ## A008762.P14497605347299556086

`∑[A025767(n)]`
-/

namespace A008762.P14497605347299556086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025767 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008762.P14497605347299556086

namespace A008762

/-- `∑[A025767(n)]` -/
def P14497605347299556086.Spec : Prop :=
  ∀ n, P14497605347299556086.a n = A008762 n

end A008762

/-! ## A008762.P5106730461136987513

`∑[∑[A008679(n)]]`
-/

namespace A008762.P5106730461136987513
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008679 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008762.P5106730461136987513

namespace A008762

/-- `∑[∑[A008679(n)]]` -/
def P5106730461136987513.Spec : Prop :=
  ∀ n, P5106730461136987513.a n = A008762 n

end A008762

/-! ## A008762.P17285552773596846104

`A000601(n)-a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A008762.P17285552773596846104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A000601 n - a (n - 2)

end

end A008762.P17285552773596846104

namespace A008762

/-- `A000601(n)-a(n-2)` -/
def P17285552773596846104.Spec : Prop :=
  ∀ n, P17285552773596846104.a n = A008762 n

end A008762

/-! ## A008762.P3580667203131308690

`A001972(n)+a(n-3)` with `a(0)=1, a(1)=2, a(2)=3`
-/

namespace A008762.P3580667203131308690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 3] fun n a =>
  A001972 n + a (n - 3)

end

end A008762.P3580667203131308690

namespace A008762

/-- `A001972(n)+a(n-3)` -/
def P3580667203131308690.Spec : Prop :=
  ∀ n, P3580667203131308690.a n = A008762 n

end A008762

/-! ## A008762.P863626188613826749

`2*A001400(n)-A266755(n)`
-/

namespace A008762.P863626188613826749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001400 n - A266755 n

end

end A008762.P863626188613826749

namespace A008762

/-- `2*A001400(n)-A266755(n)` -/
def P863626188613826749.Spec : Prop :=
  ∀ n, P863626188613826749.a n = A008762 n

end A008762

/-! ## A008762.P15077938273329200406

`A008804(n)-∑[A005044(n+1)]`
-/

namespace A008762.P15077938273329200406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005044 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008804 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008762.P15077938273329200406

namespace A008762

/-- `A008804(n)-∑[A005044(n+1)]` -/
def P15077938273329200406.Spec : Prop :=
  ∀ n, P15077938273329200406.a n = A008762 n

end A008762

/-! ## A008762.P17230875744969661856

`A026810(n+1)+A026810(n)+A001972(n)`
-/

namespace A008762.P17230875744969661856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026810 (n + 1) + (A026810 n + A001972 n)

end

end A008762.P17230875744969661856

namespace A008762

/-- `A026810(n+1)+A026810(n)+A001972(n)` -/
def P17230875744969661856.Spec : Prop :=
  ∀ n, P17230875744969661856.a n = A008762 n

end A008762

/-! ## A008762.P3843125591116337529

`A266769(n)+A005044(n+2)`
-/

namespace A008762.P3843125591116337529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266769 n + A005044 (n + 2)

end

end A008762.P3843125591116337529

namespace A008762

/-- `A266769(n)+A005044(n+2)` -/
def P3843125591116337529.Spec : Prop :=
  ∀ n, P3843125591116337529.a n = A008762 n

end A008762

/-! ## A008762.P10141126979779450143

`A008804(n)-A026810(n+2)`
-/

namespace A008762.P10141126979779450143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008804 n - A026810 (n + 2)

end

end A008762.P10141126979779450143

namespace A008762

/-- `A008804(n)-A026810(n+2)` -/
def P10141126979779450143.Spec : Prop :=
  ∀ n, P10141126979779450143.a n = A008762 n

end A008762

/-! ## A008762.P10938790653202813257

`A014125(n)-A122046(n+2)`
-/

namespace A008762.P10938790653202813257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014125 n - A122046 (n + 2)

end

end A008762.P10938790653202813257

namespace A008762

/-- `A014125(n)-A122046(n+2)` -/
def P10938790653202813257.Spec : Prop :=
  ∀ n, P10938790653202813257.a n = A008762 n

end A008762

/-! ## A008762.P5145464124853871274

`A008804(n+1)-A001400(n+1)`
-/

namespace A008762.P5145464124853871274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008804 (n + 1) - A001400 (n + 1)

end

end A008762.P5145464124853871274

namespace A008762

/-- `A008804(n+1)-A001400(n+1)` -/
def P5145464124853871274.Spec : Prop :=
  ∀ n, P5145464124853871274.a n = A008762 n

end A008762

/-! ## A008762.P4061237554693010739

`A266769(n+1)-A266755(n+1)`
-/

namespace A008762.P4061237554693010739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266769 (n + 1) - A266755 (n + 1)

end

end A008762.P4061237554693010739

namespace A008762

/-- `A266769(n+1)-A266755(n+1)` -/
def P4061237554693010739.Spec : Prop :=
  ∀ n, P4061237554693010739.a n = A008762 n

end A008762

/-! ## A008762.P12175439667543633291

`A001400(n+1)+A001400(n)-A025767(n+1)`
-/

namespace A008762.P12175439667543633291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001400 (n + 1) + (A001400 n - A025767 (n + 1))

end

end A008762.P12175439667543633291

namespace A008762

/-- `A001400(n+1)+A001400(n)-A025767(n+1)` -/
def P12175439667543633291.Spec : Prop :=
  ∀ n, P12175439667543633291.a n = A008762 n

end A008762

/-! ## A008762.P5067912526116293198

`A165188(n+1)+A254707(n+1)-A254594(n+1)`
-/

namespace A008762.P5067912526116293198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165188 (n + 1) + (A254707 (n + 1) - A254594 (n + 1))

end

end A008762.P5067912526116293198

namespace A008762

/-- `A165188(n+1)+A254707(n+1)-A254594(n+1)` -/
def P5067912526116293198.Spec : Prop :=
  ∀ n, P5067912526116293198.a n = A008762 n

end A008762

/-! ## A008762.P13330010542524624813

`A026810(n+3)+A001400(n)`
-/

namespace A008762.P13330010542524624813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026810 (n + 3) + A001400 n

end

end A008762.P13330010542524624813

namespace A008762

/-- `A026810(n+3)+A001400(n)` -/
def P13330010542524624813.Spec : Prop :=
  ∀ n, P13330010542524624813.a n = A008762 n

end A008762

/-! ## A008762.P12099957033691515192

`A173722(n+2)-A181120(n+1)`
-/

namespace A008762.P12099957033691515192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173722 (n + 2) - A181120 (n + 1)

end

end A008762.P12099957033691515192

namespace A008762

/-- `A173722(n+2)-A181120(n+1)` -/
def P12099957033691515192.Spec : Prop :=
  ∀ n, P12099957033691515192.a n = A008762 n

end A008762

/-! ## A008762.P3304253594647664105

`A029034(Δ[n²])`
-/

namespace A008762.P3304253594647664105
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029034 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A008762.P3304253594647664105

namespace A008762

/-- `A029034(Δ[n²])` -/
def P3304253594647664105.Spec : Prop :=
  ∀ n, P3304253594647664105.a n = A008762 n

end A008762

/-! ## A008762.P1007649725041449906

`∑[A025797(2*n)]`
-/

namespace A008762.P1007649725041449906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025797 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008762.P1007649725041449906

namespace A008762

/-- `∑[A025797(2*n)]` -/
def P1007649725041449906.Spec : Prop :=
  ∀ n, P1007649725041449906.a n = A008762 n

end A008762

/-!
# A008763: Expansion of g.f.: x^4/((1-x)*(1-x^2)^2*(1-x^3)).

The programs for A008763, the canonical program `A008763.P10949200286734320920` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008763 has offset 0).

The definition of A008763 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(x^4/(1-x-2x^2+x^3+2x^4+x^5-2x^6-x^7+x^8))` (program `A008763.P10949200286734320920`, by `A008763.P10949200286734320920.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A008763.P10949200286734320920

`ogf(x^4/(1-x-2x^2+x^3+2x^4+x^5-2x^6-x^7+x^8))`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A008763

/-- `ogf(x^4/(1-x-2x^2+x^3+2x^4+x^5-2x^6-x^7+x^8))` -/
def P10949200286734320920.Spec : Prop :=
  ∀ n, P10949200286734320920.a n = A008763 n

theorem P10949200286734320920.correct : P10949200286734320920.Spec := by
  intro n
  simp only [A008763]

end A008763

/-! ## A008763.P1127352197073132030

`floor((9*(n+1)*(-1)^n+2*n^3-9*n+65)/144)`
-/

namespace A008763.P1127352197073132030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((9 * (n + 1) : ℤ) * (-1) ^ n + (2 * n ^ 3 : ℤ) - (9 * n : ℤ) + 65 : ℚ) / 144⌋

end

end A008763.P1127352197073132030

namespace A008763

/-- `floor((9*(n+1)*(-1)^n+2*n^3-9*n+65)/144)` -/
def P1127352197073132030.Spec : Prop :=
  ∀ n, P1127352197073132030.a n = A008763 n

end A008763

/-! ## A008763.P1903084299494800546

`A181120(n-1)-a(n-1)` with `a(0)=0`
-/

namespace A008763.P1903084299494800546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A181120 (n - 1) - a (n - 1)

end

end A008763.P1903084299494800546

namespace A008763

/-- `A181120(n-1)-a(n-1)` -/
def P1903084299494800546.Spec : Prop :=
  ∀ n, P1903084299494800546.a n = A008763 n

end A008763

/-! ## A008763.P3423463086843091149

`A211540(n+1)+a(n-2)` with `a(0)=0, a(1)=0`
-/

namespace A008763.P3423463086843091149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  A211540 (n + 1) + a (n - 2)

end

end A008763.P3423463086843091149

namespace A008763

/-- `A211540(n+1)+a(n-2)` -/
def P3423463086843091149.Spec : Prop :=
  ∀ n, P3423463086843091149.a n = A008763 n

end A008763

/-! ## A008763.P11595167016133074208

`A008627(n)-A001399(n)`
-/

namespace A008763.P11595167016133074208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008627 n - A001399 n

end

end A008763.P11595167016133074208

namespace A008763

/-- `A008627(n)-A001399(n)` -/
def P11595167016133074208.Spec : Prop :=
  ∀ n, P11595167016133074208.a n = A008763 n

end A008763

/-! ## A008763.P2237552494885213152

`A008771(n)-A028310(n)`
-/

namespace A008763.P2237552494885213152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008771 n - A028310 n

end

end A008763.P2237552494885213152

namespace A008763

/-- `A008771(n)-A028310(n)` -/
def P2237552494885213152.Spec : Prop :=
  ∀ n, P2237552494885213152.a n = A008763 n

end A008763

/-! ## A008763.P16848971244656005193

`A266769(n)-A156040(n)`
-/

namespace A008763.P16848971244656005193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266769 n - A156040 n

end

end A008763.P16848971244656005193

namespace A008763

/-- `A266769(n)-A156040(n)` -/
def P16848971244656005193.Spec : Prop :=
  ∀ n, P16848971244656005193.a n = A008763 n

end A008763

/-! ## A008763.P3035820335577782269

`∑[A008742(n)]-A001399(n)`
-/

namespace A008763.P3035820335577782269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008742 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A001399 n

end

end A008763.P3035820335577782269

namespace A008763

/-- `∑[A008742(n)]-A001399(n)` -/
def P3035820335577782269.Spec : Prop :=
  ∀ n, P3035820335577782269.a n = A008763 n

end A008763

/-! ## A008763.P12002708883476686700

`A014125(n)-A003453(n+5)`
-/

namespace A008763.P12002708883476686700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014125 n - A003453 (n + 5)

end

end A008763.P12002708883476686700

namespace A008763

/-- `A014125(n)-A003453(n+5)` -/
def P12002708883476686700.Spec : Prop :=
  ∀ n, P12002708883476686700.a n = A008763 n

end A008763

/-! ## A008763.P3011388969610287882

`A026810(abs(2-n))+A026810(n)`
-/

namespace A008763.P3011388969610287882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026810 |2 - (n : ℤ)|.toNat + A026810 n

end

end A008763.P3011388969610287882

namespace A008763

/-- `A026810(abs(2-n))+A026810(n)` -/
def P3011388969610287882.Spec : Prop :=
  ∀ n, P3011388969610287882.a n = A008763 n

end A008763

/-! ## A008763.P16990360499053474432

`A308266(n+1)-A307872(n+1)`
-/

namespace A008763.P16990360499053474432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308266 (n + 1) - A307872 (n + 1)

end

end A008763.P16990360499053474432

namespace A008763

/-- `A308266(n+1)-A307872(n+1)` -/
def P16990360499053474432.Spec : Prop :=
  ∀ n, P16990360499053474432.a n = A008763 n

theorem P16990360499053474432.correct : P16990360499053474432.Spec := by
  intro n
  simp only [A008763, Nat.add_sub_cancel, A008763.P16990360499053474432.a, A008763.P10949200286734320920.a, A307872, A307872.P8733216762987257633.f3, A307872.P8733216762987257633.f2, A307872.P8733216762987257633.f1, A307872.P8733216762987257633.a, A308266, A308266.P14087854034105715006.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A008763

/-! ## A008763.P3101453657214268040

`∑[A308160(n+1)-A308158(n+1)]`
-/

namespace A008763.P3101453657214268040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308160 (n + 1) - A308158 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008763.P3101453657214268040

namespace A008763

/-- `∑[A308160(n+1)-A308158(n+1)]` -/
def P3101453657214268040.Spec : Prop :=
  ∀ n, P3101453657214268040.a n = A008763 n

end A008763

/-! ## A008763.P11408532748995606344

`A393410(n)-(A393405(n)+A309685(n+1))`
-/

namespace A008763.P11408532748995606344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393410 n - (A393405 n + A309685 (n + 1))

end

end A008763.P11408532748995606344

namespace A008763

/-- `A393410(n)-(A393405(n)+A309685(n+1))` -/
def P11408532748995606344.Spec : Prop :=
  ∀ n, P11408532748995606344.a n = A008763 n

end A008763

/-! ## A008763.P1397927143073265284

`A348919(n+1)-(A348919(n)+A307872(n+1))`
-/

namespace A008763.P1397927143073265284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348919 (n + 1) - (A348919 n + A307872 (n + 1))

end

end A008763.P1397927143073265284

namespace A008763

/-- `A348919(n+1)-(A348919(n)+A307872(n+1))` -/
def P1397927143073265284.Spec : Prop :=
  ∀ n, P1397927143073265284.a n = A008763 n

end A008763

/-! ## A008763.P13381242703510704288

`A266769(n+2)-A004652(n+3)`
-/

namespace A008763.P13381242703510704288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266769 (n + 2) - A004652 (n + 3)

end

end A008763.P13381242703510704288

namespace A008763

/-- `A266769(n+2)-A004652(n+3)` -/
def P13381242703510704288.Spec : Prop :=
  ∀ n, P13381242703510704288.a n = A008763 n

end A008763

/-! ## A008763.P16199178976556584717

`∑[A211538(n+3)-A000212(n+1)]`
-/

namespace A008763.P16199178976556584717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211538 (n + 3) - A000212 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008763.P16199178976556584717

namespace A008763

/-- `∑[A211538(n+3)-A000212(n+1)]` -/
def P16199178976556584717.Spec : Prop :=
  ∀ n, P16199178976556584717.a n = A008763 n

end A008763

/-!
# A008764: Number of 3 X 3 symmetric stochastic matrices under row and column permutations.

The programs for A008764, the canonical program `A008764.P6703628140594976905` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008764 has offset 0).

The definition of A008764 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A008764.P6703628140594976905

`A001973(n)-a(n-2)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A008764

/-- `A001973(n)-a(n-2)` -/
def P6703628140594976905.Spec : Prop :=
  ∀ n, P6703628140594976905.a n = A008764 n

theorem P6703628140594976905.correct : P6703628140594976905.Spec := by
  intro n
  simp only [A008764]

end A008764

/-! ## A008764.P8098227774332000966

`A008765(n)+A005044(n)`
-/

namespace A008764.P8098227774332000966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008765 n + A005044 n

end

end A008764.P8098227774332000966

namespace A008764

/-- `A008765(n)+A005044(n)` -/
def P8098227774332000966.Spec : Prop :=
  ∀ n, P8098227774332000966.a n = A008764 n

end A008764

/-! ## A008764.P9105472718510923984

`A069905(n)+A008768(n)`
-/

namespace A008764.P9105472718510923984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069905 n + A008768 n

end

end A008764.P9105472718510923984

namespace A008764

/-- `A069905(n)+A008768(n)` -/
def P9105472718510923984.Spec : Prop :=
  ∀ n, P9105472718510923984.a n = A008764 n

end A008764

/-! ## A008764.P17487156711838169414

`A001400(n)+∑[A005044(n)]`
-/

namespace A008764.P17487156711838169414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005044 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001400 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008764.P17487156711838169414

namespace A008764

/-- `A001400(n)+∑[A005044(n)]` -/
def P17487156711838169414.Spec : Prop :=
  ∀ n, P17487156711838169414.a n = A008764 n

end A008764

/-! ## A008764.P17464450680018031640

`A026810(n+1)+A001400(n)`
-/

namespace A008764.P17464450680018031640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026810 (n + 1) + A001400 n

end

end A008764.P17464450680018031640

namespace A008764

/-- `A026810(n+1)+A001400(n)` -/
def P17464450680018031640.Spec : Prop :=
  ∀ n, P17464450680018031640.a n = A008764 n

end A008764

/-! ## A008764.P15097272344566260616

`A266769(n)-A005044(n+1)`
-/

namespace A008764.P15097272344566260616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266769 n - A005044 (n + 1)

end

end A008764.P15097272344566260616

namespace A008764

/-- `A266769(n)-A005044(n+1)` -/
def P15097272344566260616.Spec : Prop :=
  ∀ n, P15097272344566260616.a n = A008764 n

end A008764

/-! ## A008764.P8031745250434409459

`2*A001400(n)-A008642(n)`
-/

namespace A008764.P8031745250434409459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001400 n - A008642 n

end

end A008764.P8031745250434409459

namespace A008764

/-- `2*A001400(n)-A008642(n)` -/
def P8031745250434409459.Spec : Prop :=
  ∀ n, P8031745250434409459.a n = A008764 n

end A008764

/-! ## A008764.P3833937967426582826

`A026810(n+1)+∑[A266755(n)]`
-/

namespace A008764.P3833937967426582826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266755 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026810 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008764.P3833937967426582826

namespace A008764

/-- `A026810(n+1)+∑[A266755(n)]` -/
def P3833937967426582826.Spec : Prop :=
  ∀ n, P3833937967426582826.a n = A008764 n

end A008764

/-! ## A008764.P14731174202827757638

`A008642(n)+∑[2*A005044(n)]`
-/

namespace A008764.P14731174202827757638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A005044 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008642 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008764.P14731174202827757638

namespace A008764

/-- `A008642(n)+∑[2*A005044(n)]` -/
def P14731174202827757638.Spec : Prop :=
  ∀ n, P14731174202827757638.a n = A008764 n

end A008764

/-! ## A008764.P7493445602037354260

`∑[2*A266755(n)]-A008642(n)`
-/

namespace A008764.P7493445602037354260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A266755 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A008642 n

end

end A008764.P7493445602037354260

namespace A008764

/-- `∑[2*A266755(n)]-A008642(n)` -/
def P7493445602037354260.Spec : Prop :=
  ∀ n, P7493445602037354260.a n = A008764 n

end A008764

/-! ## A008764.P5163204125348783850

`A008627(n)+A002620(n-A004526(n))`
-/

namespace A008764.P5163204125348783850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008627 n + A002620 ((n : ℤ) - A004526 n).toNat

end

end A008764.P5163204125348783850

namespace A008764

/-- `A008627(n)+A002620(n-A004526(n))` -/
def P5163204125348783850.Spec : Prop :=
  ∀ n, P5163204125348783850.a n = A008764 n

end A008764

/-! ## A008764.P7859859826945969131

`A026810(n+1)+A026810(n)+A001399(n)`
-/

namespace A008764.P7859859826945969131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026810 (n + 1) + (A026810 n + A001399 n)

end

end A008764.P7859859826945969131

namespace A008764

/-- `A026810(n+1)+A026810(n)+A001399(n)` -/
def P7859859826945969131.Spec : Prop :=
  ∀ n, P7859859826945969131.a n = A008764 n

end A008764

/-! ## A008764.P6151028527538314120

`A026810(n+1)+A001401(n)-A026811(n)`
-/

namespace A008764.P6151028527538314120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026810 (n + 1) + (A001401 n - A026811 n)

end

end A008764.P6151028527538314120

namespace A008764

/-- `A026810(n+1)+A001401(n)-A026811(n)` -/
def P6151028527538314120.Spec : Prop :=
  ∀ n, P6151028527538314120.a n = A008764 n

end A008764

/-! ## A008764.P15402174312280938388

`A008766(n+1)+A001399(n)-A001399(n+1)`
-/

namespace A008764.P15402174312280938388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008766 (n + 1) + (A001399 n - A001399 (n + 1))

end

end A008764.P15402174312280938388

namespace A008764

/-- `A008766(n+1)+A001399(n)-A001399(n+1)` -/
def P15402174312280938388.Spec : Prop :=
  ∀ n, P15402174312280938388.a n = A008764 n

end A008764

/-! ## A008764.P14592949356242723807

`A211540(n+2)+A008768(n)`
-/

namespace A008764.P14592949356242723807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211540 (n + 2) + A008768 n

end

end A008764.P14592949356242723807

namespace A008764

/-- `A211540(n+2)+A008768(n)` -/
def P14592949356242723807.Spec : Prop :=
  ∀ n, P14592949356242723807.a n = A008764 n

end A008764

/-! ## A008764.P7888801757719780572

`A014126(n+1)-A156039(n+1)`
-/

namespace A008764.P7888801757719780572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014126 (n + 1) - A156039 (n + 1)

end

end A008764.P7888801757719780572

namespace A008764

/-- `A014126(n+1)-A156039(n+1)` -/
def P7888801757719780572.Spec : Prop :=
  ∀ n, P7888801757719780572.a n = A008764 n

end A008764

/-! ## A008764.P16277599223703081299

`A008627(n)+A002620(A004526(n+1))`
-/

namespace A008764.P16277599223703081299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008627 n + A002620 (A004526 (n + 1)).toNat

end

end A008764.P16277599223703081299

namespace A008764

/-- `A008627(n)+A002620(A004526(n+1))` -/
def P16277599223703081299.Spec : Prop :=
  ∀ n, P16277599223703081299.a n = A008764 n

end A008764

/-! ## A008764.P3222255162320869569

`A001400(n+1)+A001400(n)-A001399(n+1)`
-/

namespace A008764.P3222255162320869569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001400 (n + 1) + (A001400 n - A001399 (n + 1))

end

end A008764.P3222255162320869569

namespace A008764

/-- `A001400(n+1)+A001400(n)-A001399(n+1)` -/
def P3222255162320869569.Spec : Prop :=
  ∀ n, P3222255162320869569.a n = A008764 n

end A008764

/-! ## A008764.P594727714764943312

`∑[A005044(n+3)+A005044(n)]`
-/

namespace A008764.P594727714764943312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005044 (n + 3) + A005044 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008764.P594727714764943312

namespace A008764

/-- `∑[A005044(n+3)+A005044(n)]` -/
def P594727714764943312.Spec : Prop :=
  ∀ n, P594727714764943312.a n = A008764 n

end A008764

/-! ## A008764.P2942776804782295013

`A266755(n)+A008763(n+3)`
-/

namespace A008764.P2942776804782295013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266755 n + A008763 (n + 3)

end

end A008764.P2942776804782295013

namespace A008764

/-- `A266755(n)+A008763(n+3)` -/
def P2942776804782295013.Spec : Prop :=
  ∀ n, P2942776804782295013.a n = A008764 n

end A008764

/-!
# A008765: Expansion of (1+x^4)/((1-x)*(1-x^2)*(1-x^3)*(1-x^4)).

The programs for A008765, the canonical program `A008765.P16209851122410291233` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008765 has offset 0).

The definition of A008765 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+x^4)/(1-x-x^2+2x^5-x^8-x^9+x^10))` (program `A008765.P16209851122410291233`, by `A008765.P16209851122410291233.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A008765.P16209851122410291233

`ogf((1+x^4)/(1-x-x^2+2x^5-x^8-x^9+x^10))`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A008765

/-- `ogf((1+x^4)/(1-x-x^2+2x^5-x^8-x^9+x^10))` -/
def P16209851122410291233.Spec : Prop :=
  ∀ n, P16209851122410291233.a n = A008765 n

theorem P16209851122410291233.correct : P16209851122410291233.Spec := by
  intro n
  simp only [A008765]

end A008765

/-! ## A008765.P17109107523546028942

`a(n-1)+a(n-2)-2*a(n-5)+a(n-8)+a(n-9)-a(n-10)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=3, a(4)=6, a(5)=7, a(6)=11, a(7)=14, a(8)=20, a(9)=24`
-/

namespace A008765.P17109107523546028942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2, 3, 6, 7, 11, 14, 20, 24] fun n a =>
  a (n - 1) + a (n - 2) - 2 * a (n - 5) + a (n - 8) + a (n - 9) - a (n - 10)

end

end A008765.P17109107523546028942

namespace A008765

/-- `a(n-1)+a(n-2)-2*a(n-5)+a(n-8)+a(n-9)-a(n-10)` -/
def P17109107523546028942.Spec : Prop :=
  ∀ n, P17109107523546028942.a n = A008765 n

end A008765

/-! ## A008765.P2920641555798291477

`A026810(n)+A001400(n)`
-/

namespace A008765.P2920641555798291477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026810 n + A001400 n

end

end A008765.P2920641555798291477

namespace A008765

/-- `A026810(n)+A001400(n)` -/
def P2920641555798291477.Spec : Prop :=
  ∀ n, P2920641555798291477.a n = A008765 n

end A008765

/-! ## A008765.P6513026917948508763

`A008764(n)-A005044(n)`
-/

namespace A008765.P6513026917948508763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008764 n - A005044 n

end

end A008765.P6513026917948508763

namespace A008765

/-- `A008764(n)-A005044(n)` -/
def P6513026917948508763.Spec : Prop :=
  ∀ n, P6513026917948508763.a n = A008765 n

end A008765

/-! ## A008765.P1775342382448837545

`A026810(n)+∑[A266755(n)]`
-/

namespace A008765.P1775342382448837545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266755 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026810 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008765.P1775342382448837545

namespace A008765

/-- `A026810(n)+∑[A266755(n)]` -/
def P1775342382448837545.Spec : Prop :=
  ∀ n, P1775342382448837545.a n = A008765 n

end A008765

/-! ## A008765.P10690922782961131678

`A001399(n)+2*A026810(n)`
-/

namespace A008765.P10690922782961131678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001399 n + 2 * A026810 n

end

end A008765.P10690922782961131678

namespace A008765

/-- `A001399(n)+2*A026810(n)` -/
def P10690922782961131678.Spec : Prop :=
  ∀ n, P10690922782961131678.a n = A008765 n

end A008765

/-! ## A008765.P13464460404256287621

`2*A001400(n)-A001399(n)`
-/

namespace A008765.P13464460404256287621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001400 n - A001399 n

end

end A008765.P13464460404256287621

namespace A008765

/-- `2*A001400(n)-A001399(n)` -/
def P13464460404256287621.Spec : Prop :=
  ∀ n, P13464460404256287621.a n = A008765 n

end A008765

/-! ## A008765.P8924280305406285321

`∑[A008805(n)-∑[A112689(n)]]`
-/

namespace A008765.P8924280305406285321
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112689 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008805 n - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008765.P8924280305406285321

namespace A008765

/-- `∑[A008805(n)-∑[A112689(n)]]` -/
def P8924280305406285321.Spec : Prop :=
  ∀ n, P8924280305406285321.a n = A008765 n

end A008765

/-! ## A008765.P1799565551070883423

`∑[A103221(n)]+2*A026810(n)`
-/

namespace A008765.P1799565551070883423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2 * A026810 n

end

end A008765.P1799565551070883423

namespace A008765

/-- `∑[A103221(n)]+2*A026810(n)` -/
def P1799565551070883423.Spec : Prop :=
  ∀ n, P1799565551070883423.a n = A008765 n

end A008765

/-! ## A008765.P15337486884501816340

`∑[2*A266755(n)]-A001399(n)`
-/

namespace A008765.P15337486884501816340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A266755 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A001399 n

end

end A008765.P15337486884501816340

namespace A008765

/-- `∑[2*A266755(n)]-A001399(n)` -/
def P15337486884501816340.Spec : Prop :=
  ∀ n, P15337486884501816340.a n = A008765 n

end A008765

/-! ## A008765.P1965739192844280192

`A001401(n)+A026810(n)-A026811(n)`
-/

namespace A008765.P1965739192844280192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001401 n + (A026810 n - A026811 n)

end

end A008765.P1965739192844280192

namespace A008765

/-- `A001401(n)+A026810(n)-A026811(n)` -/
def P1965739192844280192.Spec : Prop :=
  ∀ n, P1965739192844280192.a n = A008765 n

end A008765

/-! ## A008765.P6138069746519380839

`A008763(n)+A001971(n+2)`
-/

namespace A008765.P6138069746519380839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008763 n + A001971 (n + 2)

end

end A008765.P6138069746519380839

namespace A008765

/-- `A008763(n)+A001971(n+2)` -/
def P6138069746519380839.Spec : Prop :=
  ∀ n, P6138069746519380839.a n = A008765 n

end A008765

/-! ## A008765.P17504174563433883315

`A005232(n)-A026810(n+2)`
-/

namespace A008765.P17504174563433883315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005232 n - A026810 (n + 2)

end

end A008765.P17504174563433883315

namespace A008765

/-- `A005232(n)-A026810(n+2)` -/
def P17504174563433883315.Spec : Prop :=
  ∀ n, P17504174563433883315.a n = A008765 n

end A008765

/-! ## A008765.P1991487042136427033

`A008766(n+1)+A001400(n)-A001400(n+1)`
-/

namespace A008765.P1991487042136427033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008766 (n + 1) + (A001400 n - A001400 (n + 1))

end

end A008765.P1991487042136427033

namespace A008765

/-- `A008766(n+1)+A001400(n)-A001400(n+1)` -/
def P1991487042136427033.Spec : Prop :=
  ∀ n, P1991487042136427033.a n = A008765 n

end A008765

/-! ## A008765.P14548034027950433475

`A026810(n+4)+A026810(n)`
-/

namespace A008765.P14548034027950433475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026810 (n + 4) + A026810 n

end

end A008765.P14548034027950433475

namespace A008765

/-- `A026810(n+4)+A026810(n)` -/
def P14548034027950433475.Spec : Prop :=
  ∀ n, P14548034027950433475.a n = A008765 n

end A008765

/-! ## A008765.P11422429271412618997

`Δ[A309708(2*(n+1))]`
-/

namespace A008765.P11422429271412618997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309708 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A008765.P11422429271412618997

namespace A008765

/-- `Δ[A309708(2*(n+1))]` -/
def P11422429271412618997.Spec : Prop :=
  ∀ n, P11422429271412618997.a n = A008765 n

end A008765

/-! ## A008765.P11925040037752155186

`A288165(3*n)+A029253(3*n)`
-/

namespace A008765.P11925040037752155186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288165 (3 * n) + A029253 (3 * n)

end

end A008765.P11925040037752155186

namespace A008765

/-- `A288165(3*n)+A029253(3*n)` -/
def P11925040037752155186.Spec : Prop :=
  ∀ n, P11925040037752155186.a n = A008765 n

end A008765

/-! ## A008765.P17021869055418022779

`A004277(A001400(n))-A001399(n)`
-/

namespace A008765.P17021869055418022779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A001400 n).toNat - A001399 n

end

end A008765.P17021869055418022779

namespace A008765

/-- `A004277(A001400(n))-A001399(n)` -/
def P17021869055418022779.Spec : Prop :=
  ∀ n, P17021869055418022779.a n = A008765 n

end A008765

/-! ## A008765.P15863169652764533734

`A004277(A029138(2*n))-A001399(n)`
-/

namespace A008765.P15863169652764533734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A029138 (2 * n)).toNat - A001399 n

end

end A008765.P15863169652764533734

namespace A008765

/-- `A004277(A029138(2*n))-A001399(n)` -/
def P15863169652764533734.Spec : Prop :=
  ∀ n, P15863169652764533734.a n = A008765 n

end A008765

/-!
# A008766: Expansion of (1+x^5)/((1-x)*(1-x^2)*(1-x^3)*(1-x^4)).

The programs for A008766, the canonical program `A008766.P1905782006057709737` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008766 has offset 0).

The definition of A008766 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+x^5)/(1-x-x^2+2x^5-x^8-x^9+x^10))` (program `A008766.P1905782006057709737`, by `A008766.P1905782006057709737.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A008766.P1905782006057709737

`ogf((1+x^5)/(1-x-x^2+2x^5-x^8-x^9+x^10))`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A008766

/-- `ogf((1+x^5)/(1-x-x^2+2x^5-x^8-x^9+x^10))` -/
def P1905782006057709737.Spec : Prop :=
  ∀ n, P1905782006057709737.a n = A008766 n

theorem P1905782006057709737.correct : P1905782006057709737.Spec := by
  intro n
  simp only [A008766]

end A008766

/-! ## A008766.P33431227931698417

`∑[floor(∑[(n+1)/6-a(n-1)])]` with `a(0)=1`
-/

namespace A008766.P33431227931698417
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f2 =>
  (n + 1 : ℚ) / 6 - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f2 j⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008766.P33431227931698417

namespace A008766

/-- `∑[floor(∑[(n+1)/6-a(n-1)])]` -/
def P33431227931698417.Spec : Prop :=
  ∀ n, P33431227931698417.a n = A008766 n

end A008766

/-! ## A008766.P5398432373047615855

`∑[ceil(∑[(n+1)/6])]-a(n-1)` with `a(0)=1`
-/

namespace A008766.P5398432373047615855
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 6

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f2 j⌉

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j - a (n - 1)

end

end A008766.P5398432373047615855

namespace A008766

/-- `∑[ceil(∑[(n+1)/6])]-a(n-1)` -/
def P5398432373047615855.Spec : Prop :=
  ∀ n, P5398432373047615855.a n = A008766 n

end A008766

/-! ## A008766.P11700477398689233111

`∑[A253012(n)-a(n-1)]` with `a(0)=1`
-/

namespace A008766.P11700477398689233111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A253012 n - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008766.P11700477398689233111

namespace A008766

/-- `∑[A253012(n)-a(n-1)]` -/
def P11700477398689233111.Spec : Prop :=
  ∀ n, P11700477398689233111.a n = A008766 n

end A008766

/-! ## A008766.P12914427663387760782

`A211540(n)+A008770(n)`
-/

namespace A008766.P12914427663387760782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211540 n + A008770 n

end

end A008766.P12914427663387760782

namespace A008766

/-- `A211540(n)+A008770(n)` -/
def P12914427663387760782.Spec : Prop :=
  ∀ n, P12914427663387760782.a n = A008766 n

end A008766

/-! ## A008766.P3807612017185961367

`2*A001401(n)-A008628(n)`
-/

namespace A008766.P3807612017185961367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001401 n - A008628 n

end

end A008766.P3807612017185961367

namespace A008766

/-- `2*A001401(n)-A008628(n)` -/
def P3807612017185961367.Spec : Prop :=
  ∀ n, P3807612017185961367.a n = A008766 n

end A008766

/-! ## A008766.P17647736576042585299

`∑[A156040(n)-∑[A110655(n)]]`
-/

namespace A008766.P17647736576042585299
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110655 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156040 n - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008766.P17647736576042585299

namespace A008766

/-- `∑[A156040(n)-∑[A110655(n)]]` -/
def P17647736576042585299.Spec : Prop :=
  ∀ n, P17647736576042585299.a n = A008766 n

end A008766

/-! ## A008766.P11998025009434105016

`A001401(n)+A014591(n)-A347587(n)`
-/

namespace A008766.P11998025009434105016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001401 n + (A014591 n - A347587 n)

end

end A008766.P11998025009434105016

namespace A008766

/-- `A001401(n)+A014591(n)-A347587(n)` -/
def P11998025009434105016.Spec : Prop :=
  ∀ n, P11998025009434105016.a n = A008766 n

end A008766

/-! ## A008766.P15140615337410589501

`A014126(n)-A122046(n+2)`
-/

namespace A008766.P15140615337410589501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014126 n - A122046 (n + 2)

end

end A008766.P15140615337410589501

namespace A008766

/-- `A014126(n)-A122046(n+2)` -/
def P15140615337410589501.Spec : Prop :=
  ∀ n, P15140615337410589501.a n = A008766 n

end A008766

/-! ## A008766.P15561856095152371505

`A008763(n+1)+A001400(n)-A026810(n+1)`
-/

namespace A008766.P15561856095152371505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008763 (n + 1) + (A001400 n - A026810 (n + 1))

end

end A008766.P15561856095152371505

namespace A008766

/-- `A008763(n+1)+A001400(n)-A026810(n+1)` -/
def P15561856095152371505.Spec : Prop :=
  ∀ n, P15561856095152371505.a n = A008766 n

end A008766

/-! ## A008766.P9221473701609767541

`A347586(n+1)+A001400(n)-A065033(n+1)`
-/

namespace A008766.P9221473701609767541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347586 (n + 1) + (A001400 n - A065033 (n + 1))

end

end A008766.P9221473701609767541

namespace A008766

/-- `A347586(n+1)+A001400(n)-A065033(n+1)` -/
def P9221473701609767541.Spec : Prop :=
  ∀ n, P9221473701609767541.a n = A008766 n

end A008766

/-! ## A008766.P7535864286771659921

`A173722(n+2)-A181120(n+2)`
-/

namespace A008766.P7535864286771659921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173722 (n + 2) - A181120 (n + 2)

end

end A008766.P7535864286771659921

namespace A008766

/-- `A173722(n+2)-A181120(n+2)` -/
def P7535864286771659921.Spec : Prop :=
  ∀ n, P7535864286771659921.a n = A008766 n

end A008766

/-! ## A008766.P18157919014496674250

`A001400(2*n)-A122046(n+2)`
-/

namespace A008766.P18157919014496674250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001400 (2 * n) - A122046 (n + 2)

end

end A008766.P18157919014496674250

namespace A008766

/-- `A001400(2*n)-A122046(n+2)` -/
def P18157919014496674250.Spec : Prop :=
  ∀ n, P18157919014496674250.a n = A008766 n

end A008766

/-! ## A008766.P11872290578165188038

`A266769(n+1)-(A266755(2*n+1)+A266755(n+1))`
-/

namespace A008766.P11872290578165188038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266769 (n + 1) - (A266755 (2 * n + 1) + A266755 (n + 1))

end

end A008766.P11872290578165188038

namespace A008766

/-- `A266769(n+1)-(A266755(2*n+1)+A266755(n+1))` -/
def P11872290578165188038.Spec : Prop :=
  ∀ n, P11872290578165188038.a n = A008766 n

end A008766

/-! ## A008766.P16244567817222545548

`∑[A103221(A002620(n)+n)]`
-/

namespace A008766.P16244567817222545548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 (A002620 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008766.P16244567817222545548

namespace A008766

/-- `∑[A103221(A002620(n)+n)]` -/
def P16244567817222545548.Spec : Prop :=
  ∀ n, P16244567817222545548.a n = A008766 n

end A008766

/-! ## A008766.P9150165889652874749

`∑[A103221(∑[A008619(n)]-1)]`
-/

namespace A008766.P9150165889652874749
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 (∑ j ∈ Finset.range (n + 1), f2 j - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008766.P9150165889652874749

namespace A008766

/-- `∑[A103221(∑[A008619(n)]-1)]` -/
def P9150165889652874749.Spec : Prop :=
  ∀ n, P9150165889652874749.a n = A008766 n

end A008766

/-! ## A008766.P11930945188215362038

`∑[A103221(A173151(2*n+1)-1)]`
-/

namespace A008766.P11930945188215362038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 (A173151 (2 * n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008766.P11930945188215362038

namespace A008766

/-- `∑[A103221(A173151(2*n+1)-1)]` -/
def P11930945188215362038.Spec : Prop :=
  ∀ n, P11930945188215362038.a n = A008766 n

end A008766

/-! ## A008766.P7352164244468909345

`∑[A008615(∑[A008619(n)]+1)]`
-/

namespace A008766.P7352164244468909345
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (∑ j ∈ Finset.range (n + 1), f2 j + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008766.P7352164244468909345

namespace A008766

/-- `∑[A008615(∑[A008619(n)]+1)]` -/
def P7352164244468909345.Spec : Prop :=
  ∀ n, P7352164244468909345.a n = A008766 n

end A008766

/-! ## A008766.P13349490750983694919

`∑[A008615(A008797(2*n)+1)]`
-/

namespace A008766.P13349490750983694919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (A008797 (2 * n) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008766.P13349490750983694919

namespace A008766

/-- `∑[A008615(A008797(2*n)+1)]` -/
def P13349490750983694919.Spec : Prop :=
  ∀ n, P13349490750983694919.a n = A008766 n

end A008766

/-!
# A008767: a(n) = floor(n/7)*ceiling(n/7).

The programs for A008767, the canonical program `A008767.P5428584644752224305` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008767 has offset 0).

The definition of A008767 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(n/7)*ceil(n/7)` (program `A008767.P5428584644752224305`, by `A008767.P5428584644752224305.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A008767.P5428584644752224305

`floor(n/7)*ceil(n/7)`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A008767

/-- `floor(n/7)*ceil(n/7)` -/
def P5428584644752224305.Spec : Prop :=
  ∀ n, P5428584644752224305.a n = A008767 n

theorem P5428584644752224305.correct : P5428584644752224305.Spec := by
  intro n
  simp only [A008767]

end A008767

/-! ## A008767.P15063914358874721918

`A008238(n-A057357(n+1))`
-/

namespace A008767.P15063914358874721918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008238 ((n : ℤ) - A057357 (n + 1)).toNat

end

end A008767.P15063914358874721918

namespace A008767

/-- `A008238(n-A057357(n+1))` -/
def P15063914358874721918.Spec : Prop :=
  ∀ n, P15063914358874721918.a n = A008767 n

end A008767

/-! ## A008767.P6341221960100980248

`A008737(2*(n+1)-A047592(n+2))`
-/

namespace A008767.P6341221960100980248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008737 ((2 * (n + 1) : ℤ) - A047592 (n + 2)).toNat

end

end A008767.P6341221960100980248

namespace A008767

/-- `A008737(2*(n+1)-A047592(n+2))` -/
def P6341221960100980248.Spec : Prop :=
  ∀ n, P6341221960100980248.a n = A008767 n

end A008767

/-! ## A008767.P17655454748344170481

`A008238(n-A057353(A057358(n+1)))`
-/

namespace A008767.P17655454748344170481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008238 ((n : ℤ) - A057353 (A057358 (n + 1)).toNat).toNat

end

end A008767.P17655454748344170481

namespace A008767

/-- `A008238(n-A057353(A057358(n+1)))` -/
def P17655454748344170481.Spec : Prop :=
  ∀ n, P17655454748344170481.a n = A008767 n

end A008767

/-! ## A008767.P14982804255166284157

`A008838(A004776(n+1))`
-/

namespace A008767.P14982804255166284157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008838 (A004776 (n + 1)).toNat

end

end A008767.P14982804255166284157

namespace A008767

/-- `A008838(A004776(n+1))` -/
def P14982804255166284157.Spec : Prop :=
  ∀ n, P14982804255166284157.a n = A008767 n

end A008767

/-! ## A008767.P14301222495251896092

`A008838(A004777(n+1))`
-/

namespace A008767.P14301222495251896092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008838 (A004777 (n + 1)).toNat

end

end A008767.P14301222495251896092

namespace A008767

/-- `A008838(A004777(n+1))` -/
def P14301222495251896092.Spec : Prop :=
  ∀ n, P14301222495251896092.a n = A008767 n

end A008767

/-! ## A008767.P13607255516831641011

`A008838(A047565(n+1))`
-/

namespace A008767.P13607255516831641011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008838 (A047565 (n + 1)).toNat

end

end A008767.P13607255516831641011

namespace A008767

/-- `A008838(A047565(n+1))` -/
def P13607255516831641011.Spec : Prop :=
  ∀ n, P13607255516831641011.a n = A008767 n

end A008767

/-! ## A008767.P15379863552973117011

`A008838(A047573(n+1))`
-/

namespace A008767.P15379863552973117011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008838 (A047573 (n + 1)).toNat

end

end A008767.P15379863552973117011

namespace A008767

/-- `A008838(A047573(n+1))` -/
def P15379863552973117011.Spec : Prop :=
  ∀ n, P15379863552973117011.a n = A008767 n

end A008767

/-! ## A008767.P7284031751383309485

`A008838(A047588(n+1))`
-/

namespace A008767.P7284031751383309485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008838 (A047588 (n + 1)).toNat

end

end A008767.P7284031751383309485

namespace A008767

/-- `A008838(A047588(n+1))` -/
def P7284031751383309485.Spec : Prop :=
  ∀ n, P7284031751383309485.a n = A008767 n

end A008767

/-! ## A008767.P9118590574626073548

`A008838(A047594(n+1))`
-/

namespace A008767.P9118590574626073548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008838 (A047594 (n + 1)).toNat

end

end A008767.P9118590574626073548

namespace A008767

/-- `A008838(A047594(n+1))` -/
def P9118590574626073548.Spec : Prop :=
  ∀ n, P9118590574626073548.a n = A008767 n

end A008767

/-! ## A008767.P10314314016708801648

`A008838(A047595(n+1))`
-/

namespace A008767.P10314314016708801648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008838 (A047595 (n + 1)).toNat

end

end A008767.P10314314016708801648

namespace A008767

/-- `A008838(A047595(n+1))` -/
def P10314314016708801648.Spec : Prop :=
  ∀ n, P10314314016708801648.a n = A008767 n

end A008767

/-! ## A008767.P12397055987675600849

`A008838(A004774(n+2))`
-/

namespace A008767.P12397055987675600849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008838 (A004774 (n + 2)).toNat

end

end A008767.P12397055987675600849

namespace A008767

/-- `A008838(A004774(n+2))` -/
def P12397055987675600849.Spec : Prop :=
  ∀ n, P12397055987675600849.a n = A008767 n

end A008767

/-! ## A008767.P18162853541783274660

`A008838(A004775(n+2))`
-/

namespace A008767.P18162853541783274660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008838 (A004775 (n + 2)).toNat

end

end A008767.P18162853541783274660

namespace A008767

/-- `A008838(A004775(n+2))` -/
def P18162853541783274660.Spec : Prop :=
  ∀ n, P18162853541783274660.a n = A008767 n

end A008767

/-! ## A008767.P12542530972716180598

`A008857(A272574(n))`
-/

namespace A008767.P12542530972716180598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008857 (A272574 n).toNat

end

end A008767.P12542530972716180598

namespace A008767

/-- `A008857(A272574(n))` -/
def P12542530972716180598.Spec : Prop :=
  ∀ n, P12542530972716180598.a n = A008767 n

end A008767

/-! ## A008767.P3106398362675951390

`A008857(A060464(n+1))`
-/

namespace A008767.P3106398362675951390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008857 (A060464 (n + 1)).toNat

end

end A008767.P3106398362675951390

namespace A008767

/-- `A008857(A060464(n+1))` -/
def P3106398362675951390.Spec : Prop :=
  ∀ n, P3106398362675951390.a n = A008767 n

end A008767

/-! ## A008767.P7115918723621953974

`A008857(2*A004777(n+1)-n)`
-/

namespace A008767.P7115918723621953974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008857 (2 * A004777 (n + 1) - (n : ℤ)).toNat

end

end A008767.P7115918723621953974

namespace A008767

/-- `A008857(2*A004777(n+1)-n)` -/
def P7115918723621953974.Spec : Prop :=
  ∀ n, P7115918723621953974.a n = A008767 n

end A008767

/-! ## A008767.P8077277212560757861

`A008857(A004777(n+1)+A004777(n+1)-n)`
-/

namespace A008767.P8077277212560757861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008857 (A004777 (n + 1) + (A004777 (n + 1) - (n : ℤ))).toNat

end

end A008767.P8077277212560757861

namespace A008767

/-- `A008857(A004777(n+1)+A004777(n+1)-n)` -/
def P8077277212560757861.Spec : Prop :=
  ∀ n, P8077277212560757861.a n = A008767 n

end A008767

/-!
# A008768: Expansion of (1+x^7)/((1-x)*(1-x^2)*(1-x^3)*(1-x^4)).

The programs for A008768, the canonical program `A008768.P994214969491280534` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008768 has offset 0).

The definition of A008768 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+x^7)/(1-x-x^2+2x^5-x^8-x^9+x^10))` (program `A008768.P994214969491280534`, by `A008768.P994214969491280534.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A008768.P12737830897528436697

`floor((2*n^3+9*n²+72*n+160)/144)`
-/

namespace A008768.P12737830897528436697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 * n ^ 3 + 9 * n ^ 2 + 72 * n + 160 : ℚ) / 144⌋

end

end A008768.P12737830897528436697

namespace A008768

/-- `floor((2*n^3+9*n²+72*n+160)/144)` -/
def P12737830897528436697.Spec : Prop :=
  ∀ n, P12737830897528436697.a n = A008768 n

end A008768

/-! ## A008768.P994214969491280534

`ogf((1+x^7)/(1-x-x^2+2x^5-x^8-x^9+x^10))`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A008768

/-- `ogf((1+x^7)/(1-x-x^2+2x^5-x^8-x^9+x^10))` -/
def P994214969491280534.Spec : Prop :=
  ∀ n, P994214969491280534.a n = A008768 n

theorem P994214969491280534.correct : P994214969491280534.Spec := by
  intro n
  simp only [A008768]

end A008768

/-! ## A008768.P3560684987255439841

`A008764(n)-A069905(n)`
-/

namespace A008768.P3560684987255439841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008764 n - A069905 n

end

end A008768.P3560684987255439841

namespace A008768

/-- `A008764(n)-A069905(n)` -/
def P3560684987255439841.Spec : Prop :=
  ∀ n, P3560684987255439841.a n = A008768 n

end A008768

/-! ## A008768.P1472851333848097129

`∑[A008747(n)-A001971(n+1)]`
-/

namespace A008768.P1472851333848097129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008747 n - A001971 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008768.P1472851333848097129

namespace A008768

/-- `∑[A008747(n)-A001971(n+1)]` -/
def P1472851333848097129.Spec : Prop :=
  ∀ n, P1472851333848097129.a n = A008768 n

end A008768

/-! ## A008768.P17357736631633930971

`A026810(n+1)+A026810(n)+A008619(n)`
-/

namespace A008768.P17357736631633930971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026810 (n + 1) + (A026810 n + A008619 n)

end

end A008768.P17357736631633930971

namespace A008768

/-- `A026810(n+1)+A026810(n)+A008619(n)` -/
def P17357736631633930971.Spec : Prop :=
  ∀ n, P17357736631633930971.a n = A008768 n

end A008768

/-! ## A008768.P9473576876706679114

`A008766(n+1)+A008619(n)-A001399(n+1)`
-/

namespace A008768.P9473576876706679114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008766 (n + 1) + (A008619 n - A001399 (n + 1))

end

end A008768.P9473576876706679114

namespace A008768

/-- `A008766(n+1)+A008619(n)-A001399(n+1)` -/
def P9473576876706679114.Spec : Prop :=
  ∀ n, P9473576876706679114.a n = A008768 n

end A008768

/-! ## A008768.P7574157548293993365

`A026810(n+1)+A065033(n+1)+A026810(n)`
-/

namespace A008768.P7574157548293993365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026810 (n + 1) + (A065033 (n + 1) + A026810 n)

end

end A008768.P7574157548293993365

namespace A008768

/-- `A026810(n+1)+A065033(n+1)+A026810(n)` -/
def P7574157548293993365.Spec : Prop :=
  ∀ n, P7574157548293993365.a n = A008768 n

end A008768

/-! ## A008768.P2905771781368871970

`A001400(n+1)+A001400(n)-A008747(n+1)`
-/

namespace A008768.P2905771781368871970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001400 (n + 1) + (A001400 n - A008747 (n + 1))

end

end A008768.P2905771781368871970

namespace A008768

/-- `A001400(n+1)+A001400(n)-A008747(n+1)` -/
def P2905771781368871970.Spec : Prop :=
  ∀ n, P2905771781368871970.a n = A008768 n

end A008768

/-! ## A008768.P14596341523130815537

`A175870(n+1)-A004526(A004526(n+3))`
-/

namespace A008768.P14596341523130815537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175870 (n + 1) - A004526 (A004526 (n + 3)).toNat

end

end A008768.P14596341523130815537

namespace A008768

/-- `A175870(n+1)-A004526(A004526(n+3))` -/
def P14596341523130815537.Spec : Prop :=
  ∀ n, P14596341523130815537.a n = A008768 n

end A008768

/-! ## A008768.P17833719663422460777

`A008764(n)-A005044(2*n)`
-/

namespace A008768.P17833719663422460777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008764 n - A005044 (2 * n)

end

end A008768.P17833719663422460777

namespace A008768

/-- `A008764(n)-A005044(2*n)` -/
def P17833719663422460777.Spec : Prop :=
  ∀ n, P17833719663422460777.a n = A008768 n

end A008768

/-! ## A008768.P6922924693006403521

`∑[A103221(abs(A083392(n)+2))]`
-/

namespace A008768.P6922924693006403521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 |A083392 n + 2|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008768.P6922924693006403521

namespace A008768

/-- `∑[A103221(abs(A083392(n)+2))]` -/
def P6922924693006403521.Spec : Prop :=
  ∀ n, P6922924693006403521.a n = A008768 n

end A008768

/-! ## A008768.P4118456242082146163

`A110654(n+1)+∑[A008615(A004652(n+1))]`
-/

namespace A008768.P4118456242082146163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (A004652 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008768.P4118456242082146163

namespace A008768

/-- `A110654(n+1)+∑[A008615(A004652(n+1))]` -/
def P4118456242082146163.Spec : Prop :=
  ∀ n, P4118456242082146163.a n = A008768 n

end A008768

/-!
# A008769: Expansion of (1+x^8)/((1-x)*(1-x^2)*(1-x^3)*(1-x^4)).

The programs for A008769, the canonical program `A008769.P11265615153727163394` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008769 has offset 0).

The definition of A008769 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+x^8)/(1-x-x^2+2x^5-x^8-x^9+x^10))` (program `A008769.P11265615153727163394`, by `A008769.P11265615153727163394.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A008769.P11265615153727163394

`ogf((1+x^8)/(1-x-x^2+2x^5-x^8-x^9+x^10))`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A008769

/-- `ogf((1+x^8)/(1-x-x^2+2x^5-x^8-x^9+x^10))` -/
def P11265615153727163394.Spec : Prop :=
  ∀ n, P11265615153727163394.a n = A008769 n

theorem P11265615153727163394.correct : P11265615153727163394.Spec := by
  intro n
  simp only [A008769]

end A008769

/-! ## A008769.P8760293583477393782

`round((n+1)*(2*n²+4*n+83+9*(-1)^n)/144)`
-/

namespace A008769.P8760293583477393782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((n + 1 : ℤ) * ((2 * n ^ 2 + 4 * n + 83 : ℤ) + 9 * (-1) ^ n) : ℚ) / 144)

end

end A008769.P8760293583477393782

namespace A008769

/-- `round((n+1)*(2*n²+4*n+83+9*(-1)^n)/144)` -/
def P8760293583477393782.Spec : Prop :=
  ∀ n, P8760293583477393782.a n = A008769 n

end A008769

/-! ## A008769.P10916699639316095570

`a(n-1)+a(n-2)-2*a(n-5)+a(n-8)+a(n-9)-a(n-10)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=3, a(4)=5, a(5)=6, a(6)=9, a(7)=11, a(8)=16, a(9)=19`
-/

namespace A008769.P10916699639316095570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2, 3, 5, 6, 9, 11, 16, 19] fun n a =>
  a (n - 1) + a (n - 2) - 2 * a (n - 5) + a (n - 8) + a (n - 9) - a (n - 10)

end

end A008769.P10916699639316095570

namespace A008769

/-- `a(n-1)+a(n-2)-2*a(n-5)+a(n-8)+a(n-9)-a(n-10)` -/
def P10916699639316095570.Spec : Prop :=
  ∀ n, P10916699639316095570.a n = A008769 n

end A008769

/-! ## A008769.P9638629931728429741

`∑[ceil(A028242(n)²/6)]`
-/

namespace A008769.P9638629931728429741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A028242 n ^ 2 : ℚ) / 6⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008769.P9638629931728429741

namespace A008769

/-- `∑[ceil(A028242(n)²/6)]` -/
def P9638629931728429741.Spec : Prop :=
  ∀ n, P9638629931728429741.a n = A008769 n

end A008769

/-! ## A008769.P12815015632100532497

`A266769(n)-A001971(n)`
-/

namespace A008769.P12815015632100532497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266769 n - A001971 n

end

end A008769.P12815015632100532497

namespace A008769

/-- `A266769(n)-A001971(n)` -/
def P12815015632100532497.Spec : Prop :=
  ∀ n, P12815015632100532497.a n = A008769 n

end A008769

/-! ## A008769.P5086913264179480006

`2*A001400(n)-A008747(n)`
-/

namespace A008769.P5086913264179480006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001400 n - A008747 n

end

end A008769.P5086913264179480006

namespace A008769

/-- `2*A001400(n)-A008747(n)` -/
def P5086913264179480006.Spec : Prop :=
  ∀ n, P5086913264179480006.a n = A008769 n

end A008769

/-! ## A008769.P7769468394825555133

`∑[A008731(n)-A059169(n+1)]`
-/

namespace A008769.P7769468394825555133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008731 n - A059169 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008769.P7769468394825555133

namespace A008769

/-- `∑[A008731(n)-A059169(n+1)]` -/
def P7769468394825555133.Spec : Prop :=
  ∀ n, P7769468394825555133.a n = A008769 n

end A008769

/-! ## A008769.P6337677388158679108

`A004396(n+1)+2*A026810(n)`
-/

namespace A008769.P6337677388158679108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (n + 1) + 2 * A026810 n

end

end A008769.P6337677388158679108

namespace A008769

/-- `A004396(n+1)+2*A026810(n)` -/
def P6337677388158679108.Spec : Prop :=
  ∀ n, P6337677388158679108.a n = A008769 n

end A008769

/-! ## A008769.P5803130992193676371

`∑[A008748(n)-A110654(A110654(n)²)]`
-/

namespace A008769.P5803130992193676371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008748 n - A110654 (A110654 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008769.P5803130992193676371

namespace A008769

/-- `∑[A008748(n)-A110654(A110654(n)²)]` -/
def P5803130992193676371.Spec : Prop :=
  ∀ n, P5803130992193676371.a n = A008769 n

end A008769

/-! ## A008769.P18102231088135186769

`∑[A112689(A028242(n)²)]`
-/

namespace A008769.P18102231088135186769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112689 (A028242 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008769.P18102231088135186769

namespace A008769

/-- `∑[A112689(A028242(n)²)]` -/
def P18102231088135186769.Spec : Prop :=
  ∀ n, P18102231088135186769.a n = A008769 n

end A008769

/-! ## A008769.P9789290454478931044

`∑[A112689((1-A001057(n))²)]`
-/

namespace A008769.P9789290454478931044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112689 ((1 - A001057 n) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008769.P9789290454478931044

namespace A008769

/-- `∑[A112689((1-A001057(n))²)]` -/
def P9789290454478931044.Spec : Prop :=
  ∀ n, P9789290454478931044.a n = A008769 n

end A008769

/-! ## A008769.P5659861861545092700

`∑[A112689(A001057(xor(1, n))²)]`
-/

namespace A008769.P5659861861545092700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112689 (A001057 (Nat.xor 1 n) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008769.P5659861861545092700

namespace A008769

/-- `∑[A112689(A001057(xor(1, n))²)]` -/
def P5659861861545092700.Spec : Prop :=
  ∀ n, P5659861861545092700.a n = A008769 n

end A008769

/-! ## A008769.P582917834356595093

`∑[A112689((A000035(n)-A008619(n))²)]`
-/

namespace A008769.P582917834356595093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112689 ((A000035 n - A008619 n) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008769.P582917834356595093

namespace A008769

/-- `∑[A112689((A000035(n)-A008619(n))²)]` -/
def P582917834356595093.Spec : Prop :=
  ∀ n, P582917834356595093.a n = A008769 n

end A008769

/-! ## A008769.P10045643711490162218

`∑[A103221(A028242(n)²+1)]`
-/

namespace A008769.P10045643711490162218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 (A028242 n ^ 2 + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008769.P10045643711490162218

namespace A008769

/-- `∑[A103221(A028242(n)²+1)]` -/
def P10045643711490162218.Spec : Prop :=
  ∀ n, P10045643711490162218.a n = A008769 n

end A008769

/-!
# A008770: Expansion of (1+x^9)/((1-x)*(1-x^2)*(1-x^3)*(1-x^4)).

The programs for A008770, the canonical program `A008770.P9721296457101389235` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008770 has offset 0).

The definition of A008770 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+x^9)/(1-x-x^2+2x^5-x^8-x^9+x^10))` (program `A008770.P9721296457101389235`, by `A008770.P9721296457101389235.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A008770.P9721296457101389235

`ogf((1+x^9)/(1-x-x^2+2x^5-x^8-x^9+x^10))`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A008770

/-- `ogf((1+x^9)/(1-x-x^2+2x^5-x^8-x^9+x^10))` -/
def P9721296457101389235.Spec : Prop :=
  ∀ n, P9721296457101389235.a n = A008770 n

theorem P9721296457101389235.correct : P9721296457101389235.Spec := by
  intro n
  simp only [A008770]

end A008770

/-! ## A008770.P4042429584885196860

`A175870(n)+Δ[ceil(n²/24)]`
-/

namespace A008770.P4042429584885196860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n ^ 2 : ℚ) / 24⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175870 n + (f1 (n + 1) - f1 n)

end

end A008770.P4042429584885196860

namespace A008770

/-- `A175870(n)+Δ[ceil(n²/24)]` -/
def P4042429584885196860.Spec : Prop :=
  ∀ n, P4042429584885196860.a n = A008770 n

end A008770

/-! ## A008770.P8330427216411959763

`A008766(n)-A211540(n)`
-/

namespace A008770.P8330427216411959763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008766 n - A211540 n

end

end A008770.P8330427216411959763

namespace A008770

/-- `A008766(n)-A211540(n)` -/
def P8330427216411959763.Spec : Prop :=
  ∀ n, P8330427216411959763.a n = A008770 n

end A008770

/-! ## A008770.P6569818282342607864

`∑[A008749(n)]-A175826(n)`
-/

namespace A008770.P6569818282342607864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008749 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A175826 n

end

end A008770.P6569818282342607864

namespace A008770

/-- `∑[A008749(n)]-A175826(n)` -/
def P6569818282342607864.Spec : Prop :=
  ∀ n, P6569818282342607864.a n = A008770 n

end A008770

/-! ## A008770.P13625451171678729036

`A008766(n)+n+1-A001399(n+1)`
-/

namespace A008770.P13625451171678729036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008766 n + ((n + 1 : ℤ) - A001399 (n + 1))

end

end A008770.P13625451171678729036

namespace A008770

/-- `A008766(n)+n+1-A001399(n+1)` -/
def P13625451171678729036.Spec : Prop :=
  ∀ n, P13625451171678729036.a n = A008770 n

end A008770

/-! ## A008770.P1122465691146760722

`A008763(n+1)+1-Δ[A001400(n)]+n`
-/

namespace A008770.P1122465691146760722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001400 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008763 (n + 1) + (1 - (f1 (n + 1) - f1 n) + (n : ℤ))

end

end A008770.P1122465691146760722

namespace A008770

/-- `A008763(n+1)+1-Δ[A001400(n)]+n` -/
def P1122465691146760722.Spec : Prop :=
  ∀ n, P1122465691146760722.a n = A008770 n

end A008770

/-! ## A008770.P2083796673915992410

`A347586(n+1)+A001400(n)-A014591(n+1)`
-/

namespace A008770.P2083796673915992410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347586 (n + 1) + (A001400 n - A014591 (n + 1))

end

end A008770.P2083796673915992410

namespace A008770

/-- `A347586(n+1)+A001400(n)-A014591(n+1)` -/
def P2083796673915992410.Spec : Prop :=
  ∀ n, P2083796673915992410.a n = A008770 n

end A008770

/-!
# A008771: Expansion of (1+x^10)/((1-x)*(1-x^2)*(1-x^3)*(1-x^4)).

The programs for A008771, the canonical program `A008771.P885236492134702628` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008771 has offset 0).

The definition of A008771 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+x^10)/(1-x-x^2+2x^5-x^8-x^9+x^10))` (program `A008771.P885236492134702628`, by `A008771.P885236492134702628.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A008771.P885236492134702628

`ogf((1+x^10)/(1-x-x^2+2x^5-x^8-x^9+x^10))`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A008771

/-- `ogf((1+x^10)/(1-x-x^2+2x^5-x^8-x^9+x^10))` -/
def P885236492134702628.Spec : Prop :=
  ∀ n, P885236492134702628.a n = A008771 n

theorem P885236492134702628.correct : P885236492134702628.Spec := by
  intro n
  simp only [A008771]

end A008771

/-! ## A008771.P17240043546118174262

`ceil(2/(n+1))+A008763(n)-1+n`
-/

namespace A008771.P17240043546118174262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈2 / (n + 1 : ℚ)⌉ + (A008763 n - 1 + (n : ℤ))

end

end A008771.P17240043546118174262

namespace A008771

/-- `ceil(2/(n+1))+A008763(n)-1+n` -/
def P17240043546118174262.Spec : Prop :=
  ∀ n, P17240043546118174262.a n = A008771 n

end A008771

/-! ## A008771.P6765744805422310191

`A028310(n)+A008763(n)`
-/

namespace A008771.P6765744805422310191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n + A008763 n

end

end A008771.P6765744805422310191

namespace A008771

/-- `A028310(n)+A008763(n)` -/
def P6765744805422310191.Spec : Prop :=
  ∀ n, P6765744805422310191.a n = A008771 n

end A008771

/-! ## A008771.P5821701503938573033

`A004277(n)+A008763(n)-n`
-/

namespace A008771.P5821701503938573033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n + (A008763 n - (n : ℤ))

end

end A008771.P5821701503938573033

namespace A008771

/-- `A004277(n)+A008763(n)-n` -/
def P5821701503938573033.Spec : Prop :=
  ∀ n, P5821701503938573033.a n = A008771 n

end A008771

/-! ## A008771.P17910940809762642426

`A001400(n)+A347586(n)-A014591(n)`
-/

namespace A008771.P17910940809762642426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001400 n + (A347586 n - A014591 n)

end

end A008771.P17910940809762642426

namespace A008771

/-- `A001400(n)+A347586(n)-A014591(n)` -/
def P17910940809762642426.Spec : Prop :=
  ∀ n, P17910940809762642426.a n = A008771 n

end A008771

/-! ## A008771.P9064930179277905818

`A008763(n)+n+1-A003415(A078833(n+1))`
-/

namespace A008771.P9064930179277905818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008763 n + ((n + 1 : ℤ) - A003415 (A078833 (n + 1)).toNat)

end

end A008771.P9064930179277905818

namespace A008771

/-- `A008763(n)+n+1-A003415(A078833(n+1))` -/
def P9064930179277905818.Spec : Prop :=
  ∀ n, P9064930179277905818.a n = A008771 n

end A008771

/-! ## A008771.P11744450555460849567

`A008763(n)+n+1-A072927(A001223(n+1)+1)`
-/

namespace A008771.P11744450555460849567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008763 n + ((n + 1 : ℤ) - A072927 (A001223 (n + 1) + 1).toNat)

end

end A008771.P11744450555460849567

namespace A008771

/-- `A008763(n)+n+1-A072927(A001223(n+1)+1)` -/
def P11744450555460849567.Spec : Prop :=
  ∀ n, P11744450555460849567.a n = A008771 n

end A008771

/-! ## A008771.P4448442850065969006

`A065033(2*n)+A008763(n)`
-/

namespace A008771.P4448442850065969006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (2 * n) + A008763 n

end

end A008771.P4448442850065969006

namespace A008771

/-- `A065033(2*n)+A008763(n)` -/
def P4448442850065969006.Spec : Prop :=
  ∀ n, P4448442850065969006.a n = A008771 n

end A008771

/-! ## A008771.P13507669033159411834

`A008763(n)+A049084(A231720(n)+1)+n`
-/

namespace A008771.P13507669033159411834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008763 n + (A049084 (A231720 n + 1).toNat + (n : ℤ))

end

end A008771.P13507669033159411834

namespace A008771

/-- `A008763(n)+A049084(A231720(n)+1)+n` -/
def P13507669033159411834.Spec : Prop :=
  ∀ n, P13507669033159411834.a n = A008771 n

end A008771

/-! ## A008771.P13952104924411632807

`A131923(∑[n]-n)+A008763(n)`
-/

namespace A008771.P13952104924411632807
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131923 (∑ j ∈ Finset.range (n + 1), f1 j - n) + A008763 n

end

end A008771.P13952104924411632807

namespace A008771

/-- `A131923(∑[n]-n)+A008763(n)` -/
def P13952104924411632807.Spec : Prop :=
  ∀ n, P13952104924411632807.a n = A008771 n

end A008771

/-! ## A008771.P12407979098830718582

`A008763(n)+A003990(∑[n-1]+2)`
-/

namespace A008771.P12407979098830718582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008763 n + A003990 (∑ j ∈ Finset.range (n + 1), f1 j + 2).toNat

end

end A008771.P12407979098830718582

namespace A008771

/-- `A008763(n)+A003990(∑[n-1]+2)` -/
def P12407979098830718582.Spec : Prop :=
  ∀ n, P12407979098830718582.a n = A008771 n

end A008771

/-!
# A008772: Expansion of (1+x^11)/((1-x)*(1-x^2)*(1-x^3)*(1-x^4)).

The programs for A008772, the canonical program `A008772.P18286427070143525983` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008772 has offset 0).

The definition of A008772 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+x^11)/(1-x-x^2+2x^5-x^8-x^9+x^10))` (program `A008772.P18286427070143525983`, by `A008772.P18286427070143525983.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A008772.P18286427070143525983

`ogf((1+x^11)/(1-x-x^2+2x^5-x^8-x^9+x^10))`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A008772

/-- `ogf((1+x^11)/(1-x-x^2+2x^5-x^8-x^9+x^10))` -/
def P18286427070143525983.Spec : Prop :=
  ∀ n, P18286427070143525983.a n = A008772 n

theorem P18286427070143525983.correct : P18286427070143525983.Spec := by
  intro n
  simp only [A008772]

end A008772

/-! ## A008772.P7844630072863118710

`A008768(n)-A211540(A289207(n))`
-/

namespace A008772.P7844630072863118710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008768 n - A211540 (A289207 n).toNat

end

end A008772.P7844630072863118710

namespace A008772

/-- `A008768(n)-A211540(A289207(n))` -/
def P7844630072863118710.Spec : Prop :=
  ∀ n, P7844630072863118710.a n = A008772 n

end A008772

/-! ## A008772.P6664070555731163100

`A175870(A134478(C(n, 2)))+floor(n/2)`
-/

namespace A008772.P6664070555731163100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175870 (A134478 (Nat.choose n 2)).toNat + ⌊(n : ℚ) / 2⌋

end

end A008772.P6664070555731163100

namespace A008772

/-- `A175870(A134478(C(n, 2)))+floor(n/2)` -/
def P6664070555731163100.Spec : Prop :=
  ∀ n, P6664070555731163100.a n = A008772 n

end A008772

/-! ## A008772.P16422622908520666061

`∑[A007966(A029141(n)²)]`
-/

namespace A008772.P16422622908520666061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007966 (A029141 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008772.P16422622908520666061

namespace A008772

/-- `∑[A007966(A029141(n)²)]` -/
def P16422622908520666061.Spec : Prop :=
  ∀ n, P16422622908520666061.a n = A008772 n

end A008772

/-! ## A008772.P8939378697041297889

`∑[A029141(n)%A076491(n)]`
-/

namespace A008772.P8939378697041297889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A029141 n) (A076491 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008772.P8939378697041297889

namespace A008772

/-- `∑[A029141(n)%A076491(n)]` -/
def P8939378697041297889.Spec : Prop :=
  ∀ n, P8939378697041297889.a n = A008772 n

end A008772

/-!
# A008773: Expansion of (1+x^12)/((1-x)*(1-x^2)*(1-x^3)*(1-x^4)).

The programs for A008773, the canonical program `A008773.P17776186598649952293` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008773 has offset 0).

The definition of A008773 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+x^12)/(1-x-x^2+2x^5-x^8-x^9+x^10))` (program `A008773.P17776186598649952293`, by `A008773.P17776186598649952293.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A008773.P17776186598649952293

`ogf((1+x^12)/(1-x-x^2+2x^5-x^8-x^9+x^10))`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A008773

/-- `ogf((1+x^12)/(1-x-x^2+2x^5-x^8-x^9+x^10))` -/
def P17776186598649952293.Spec : Prop :=
  ∀ n, P17776186598649952293.a n = A008773 n

theorem P17776186598649952293.correct : P17776186598649952293.Spec := by
  intro n
  simp only [A008773]

end A008773

/-! ## A008773.P6985594664465043259

`2*A001400(n)-A028309(n)`
-/

namespace A008773.P6985594664465043259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001400 n - A028309 n

end

end A008773.P6985594664465043259

namespace A008773

/-- `2*A001400(n)-A028309(n)` -/
def P6985594664465043259.Spec : Prop :=
  ∀ n, P6985594664465043259.a n = A008773 n

end A008773

/-! ## A008773.P16050121980007357297

`A028309(n)+A005843(A001400(n)-A028309(n))`
-/

namespace A008773.P16050121980007357297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028309 n + A005843 (A001400 n - A028309 n).toNat

end

end A008773.P16050121980007357297

namespace A008773

/-- `A028309(n)+A005843(A001400(n)-A028309(n))` -/
def P16050121980007357297.Spec : Prop :=
  ∀ n, P16050121980007357297.a n = A008773 n

end A008773

/-! ## A008773.P13462307781545360536

`A005843(A001400(n))-A028309(n)`
-/

namespace A008773.P13462307781545360536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A001400 n).toNat - A028309 n

end

end A008773.P13462307781545360536

namespace A008773

/-- `A005843(A001400(n))-A028309(n)` -/
def P13462307781545360536.Spec : Prop :=
  ∀ n, P13462307781545360536.a n = A008773 n

end A008773

/-! ## A008773.P13024380545960205347

`∑[A029142(n)%A128148(n)]`
-/

namespace A008773.P13024380545960205347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A029142 n) (A128148 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008773.P13024380545960205347

namespace A008773

/-- `∑[A029142(n)%A128148(n)]` -/
def P13024380545960205347.Spec : Prop :=
  ∀ n, P13024380545960205347.a n = A008773 n

end A008773

/-!
# A008774: Theta series of (probably nonexistent) exceptionally good 16-dimensional sphere packing.

The programs for A008774, there is no canonical definition to state claims against.
-/

/-! ## A008774.P16149601931457393273

`A077609(A244038(n))*A239917(n)`
-/

namespace A008774.P16149601931457393273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077609 (A244038 n).toNat * A239917 n

end

end A008774.P16149601931457393273

/-!
# A008775: Expansion of e.g.f. 2/(1 + cos x * cosh x) in powers of x^4.

The programs for A008775, there is no canonical definition to state claims against.
-/

/-! ## A008775.P5618427248136430808

`A000079(n)*A292607(n)`
-/

namespace A008775.P5618427248136430808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n * A292607 n

end

end A008775.P5618427248136430808

/-! ## A008775.P779797633552403307

`record[A001316(n)]*A292607(n)`
-/

namespace A008775.P779797633552403307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A292607 n

end

end A008775.P779797633552403307

/-! ## A008775.P15295833126634347460

`record[A059268(n)]*A292607(n)`
-/

namespace A008775.P15295833126634347460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A292607 n

end

end A008775.P15295833126634347460

/-!
# A008776: Pisot sequences E(2,6), L(2,6), P(2,6), T(2,6).

The programs for A008776, the canonical program `A008776.P11088121667404015999` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008776 has offset 0).

The definition of A008776 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A008776.P11088121667404015999

`2*3^n`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A008776

/-- `2*3^n` -/
def P11088121667404015999.Spec : Prop :=
  ∀ n, (P11088121667404015999.a n : ℤ) = A008776 n

theorem P11088121667404015999.correct : P11088121667404015999.Spec := by
  intro n
  simp only [A008776]

end A008776

/-!
# A008777: Number of dots and dashes used when representing n-th letter in Morse code.

The programs for A008777, there is no canonical definition to state claims against.
-/

/-! ## A008777.P13323551293143973218

`ceil(sqrt(A105387(n+1)+A105386(n+1)))`
-/

namespace A008777.P13323551293143973218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A105387 (n + 1) + A105386 (n + 1) : ℝ)⌉

end

end A008777.P13323551293143973218

/-! ## A008777.P212623044035536892

`A000120(A105387(n+1)+A105386(n+1))`
-/

namespace A008777.P212623044035536892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A105387 (n + 1) + A105386 (n + 1)).toNat

end

end A008777.P212623044035536892

/-! ## A008777.P14035600181382093121

`A000194(A105387(n+1)+A105386(n+1))`
-/

namespace A008777.P14035600181382093121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A105387 (n + 1) + A105386 (n + 1)).toNat

end

end A008777.P14035600181382093121

/-! ## A008777.P2295162142262679524

`A002487(A105387(n+1)+A105386(n+1))`
-/

namespace A008777.P2295162142262679524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (A105387 (n + 1) + A105386 (n + 1)).toNat

end

end A008777.P2295162142262679524

/-! ## A008777.P5201459852286115090

`A003059(A105387(n+1)+A105386(n+1))`
-/

namespace A008777.P5201459852286115090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003059 (A105387 (n + 1) + A105386 (n + 1)).toNat

end

end A008777.P5201459852286115090

/-!
# A008778: a(n) = (n+1)*(n^2 +8*n +6)/6. Number of n-dimensional partitions of 4. Number of terms in 4th derivative of a function composed with itself n times.

The programs for A008778, the canonical program `A008778.P5727098079324999072` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008778 has offset 0).

The definition of A008778 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)*(n²+8*n+6)/6` (program `A008778.P669441174636503085`, by `A008778.P669441174636503085.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A008778.P669441174636503085

`(n+1)*(n²+8*n+6)/6`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A008778.P669441174636503085
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) * (n ^ 2 + 8 * n + 6) : ℚ) / 6

end

end A008778.P669441174636503085

namespace A008778

/-- `(n+1)*(n²+8*n+6)/6` -/
def P669441174636503085.Spec : Prop :=
  ∀ n, P669441174636503085.a n = (A008778 n : ℚ)

theorem P669441174636503085.correct : P669441174636503085.Spec := by
  intro n
  simp only [A008778, Nat.add_sub_cancel, A008778.P669441174636503085.a, A008778.P5727098079324999072.a, A000217, A000217.P10269402890581615239.a, A000292, A000292.P18322089543142633594.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A008778

/-! ## A008778.P4774454906196409026

`a(n-1)+A034856(n+1)` with `a(0)=1`
-/

namespace A008778.P4774454906196409026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A034856 (n + 1)

end

end A008778.P4774454906196409026

namespace A008778

/-- `a(n-1)+A034856(n+1)` -/
def P4774454906196409026.Spec : Prop :=
  ∀ n, P4774454906196409026.a n = A008778 n

end A008778

/-! ## A008778.P5727098079324999072

`A000217(n)+A000292(n+1)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A008778

/-- `A000217(n)+A000292(n+1)` -/
def P5727098079324999072.Spec : Prop :=
  ∀ n, P5727098079324999072.a n = A008778 n

theorem P5727098079324999072.correct : P5727098079324999072.Spec := by
  intro n
  simp only [A008778]

end A008778

/-! ## A008778.P1276885965041631182

`∑[n]+C(n+3, 3)`
-/

namespace A008778.P1276885965041631182
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + Nat.choose (n + 3) 3

end

end A008778.P1276885965041631182

namespace A008778

/-- `∑[n]+C(n+3, 3)` -/
def P1276885965041631182.Spec : Prop :=
  ∀ n, (P1276885965041631182.a n : ℤ) = A008778 n

end A008778

/-! ## A008778.P12993716622514591998

`∑[∑[n]]+xor(n, -1)²`
-/

namespace A008778.P12993716622514591998
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + Int.xor (n : ℤ) (-1) ^ 2

end

end A008778.P12993716622514591998

namespace A008778

/-- `∑[∑[n]]+xor(n, -1)²` -/
def P12993716622514591998.Spec : Prop :=
  ∀ n, P12993716622514591998.a n = A008778 n

end A008778

/-! ## A008778.P3905205855163105588

`record[C(n, 3)+(1-n)²]`
-/

namespace A008778.P3905205855163105588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose n 3 : ℤ) + (1 - (n : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A008778.P3905205855163105588

namespace A008778

/-- `record[C(n, 3)+(1-n)²]` -/
def P3905205855163105588.Spec : Prop :=
  ∀ n, P3905205855163105588.a n = A008778 n

end A008778

/-! ## A008778.P1725646339158923953

`C(n+2, 3)+(n+1)²`
-/

namespace A008778.P1725646339158923953
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 2) 3 + (n + 1) ^ 2

end

end A008778.P1725646339158923953

namespace A008778

/-- `C(n+2, 3)+(n+1)²` -/
def P1725646339158923953.Spec : Prop :=
  ∀ n, (P1725646339158923953.a n : ℤ) = A008778 n

theorem P1725646339158923953.correct : P1725646339158923953.Spec := by
  intro n
  simp only [A008778, Nat.add_sub_cancel, A008778.P1725646339158923953.a, A008778.P5727098079324999072.a, A000217, A000217.P10269402890581615239.a, A000292, A000292.P18322089543142633594.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A008778

/-! ## A008778.P17023421677503582167

`record[C(n, 3)-n]+1-n`
-/

namespace A008778.P17023421677503582167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose n 3 : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (1 - (n : ℤ))

end

end A008778.P17023421677503582167

namespace A008778

/-- `record[C(n, 3)-n]+1-n` -/
def P17023421677503582167.Spec : Prop :=
  ∀ n, P17023421677503582167.a n = A008778 n

end A008778

/-! ## A008778.P16863078020997583231

`1-(n-record[C(n, 3)-n])`
-/

namespace A008778.P16863078020997583231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose n 3 : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((n : ℤ) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A008778.P16863078020997583231

namespace A008778

/-- `1-(n-record[C(n, 3)-n])` -/
def P16863078020997583231.Spec : Prop :=
  ∀ n, P16863078020997583231.a n = A008778 n

end A008778

/-! ## A008778.P6343816639066110001

`∑[or(1, 2*n)]+∑[∑[n]]`
-/

namespace A008778.P6343816639066110001
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (2 * n)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A008778.P6343816639066110001

namespace A008778

/-- `∑[or(1, 2*n)]+∑[∑[n]]` -/
def P6343816639066110001.Spec : Prop :=
  ∀ n, (P6343816639066110001.a n : ℤ) = A008778 n

end A008778

/-! ## A008778.P5803745466724833686

`∑[xor(1, 2*n)]+∑[∑[n]]`
-/

namespace A008778.P5803745466724833686
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (2 * n)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A008778.P5803745466724833686

namespace A008778

/-- `∑[xor(1, 2*n)]+∑[∑[n]]` -/
def P5803745466724833686.Spec : Prop :=
  ∀ n, (P5803745466724833686.a n : ℤ) = A008778 n

end A008778

/-! ## A008778.P15731362437373079193

`or(∑[∑[n+1]+n], char[1])`
-/

namespace A008778.P15731362437373079193
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor (∑ j ∈ Finset.range (n + 1), f1 j) (if ∃ j, f3 j = n then 1 else 0)

end

end A008778.P15731362437373079193

namespace A008778

/-- `or(∑[∑[n+1]+n], char[1])` -/
def P15731362437373079193.Spec : Prop :=
  ∀ n, (P15731362437373079193.a n : ℤ) = A008778 n

end A008778

/-! ## A008778.P7369656125272343232

`∑[∑[ogf((1+x-x^2)/(1-2x+x^2))]]`
-/

namespace A008778.P7369656125272343232
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, -1] [1, -2, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008778.P7369656125272343232

namespace A008778

/-- `∑[∑[ogf((1+x-x^2)/(1-2x+x^2))]]` -/
def P7369656125272343232.Spec : Prop :=
  ∀ n, P7369656125272343232.a n = A008778 n

end A008778

/-! ## A008778.P3572859150103761851

`ogf((1+x-x^2)/(1-4x+6x^2-4x^3+x^4))`
-/

namespace A008778.P3572859150103761851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, -1] [1, -4, 6, -4, 1] n

end

end A008778.P3572859150103761851

namespace A008778

/-- `ogf((1+x-x^2)/(1-4x+6x^2-4x^3+x^4))` -/
def P3572859150103761851.Spec : Prop :=
  ∀ n, P3572859150103761851.a n = A008778 n

end A008778

/-! ## A008778.P15373029305811350789

`C(n, 2)+C(n+3, 3)+n`
-/

namespace A008778.P15373029305811350789
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2 + Nat.choose (n + 3) 3 + n

end

end A008778.P15373029305811350789

namespace A008778

/-- `C(n, 2)+C(n+3, 3)+n` -/
def P15373029305811350789.Spec : Prop :=
  ∀ n, (P15373029305811350789.a n : ℤ) = A008778 n

theorem P15373029305811350789.correct : P15373029305811350789.Spec := by
  intro n
  simp only [A008778, Nat.add_sub_cancel, A008778.P15373029305811350789.a, A008778.P5727098079324999072.a, A000217, A000217.P10269402890581615239.a, A000292, A000292.P18322089543142633594.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A008778

/-! ## A008778.P10151416166705929124

`∑[∑[n]+1]+lcm(n, n+1)`
-/

namespace A008778.P10151416166705929124
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + Nat.lcm n (n + 1)

end

end A008778.P10151416166705929124

namespace A008778

/-- `∑[∑[n]+1]+lcm(n, n+1)` -/
def P10151416166705929124.Spec : Prop :=
  ∀ n, (P10151416166705929124.a n : ℤ) = A008778 n

end A008778

/-! ## A008778.P11175388879531976037

`a(n-2)+n*(n+4)` with `a(0)=1, a(1)=5`
-/

namespace A008778.P11175388879531976037
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 5] fun n a =>
  a (n - 2) + n * (n + 4)

end

end A008778.P11175388879531976037

namespace A008778

/-- `a(n-2)+n*(n+4)` -/
def P11175388879531976037.Spec : Prop :=
  ∀ n, (P11175388879531976037.a n : ℤ) = A008778 n

end A008778

/-! ## A008778.P9011376600243283390

`∑[∑[n]]+((n+1)%(n+2))²`
-/

namespace A008778.P9011376600243283390
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ((n + 1) % (n + 2)) ^ 2

end

end A008778.P9011376600243283390

namespace A008778

/-- `∑[∑[n]]+((n+1)%(n+2))²` -/
def P9011376600243283390.Spec : Prop :=
  ∀ n, (P9011376600243283390.a n : ℤ) = A008778 n

end A008778

/-! ## A008778.P4738710210570079112

`∑[∑[gcd(n, 2*n)]]+(n+1)²`
-/

namespace A008778.P4738710210570079112
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd n (2 * n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n + 1) ^ 2

end

end A008778.P4738710210570079112

namespace A008778

/-- `∑[∑[gcd(n, 2*n)]]+(n+1)²` -/
def P4738710210570079112.Spec : Prop :=
  ∀ n, (P4738710210570079112.a n : ℤ) = A008778 n

end A008778

/-!
# A008779: Number of n-dimensional partitions of 5.

The programs for A008779, the canonical program `A008779.P8895782709854743686` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008779 has offset 0).

The definition of A008779 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A008779.P9963109622001999360

`(n+1)*(n^3+21*n²+38*n+24)/24`
-/

namespace A008779.P9963109622001999360
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) * (n ^ 3 + 21 * n ^ 2 + 38 * n + 24) : ℚ) / 24

end

end A008779.P9963109622001999360

namespace A008779

/-- `(n+1)*(n^3+21*n²+38*n+24)/24` -/
def P9963109622001999360.Spec : Prop :=
  ∀ n, P9963109622001999360.a n = (A008779 n : ℚ)

theorem P9963109622001999360.correct : P9963109622001999360.Spec := by
  intro n
  simp only [A008779, Nat.add_sub_cancel, A008779.P9963109622001999360.a, A008779.P8895782709854743686.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A008779

/-! ## A008779.P8895782709854743686

`1+6*n+11*C(n, 2)+7*C(n, 3)+C(n, 4)`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A008779

/-- `1+6*n+11*C(n, 2)+7*C(n, 3)+C(n, 4)` -/
def P8895782709854743686.Spec : Prop :=
  ∀ n, (P8895782709854743686.a n : ℤ) = A008779 n

theorem P8895782709854743686.correct : P8895782709854743686.Spec := by
  intro n
  simp only [A008779]

end A008779

/-! ## A008779.P9965460353328866833

`5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=1, a(1)=7, a(2)=24, a(3)=59, a(4)=120`
-/

namespace A008779.P9965460353328866833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 7, 24, 59, 120] fun n a =>
  5 * a (n - 1) - 10 * a (n - 2) + 10 * a (n - 3) - 5 * a (n - 4) + a (n - 5)

end

end A008779.P9965460353328866833

namespace A008779

/-- `5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` -/
def P9965460353328866833.Spec : Prop :=
  ∀ n, P9965460353328866833.a n = A008779 n

end A008779

/-! ## A008779.P16543392504836925657

`C(n+4, 4)+(n+1)*∑[n]`
-/

namespace A008779.P16543392504836925657
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 4) 4 + (n + 1) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A008779.P16543392504836925657

namespace A008779

/-- `C(n+4, 4)+(n+1)*∑[n]` -/
def P16543392504836925657.Spec : Prop :=
  ∀ n, (P16543392504836925657.a n : ℤ) = A008779 n

end A008779

/-! ## A008779.P12076653515964983177

`∑[∑[a(n-1)+n+2]+n²]` with `a(0)=1`
-/

namespace A008779.P12076653515964983177
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f2 =>
  f2 (n - 1) + (n + 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008779.P12076653515964983177

namespace A008779

/-- `∑[∑[a(n-1)+n+2]+n²]` -/
def P12076653515964983177.Spec : Prop :=
  ∀ n, (P12076653515964983177.a n : ℤ) = A008779 n

end A008779

/-! ## A008779.P3282996755398292223

`∑[A008778(n)+n²]`
-/

namespace A008779.P3282996755398292223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n + (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008779.P3282996755398292223

namespace A008779

/-- `∑[A008778(n)+n²]` -/
def P3282996755398292223.Spec : Prop :=
  ∀ n, P3282996755398292223.a n = A008779 n

end A008779

/-! ## A008779.P5879405744718881318

`A005712(n+2)+∑[n²]`
-/

namespace A008779.P5879405744718881318
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005712 (n + 2) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A008779.P5879405744718881318

namespace A008779

/-- `A005712(n+2)+∑[n²]` -/
def P5879405744718881318.Spec : Prop :=
  ∀ n, P5879405744718881318.a n = A008779 n

end A008779

/-! ## A008779.P11178192583996772113

`∑[∑[A056000(n)]]+n+1`
-/

namespace A008779.P11178192583996772113
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056000 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n + 1 : ℤ)

end

end A008779.P11178192583996772113

namespace A008779

/-- `∑[∑[A056000(n)]]+n+1` -/
def P11178192583996772113.Spec : Prop :=
  ∀ n, P11178192583996772113.a n = A008779 n

end A008779

/-! ## A008779.P17252241301517674647

`∑[C(n, 3)]+∑[A056109(n)]`
-/

namespace A008779.P17252241301517674647
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056109 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A008779.P17252241301517674647

namespace A008779

/-- `∑[C(n, 3)]+∑[A056109(n)]` -/
def P17252241301517674647.Spec : Prop :=
  ∀ n, P17252241301517674647.a n = A008779 n

end A008779

/-! ## A008779.P10137971322884535408

`A055417(n)+n*(n+1)²`
-/

namespace A008779.P10137971322884535408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055417 n + (n * (n + 1) ^ 2 : ℤ)

end

end A008779.P10137971322884535408

namespace A008779

/-- `A055417(n)+n*(n+1)²` -/
def P10137971322884535408.Spec : Prop :=
  ∀ n, P10137971322884535408.a n = A008779 n

theorem P10137971322884535408.correct : P10137971322884535408.Spec := by
  intro n
  simp only [A008779, Nat.add_sub_cancel, A008779.P10137971322884535408.a, A008779.P8895782709854743686.a, A055417, A055417.P16799381053937575519.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A008779

/-! ## A008779.P9493682194321660231

`∑[A185787(n+1)]-∑[n]²`
-/

namespace A008779.P9493682194321660231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185787 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (((∑ j ∈ Finset.range (n + 1), f2 j) ^ 2 : ℕ) : ℤ)

end

end A008779.P9493682194321660231

namespace A008779

/-- `∑[A185787(n+1)]-∑[n]²` -/
def P9493682194321660231.Spec : Prop :=
  ∀ n, P9493682194321660231.a n = A008779 n

end A008779

/-! ## A008779.P13962443233616092704

`A134481(n)+A101338(n)`
-/

namespace A008779.P13962443233616092704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134481 n + A101338 n

end

end A008779.P13962443233616092704

namespace A008779

/-- `A134481(n)+A101338(n)` -/
def P13962443233616092704.Spec : Prop :=
  ∀ n, P13962443233616092704.a n = A008779 n

end A008779

/-! ## A008779.P11018144432547245677

`A290312(n)-A006007(n)`
-/

namespace A008779.P11018144432547245677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290312 n - A006007 n

end

end A008779.P11018144432547245677

namespace A008779

/-- `A290312(n)-A006007(n)` -/
def P11018144432547245677.Spec : Prop :=
  ∀ n, P11018144432547245677.a n = A008779 n

end A008779

/-! ## A008779.P2941069557641896295

`A086274(n+1)+A027480(n)`
-/

namespace A008779.P2941069557641896295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086274 (n + 1) + A027480 n

end

end A008779.P2941069557641896295

namespace A008779

/-- `A086274(n+1)+A027480(n)` -/
def P2941069557641896295.Spec : Prop :=
  ∀ n, P2941069557641896295.a n = A008779 n

end A008779

/-! ## A008779.P9679492043081489612

`A069778(n)+A055795(n+1)`
-/

namespace A008779.P9679492043081489612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069778 n + A055795 (n + 1)

end

end A008779.P9679492043081489612

namespace A008779

/-- `A069778(n)+A055795(n+1)` -/
def P9679492043081489612.Spec : Prop :=
  ∀ n, P9679492043081489612.a n = A008779 n

theorem P9679492043081489612.correct : P9679492043081489612.Spec := by
  intro n
  simp only [A008779, Nat.add_sub_cancel, A008779.P9679492043081489612.a, A008779.P8895782709854743686.a, A055795, A055795.P17285801603062217731.a, A069778, A069778.P902300681639061686.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A008779

/-! ## A008779.P11437033546752078091

`A252814(n+1)+A108766(n)`
-/

namespace A008779.P11437033546752078091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252814 (n + 1) + A108766 n

end

end A008779.P11437033546752078091

namespace A008779

/-- `A252814(n+1)+A108766(n)` -/
def P11437033546752078091.Spec : Prop :=
  ∀ n, P11437033546752078091.a n = A008779 n

end A008779

/-! ## A008779.P2041317165341729841

`A002417(n+1)-A002817(n)`
-/

namespace A008779.P2041317165341729841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002417 (n + 1) - A002817 n

end

end A008779.P2041317165341729841

namespace A008779

/-- `A002417(n+1)-A002817(n)` -/
def P2041317165341729841.Spec : Prop :=
  ∀ n, P2041317165341729841.a n = A008779 n

end A008779

/-! ## A008779.P7189085477749706104

`A006323(n+1)-A152457(n)`
-/

namespace A008779.P7189085477749706104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006323 (n + 1) - A152457 n

end

end A008779.P7189085477749706104

namespace A008779

/-- `A006323(n+1)-A152457(n)` -/
def P7189085477749706104.Spec : Prop :=
  ∀ n, P7189085477749706104.a n = A008779 n

end A008779

/-! ## A008779.P3062361394549608440

`A167554(n+2)+A005718(n)`
-/

namespace A008779.P3062361394549608440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167554 (n + 2) + A005718 n

end

end A008779.P3062361394549608440

namespace A008779

/-- `A167554(n+2)+A005718(n)` -/
def P3062361394549608440.Spec : Prop :=
  ∀ n, P3062361394549608440.a n = A008779 n

end A008779

/-! ## A008779.P14764578632053795959

`A039623(n+1)-A212415(n)`
-/

namespace A008779.P14764578632053795959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039623 (n + 1) - A212415 n

end

end A008779.P14764578632053795959

namespace A008779

/-- `A039623(n+1)-A212415(n)` -/
def P14764578632053795959.Spec : Prop :=
  ∀ n, P14764578632053795959.a n = A008779 n

end A008779

/-!
# A008780: a(n) = (n-dimensional partitions of 6) + C(n,4) + C(n,3).

The programs for A008780, the canonical program `A008780.P11539938353065647142` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008780 has offset 0).

The definition of A008780 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A008780.P11539938353065647142

`1+10*n+27*C(n, 2)+29*C(n, 3)+12*C(n, 4)+C(n, 5)`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A008780

/-- `1+10*n+27*C(n, 2)+29*C(n, 3)+12*C(n, 4)+C(n, 5)` -/
def P11539938353065647142.Spec : Prop :=
  ∀ n, (P11539938353065647142.a n : ℤ) = A008780 n

theorem P11539938353065647142.correct : P11539938353065647142.Spec := by
  intro n
  simp only [A008780]

end A008780

/-! ## A008780.P18058658953454088002

`(120+404*n+490*n²+255*n^3+50*n^4+n^5)/120`
-/

namespace A008780.P18058658953454088002
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (120 + 404 * n + 490 * n ^ 2 + 255 * n ^ 3 + 50 * n ^ 4 + n ^ 5 : ℚ) / 120

end

end A008780.P18058658953454088002

namespace A008780

/-- `(120+404*n+490*n²+255*n^3+50*n^4+n^5)/120` -/
def P18058658953454088002.Spec : Prop :=
  ∀ n, P18058658953454088002.a n = (A008780 n : ℚ)

theorem P18058658953454088002.correct : P18058658953454088002.Spec := by
  intro n
  simp only [A008780, Nat.add_sub_cancel, A008780.P18058658953454088002.a, A008780.P11539938353065647142.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A008780

/-! ## A008780.P1827510388516626210

`∑[∑[A081267(n)+C(n+1, 3)]]`
-/

namespace A008780.P1827510388516626210
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081267 n + (Nat.choose (n + 1) 3 : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008780.P1827510388516626210

namespace A008780

/-- `∑[∑[A081267(n)+C(n+1, 3)]]` -/
def P1827510388516626210.Spec : Prop :=
  ∀ n, P1827510388516626210.a n = A008780 n

end A008780

/-! ## A008780.P10877522705431505060

`∑[A005712(n+2)+n*(n+1)²]`
-/

namespace A008780.P10877522705431505060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005712 (n + 2) + (n * (n + 1) ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008780.P10877522705431505060

namespace A008780

/-- `∑[A005712(n+2)+n*(n+1)²]` -/
def P10877522705431505060.Spec : Prop :=
  ∀ n, P10877522705431505060.a n = A008780 n

end A008780

/-! ## A008780.P7781698436758510742

`∑[A051662(n)+∑[A000292(n)]]`
-/

namespace A008780.P7781698436758510742
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051662 n + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008780.P7781698436758510742

namespace A008780

/-- `∑[A051662(n)+∑[A000292(n)]]` -/
def P7781698436758510742.Spec : Prop :=
  ∀ n, P7781698436758510742.a n = A008780 n

end A008780

/-! ## A008780.P18146454132581678871

`∑[A096000(n)+A000332(n+1)]`
-/

namespace A008780.P18146454132581678871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096000 n + A000332 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008780.P18146454132581678871

namespace A008780

/-- `∑[A096000(n)+A000332(n+1)]` -/
def P18146454132581678871.Spec : Prop :=
  ∀ n, P18146454132581678871.a n = A008780 n

end A008780

/-!
# A008781: For any circular arrangement of 0..n-1, let S be the sum of cubes of every sum of two contiguous numbers; then a(n) is the number of distinct values of S.

The programs for A008781, there is no canonical definition to state claims against.
-/

/-! ## A008781.P1358373571060780879

`A023888(A240998(n))`
-/

namespace A008781.P1358373571060780879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023888 (A240998 n).toNat

end

end A008781.P1358373571060780879

/-! ## A008781.P2251817805169983409

`A014419(A289446(n))`
-/

namespace A008781.P2251817805169983409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014419 (A289446 n).toNat

end

end A008781.P2251817805169983409

/-! ## A008781.P14124904235427361618

`A375815(A120050(n)+1)`
-/

namespace A008781.P14124904235427361618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375815 (A120050 n + 1).toNat

end

end A008781.P14124904235427361618

/-!
# A008783: Period of continued fraction representation of (sqrt(4n+1)+1)/2=sqrt(n+sqrt(n+sqrt(n+...))).

The programs for A008783, there is no canonical definition to state claims against.
-/

/-! ## A008783.P4282918730783348003

`A146326(4*n+5)`
-/

namespace A008783.P4282918730783348003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146326 (4 * n + 5)

end

end A008783.P4282918730783348003

/-! ## A008783.P12406605847721234920

`lcm(A020985(n), A146326(A004766(n+1)))`
-/

namespace A008783.P12406605847721234920
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A146326 (A004766 (n + 1)).toNat)

end

end A008783.P12406605847721234920

/-! ## A008783.P5668530589283482920

`or(A000007(n), A146326(A004766(n+1)))`
-/

namespace A008783.P5668530589283482920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A146326 (A004766 (n + 1)).toNat)

end

end A008783.P5668530589283482920

/-! ## A008783.P9959802145306614744

`∑{d}[A146326(A004766(n+1)), A000010(#)]`
-/

namespace A008783.P9959802145306614744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146326 (A004766 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A008783.P9959802145306614744

/-! ## A008783.P16784869254980901355

`A146326(A004766(n+1))%∑[A074458(n)]`
-/

namespace A008783.P16784869254980901355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074458 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A146326 (A004766 (n + 1)).toNat) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A008783.P16784869254980901355

/-! ## A008783.P14670877587608557207

`A146326(A004766(n+1))/A033630(A053644(n))`
-/

namespace A008783.P14670877587608557207
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A146326 (A004766 (n + 1)).toNat : ℚ) / (A033630 (A053644 n).toNat : ℚ)

end

end A008783.P14670877587608557207

/-! ## A008783.P16425734012795327597

`A146326(A004766(n+1))+A060689(A014963(n+1))`
-/

namespace A008783.P16425734012795327597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146326 (A004766 (n + 1)).toNat + A060689 (A014963 (n + 1)).toNat

end

end A008783.P16425734012795327597

/-! ## A008783.P17467205419276611464

`A146326(A004766(n+1))^A001221(A027748(n+1))`
-/

namespace A008783.P17467205419276611464
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A146326 (A004766 (n + 1)).toNat : ℚ) ^ (A001221 (A027748 (n + 1)).toNat : ℤ)

end

end A008783.P17467205419276611464

/-! ## A008783.P11484179796339136739

`A146326(A004766(n+1))+A060689(A158069(n+1))`
-/

namespace A008783.P11484179796339136739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146326 (A004766 (n + 1)).toNat + A060689 (A158069 (n + 1)).toNat

end

end A008783.P11484179796339136739

/-! ## A008783.P253275132956151345

`A146326(A004766(n+1))/A007318(∑[n])`
-/

namespace A008783.P253275132956151345
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A146326 (A004766 (n + 1)).toNat : ℚ) / (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A008783.P253275132956151345

/-! ## A008783.P12451949215582961475

`A146326(A004766(n+1))/A008836((n+1)²)`
-/

namespace A008783.P12451949215582961475
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A146326 (A004766 (n + 1)).toNat : ℚ) / (A008836 ((n + 1) ^ 2) : ℚ)

end

end A008783.P12451949215582961475

/-!
# A008784: Numbers k such that sqrt(-1) mod k exists; or, numbers that are primitively represented by x^2 + y^2.

The programs for A008784, the canonical program `A008784.P11903729417169927821` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008784 has offset 1).

The definition of A008784 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7310 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A008784.P10774387858673383059

`∪[A020893(n+1), A034025(n)]`
-/

namespace A008784.P10774387858673383059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020893 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034025 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A008784.P10774387858673383059

namespace A008784

/-- `∪[A020893(n+1), A034025(n)]` -/
def P10774387858673383059.Spec : Prop :=
  ∀ n, (P10774387858673383059.a n : ℤ) = A008784 (n + 1)

end A008784

/-! ## A008784.P10258683990357305811

`∪[A174051(n+1), A020893(n+1)]`
-/

namespace A008784.P10258683990357305811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174051 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020893 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A008784.P10258683990357305811

namespace A008784

/-- `∪[A174051(n+1), A020893(n+1)]` -/
def P10258683990357305811.Spec : Prop :=
  ∀ n, (P10258683990357305811.a n : ℤ) = A008784 (n + 1)

end A008784

/-! ## A008784.P15169097948872803225

`∪[A031396(n+1), A174051(n+1)]`
-/

namespace A008784.P15169097948872803225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031396 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174051 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A008784.P15169097948872803225

namespace A008784

/-- `∪[A031396(n+1), A174051(n+1)]` -/
def P15169097948872803225.Spec : Prop :=
  ∀ n, (P15169097948872803225.a n : ℤ) = A008784 (n + 1)

end A008784

/-! ## A008784.P1683879628332147581

`∪[A281292(n+1), A174051(n+1)]`
-/

namespace A008784.P1683879628332147581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281292 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174051 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A008784.P1683879628332147581

namespace A008784

/-- `∪[A281292(n+1), A174051(n+1)]` -/
def P1683879628332147581.Spec : Prop :=
  ∀ n, (P1683879628332147581.a n : ℤ) = A008784 (n + 1)

end A008784

/-! ## A008784.P7860614425405423822

`filter[A057129(n+1), A098725(#)]`
-/

namespace A008784.P7860614425405423822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057129 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A098725 (f1 j).toNat = 1) n)

end

end A008784.P7860614425405423822

namespace A008784

/-- `filter[A057129(n+1), A098725(#)]` -/
def P7860614425405423822.Spec : Prop :=
  ∀ n, P7860614425405423822.a n = A008784 (n + 1)

end A008784

/-! ## A008784.P12681287504408632958

`filter[A057129(n+1), A166486(#)]`
-/

namespace A008784.P12681287504408632958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057129 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A166486 (f1 j).toNat = 1) n)

end

end A008784.P12681287504408632958

namespace A008784

/-- `filter[A057129(n+1), A166486(#)]` -/
def P12681287504408632958.Spec : Prop :=
  ∀ n, P12681287504408632958.a n = A008784 (n + 1)

end A008784

/-! ## A008784.P16669208255821716529

`filter[A057129(n+1), A353491(#)]`
-/

namespace A008784.P16669208255821716529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057129 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353491 (f1 j).toNat = 1) n)

end

end A008784.P16669208255821716529

namespace A008784

/-- `filter[A057129(n+1), A353491(#)]` -/
def P16669208255821716529.Spec : Prop :=
  ∀ n, P16669208255821716529.a n = A008784 (n + 1)

end A008784

/-! ## A008784.P13451836546602035060

`filter[A057129(n+1), A359374(#)]`
-/

namespace A008784.P13451836546602035060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057129 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359374 (f1 j).toNat = 1) n)

end

end A008784.P13451836546602035060

namespace A008784

/-- `filter[A057129(n+1), A359374(#)]` -/
def P13451836546602035060.Spec : Prop :=
  ∀ n, P13451836546602035060.a n = A008784 (n + 1)

end A008784

/-! ## A008784.P9253274610234386141

`∩[A046711(n+1), A057129(n+1)]`
-/

namespace A008784.P9253274610234386141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046711 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057129 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A008784.P9253274610234386141

namespace A008784

/-- `∩[A046711(n+1), A057129(n+1)]` -/
def P9253274610234386141.Spec : Prop :=
  ∀ n, (P9253274610234386141.a n : ℤ) = A008784 (n + 1)

end A008784

/-! ## A008784.P11903729417169927821

`filter[A072437(n+1), A098725(#)]`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A008784

/-- `filter[A072437(n+1), A098725(#)]` -/
def P11903729417169927821.Spec : Prop :=
  ∀ n, P11903729417169927821.a n = A008784 (n + 1)

theorem P11903729417169927821.correct : P11903729417169927821.Spec := by
  intro n
  simp only [A008784, Nat.add_sub_cancel]

end A008784

/-! ## A008784.P11992259425487395444

`filter[A072437(n+1), A166486(#)]`
-/

namespace A008784.P11992259425487395444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072437 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A166486 (f1 j).toNat = 1) n)

end

end A008784.P11992259425487395444

namespace A008784

/-- `filter[A072437(n+1), A166486(#)]` -/
def P11992259425487395444.Spec : Prop :=
  ∀ n, P11992259425487395444.a n = A008784 (n + 1)

end A008784

/-! ## A008784.P6408128971505029657

`filter[A072437(n+1), A353491(#)]`
-/

namespace A008784.P6408128971505029657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072437 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353491 (f1 j).toNat = 1) n)

end

end A008784.P6408128971505029657

namespace A008784

/-- `filter[A072437(n+1), A353491(#)]` -/
def P6408128971505029657.Spec : Prop :=
  ∀ n, P6408128971505029657.a n = A008784 (n + 1)

end A008784

/-! ## A008784.P3123591506569612397

`filter[A072437(n+1), A359374(#)]`
-/

namespace A008784.P3123591506569612397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072437 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359374 (f1 j).toNat = 1) n)

end

end A008784.P3123591506569612397

namespace A008784

/-- `filter[A072437(n+1), A359374(#)]` -/
def P3123591506569612397.Spec : Prop :=
  ∀ n, P3123591506569612397.a n = A008784 (n + 1)

end A008784

/-! ## A008784.P910023680641921103

`∩[A046711(n+1), A072437(n+1)]`
-/

namespace A008784.P910023680641921103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046711 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072437 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A008784.P910023680641921103

namespace A008784

/-- `∩[A046711(n+1), A072437(n+1)]` -/
def P910023680641921103.Spec : Prop :=
  ∀ n, (P910023680641921103.a n : ℤ) = A008784 (n + 1)

end A008784

/-! ## A008784.P10134891972133858392

`record[A037942(A334868(n+1))]`
-/

namespace A008784.P10134891972133858392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037942 (A334868 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A008784.P10134891972133858392

namespace A008784

/-- `record[A037942(A334868(n+1))]` -/
def P10134891972133858392.Spec : Prop :=
  ∀ n, P10134891972133858392.a n = A008784 (n + 1)

end A008784

/-! ## A008784.P17014188207766776659

`record[A037942(A334869(n+1))]`
-/

namespace A008784.P17014188207766776659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037942 (A334869 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A008784.P17014188207766776659

namespace A008784

/-- `record[A037942(A334869(n+1))]` -/
def P17014188207766776659.Spec : Prop :=
  ∀ n, P17014188207766776659.a n = A008784 (n + 1)

end A008784

/-! ## A008784.P1855270207777587616

`∩[A047619(n+1), A057129(n+1)]`
-/

namespace A008784.P1855270207777587616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047619 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057129 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A008784.P1855270207777587616

namespace A008784

/-- `∩[A047619(n+1), A057129(n+1)]` -/
def P1855270207777587616.Spec : Prop :=
  ∀ n, (P1855270207777587616.a n : ℤ) = A008784 (n + 1)

end A008784

/-! ## A008784.P14392333639056523822

`∩[A047619(n+1), A072437(n+1)]`
-/

namespace A008784.P14392333639056523822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047619 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072437 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A008784.P14392333639056523822

namespace A008784

/-- `∩[A047619(n+1), A072437(n+1)]` -/
def P14392333639056523822.Spec : Prop :=
  ∀ n, (P14392333639056523822.a n : ℤ) = A008784 (n + 1)

end A008784

/-! ## A008784.P3388981157364512381

`∩[A099477(n+1), A057129(n+1)]`
-/

namespace A008784.P3388981157364512381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099477 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057129 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A008784.P3388981157364512381

namespace A008784

/-- `∩[A099477(n+1), A057129(n+1)]` -/
def P3388981157364512381.Spec : Prop :=
  ∀ n, (P3388981157364512381.a n : ℤ) = A008784 (n + 1)

end A008784

/-! ## A008784.P1113511873804042560

`record[A370164(A370164(n+1))]`
-/

namespace A008784.P1113511873804042560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370164 (A370164 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A008784.P1113511873804042560

namespace A008784

/-- `record[A370164(A370164(n+1))]` -/
def P1113511873804042560.Spec : Prop :=
  ∀ n, P1113511873804042560.a n = A008784 (n + 1)

end A008784

/-!
# A008785: a(n) = (n+4)^n.

The programs for A008785, the canonical program `A008785.P3741887429993013006` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008785 has offset 0).

The definition of A008785 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+4)^n` (program `A008785.P3741887429993013006`, by `A008785.P3741887429993013006.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A008785.P3741887429993013006

`(n+4)^n`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A008785

/-- `(n+4)^n` -/
def P3741887429993013006.Spec : Prop :=
  ∀ n, (P3741887429993013006.a n : ℤ) = A008785 n

theorem P3741887429993013006.correct : P3741887429993013006.Spec := by
  intro n
  simp only [A008785]

end A008785

/-!
# A008786: a(n) = (n+5)^n.

The programs for A008786, the canonical program `A008786.P4061917045031259854` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008786 has offset 0).

The definition of A008786 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+5)^n` (program `A008786.P4061917045031259854`, by `A008786.P4061917045031259854.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A008786.P4061917045031259854

`(n+5)^n`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A008786

/-- `(n+5)^n` -/
def P4061917045031259854.Spec : Prop :=
  ∀ n, (P4061917045031259854.a n : ℤ) = A008786 n

theorem P4061917045031259854.correct : P4061917045031259854.Spec := by
  intro n
  simp only [A008786]

end A008786

/-!
# A008787: a(n) = (n + 6)^n.

The programs for A008787, the canonical program `A008787.P14067694546662677367` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008787 has offset 0).

The definition of A008787 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+6)^n` (program `A008787.P14067694546662677367`, by `A008787.P14067694546662677367.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A008787.P14067694546662677367

`(n+6)^n`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A008787

/-- `(n+6)^n` -/
def P14067694546662677367.Spec : Prop :=
  ∀ n, (P14067694546662677367.a n : ℤ) = A008787 n

theorem P14067694546662677367.correct : P14067694546662677367.Spec := by
  intro n
  simp only [A008787]

end A008787

/-!
# A008788: a(n) = n^(n+2).

The programs for A008788, the canonical program `A008788.P6632636703536709236` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008788 has offset 0).

The definition of A008788 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^(n+2)` (program `A008788.P6632636703536709236`, by `A008788.P6632636703536709236.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A008788.P6632636703536709236

`n^(n+2)`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A008788

/-- `n^(n+2)` -/
def P6632636703536709236.Spec : Prop :=
  ∀ n, (P6632636703536709236.a n : ℤ) = A008788 n

theorem P6632636703536709236.correct : P6632636703536709236.Spec := by
  intro n
  simp only [A008788]

end A008788

/-!
# A008789: a(n) = n^(n+3).

The programs for A008789, the canonical program `A008789.P17177175880386155940` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008789 has offset 0).

The definition of A008789 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^(n+3)` (program `A008789.P17177175880386155940`, by `A008789.P17177175880386155940.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A008789.P17177175880386155940

`n^(n+3)`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A008789

/-- `n^(n+3)` -/
def P17177175880386155940.Spec : Prop :=
  ∀ n, (P17177175880386155940.a n : ℤ) = A008789 n

theorem P17177175880386155940.correct : P17177175880386155940.Spec := by
  intro n
  simp only [A008789]

end A008789

/-!
# A008790: a(n) = n^(n+4).

The programs for A008790, the canonical program `A008790.P7019112600640108372` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008790 has offset 0).

The definition of A008790 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^(n+4)` (program `A008790.P7019112600640108372`, by `A008790.P7019112600640108372.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A008790.P7019112600640108372

`n^(n+4)`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A008790

/-- `n^(n+4)` -/
def P7019112600640108372.Spec : Prop :=
  ∀ n, (P7019112600640108372.a n : ℤ) = A008790 n

theorem P7019112600640108372.correct : P7019112600640108372.Spec := by
  intro n
  simp only [A008790]

end A008790

/-!
# A008791: a(n) = n^(n+5).

The programs for A008791, the canonical program `A008791.P5431888530183153056` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008791 has offset 0).

The definition of A008791 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^(n+5)` (program `A008791.P5431888530183153056`, by `A008791.P5431888530183153056.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A008791.P5431888530183153056

`n^(n+5)`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A008791

/-- `n^(n+5)` -/
def P5431888530183153056.Spec : Prop :=
  ∀ n, (P5431888530183153056.a n : ℤ) = A008791 n

theorem P5431888530183153056.correct : P5431888530183153056.Spec := by
  intro n
  simp only [A008791]

end A008791

/-!
# A008792: Amino acid numbers, based on the rules made to assign each amino acid a unique number smaller than 64.

The programs for A008792, there is no canonical definition to state claims against.
-/

/-! ## A008792.P4926479965122967526

`∪[A049543(n+1), A056106(n)]`
-/

namespace A008792.P4926479965122967526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049543 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056106 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A008792.P4926479965122967526

/-! ## A008792.P3803670399889789575

`∪[A049543(n+1), A196069(n)]`
-/

namespace A008792.P3803670399889789575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049543 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196069 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A008792.P3803670399889789575

/-! ## A008792.P12408063943097106088

`∪[A049543(n+1), A269713(n)]`
-/

namespace A008792.P12408063943097106088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049543 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269713 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A008792.P12408063943097106088

/-! ## A008792.P5039815333948001779

`∪[A049543(n+1), record[A290212(n)]]`
-/

namespace A008792.P5039815333948001779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049543 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290212 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A008792.P5039815333948001779

/-! ## A008792.P3957125083737500919

`∪[A049543(n+1), A054520(n+1)]`
-/

namespace A008792.P3957125083737500919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049543 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054520 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A008792.P3957125083737500919

/-!
# A008793: The problem of the calissons: number of ways to tile a hexagon of edge n with diamonds of side 1. Also number of plane partitions whose Young diagrams fit inside an n X n X n box.

The programs for A008793, there is no canonical definition to state claims against.
-/

/-! ## A008793.P7787654064878449311

`A006366(n)*A049503(n)`
-/

namespace A008793.P7787654064878449311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006366 n * A049503 n

end

end A008793.P7787654064878449311

/-! ## A008793.P875652581591040343

`A005130(n)*A059475(n)`
-/

namespace A008793.P875652581591040343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005130 n * A059475 n

end

end A008793.P875652581591040343

/-! ## A008793.P15442238292939539614

`A005130(n)²*A006366(n)`
-/

namespace A008793.P15442238292939539614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005130 n ^ 2 * A006366 n

end

end A008793.P15442238292939539614

/-! ## A008793.P9534604318684332144

`sqrt(A049503(n))*A059475(n)`
-/

namespace A008793.P9534604318684332144
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A049503 n : ℝ) * (A059475 n : ℝ)

end

end A008793.P9534604318684332144

/-! ## A008793.P5875314057132004212

`A005130(n)*A005158(A004277(n))`
-/

namespace A008793.P5875314057132004212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005130 n * A005158 (A004277 n).toNat

end

end A008793.P5875314057132004212

/-!
# A008794: Squares repeated; a(n) = floor(n/2)^2.

The programs for A008794, the canonical program `A008794.P14341677963132167525` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008794 has offset 0).

The definition of A008794 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(n/2)²` (program `A008794.P14341677963132167525`, by `A008794.P14341677963132167525.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A008794.P14341677963132167525

`floor(n/2)²`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A008794

/-- `floor(n/2)²` -/
def P14341677963132167525.Spec : Prop :=
  ∀ n, P14341677963132167525.a n = A008794 n

theorem P14341677963132167525.correct : P14341677963132167525.Spec := by
  intro n
  simp only [A008794]

end A008794

/-! ## A008794.P2032102657961098822

`a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` with `a(0)=0, a(1)=0, a(2)=1, a(3)=1, a(4)=4`
-/

namespace A008794.P2032102657961098822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1, 1, 4] fun n a =>
  a (n - 1) + 2 * a (n - 2) - 2 * a (n - 3) - a (n - 4) + a (n - 5)

end

end A008794.P2032102657961098822

namespace A008794

/-- `a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` -/
def P2032102657961098822.Spec : Prop :=
  ∀ n, P2032102657961098822.a n = A008794 n

end A008794

/-! ## A008794.P13472059427002055548

`and(n, -2)²/4`
-/

namespace A008794.P13472059427002055548
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land (n : ℤ) (-2) ^ 2 : ℚ) / 4

end

end A008794.P13472059427002055548

namespace A008794

/-- `and(n, -2)²/4` -/
def P13472059427002055548.Spec : Prop :=
  ∀ n, P13472059427002055548.a n = (A008794 n : ℚ)

end A008794

/-! ## A008794.P13405723856002855614

`(and(n, -2)/2)^2`
-/

namespace A008794.P13405723856002855614
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Int.land (n : ℤ) (-2) : ℚ) / 2) ^ 2

end

end A008794.P13405723856002855614

namespace A008794

/-- `(and(n, -2)/2)^2` -/
def P13405723856002855614.Spec : Prop :=
  ∀ n, P13405723856002855614.a n = (A008794 n : ℚ)

end A008794

/-! ## A008794.P14753400887936713525

`(1-or(1, n))²/4`
-/

namespace A008794.P14753400887936713525
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((1 - (Nat.lor 1 n : ℤ)) ^ 2 : ℚ) / 4

end

end A008794.P14753400887936713525

namespace A008794

/-- `(1-or(1, n))²/4` -/
def P14753400887936713525.Spec : Prop :=
  ∀ n, P14753400887936713525.a n = (A008794 n : ℚ)

end A008794

/-! ## A008794.P13868086395748131973

`xor(1, or(1, n))²/4`
-/

namespace A008794.P13868086395748131973
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.xor 1 (Nat.lor 1 n) ^ 2 : ℚ) / 4

end

end A008794.P13868086395748131973

namespace A008794

/-- `xor(1, or(1, n))²/4` -/
def P13868086395748131973.Spec : Prop :=
  ∀ n, P13868086395748131973.a n = (A008794 n : ℚ)

end A008794

/-! ## A008794.P1769000057928933085

`(n%2-n)²/4`
-/

namespace A008794.P1769000057928933085
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((((n % 2 : ℕ) : ℤ) - (n : ℤ)) ^ 2 : ℚ) / 4

end

end A008794.P1769000057928933085

namespace A008794

/-- `(n%2-n)²/4` -/
def P1769000057928933085.Spec : Prop :=
  ∀ n, P1769000057928933085.a n = (A008794 n : ℚ)

end A008794

/-! ## A008794.P3404056066322502147

`(and(1, n)-n)²/4`
-/

namespace A008794.P3404056066322502147
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((Nat.land 1 n : ℤ) - (n : ℤ)) ^ 2 : ℚ) / 4

end

end A008794.P3404056066322502147

namespace A008794

/-- `(and(1, n)-n)²/4` -/
def P3404056066322502147.Spec : Prop :=
  ∀ n, P3404056066322502147.a n = (A008794 n : ℚ)

end A008794

/-! ## A008794.P8469961528206777761

`xor(n, and(1, n))²/4`
-/

namespace A008794.P8469961528206777761
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.xor n (Nat.land 1 n) ^ 2 : ℚ) / 4

end

end A008794.P8469961528206777761

namespace A008794

/-- `xor(n, and(1, n))²/4` -/
def P8469961528206777761.Spec : Prop :=
  ∀ n, P8469961528206777761.a n = (A008794 n : ℚ)

end A008794

/-! ## A008794.P1217606518770742530

`∑[(2*n)%or(1, n)]`
-/

namespace A008794.P1217606518770742530
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n % Nat.lor 1 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008794.P1217606518770742530

namespace A008794

/-- `∑[(2*n)%or(1, n)]` -/
def P1217606518770742530.Spec : Prop :=
  ∀ n, (P1217606518770742530.a n : ℤ) = A008794 n

end A008794

/-! ## A008794.P487512619793226035

`∑[gcd(n, and(1, n))]-n`
-/

namespace A008794.P487512619793226035
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd n (Nat.land 1 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n : ℤ)

end

end A008794.P487512619793226035

namespace A008794

/-- `∑[gcd(n, and(1, n))]-n` -/
def P487512619793226035.Spec : Prop :=
  ∀ n, P487512619793226035.a n = A008794 n

end A008794

/-! ## A008794.P17882076314627151274

`floor(n/2)^gcd(2, 2*n)`
-/

namespace A008794.P17882076314627151274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 2⌋ ^ Nat.gcd 2 (2 * n)

end

end A008794.P17882076314627151274

namespace A008794

/-- `floor(n/2)^gcd(2, 2*n)` -/
def P17882076314627151274.Spec : Prop :=
  ∀ n, P17882076314627151274.a n = A008794 n

theorem P17882076314627151274.correct : P17882076314627151274.Spec := by
  intro n
  simp only [A008794, Nat.add_sub_cancel, A008794.P17882076314627151274.a, A008794.P14341677963132167525.a, SequenceMachineLib.memo_apply]
  try simp

end A008794

/-! ## A008794.P17844180713824683141

`ceil((n-1)*xor(1, n)/4)`
-/

namespace A008794.P17844180713824683141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((n : ℤ) - 1 : ℚ) * ((Nat.xor 1 n : ℚ) / 4)⌉

end

end A008794.P17844180713824683141

namespace A008794

/-- `ceil((n-1)*xor(1, n)/4)` -/
def P17844180713824683141.Spec : Prop :=
  ∀ n, P17844180713824683141.a n = A008794 n

end A008794

/-! ## A008794.P1721663457034790077

`round((n-1)*xor(1, n)/4)`
-/

namespace A008794.P1721663457034790077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((n : ℤ) - 1 : ℚ) * ((Nat.xor 1 n : ℚ) / 4))

end

end A008794.P1721663457034790077

namespace A008794

/-- `round((n-1)*xor(1, n)/4)` -/
def P1721663457034790077.Spec : Prop :=
  ∀ n, P1721663457034790077.a n = A008794 n

end A008794

/-! ## A008794.P7327193355561171880

`∑[n^((n+1)%2)]-n`
-/

namespace A008794.P7327193355561171880
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ ((n + 1) % 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n : ℤ)

end

end A008794.P7327193355561171880

namespace A008794

/-- `∑[n^((n+1)%2)]-n` -/
def P7327193355561171880.Spec : Prop :=
  ∀ n, P7327193355561171880.a n = A008794 n

end A008794

/-! ## A008794.P8115259241102154180

`∑[n^and(1, n+1)]-n`
-/

namespace A008794.P8115259241102154180
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ Nat.land 1 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n : ℤ)

end

end A008794.P8115259241102154180

namespace A008794

/-- `∑[n^and(1, n+1)]-n` -/
def P8115259241102154180.Spec : Prop :=
  ∀ n, P8115259241102154180.a n = A008794 n

end A008794

/-! ## A008794.P14964615977900947494

`∑[C(n, and(1, n+1))]-n`
-/

namespace A008794.P14964615977900947494
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (Nat.land 1 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n : ℤ)

end

end A008794.P14964615977900947494

namespace A008794

/-- `∑[C(n, and(1, n+1))]-n` -/
def P14964615977900947494.Spec : Prop :=
  ∀ n, P14964615977900947494.a n = A008794 n

end A008794

/-! ## A008794.P15560144547677553956

`∪[n*(n+2), n²]-n`
-/

namespace A008794.P15560144547677553956
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = x) n : ℤ) - (n : ℤ)

end

end A008794.P15560144547677553956

namespace A008794

/-- `∪[n*(n+2), n²]-n` -/
def P15560144547677553956.Spec : Prop :=
  ∀ n, P15560144547677553956.a n = A008794 n

end A008794

/-! ## A008794.P17921053104593421030

`∑[1-a(n-1)]^2` with `a(0)=0, a(1)=0`
-/

namespace A008794.P17921053104593421030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n f1 =>
  1 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A008794.P17921053104593421030

namespace A008794

/-- `∑[1-a(n-1)]^2` -/
def P17921053104593421030.Spec : Prop :=
  ∀ n, P17921053104593421030.a n = A008794 n

end A008794

/-! ## A008794.P480052250740238874

`floor(∑[1-a(n-1)]²)` with `a(0)=0, a(1)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A008794.P480052250740238874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n f1 =>
  1 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A008794.P480052250740238874

namespace A008794

/-- `floor(∑[1-a(n-1)]²)` -/
def P480052250740238874.Spec : Prop :=
  ∀ n, P480052250740238874.a n = A008794 n

end A008794

/-!
# A008795: Molien series for 3-dimensional representation of dihedral group D_6 of order 6.

The programs for A008795, the canonical program `A008795.P16567676001428834522` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008795 has offset 0).

The definition of A008795 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A008795.P7740060545307049757

`(2*n²+6*n+7+3*(2*n+3)*(-1)^n)/16`
-/

namespace A008795.P7740060545307049757
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 * n ^ 2 + 6 * n + 7 : ℤ) + (3 * (2 * n + 3) : ℤ) * (-1) ^ n : ℚ) / 16

end

end A008795.P7740060545307049757

namespace A008795

/-- `(2*n²+6*n+7+3*(2*n+3)*(-1)^n)/16` -/
def P7740060545307049757.Spec : Prop :=
  ∀ n, P7740060545307049757.a n = (A008795 n : ℚ)

theorem P7740060545307049757.correct : P7740060545307049757.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 | 4 =>
      simp [A008795, Nat.add_sub_cancel, A008795.P7740060545307049757.a, A008795.P16567676001428834522.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 5 =>
      have h1 := ih (m + 4) (by omega)
      have h2 := ih (m + 3) (by omega)
      have h3 := ih (m + 2) (by omega)
      have h4 := ih (m + 1) (by omega)
      have h5 := ih m (by omega)
      simp only [A008795, Nat.add_sub_cancel, A008795.P7740060545307049757.a, A008795.P16567676001428834522.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 h5 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 5 - 1 = m + 4 by omega, show m + 5 - 2 = m + 3 by omega, show m + 5 - 3 = m + 2 by omega, show m + 5 - 4 = m + 1 by omega, show m + 5 - 5 = m by omega, show m + 4 < m + 5 by omega, show m + 3 < m + 5 by omega, show m + 2 < m + 5 by omega, show m + 1 < m + 5 by omega, show m < m + 5 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 h5 ⊢
      rw [← h1, ← h2, ← h3, ← h4, ← h5]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A008795

/-! ## A008795.P16567676001428834522

`a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` with `a(0)=1, a(1)=0, a(2)=3, a(3)=1, a(4)=6`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A008795

/-- `a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` -/
def P16567676001428834522.Spec : Prop :=
  ∀ n, P16567676001428834522.a n = A008795 n

theorem P16567676001428834522.correct : P16567676001428834522.Spec := by
  intro n
  simp only [A008795]

end A008795

/-! ## A008795.P13336608479763039008

`C(∑[gcd(2, n)²-2], 2)`
-/

namespace A008795.P13336608479763039008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 2 n ^ 2 : ℤ) - 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j).toNat 2

end

end A008795.P13336608479763039008

namespace A008795

/-- `C(∑[gcd(2, n)²-2], 2)` -/
def P13336608479763039008.Spec : Prop :=
  ∀ n, (P13336608479763039008.a n : ℤ) = A008795 n

end A008795

/-! ## A008795.P14970741908753752745

`C(ceil(xor(1, n)/2)+1, 2)`
-/

namespace A008795.P14970741908753752745
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (⌈(Nat.xor 1 n : ℚ) / 2⌉ + 1).toNat 2

end

end A008795.P14970741908753752745

namespace A008795

/-- `C(ceil(xor(1, n)/2)+1, 2)` -/
def P14970741908753752745.Spec : Prop :=
  ∀ n, (P14970741908753752745.a n : ℤ) = A008795 n

end A008795

/-! ## A008795.P1601867399327985918

`C(∑[1-a(n-1)], 2)` with `a(0)=2`
-/

namespace A008795.P1601867399327985918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  1 - f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j).toNat 2

end

end A008795.P1601867399327985918

namespace A008795

/-- `C(∑[1-a(n-1)], 2)` -/
def P1601867399327985918.Spec : Prop :=
  ∀ n, (P1601867399327985918.a n : ℤ) = A008795 n

end A008795

/-! ## A008795.P7390969036195841017

`∑[∑[-n]/a(n-1)]` with `a(0)=1`
-/

namespace A008795.P7390969036195841017
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(n : ℤ)

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008795.P7390969036195841017

namespace A008795

/-- `∑[∑[-n]/a(n-1)]` -/
def P7390969036195841017.Spec : Prop :=
  ∀ n, P7390969036195841017.a n = (A008795 n : ℚ)

end A008795

/-! ## A008795.P14233110011861207968

`∑[(n+1)/(1-3*n%2)]`
-/

namespace A008795.P14233110011861207968
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (1 - ((3 * (n % 2) : ℕ) : ℤ) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008795.P14233110011861207968

namespace A008795

/-- `∑[(n+1)/(1-3*n%2)]` -/
def P14233110011861207968.Spec : Prop :=
  ∀ n, P14233110011861207968.a n = (A008795 n : ℚ)

end A008795

/-! ## A008795.P718738330922154292

`C(Δ[a(n-2)+n+1], 2)` with `a(0)=0, a(1)=2`
-/

namespace A008795.P718738330922154292
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 2] fun n f1 =>
  f1 (n - 2) + (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat 2

end

end A008795.P718738330922154292

namespace A008795

/-- `C(Δ[a(n-2)+n+1], 2)` -/
def P718738330922154292.Spec : Prop :=
  ∀ n, (P718738330922154292.a n : ℤ) = A008795 n

end A008795

/-! ## A008795.P9268922987039522515

`ceil(((n+1)/2)²-a(n-1))` with `a(0)=1`
-/

namespace A008795.P9268922987039522515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌈((n + 1 : ℚ) / 2) ^ 2 - (a (n - 1) : ℚ)⌉

end

end A008795.P9268922987039522515

namespace A008795

/-- `ceil(((n+1)/2)²-a(n-1))` -/
def P9268922987039522515.Spec : Prop :=
  ∀ n, P9268922987039522515.a n = A008795 n

end A008795

/-! ## A008795.P1784081607325986756

`∑[n-a(n-1)]-a(n-1)` with `a(0)=1`
-/

namespace A008795.P1784081607325986756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  (n : ℤ) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j - a (n - 1)

end

end A008795.P1784081607325986756

namespace A008795

/-- `∑[n-a(n-1)]-a(n-1)` -/
def P1784081607325986756.Spec : Prop :=
  ∀ n, P1784081607325986756.a n = A008795 n

end A008795

/-! ## A008795.P10727543361272894746

`floor(((n+1)²+3)/4-a(n-1))` with `a(0)=1`
-/

namespace A008795.P10727543361272894746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊((n + 1) ^ 2 + 3 : ℚ) / 4 - (a (n - 1) : ℚ)⌋

end

end A008795.P10727543361272894746

namespace A008795

/-- `floor(((n+1)²+3)/4-a(n-1))` -/
def P10727543361272894746.Spec : Prop :=
  ∀ n, P10727543361272894746.a n = A008795 n

end A008795

/-! ## A008795.P9131718379948044185

`∑[(n+1)/(2-gcd(n+1, n-1)²)]`
-/

namespace A008795.P9131718379948044185
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (2 - (Int.gcd (n + 1 : ℤ) ((n : ℤ) - 1) ^ 2 : ℤ) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008795.P9131718379948044185

namespace A008795

/-- `∑[(n+1)/(2-gcd(n+1, n-1)²)]` -/
def P9131718379948044185.Spec : Prop :=
  ∀ n, P9131718379948044185.a n = (A008795 n : ℚ)

end A008795

/-! ## A008795.P6852572363062054010

`a(n-2)-Δ[a(n-2)-(n-1)]` with `a(0)=1, a(1)=0`
-/

namespace A008795.P6852572363062054010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n f1 =>
  f1 (n - 2) - ((n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  a (n - 2) - (f1 (n + 1) - f1 n)

end

end A008795.P6852572363062054010

namespace A008795

/-- `a(n-2)-Δ[a(n-2)-(n-1)]` -/
def P6852572363062054010.Spec : Prop :=
  ∀ n, P6852572363062054010.a n = A008795 n

end A008795

/-! ## A008795.P16182699358070012071

`a(n-2)-a(n-1)+a(n-3)+n` with `a(0)=1, a(1)=0, a(2)=3`
-/

namespace A008795.P16182699358070012071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 3] fun n a =>
  a (n - 2) - a (n - 1) + (a (n - 3) + (n : ℤ))

end

end A008795.P16182699358070012071

namespace A008795

/-- `a(n-2)-a(n-1)+a(n-3)+n` -/
def P16182699358070012071.Spec : Prop :=
  ∀ n, P16182699358070012071.a n = A008795 n

end A008795

/-! ## A008795.P7988711773546412645

`a(n-2)-(a(n-1)-a(n-3)-n)` with `a(0)=1, a(1)=0, a(2)=3`
-/

namespace A008795.P7988711773546412645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 3] fun n a =>
  a (n - 2) - (a (n - 1) - a (n - 3) - (n : ℤ))

end

end A008795.P7988711773546412645

namespace A008795

/-- `a(n-2)-(a(n-1)-a(n-3)-n)` -/
def P7988711773546412645.Spec : Prop :=
  ∀ n, P7988711773546412645.a n = A008795 n

end A008795

/-! ## A008795.P3560939302024978562

`abs(∑[A152032(n)])`
-/

namespace A008795.P3560939302024978562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152032 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A008795.P3560939302024978562

namespace A008795

/-- `abs(∑[A152032(n)])` -/
def P3560939302024978562.Spec : Prop :=
  ∀ n, P3560939302024978562.a n = A008795 n

end A008795

/-! ## A008795.P1497244185855728145

`C(A028242(n)+1, 2)`
-/

namespace A008795.P1497244185855728145
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A028242 n + 1).toNat 2

end

end A008795.P1497244185855728145

namespace A008795

/-- `C(A028242(n)+1, 2)` -/
def P1497244185855728145.Spec : Prop :=
  ∀ n, (P1497244185855728145.a n : ℤ) = A008795 n

end A008795

/-! ## A008795.P9312939661226853754

`C(∑[A168361(n+1)], 2)`
-/

namespace A008795.P9312939661226853754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168361 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j).toNat 2

end

end A008795.P9312939661226853754

namespace A008795

/-- `C(∑[A168361(n+1)], 2)` -/
def P9312939661226853754.Spec : Prop :=
  ∀ n, (P9312939661226853754.a n : ℤ) = A008795 n

end A008795

/-! ## A008795.P4260833596423206145

`C(A052938(n+1)-1, 2)`
-/

namespace A008795.P4260833596423206145
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A052938 (n + 1) - 1).toNat 2

end

end A008795.P4260833596423206145

namespace A008795

/-- `C(A052938(n+1)-1, 2)` -/
def P4260833596423206145.Spec : Prop :=
  ∀ n, (P4260833596423206145.a n : ℤ) = A008795 n

end A008795

/-! ## A008795.P1649452352527804566

`∑[(n+1)/A327767(n+1)]`
-/

namespace A008795.P1649452352527804566
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A327767 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008795.P1649452352527804566

namespace A008795

/-- `∑[(n+1)/A327767(n+1)]` -/
def P1649452352527804566.Spec : Prop :=
  ∀ n, P1649452352527804566.a n = (A008795 n : ℚ)

end A008795

/-!
# A008796: Molien series for 3-dimensional group [2,3]+ = 223; also for group H_{1,2} of order 384.

The programs for A008796, the canonical program `A008796.P10605218925997494905` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008796 has offset 0).

The definition of A008796 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A008796.P10605218925997494905

`2*a(n-2)+a(n-3)-a(n-4)-2*a(n-5)+a(n-7)` with `a(0)=1, a(1)=0, a(2)=2, a(3)=1, a(4)=4, a(5)=2, a(6)=7`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A008796

/-- `2*a(n-2)+a(n-3)-a(n-4)-2*a(n-5)+a(n-7)` -/
def P10605218925997494905.Spec : Prop :=
  ∀ n, P10605218925997494905.a n = A008796 n

theorem P10605218925997494905.correct : P10605218925997494905.Spec := by
  intro n
  simp only [A008796]

end A008796

/-! ## A008796.P9123344774484094804

`ceil((n+1)²/6)-a(n-1)` with `a(0)=1`
-/

namespace A008796.P9123344774484094804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌈((n + 1) ^ 2 : ℚ) / 6⌉ - a (n - 1)

end

end A008796.P9123344774484094804

namespace A008796

/-- `ceil((n+1)²/6)-a(n-1)` -/
def P9123344774484094804.Spec : Prop :=
  ∀ n, P9123344774484094804.a n = A008796 n

end A008796

/-! ## A008796.P13596549271434467668

`round(n²/12)+∑[n+1]%(n+2)`
-/

namespace A008796.P13596549271434467668
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n ^ 2 : ℚ) / 12) + (((∑ j ∈ Finset.range (n + 1), f1 j) % (n + 2) : ℕ) : ℤ)

end

end A008796.P13596549271434467668

namespace A008796

/-- `round(n²/12)+∑[n+1]%(n+2)` -/
def P13596549271434467668.Spec : Prop :=
  ∀ n, P13596549271434467668.a n = A008796 n

end A008796

/-! ## A008796.P16947100062778066147

`a(n-3)+n*(n+1)%2` with `a(0)=1, a(1)=0, a(2)=2`
-/

namespace A008796.P16947100062778066147
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 2] fun n a =>
  a (n - 3) + n * ((n + 1) % 2)

end

end A008796.P16947100062778066147

namespace A008796

/-- `a(n-3)+n*(n+1)%2` -/
def P16947100062778066147.Spec : Prop :=
  ∀ n, (P16947100062778066147.a n : ℤ) = A008796 n

end A008796

/-! ## A008796.P2756438331268786742

`∑[ceil(xor(1, n)/6)-∑[-(n*(-1)^n)]]`
-/

namespace A008796.P2756438331268786742
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((n : ℤ) * (-1) ^ n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.xor 1 n : ℚ) / 6⌉ - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008796.P2756438331268786742

namespace A008796

/-- `∑[ceil(xor(1, n)/6)-∑[-(n*(-1)^n)]]` -/
def P2756438331268786742.Spec : Prop :=
  ∀ n, P2756438331268786742.a n = A008796 n

end A008796

/-! ## A008796.P16953366314097478493

`floor(∑[a(n-1)+n]/(n+1)-a(n-1))` with `a(0)=1`
-/

namespace A008796.P16953366314097478493
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) + n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / (n + 1 : ℚ) - (a (n - 1) : ℚ)⌋

end

end A008796.P16953366314097478493

namespace A008796

/-- `floor(∑[a(n-1)+n]/(n+1)-a(n-1))` -/
def P16953366314097478493.Spec : Prop :=
  ∀ n, P16953366314097478493.a n = A008796 n

end A008796

/-! ## A008796.P5492972099714537479

`∑[A103221(n)+∑[n*(-1)^n]]`
-/

namespace A008796.P5492972099714537479
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (-1) ^ n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 n + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008796.P5492972099714537479

namespace A008796

/-- `∑[A103221(n)+∑[n*(-1)^n]]` -/
def P5492972099714537479.Spec : Prop :=
  ∀ n, P5492972099714537479.a n = A008796 n

end A008796

/-! ## A008796.P11801364181373995441

`A008797(n)+A005044(n)`
-/

namespace A008796.P11801364181373995441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008797 n + A005044 n

end

end A008796.P11801364181373995441

namespace A008796

/-- `A008797(n)+A005044(n)` -/
def P11801364181373995441.Spec : Prop :=
  ∀ n, P11801364181373995441.a n = A008796 n

end A008796

/-! ## A008796.P10239751055869172184

`A069905(n)+A027656(n)`
-/

namespace A008796.P10239751055869172184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069905 n + A027656 n

end

end A008796.P10239751055869172184

namespace A008796

/-- `A069905(n)+A027656(n)` -/
def P10239751055869172184.Spec : Prop :=
  ∀ n, P10239751055869172184.a n = A008796 n

end A008796

/-! ## A008796.P16920950349582489836

`A309683(n)+A008799(n)`
-/

namespace A008796.P16920950349582489836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309683 n + A008799 n

end

end A008796.P16920950349582489836

namespace A008796

/-- `A309683(n)+A008799(n)` -/
def P16920950349582489836.Spec : Prop :=
  ∀ n, P16920950349582489836.a n = A008796 n

end A008796

/-! ## A008796.P10610380235015607473

`A008619(n)²-A001840(n)`
-/

namespace A008796.P10610380235015607473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n ^ 2 - A001840 n

end

end A008796.P10610380235015607473

namespace A008796

/-- `A008619(n)²-A001840(n)` -/
def P10610380235015607473.Spec : Prop :=
  ∀ n, P10610380235015607473.a n = A008796 n

end A008796

/-! ## A008796.P7791092651377294503

`∑[A130472(n)+A103221(n)]`
-/

namespace A008796.P7791092651377294503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130472 n + A103221 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008796.P7791092651377294503

namespace A008796

/-- `∑[A130472(n)+A103221(n)]` -/
def P7791092651377294503.Spec : Prop :=
  ∀ n, P7791092651377294503.a n = A008796 n

end A008796

/-! ## A008796.P1742480543644119857

`A001399(n)-∑[A001057(n)]`
-/

namespace A008796.P1742480543644119857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001399 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008796.P1742480543644119857

namespace A008796

/-- `A001399(n)-∑[A001057(n)]` -/
def P1742480543644119857.Spec : Prop :=
  ∀ n, P1742480543644119857.a n = A008796 n

end A008796

/-! ## A008796.P5761677282882406279

`A281333(n)-A008794(n+1)`
-/

namespace A008796.P5761677282882406279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281333 n - A008794 (n + 1)

end

end A008796.P5761677282882406279

namespace A008796

/-- `A281333(n)-A008794(n+1)` -/
def P5761677282882406279.Spec : Prop :=
  ∀ n, P5761677282882406279.a n = A008796 n

end A008796

/-! ## A008796.P4997441728744079056

`A309805(n+1)-A320259(n)`
-/

namespace A008796.P4997441728744079056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309805 (n + 1) - A320259 n

end

end A008796.P4997441728744079056

namespace A008796

/-- `A309805(n+1)-A320259(n)` -/
def P4997441728744079056.Spec : Prop :=
  ∀ n, P4997441728744079056.a n = A008796 n

end A008796

/-! ## A008796.P10227160896913887882

`(A004526(n)+1)²-A001840(n)`
-/

namespace A008796.P10227160896913887882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004526 n + 1) ^ 2 - A001840 n

end

end A008796.P10227160896913887882

namespace A008796

/-- `(A004526(n)+1)²-A001840(n)` -/
def P10227160896913887882.Spec : Prop :=
  ∀ n, P10227160896913887882.a n = A008796 n

end A008796

/-! ## A008796.P491599426344296867

`A110654(n+1)²-A001840(n)`
-/

namespace A008796.P491599426344296867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (n + 1) ^ 2 - A001840 n

end

end A008796.P491599426344296867

namespace A008796

/-- `A110654(n+1)²-A001840(n)` -/
def P491599426344296867.Spec : Prop :=
  ∀ n, P491599426344296867.a n = A008796 n

end A008796

/-! ## A008796.P17155931334348279010

`A281333(n)-(n-A004526(n))²`
-/

namespace A008796.P17155931334348279010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281333 n - ((n : ℤ) - A004526 n) ^ 2

end

end A008796.P17155931334348279010

namespace A008796

/-- `A281333(n)-(n-A004526(n))²` -/
def P17155931334348279010.Spec : Prop :=
  ∀ n, P17155931334348279010.a n = A008796 n

end A008796

/-! ## A008796.P11343996572563021999

`A008743(n)+∑[A110654(A142150(n))]`
-/

namespace A008796.P11343996572563021999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A142150 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008743 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008796.P11343996572563021999

namespace A008796

/-- `A008743(n)+∑[A110654(A142150(n))]` -/
def P11343996572563021999.Spec : Prop :=
  ∀ n, P11343996572563021999.a n = A008796 n

end A008796

/-! ## A008796.P8586445099376695570

`A211540(2*A028242(n))+A028242(n)`
-/

namespace A008796.P8586445099376695570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211540 (2 * A028242 n).toNat + A028242 n

end

end A008796.P8586445099376695570

namespace A008796

/-- `A211540(2*A028242(n))+A028242(n)` -/
def P8586445099376695570.Spec : Prop :=
  ∀ n, P8586445099376695570.a n = A008796 n

end A008796

/-!
# A008797: Molien series for group [2,4]+ = 224.

The programs for A008797, the canonical program `A008797.P51360619927873215` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008797 has offset 0).

The definition of A008797 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A008797.P51360619927873215

`floor((n²+3*n+11+5*(n+1)*(-1)^n)/16)`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A008797

/-- `floor((n²+3*n+11+5*(n+1)*(-1)^n)/16)` -/
def P51360619927873215.Spec : Prop :=
  ∀ n, P51360619927873215.a n = A008797 n

theorem P51360619927873215.correct : P51360619927873215.Spec := by
  intro n
  simp only [A008797]

end A008797

/-! ## A008797.P3432156043991706385

`round((A084964(n)/2)²)`
-/

namespace A008797.P3432156043991706385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((A084964 n : ℚ) / 2) ^ 2)

end

end A008797.P3432156043991706385

namespace A008797

/-- `round((A084964(n)/2)²)` -/
def P3432156043991706385.Spec : Prop :=
  ∀ n, P3432156043991706385.a n = A008797 n

end A008797

/-! ## A008797.P3442609763130305322

`A036406(n+1)-a(n-1)` with `a(0)=1`
-/

namespace A008797.P3442609763130305322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A036406 (n + 1) - a (n - 1)

end

end A008797.P3442609763130305322

namespace A008797

/-- `A036406(n+1)-a(n-1)` -/
def P3442609763130305322.Spec : Prop :=
  ∀ n, P3442609763130305322.a n = A008797 n

end A008797

/-! ## A008797.P17933255562034840135

`A002620(∑[log2(gcd(2, n))]+(-1)^n)`
-/

namespace A008797.P17933255562034840135
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Nat.gcd 2 n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j + ((-1) ^ n : ℝ))).toNat

end

end A008797.P17933255562034840135

namespace A008797

/-- `A002620(∑[log2(gcd(2, n))]+(-1)^n)` -/
def P17933255562034840135.Spec : Prop :=
  ∀ n, P17933255562034840135.a n = A008797 n

end A008797

/-! ## A008797.P9644643883417904337

`A002620(A084964(n))`
-/

namespace A008797.P9644643883417904337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (A084964 n).toNat

end

end A008797.P9644643883417904337

namespace A008797

/-- `A002620(A084964(n))` -/
def P9644643883417904337.Spec : Prop :=
  ∀ n, P9644643883417904337.a n = A008797 n

end A008797

/-! ## A008797.P15567806975719175424

`A002620(A097065(n)+1)`
-/

namespace A008797.P15567806975719175424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (A097065 n + 1).toNat

end

end A008797.P15567806975719175424

namespace A008797

/-- `A002620(A097065(n)+1)` -/
def P15567806975719175424.Spec : Prop :=
  ∀ n, P15567806975719175424.a n = A008797 n

end A008797

/-! ## A008797.P60355451634180999

`A002620(A267182(n+1))`
-/

namespace A008797.P60355451634180999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (A267182 (n + 1)).toNat

end

end A008797.P60355451634180999

namespace A008797

/-- `A002620(A267182(n+1))` -/
def P60355451634180999.Spec : Prop :=
  ∀ n, P60355451634180999.a n = A008797 n

end A008797

/-! ## A008797.P18285147313949722012

`A008796(n)-A005044(n)`
-/

namespace A008797.P18285147313949722012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008796 n - A005044 n

end

end A008797.P18285147313949722012

namespace A008797

/-- `A008796(n)-A005044(n)` -/
def P18285147313949722012.Spec : Prop :=
  ∀ n, P18285147313949722012.a n = A008797 n

end A008797

/-! ## A008797.P12164809617308117565

`A002620(A166517(n)-n)`
-/

namespace A008797.P12164809617308117565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (A166517 n - (n : ℤ)).toNat

end

end A008797.P12164809617308117565

namespace A008797

/-- `A002620(A166517(n)-n)` -/
def P12164809617308117565.Spec : Prop :=
  ∀ n, P12164809617308117565.a n = A008797 n

end A008797

/-! ## A008797.P16056958170144757424

`A002620(A004526(n)+2*A059841(n))`
-/

namespace A008797.P16056958170144757424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (A004526 n + 2 * A059841 n).toNat

end

end A008797.P16056958170144757424

namespace A008797

/-- `A002620(A004526(n)+2*A059841(n))` -/
def P16056958170144757424.Spec : Prop :=
  ∀ n, P16056958170144757424.a n = A008797 n

end A008797

/-! ## A008797.P1753162407320169395

`A002620(2*A028242(n)-A004526(n))`
-/

namespace A008797.P1753162407320169395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (2 * A028242 n - A004526 n).toNat

end

end A008797.P1753162407320169395

namespace A008797

/-- `A002620(2*A028242(n)-A004526(n))` -/
def P1753162407320169395.Spec : Prop :=
  ∀ n, P1753162407320169395.a n = A008797 n

end A008797

/-! ## A008797.P8789939080053272826

`A008642(n)-Δ[A008619(n)]*A008619(n)`
-/

namespace A008797.P8789939080053272826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008642 n - (f1 (n + 1) - f1 n) * A008619 n

end

end A008797.P8789939080053272826

namespace A008797

/-- `A008642(n)-Δ[A008619(n)]*A008619(n)` -/
def P8789939080053272826.Spec : Prop :=
  ∀ n, P8789939080053272826.a n = A008797 n

end A008797

/-! ## A008797.P17243026407197926957

`A002620(A059841(n)+A059841(n)+A004526(n))`
-/

namespace A008797.P17243026407197926957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (A059841 n + (A059841 n + A004526 n)).toNat

end

end A008797.P17243026407197926957

namespace A008797

/-- `A002620(A059841(n)+A059841(n)+A004526(n))` -/
def P17243026407197926957.Spec : Prop :=
  ∀ n, P17243026407197926957.a n = A008797 n

end A008797

/-! ## A008797.P17958145831176239787

`A002620(A028242(n)+A028242(n)-A004526(n))`
-/

namespace A008797.P17958145831176239787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (A028242 n + (A028242 n - A004526 n)).toNat

end

end A008797.P17958145831176239787

namespace A008797

/-- `A002620(A028242(n)+A028242(n)-A004526(n))` -/
def P17958145831176239787.Spec : Prop :=
  ∀ n, P17958145831176239787.a n = A008797 n

end A008797

/-! ## A008797.P5691511668400320555

`A002620(A028242(n)-(A004526(n)-A028242(n)))`
-/

namespace A008797.P5691511668400320555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (A028242 n - (A004526 n - A028242 n)).toNat

end

end A008797.P5691511668400320555

namespace A008797

/-- `A002620(A028242(n)-(A004526(n)-A028242(n)))` -/
def P5691511668400320555.Spec : Prop :=
  ∀ n, P5691511668400320555.a n = A008797 n

end A008797

/-! ## A008797.P14480884667804267923

`∑[A318972(n+1)-(n+1)]`
-/

namespace A008797.P14480884667804267923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318972 (n + 1) - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008797.P14480884667804267923

namespace A008797

/-- `∑[A318972(n+1)-(n+1)]` -/
def P14480884667804267923.Spec : Prop :=
  ∀ n, P14480884667804267923.a n = A008797 n

end A008797

/-! ## A008797.P13404701452593015805

`Δ[A175826(n)]-a(n-1)` with `a(0)=1`
-/

namespace A008797.P13404701452593015805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175826 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  f1 (n + 1) - f1 n - a (n - 1)

end

end A008797.P13404701452593015805

namespace A008797

/-- `Δ[A175826(n)]-a(n-1)` -/
def P13404701452593015805.Spec : Prop :=
  ∀ n, P13404701452593015805.a n = A008797 n

end A008797

/-! ## A008797.P349654300174290042

`round(Δ[A080512(n+1)/2]²)`
-/

namespace A008797.P349654300174290042
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080512 (n + 1) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((f1 (n + 1) - f1 n) ^ 2)

end

end A008797.P349654300174290042

namespace A008797

/-- `round(Δ[A080512(n+1)/2]²)` -/
def P349654300174290042.Spec : Prop :=
  ∀ n, P349654300174290042.a n = A008797 n

end A008797

/-! ## A008797.P9042640731933342388

`(A059169(n+1)+A000035(n+1))*A008624(n)`
-/

namespace A008797.P9042640731933342388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A059169 (n + 1) + A000035 (n + 1)) * A008624 n

end

end A008797.P9042640731933342388

namespace A008797

/-- `(A059169(n+1)+A000035(n+1))*A008624(n)` -/
def P9042640731933342388.Spec : Prop :=
  ∀ n, P9042640731933342388.a n = A008797 n

end A008797

/-! ## A008797.P3325356395919349585

`A296159(A090964(n+1))`
-/

namespace A008797.P3325356395919349585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296159 (A090964 (n + 1)).toNat

end

end A008797.P3325356395919349585

namespace A008797

/-- `A296159(A090964(n+1))` -/
def P3325356395919349585.Spec : Prop :=
  ∀ n, P3325356395919349585.a n = A008797 n

end A008797

/-!
# A008798: Molien series for group [2,5]+ = 225.

The programs for A008798, the canonical program `A008798.P4264730984871933648` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008798 has offset 0).

The definition of A008798 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A008798.P4264730984871933648

`2*a(n-2)-a(n-4)+a(n-5)-2*a(n-7)+a(n-9)` with `a(0)=1, a(1)=0, a(2)=2, a(3)=0, a(4)=3, a(5)=1, a(6)=5, a(7)=2, a(8)=7`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A008798

/-- `2*a(n-2)-a(n-4)+a(n-5)-2*a(n-7)+a(n-9)` -/
def P4264730984871933648.Spec : Prop :=
  ∀ n, P4264730984871933648.a n = A008798 n

theorem P4264730984871933648.correct : P4264730984871933648.Spec := by
  intro n
  simp only [A008798]

end A008798

/-! ## A008798.P7194053717474366051

`(17+6*n+2*n²+5*(-1)^n*(3+2*n)+8*A080891(n+4))/40`
-/

namespace A008798.P7194053717474366051
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((17 + 6 * n + 2 * n ^ 2 : ℤ) + 5 * (-1) ^ n * (3 + 2 * n : ℤ) + 8 * A080891 (n + 4) : ℚ) / 40

end

end A008798.P7194053717474366051

namespace A008798

/-- `(17+6*n+2*n²+5*(-1)^n*(3+2*n)+8*A080891(n+4))/40` -/
def P7194053717474366051.Spec : Prop :=
  ∀ n, P7194053717474366051.a n = (A008798 n : ℚ)

end A008798

/-! ## A008798.P677686926891467944

`∑[Δ[round(((n+3)/2)²/5)]+∑[n*(-1)^n]]`
-/

namespace A008798.P677686926891467944
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((n + 3 : ℚ) / 2) ^ 2 / 5)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (-1) ^ n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + ∑ j ∈ Finset.range (n + 1), f3 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008798.P677686926891467944

namespace A008798

/-- `∑[Δ[round(((n+3)/2)²/5)]+∑[n*(-1)^n]]` -/
def P677686926891467944.Spec : Prop :=
  ∀ n, P677686926891467944.a n = A008798 n

end A008798

/-! ## A008798.P1502668609426206556

`∑[A008616(n)]-∑[n]%(n+1)`
-/

namespace A008798.P1502668609426206556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008616 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (((∑ j ∈ Finset.range (n + 1), f2 j) % (n + 1) : ℕ) : ℤ)

end

end A008798.P1502668609426206556

namespace A008798

/-- `∑[A008616(n)]-∑[n]%(n+1)` -/
def P1502668609426206556.Spec : Prop :=
  ∀ n, P1502668609426206556.a n = A008798 n

end A008798

/-! ## A008798.P2757827361395817273

`A008738(A084964(n))`
-/

namespace A008798.P2757827361395817273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008738 (A084964 n).toNat

end

end A008798.P2757827361395817273

namespace A008798

/-- `A008738(A084964(n))` -/
def P2757827361395817273.Spec : Prop :=
  ∀ n, P2757827361395817273.a n = A008798 n

end A008798

/-! ## A008798.P886737255521911051

`A008738(A267182(n+1))`
-/

namespace A008798.P886737255521911051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008738 (A267182 (n + 1)).toNat

end

end A008798.P886737255521911051

namespace A008798

/-- `A008738(A267182(n+1))` -/
def P886737255521911051.Spec : Prop :=
  ∀ n, P886737255521911051.a n = A008798 n

end A008798

/-! ## A008798.P13986009718991454730

`A065423(n+1)+A000115(n)-n`
-/

namespace A008798.P13986009718991454730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065423 (n + 1) + (A000115 n - (n : ℤ))

end

end A008798.P13986009718991454730

namespace A008798

/-- `A065423(n+1)+A000115(n)-n` -/
def P13986009718991454730.Spec : Prop :=
  ∀ n, P13986009718991454730.a n = A008798 n

end A008798

/-! ## A008798.P3145506151452419156

`A000115(n)-A000217(n)%(n+1)`
-/

namespace A008798.P3145506151452419156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000115 n - Int.tmod (A000217 n) (n + 1 : ℤ)

end

end A008798.P3145506151452419156

namespace A008798

/-- `A000115(n)-A000217(n)%(n+1)` -/
def P3145506151452419156.Spec : Prop :=
  ∀ n, P3145506151452419156.a n = A008798 n

end A008798

/-! ## A008798.P9196563595474568112

`A000115(n)-A029578(n+1)%A009531(n+1)`
-/

namespace A008798.P9196563595474568112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000115 n - Int.tmod (A029578 (n + 1)) (A009531 (n + 1))

end

end A008798.P9196563595474568112

namespace A008798

/-- `A000115(n)-A029578(n+1)%A009531(n+1)` -/
def P9196563595474568112.Spec : Prop :=
  ∀ n, P9196563595474568112.a n = A008798 n

end A008798

/-! ## A008798.P10755077069150258974

`round(Δ[A080512(n+1)]²/5)`
-/

namespace A008798.P10755077069150258974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080512 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((f1 (n + 1) - f1 n) ^ 2 : ℚ) / 5)

end

end A008798.P10755077069150258974

namespace A008798

/-- `round(Δ[A080512(n+1)]²/5)` -/
def P10755077069150258974.Spec : Prop :=
  ∀ n, P10755077069150258974.a n = A008798 n

end A008798

/-! ## A008798.P14052601071320819599

`A000115(n)+Δ[A001318(n)]-(n+1)`
-/

namespace A008798.P14052601071320819599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001318 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000115 n + (f1 (n + 1) - f1 n - (n + 1 : ℤ))

end

end A008798.P14052601071320819599

namespace A008798

/-- `A000115(n)+Δ[A001318(n)]-(n+1)` -/
def P14052601071320819599.Spec : Prop :=
  ∀ n, P14052601071320819599.a n = A008798 n

end A008798

/-! ## A008798.P7816602827381300153

`A025802(2*n)+A026741(n+1)-(n+1)`
-/

namespace A008798.P7816602827381300153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025802 (2 * n) + (A026741 (n + 1) - (n + 1 : ℤ))

end

end A008798.P7816602827381300153

namespace A008798

/-- `A025802(2*n)+A026741(n+1)-(n+1)` -/
def P7816602827381300153.Spec : Prop :=
  ∀ n, P7816602827381300153.a n = A008798 n

end A008798

/-! ## A008798.P6490853015253832819

`A002266(A267182(n+1)²+1)`
-/

namespace A008798.P6490853015253832819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002266 (A267182 (n + 1) ^ 2 + 1).toNat

end

end A008798.P6490853015253832819

namespace A008798

/-- `A002266(A267182(n+1)²+1)` -/
def P6490853015253832819.Spec : Prop :=
  ∀ n, P6490853015253832819.a n = A008798 n

end A008798

/-!
# A008799: Molien series for group [2,6]+ = 226.

The programs for A008799, the canonical program `A008799.P12725150660298475449` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008799 has offset 0).

The definition of A008799 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A008799.P12725150660298475449

`floor((n²+3*n+21+7*(n+1)*(-1)^n)/24)`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A008799

/-- `floor((n²+3*n+21+7*(n+1)*(-1)^n)/24)` -/
def P12725150660298475449.Spec : Prop :=
  ∀ n, P12725150660298475449.a n = A008799 n

theorem P12725150660298475449.correct : P12725150660298475449.Spec := by
  intro n
  simp only [A008799]

end A008799

/-! ## A008799.P12553611756176266619

`A309685(n)+∑[n+1]%(n+2)`
-/

namespace A008799.P12553611756176266619
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309685 n + (((∑ j ∈ Finset.range (n + 1), f1 j) % (n + 2) : ℕ) : ℤ)

end

end A008799.P12553611756176266619

namespace A008799

/-- `A309685(n)+∑[n+1]%(n+2)` -/
def P12553611756176266619.Spec : Prop :=
  ∀ n, P12553611756176266619.a n = A008799 n

end A008799

/-! ## A008799.P4018088825498116027

`A309685(n)+A027656(n)`
-/

namespace A008799.P4018088825498116027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309685 n + A027656 n

end

end A008799.P4018088825498116027

namespace A008799

/-- `A309685(n)+A027656(n)` -/
def P4018088825498116027.Spec : Prop :=
  ∀ n, P4018088825498116027.a n = A008799 n

end A008799

/-! ## A008799.P6071793512389892666

`A008796(n)-A309683(n)`
-/

namespace A008799.P6071793512389892666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008796 n - A309683 n

end

end A008799.P6071793512389892666

namespace A008799

/-- `A008796(n)-A309683(n)` -/
def P6071793512389892666.Spec : Prop :=
  ∀ n, P6071793512389892666.a n = A008799 n

end A008799

/-! ## A008799.P11276935411836326465

`A008795(n)-A000212(∑[(n+1)%2])`
-/

namespace A008799.P11276935411836326465
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) % 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008795 n - A000212 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A008799.P11276935411836326465

namespace A008799

/-- `A008795(n)-A000212(∑[(n+1)%2])` -/
def P11276935411836326465.Spec : Prop :=
  ∀ n, P11276935411836326465.a n = A008799 n

end A008799

/-! ## A008799.P3413380111754985400

`ceil(A001318(n+1)-A074377(n+1)/3)`
-/

namespace A008799.P3413380111754985400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A001318 (n + 1) : ℚ) - (A074377 (n + 1) : ℚ) / 3⌉

end

end A008799.P3413380111754985400

namespace A008799

/-- `ceil(A001318(n+1)-A074377(n+1)/3)` -/
def P3413380111754985400.Spec : Prop :=
  ∀ n, P3413380111754985400.a n = A008799 n

end A008799

/-! ## A008799.P15943884241728468225

`A308068(2*A065168(n+1))`
-/

namespace A008799.P15943884241728468225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308068 (2 * A065168 (n + 1)).toNat

end

end A008799.P15943884241728468225

namespace A008799

/-- `A308068(2*A065168(n+1))` -/
def P15943884241728468225.Spec : Prop :=
  ∀ n, P15943884241728468225.a n = A008799 n

end A008799

/-! ## A008799.P9931737353958984715

`A308067(2*A065164(n+2))`
-/

namespace A008799.P9931737353958984715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308067 (2 * A065164 (n + 2)).toNat

end

end A008799.P9931737353958984715

namespace A008799

/-- `A308067(2*A065164(n+2))` -/
def P9931737353958984715.Spec : Prop :=
  ∀ n, P9931737353958984715.a n = A008799 n

end A008799

/-! ## A008799.P16839152808194804256

`A308068(A065168(n+1)+A065168(n+1)-1)`
-/

namespace A008799.P16839152808194804256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308068 (A065168 (n + 1) + (A065168 (n + 1) - 1)).toNat

end

end A008799.P16839152808194804256

namespace A008799

/-- `A308068(A065168(n+1)+A065168(n+1)-1)` -/
def P16839152808194804256.Spec : Prop :=
  ∀ n, P16839152808194804256.a n = A008799 n

end A008799

